// Debugging fn_droneSupport.sqf

diag_log format ["[DEBUG] Function fn_droneSupport.sqf started by: %1", player];

// Debugging fn_droneSupport.sqf

diag_log format ["[DEBUG] Function fn_droneSupport.sqf started by: %1", player];

private _unit = _this select 0;
private _drone = createVehicle ["B_UAV_01_F", getPos _unit, [], 0, "FLY"];

// Подключение дрона
_drone doMove (getMarkerPos "TargetArea");
// Debugging completed for fn_droneSupport.sqf
diag_log format ["[DEBUG] Function fn_droneSupport.sqf completed by: %1", player];

// Debugging completed for fn_droneSupport.sqf
diag_log format ["[DEBUG] Function fn_droneSupport.sqf completed by: %1", player];
