// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
global.current_energy = 10;
global.max_energy = 20;


function spend_energy(item_cost){
	if(item_cost > global.current_energy) {
		GhostEnergyGUI.drawInsufFundsTxt = true;
		return false;
	}
	
	global.current_energy -= item_cost;
	return true;
}

function increase_energy(amount){
	if(amount > (global.max_energy - global.current_energy)) {
		amount = global.max_energy - global.current_energy;
	}
	
	global.current_energy += amount;	
}