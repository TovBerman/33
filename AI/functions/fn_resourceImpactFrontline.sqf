// Debugging fn_resourceImpactFrontline.sqf

diag_log format ["[DEBUG] Function fn_resourceImpactFrontline.sqf started by: %1", player];

// Debugging fn_resourceImpactFrontline.sqf

diag_log format ["[DEBUG] Function fn_resourceImpactFrontline.sqf started by: %1", player];

// Управление ресурсами в зависимости от линии фронта
private _frontlineMarkers = ["Frontline_1", "Frontline_2", "Frontline_3"];
private _supplyReductionFactor = 0;

// Проверка положения линии фронта
{
    if (markerPos _x distance getMarkerPos "Base") > 500 then {
        _supplyReductionFactor = _supplyReductionFactor + 10;
    };
} forEach _frontlineMarkers;

// Уменьшение доступных ресурсов
player setVariable ["supplyAvailable", (player getVariable "supplyAvailable") - _supplyReductionFactor];
// Debugging completed for fn_resourceImpactFrontline.sqf
diag_log format ["[DEBUG] Function fn_resourceImpactFrontline.sqf completed by: %1", player];

// Debugging completed for fn_resourceImpactFrontline.sqf
diag_log format ["[DEBUG] Function fn_resourceImpactFrontline.sqf completed by: %1", player];
