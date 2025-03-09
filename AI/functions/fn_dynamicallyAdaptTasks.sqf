// Debugging fn_dynamicallyAdaptTasks.sqf

diag_log format ["[DEBUG] Function fn_dynamicallyAdaptTasks.sqf started by: %1", player];

// Debugging fn_dynamicallyAdaptTasks.sqf

diag_log format ["[DEBUG] Function fn_dynamicallyAdaptTasks.sqf started by: %1", player];

private _group = _this select 0;
private _objective = _this select 1;

// Динамическая смена задач
if ((getMarkerPos _objective) distance (getPos leader _group) < 200) then {
    {
        _x setBehaviour "COMBAT";
        _x doMove getMarkerPos _objective;
    } forEach units _group;
} else {
    {
        private _cover = nearestObject [_x, ["House", "Rock", "Tree"], 100];
        if (!isNil "_cover") then {
            _x doMove getPos _cover;
        };
        _x setBehaviour "STEALTH";
    } forEach units _group;
};
// Debugging completed for fn_dynamicallyAdaptTasks.sqf
diag_log format ["[DEBUG] Function fn_dynamicallyAdaptTasks.sqf completed by: %1", player];

// Debugging completed for fn_dynamicallyAdaptTasks.sqf
diag_log format ["[DEBUG] Function fn_dynamicallyAdaptTasks.sqf completed by: %1", player];
