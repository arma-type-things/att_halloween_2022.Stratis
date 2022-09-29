/*
	Author: Tsalaroth

	Description:
		Plays a warhorn on the position of the second parameter.

	Parameter(s):
	0: NAME - "WarHorn1", etc
        1: OBJECT - something that has a position we can query

	Returns:
		Nothing

	Example:
		["WarHorn1", player] call fnc_playWarhorn;
*/

params ["_war_horn", "_emitter"];

_emitter say3D [_war_horn, 0, 1, false];
