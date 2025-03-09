// Debugging fn_controlledFire.sqf

diag_log format ["[DEBUG] Function fn_controlledFire.sqf started by: %1", player];

// Debugging fn_controlledFire.sqf

diag_log format ["[DEBUG] Function fn_controlledFire.sqf started by: %1", player];

private _unit = _this select 0;
private _enemy = _this select 1;

// Огонь одиночными или очередями
if ((getPos _unit distance getPos _enemy) < 100) then {
    _unit setWeaponMode "FULLAUTO";
} else {
    _unit setWeaponMode "SINGLE";
};
// Debugging completed for fn_controlledFire.sqf
diag_log format ["[DEBUG] Function fn_controlledFire.sqf completed by: %1", player];

// Debugging completed for fn_controlledFire.sqf
diag_log format ["[DEBUG] Function fn_controlledFire.sqf completed by: %1", player];
