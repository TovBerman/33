// Debugging fn_timeAdaptation.sqf

diag_log format ["[DEBUG] Function fn_timeAdaptation.sqf started by: %1", player];

// Debugging fn_timeAdaptation.sqf

diag_log format ["[DEBUG] Function fn_timeAdaptation.sqf started by: %1", player];

private _unit = _this select 0;

// Поведение в зависимости от времени суток
if (dayTime < 6 || dayTime > 20) then {
    _unit enableNVG true;
    _unit setBehaviour "STEALTH";
} else {
    _unit enableNVG false;
    _unit setBehaviour "AWARE";
};
// Debugging completed for fn_timeAdaptation.sqf
diag_log format ["[DEBUG] Function fn_timeAdaptation.sqf completed by: %1", player];

// Debugging completed for fn_timeAdaptation.sqf
diag_log format ["[DEBUG] Function fn_timeAdaptation.sqf completed by: %1", player];
