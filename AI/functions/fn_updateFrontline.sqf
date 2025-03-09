// Debugging fn_updateFrontline.sqf

diag_log format ["[DEBUG] Function fn_updateFrontline.sqf started by: %1", player];

// Debugging fn_updateFrontline.sqf

diag_log format ["[DEBUG] Function fn_updateFrontline.sqf started by: %1", player];

// Обновление линии фронта
private _frontlineMarkers = ["Frontline_1", "Frontline_2", "Frontline_3"];
private _playerProgress = count (allUnits select {side _x isEqualTo west && alive _x});
private _enemyProgress = count (allUnits select {side _x isEqualTo east && alive _x});

if (_playerProgress > _enemyProgress) then {
    {
        private _markerPos = [_x, 50, 0] call BIS_fnc_relPos; // Сдвиг вперёд
        _x setMarkerPos _markerPos;
    } forEach _frontlineMarkers;
} else {
    {
        private _markerPos = [_x, 50, 180] call BIS_fnc_relPos; // Сдвиг назад
        _x setMarkerPos _markerPos;
    } forEach _frontlineMarkers;
};
// Debugging completed for fn_updateFrontline.sqf
diag_log format ["[DEBUG] Function fn_updateFrontline.sqf completed by: %1", player];

// Debugging completed for fn_updateFrontline.sqf
diag_log format ["[DEBUG] Function fn_updateFrontline.sqf completed by: %1", player];
