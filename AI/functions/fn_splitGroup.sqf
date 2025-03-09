// Debugging fn_splitGroup.sqf

diag_log format ["[DEBUG] Function fn_splitGroup.sqf started by: %1", player];

// Debugging fn_splitGroup.sqf

diag_log format ["[DEBUG] Function fn_splitGroup.sqf started by: %1", player];

private _group = _this select 0;
private _enemy = _this select 1;

// Разделение группы
private _halfGroup = units _group select [0, floor (count (units _group) / 2)];
{
    _x doMove getPos _enemy;
    _x setBehaviour "COMBAT";
} forEach _halfGroup;

private _remainingGroup = units _group - _halfGroup;
{
    private _cover = nearestObject [_x, ["House", "Rock", "Tree"], 50];
    if (!isNil "_cover") then {
        _x doMove getPos _cover;
    };
    _x setBehaviour "STEALTH";
} forEach _remainingGroup;
// Debugging completed for fn_splitGroup.sqf
diag_log format ["[DEBUG] Function fn_splitGroup.sqf completed by: %1", player];

// Debugging completed for fn_splitGroup.sqf
diag_log format ["[DEBUG] Function fn_splitGroup.sqf completed by: %1", player];
