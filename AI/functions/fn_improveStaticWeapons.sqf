// Debugging fn_improveStaticWeapons.sqf

diag_log format ["[DEBUG] Function fn_improveStaticWeapons.sqf started by: %1", player];

// Debugging fn_improveStaticWeapons.sqf

diag_log format ["[DEBUG] Function fn_improveStaticWeapons.sqf started by: %1", player];

private _unit = _this select 0;
private _enemyDistanceThreshold = 1500;

_unit addEventHandler ["GetIn", {
    params ["_unit", "_role", "_vehicle"];
    if (vehicle _unit isKindOf "StaticWeapon") then {
        _unit setSkill ["aimingAccuracy", 0.95];
        _unit setSkill ["spotTime", 0.2];
    };
}];


        // Dynamic use of static weapons
        if (isStaticWeaponAvailable()) {
            assignStaticWeaponOperator();
            engageTargetsWithStaticWeapon();
        }
        


        // Improved logic for handling static weapons
        if (enemyInFiringRange()) {
            engageTargetWithStaticWeapon();
        }
        
// Debugging completed for fn_improveStaticWeapons.sqf
diag_log format ["[DEBUG] Function fn_improveStaticWeapons.sqf completed by: %1", player];

// Debugging completed for fn_improveStaticWeapons.sqf
diag_log format ["[DEBUG] Function fn_improveStaticWeapons.sqf completed by: %1", player];
