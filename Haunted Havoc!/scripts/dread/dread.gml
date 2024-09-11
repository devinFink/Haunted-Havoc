// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

global.base_dread = 0;
global.current_dread = 0;
global.dread_scale = 1;
global.max_dread = 100;


enum FEAR_TYPES{
	GHOST,
	BLOOD,
	DARK,
	CLOWN
}


/**
 * @function Moves the fear meter based on the amount passed in and the current scaling
 * @param {int} amount to change meter by
 */
function changeDread(amount, npc_obj){
	global.current_dread += amount * global.dread_scale;
	if(global.current_dread >= global.max_dread) {
		scare_npc();
	}
	
}


/**
 * Function Compares 2 objects fears to see if they are compatible
 * @param {index} npc_obj The NPC object to check
 * @param {index} item_obj Item object to check
 * @returns {bool} true if their fears match, false otherwise. 
 */
function fear_matches(npc_obj, item_obj) {
	if(npc_obj.parent.object_index != NPC || item_obj.parent.object_index != obj_item_base)
		return false;
		
	for(var i = 0; i < npc_obj.fear_list; i++) {
		if(item_obj.target_fears.contains(npc_obj.fear_list[i])) {
			return true;
		}
	}
		
	return false;
}


/*
*
Function scares the NPC using the current valued dread
@param npc_obj npc index being scared
*/
function scare_npc() {
	global.current_health -= global.current_dread;
	global.current_dread = 0;
	
	if(global.current_health <= 0)
	{
		npc_obj.dead = true;
	}
}