// Debugging fn_explosionReactions.sqf

diag_log format ["[DEBUG] Function fn_explosionReactions.sqf started by: %1", player];

// Debugging fn_explosionReactions.sqf

diag_log format ["[DEBUG] Function fn_explosionReactions.sqf started by: %1", player];

private _unit = _this select 0;
private _explosionPos = _this select 1;

// Реакция на взрыв
if (_unit distance _explosionPos < 30) then {
    _unit setBehaviour "STEALTH";
    _unit doMove ([_explosionPos, 50, random 360] call BIS_fnc_relPos);
};
// Debugging completed for fn_explosionReactions.sqf
diag_log format ["[DEBUG] Function fn_explosionReactions.sqf completed by: %1", player];

// Debugging completed for fn_explosionReactions.sqf
diag_log format ["[DEBUG] Function fn_explosionReactions.sqf completed by: %1", player];
