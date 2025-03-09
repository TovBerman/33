// Debugging fn_suppressiveFire.sqf

diag_log format ["[DEBUG] Function fn_suppressiveFire.sqf started by: %1", player];

// Debugging fn_suppressiveFire.sqf

diag_log format ["[DEBUG] Function fn_suppressiveFire.sqf started by: %1", player];

private _group = _this select 0;
private _enemy = _this select 1;

// Подавляющий огонь
{
    _x doTarget _enemy;
    _x fireAtTarget _enemy;
    _x setSkill ["aimingAccuracy", 0.4]; // Снижение точности для реалистичного подавления
} forEach units _group;
// Debugging completed for fn_suppressiveFire.sqf
diag_log format ["[DEBUG] Function fn_suppressiveFire.sqf completed by: %1", player];

// Debugging completed for fn_suppressiveFire.sqf
diag_log format ["[DEBUG] Function fn_suppressiveFire.sqf completed by: %1", player];
