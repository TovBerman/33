// Debugging fn_buildingAssault.sqf

diag_log format ["[DEBUG] Function fn_buildingAssault.sqf started by: %1", player];

// Debugging fn_buildingAssault.sqf

diag_log format ["[DEBUG] Function fn_buildingAssault.sqf started by: %1", player];

private _group = _this select 0;
private _building = _this select 1;

// Штурм здания
{
    private _entryPoint = _building buildingPos (_forEachIndex mod 6);
    _x doMove _entryPoint;
    _x setBehaviour "COMBAT";
} forEach units _group;
// Debugging completed for fn_buildingAssault.sqf
diag_log format ["[DEBUG] Function fn_buildingAssault.sqf completed by: %1", player];

// Debugging completed for fn_buildingAssault.sqf
diag_log format ["[DEBUG] Function fn_buildingAssault.sqf completed by: %1", player];
