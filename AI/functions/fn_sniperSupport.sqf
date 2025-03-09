// Debugging fn_sniperSupport.sqf

diag_log format ["[DEBUG] Function fn_sniperSupport.sqf started by: %1", player];

// Debugging fn_sniperSupport.sqf

diag_log format ["[DEBUG] Function fn_sniperSupport.sqf started by: %1", player];

private _sniper = _this select 0;
private _target = _this select 1;

// Снайперская поддержка
if (_sniper distance _target > 300) then {
    _sniper doWatch _target;
    _sniper fireAtTarget _target;
};
// Debugging completed for fn_sniperSupport.sqf
diag_log format ["[DEBUG] Function fn_sniperSupport.sqf completed by: %1", player];

// Debugging completed for fn_sniperSupport.sqf
diag_log format ["[DEBUG] Function fn_sniperSupport.sqf completed by: %1", player];
