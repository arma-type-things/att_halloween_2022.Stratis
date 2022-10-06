/*
	Author: Tsalaroth

	Description:
		Spawns a team of the given config name on a position.

	Parameter(s):
	0: POSITION     - [0,0,0] or `getPos something`
    1: GROUP        - Cfg path to group
    2: [POSITION]   - OPTIONAL - Waypoints
    3: STRING       - OPTIONAL - waypoint type of last waypoint (default: Search-and-Destroy "SAD")

	Returns:
		hunter group

	Example:
        private _somePos = getPos someLogicVar;
        private _hunter_group = "small";
		[_somePos, _hunter_group] call fnc_spawnHunters; // Will sit in the spawn location
*/

params [
    ["_spawnPosition", [0,0,0], [[]], 3],
    ["_groupName", "small"],
    ["_waypoints",[]],
    ["_lastWaypoint", "SAD"]
];


// missionconfigfile >> "CfgGroups" >> "EAST" >> "att_necroplague_groups" >> "Infected" >> "small_hunter_group"
private _hunters = [_spawnPosition, east, (missionconfigfile >> "CfgGroups" >> "EAST" >> "att_necroplague_groups" >> "Infected" >> format ["%1_hunter_group", _groupName])] call BIS_fnc_spawnGroup;
_hunters deleteGroupWhenEmpty true;

private _sizeOf = count _waypoints;
{
    private _wp = _hunters addWaypoint [_x, 0];
    private _last_index = _sizeOf - 1;
    if (_forEachIndex == _last_index) then {
        _wp setWaypointType _lastWaypoint;
    };
    
} forEach _waypoints;

_hunters