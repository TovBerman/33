// Debugging fn_initializeFrontline.sqf

diag_log format ["[DEBUG] Function fn_initializeFrontline.sqf started by: %1", player];

// Debugging fn_initializeFrontline.sqf

diag_log format ["[DEBUG] Function fn_initializeFrontline.sqf started by: %1", player];

// Инициализация линии фронта
private _frontlineMarkers = ["Frontline_1", "Frontline_2", "Frontline_3"];
{
    private _markerPos = [getMarkerPos "Center", 100, _forEachIndex * 60] call BIS_fnc_relPos;
    _x setMarkerPos _markerPos;
} forEach _frontlineMarkers;
// Debugging completed for fn_initializeFrontline.sqf
diag_log format ["[DEBUG] Function fn_initializeFrontline.sqf completed by: %1", player];

// Debugging completed for fn_initializeFrontline.sqf
diag_log format ["[DEBUG] Function fn_initializeFrontline.sqf completed by: %1", player];
