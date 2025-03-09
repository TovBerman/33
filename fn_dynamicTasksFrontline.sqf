// Debugging fn_dynamicTasksFrontline.sqf

diag_log format ["[DEBUG] Function fn_dynamicTasksFrontline.sqf started by: %1", player];

// Debugging fn_dynamicTasksFrontline.sqf

diag_log format ["[DEBUG] Function fn_dynamicTasksFrontline.sqf started by: %1", player];

// Задачи в зависимости от положения линии фронта
private _frontlineMarkers = ["Frontline_1", "Frontline_2", "Frontline_3"];
private _playerGroup = group player;

{
    if (markerPos _x distance getMarkerPos "Base") < 500 then {
        // Задача на защиту
        ["defend", getMarkerPos _x] call BIS_fnc_taskCreate;
    } else {
        // Задача на атаку
        ["attack", getMarkerPos _x] call BIS_fnc_taskCreate;
    };
} forEach _frontlineMarkers;
// Debugging completed for fn_dynamicTasksFrontline.sqf
diag_log format ["[DEBUG] Function fn_dynamicTasksFrontline.sqf completed by: %1", player];

// Debugging completed for fn_dynamicTasksFrontline.sqf
diag_log format ["[DEBUG] Function fn_dynamicTasksFrontline.sqf completed by: %1", player];
