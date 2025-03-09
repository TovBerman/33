// Debugging fn_adaptiveTactics.sqf

diag_log format ["[DEBUG] Function fn_adaptiveTactics.sqf started by: %1", player];

// Debugging fn_adaptiveTactics.sqf

diag_log format ["[DEBUG] Function fn_adaptiveTactics.sqf started by: %1", player];

private _group = _this select 0;
private _enemy = _this select 1;

// Изменение поведения в зависимости от численности
if (count units _group > count units _enemy) then {
    {
        _x doMove (getPos _enemy);
        _x setBehaviour "COMBAT";
    } forEach units _group;
} else {
    {
        private _cover = nearestObject [_x, ["House", "Rock", "Tree"], 50];
        if (!isNil "_cover") then {
            _x doMove (getPos _cover);
        };
        _x setBehaviour "STEALTH";
    } forEach units _group;
};


        // Artillery and environmental awareness integration
        if (enemyDetected() && artilleryAvailable()) {
            requestArtillerySupport();
        }
        


        // Integrate dynamic behavior based on threat level
        if (airThreatDetected()) {
            seekCoverFromAir();
        }
        if (lowOnAmmo()) {
            prioritizeAmmoResupply();
        }
        
// Debugging completed for fn_adaptiveTactics.sqf
diag_log format ["[DEBUG] Function fn_adaptiveTactics.sqf completed by: %1", player];

// Debugging completed for fn_adaptiveTactics.sqf
diag_log format ["[DEBUG] Function fn_adaptiveTactics.sqf completed by: %1", player];
