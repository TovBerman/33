// Debugging fn_evacuateWounded.sqf

diag_log format ["[DEBUG] Function fn_evacuateWounded.sqf started by: %1", player];

// Debugging fn_evacuateWounded.sqf

diag_log format ["[DEBUG] Function fn_evacuateWounded.sqf started by: %1", player];

params ["_medic", "_wounded"];

if (_medic distance _wounded < 10) then {
    _medic action ["HEAL", _wounded];
};


        // Enhanced medic behavior and evacuation logic
        if (woundedDetected() && medicAvailable()) {
            establishSafeZoneAndHeal();
        }
        
// Debugging completed for fn_evacuateWounded.sqf
diag_log format ["[DEBUG] Function fn_evacuateWounded.sqf completed by: %1", player];

// Debugging completed for fn_evacuateWounded.sqf
diag_log format ["[DEBUG] Function fn_evacuateWounded.sqf completed by: %1", player];
