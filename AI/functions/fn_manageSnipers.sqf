// Debugging fn_manageSnipers.sqf

diag_log format ["[DEBUG] Function fn_manageSnipers.sqf started by: %1", player];

// Debugging fn_manageSnipers.sqf

diag_log format ["[DEBUG] Function fn_manageSnipers.sqf started by: %1", player];

private _unit = _this select 0;
private _enemyDistanceThreshold = 1000;

if (primaryWeapon _unit in ["srifle_DMR_01_F", "srifle_LRR_F"]) then {
    _unit addEventHandler ["EnemyDetected", {
        params ["_unit", "_enemy"];
        _unit doWatch _enemy;
        _unit setBehaviour "STEALTH";
    }];
};


        // Sniper engagement improvements
        if (isSniperWeaponEquipped() && targetInSight()) {
            engagePriorityTarget();
        }
        
// Debugging completed for fn_manageSnipers.sqf
diag_log format ["[DEBUG] Function fn_manageSnipers.sqf completed by: %1", player];

// Debugging completed for fn_manageSnipers.sqf
diag_log format ["[DEBUG] Function fn_manageSnipers.sqf completed by: %1", player];
