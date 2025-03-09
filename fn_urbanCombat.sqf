// Debugging fn_urbanCombat.sqf

diag_log format ["[DEBUG] Function fn_urbanCombat.sqf started by: %1", player];

// Debugging fn_urbanCombat.sqf

diag_log format ["[DEBUG] Function fn_urbanCombat.sqf started by: %1", player];

private _group = _this select 0;

// Ведение боя в городской среде
{
    private _position = nearestBuilding _x;
    if (!isNil "_position") then {
        _x doMove (getPos _position);
        _x setBehaviour "COMBAT";
    };
} forEach units _group;
// Debugging completed for fn_urbanCombat.sqf
diag_log format ["[DEBUG] Function fn_urbanCombat.sqf completed by: %1", player];

// Debugging completed for fn_urbanCombat.sqf
diag_log format ["[DEBUG] Function fn_urbanCombat.sqf completed by: %1", player];
