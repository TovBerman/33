// Debugging fn_territoryControl.sqf

diag_log format ["[DEBUG] Function fn_territoryControl.sqf started by: %1", player];

// Debugging fn_territoryControl.sqf

diag_log format ["[DEBUG] Function fn_territoryControl.sqf started by: %1", player];

params ["_group", "_zone"];

{
    _x doMove getMarkerPos _zone;
    _x setBehaviour "AWARE";
} forEach units _group;
// Debugging completed for fn_territoryControl.sqf
diag_log format ["[DEBUG] Function fn_territoryControl.sqf completed by: %1", player];

// Debugging completed for fn_territoryControl.sqf
diag_log format ["[DEBUG] Function fn_territoryControl.sqf completed by: %1", player];
