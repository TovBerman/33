// Debugging fn_priorityTargets.sqf

diag_log format ["[DEBUG] Function fn_priorityTargets.sqf started by: %1", player];

// Debugging fn_priorityTargets.sqf

diag_log format ["[DEBUG] Function fn_priorityTargets.sqf started by: %1", player];

private _unit = _this select 0;
private _nearbyEnemies = nearestObjects [_unit, ["Man"], 500];
private _priorityTargets = ["Tank", "Air", "Infantry"];

if (count _nearbyEnemies > 0) then {
    private _enemy = _nearbyEnemies select 0;
    if (_enemy isKindOf _priorityTargets) then {
        _unit doMove (getPos _enemy);
        _unit setBehaviour "COMBAT";
    };
};
// Debugging completed for fn_priorityTargets.sqf
diag_log format ["[DEBUG] Function fn_priorityTargets.sqf completed by: %1", player];

// Debugging completed for fn_priorityTargets.sqf
diag_log format ["[DEBUG] Function fn_priorityTargets.sqf completed by: %1", player];
