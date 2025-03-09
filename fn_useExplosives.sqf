// Debugging fn_useExplosives.sqf

diag_log format ["[DEBUG] Function fn_useExplosives.sqf started by: %1", player];

// Debugging fn_useExplosives.sqf

diag_log format ["[DEBUG] Function fn_useExplosives.sqf started by: %1", player];

private _unit = _this select 0;
private _enemyDistanceThreshold = 100;

_unit addEventHandler ["FiredNear", {
    params ["_unit", "_shooter", "_pos", "_distance"];
    if (_distance < _enemyDistanceThreshold && _unit ammo "HandGrenade" > 0) then {
        _unit throw ["HandGrenade", getPos _shooter];
    };
}];
// Debugging completed for fn_useExplosives.sqf
diag_log format ["[DEBUG] Function fn_useExplosives.sqf completed by: %1", player];

// Debugging completed for fn_useExplosives.sqf
diag_log format ["[DEBUG] Function fn_useExplosives.sqf completed by: %1", player];
