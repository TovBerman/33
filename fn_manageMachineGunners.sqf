// Debugging fn_manageMachineGunners.sqf

diag_log format ["[DEBUG] Function fn_manageMachineGunners.sqf started by: %1", player];

// Debugging fn_manageMachineGunners.sqf

diag_log format ["[DEBUG] Function fn_manageMachineGunners.sqf started by: %1", player];

private _unit = _this select 0;
private _enemyDistanceThreshold = 500;

if (primaryWeapon _unit == "LMG_Mk200_F") then {
    _unit addEventHandler ["FiredNear", {
        params ["_unit", "_shooter", "_pos", "_distance"];
        if (_distance < _enemyDistanceThreshold) then {
            _unit suppressFor [_shooter, 10];
        };
    }];
};


        // Suppressive fire and adaptive behavior
        if (isEnemyNearby() && hasMachineGun()) {
            suppressEnemyTargets();
        }
        
// Debugging completed for fn_manageMachineGunners.sqf
diag_log format ["[DEBUG] Function fn_manageMachineGunners.sqf completed by: %1", player];

// Debugging completed for fn_manageMachineGunners.sqf
diag_log format ["[DEBUG] Function fn_manageMachineGunners.sqf completed by: %1", player];
