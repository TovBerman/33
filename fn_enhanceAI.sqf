// Debugging fn_enhanceAI.sqf

diag_log format ["[DEBUG] Function fn_enhanceAI.sqf started by: %1", player];

// Debugging fn_enhanceAI.sqf

diag_log format ["[DEBUG] Function fn_enhanceAI.sqf started by: %1", player];

private _unit = _this select 0;

// Улучшение навыков стрельбы и обнаружения
_unit setSkill ["aimingAccuracy", 0.95]; // Повышаем точность стрельбы
_unit setSkill ["aimingShake", 0.05]; // Уменьшаем дрожание прицела
_unit setSkill ["aimingSpeed", 1.0]; // Повышаем скорость прицеливания
_unit setSkill ["spotDistance", 2.0]; // Увеличиваем дальность обнаружения
_unit setSkill ["spotTime", 0.15]; // Ускоряем обнаружение целей
_unit setSkill ["courage", 1.0]; // Повышаем смелость
_unit setSkill ["commanding", 1.0]; // Повышаем навыки командования
_unit setSkill ["reloadSpeed", 1.5]; // Ускоряем перезарядку
_unit setSkill ["endurance", 1.2]; // Повышаем выносливость
_unit setSkill ["general", 1.0]; // Повышаем общий уровень мастерства
_unit setSkill ["strength", 1.0]; // Повышаем физическую силу

// Улучшение укрытий
_unit setCover 1; // Заставляем юнита использовать укрытия
// Debugging completed for fn_enhanceAI.sqf
diag_log format ["[DEBUG] Function fn_enhanceAI.sqf completed by: %1", player];

// Debugging completed for fn_enhanceAI.sqf
diag_log format ["[DEBUG] Function fn_enhanceAI.sqf completed by: %1", player];
