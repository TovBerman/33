// Debugging fn_weatherAdaptation.sqf

diag_log format ["[DEBUG] Function fn_weatherAdaptation.sqf started by: %1", player];

// Debugging fn_weatherAdaptation.sqf

diag_log format ["[DEBUG] Function fn_weatherAdaptation.sqf started by: %1", player];

private _unit = _this select 0;

// Адаптация к погодным условиям
if (overcast > 0.5 || fog > 0.3) then {
    _unit setSkill ["aimingAccuracy", 0.6]; // Снижение точности
    _unit setSkill ["spotDistance", 0.5]; // Уменьшение дальности обнаружения
} else {
    _unit setSkill ["aimingAccuracy", 0.9]; // Увеличение точности
    _unit setSkill ["spotDistance", 1.5]; // Увеличение дальности обнаружения
};
// Debugging completed for fn_weatherAdaptation.sqf
diag_log format ["[DEBUG] Function fn_weatherAdaptation.sqf completed by: %1", player];

// Debugging completed for fn_weatherAdaptation.sqf
diag_log format ["[DEBUG] Function fn_weatherAdaptation.sqf completed by: %1", player];
