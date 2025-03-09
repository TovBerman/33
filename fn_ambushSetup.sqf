// Debugging fn_ambushSetup.sqf

diag_log format ["[DEBUG] Function fn_ambushSetup.sqf started by: %1", player];

// Debugging fn_ambushSetup.sqf

diag_log format ["[DEBUG] Function fn_ambushSetup.sqf started by: %1", player];

params ["_group", "_road"];

{
    private _ambushPoint = [_road, 50, random 360] call BIS_fnc_relPos;
    _x doMove _ambushPoint;
} forEach units _group;
// Debugging completed for fn_ambushSetup.sqf
diag_log format ["[DEBUG] Function fn_ambushSetup.sqf completed by: %1", player];

// Debugging completed for fn_ambushSetup.sqf
diag_log format ["[DEBUG] Function fn_ambushSetup.sqf completed by: %1", player];
