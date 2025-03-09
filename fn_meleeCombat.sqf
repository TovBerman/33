// Debugging fn_meleeCombat.sqf

diag_log format ["[DEBUG] Function fn_meleeCombat.sqf started by: %1", player];

// Debugging fn_meleeCombat.sqf

diag_log format ["[DEBUG] Function fn_meleeCombat.sqf started by: %1", player];

private _unit = _this select 0;
private _enemy = _this select 1;

// Ближний бой
if ((getPos _unit distance getPos _enemy) < 10) then {
    _unit forceWeaponFire ["Throw", "SmokeShell"];
    _unit doMove getPos _enemy;
};
// Debugging completed for fn_meleeCombat.sqf
diag_log format ["[DEBUG] Function fn_meleeCombat.sqf completed by: %1", player];

// Debugging completed for fn_meleeCombat.sqf
diag_log format ["[DEBUG] Function fn_meleeCombat.sqf completed by: %1", player];
