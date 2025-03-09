// Debugging fn_flankingManeuvers.sqf

diag_log format ["[DEBUG] Function fn_flankingManeuvers.sqf started by: %1", player];

// Debugging fn_flankingManeuvers.sqf

diag_log format ["[DEBUG] Function fn_flankingManeuvers.sqf started by: %1", player];

private _group = _this select 0;
private _enemy = _this select 1;

// Фланговая атака
private _flankPosition = [getPos _enemy, 50, random 360] call BIS_fnc_relPos;
{
    _x doMove _flankPosition;
    _x setBehaviour "STEALTH";
} forEach units _group;
// Debugging completed for fn_flankingManeuvers.sqf
diag_log format ["[DEBUG] Function fn_flankingManeuvers.sqf completed by: %1", player];

// Debugging completed for fn_flankingManeuvers.sqf
diag_log format ["[DEBUG] Function fn_flankingManeuvers.sqf completed by: %1", player];
