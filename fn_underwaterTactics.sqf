// Debugging fn_underwaterTactics.sqf

diag_log format ["[DEBUG] Function fn_underwaterTactics.sqf started by: %1", player];

// Debugging fn_underwaterTactics.sqf

diag_log format ["[DEBUG] Function fn_underwaterTactics.sqf started by: %1", player];

private _unit = _this select 0;

// Использование воды для скрытного подхода
if (surfaceIsWater getPos _unit) then {
    _unit setBehaviour "STEALTH";
    _unit moveInCargo (nearestObject [_unit, "Boat_F"]);
};
// Debugging completed for fn_underwaterTactics.sqf
diag_log format ["[DEBUG] Function fn_underwaterTactics.sqf completed by: %1", player];

// Debugging completed for fn_underwaterTactics.sqf
diag_log format ["[DEBUG] Function fn_underwaterTactics.sqf completed by: %1", player];
