// Debugging fn_aiFrontlineBehavior.sqf

diag_log format ["[DEBUG] Function fn_aiFrontlineBehavior.sqf started by: %1", player];

// Debugging fn_aiFrontlineBehavior.sqf

diag_log format ["[DEBUG] Function fn_aiFrontlineBehavior.sqf started by: %1", player];

// Поведение ИИ на линии фронта
private _group = _this select 0;
private _marker = selectRandom ["Frontline_1", "Frontline_2", "Frontline_3"];

{
    _x doMove getMarkerPos _marker;
    _x setBehaviour "COMBAT";
    _x setSpeedMode "FULL";
} forEach units _group;
// Debugging completed for fn_aiFrontlineBehavior.sqf
diag_log format ["[DEBUG] Function fn_aiFrontlineBehavior.sqf completed by: %1", player];

// Debugging completed for fn_aiFrontlineBehavior.sqf
diag_log format ["[DEBUG] Function fn_aiFrontlineBehavior.sqf completed by: %1", player];
