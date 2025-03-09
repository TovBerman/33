// Debugging fn_realisticLogistics.sqf

diag_log format ["[DEBUG] Function fn_realisticLogistics.sqf started by: %1", player];

// Debugging fn_realisticLogistics.sqf

diag_log format ["[DEBUG] Function fn_realisticLogistics.sqf started by: %1", player];

private _unit = _this select 0;
private _supplyTruck = _this select 1;

// Проверка ресурсов
if (magazines _unit isEqualTo []) then {
    _unit moveInCargo _supplyTruck;
    _supplyTruck doMove (getMarkerPos "SupplyPoint");
};
// Debugging completed for fn_realisticLogistics.sqf
diag_log format ["[DEBUG] Function fn_realisticLogistics.sqf completed by: %1", player];

// Debugging completed for fn_realisticLogistics.sqf
diag_log format ["[DEBUG] Function fn_realisticLogistics.sqf completed by: %1", player];
