// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

global.base_fear = 0;
global.current_fear = 0;
global.fear_scale = 1;
global.max_fear = 100;


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
function changeFear(amount){
	
	current_fear += amount * fear_scale;
	if(current_fear >= max_fear) {
		//Insert "Yay! You win!" Wincon here
	}
	
}


/**
 * Function Compares 2 objects fears to see if they are compatible
 * @param {index} npc_obj The NPC object to check
 * @param {index} item_obj Item object to check
 * @returns {bool} true if their fears match, false otherwise. 
 */
function fear_matches(npc_obj, item_obj) {
	if(npc_obj.object_index != NPC || item_obj.object_index != obj_item_base)
		return false;
		
	for(var i = 0; i < npc_obj.fear_list; i++) {
		if(item_obj.target_fears.contains(npc_obj.fear_list[i])) {
			return true;
		}
	}
		
	return false;
}