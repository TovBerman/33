// Debugging fn_resourceManagement.sqf

diag_log format ["[DEBUG] Function fn_resourceManagement.sqf started by: %1", player];

// Debugging fn_resourceManagement.sqf

diag_log format ["[DEBUG] Function fn_resourceManagement.sqf started by: %1", player];

params ["_group"];

{
    private _supplyBox = nearestObjects [_x, ["Box_NATO_AmmoVeh_F"], 50];
    if (count _supplyBox > 0) then {
        _x addMagazine "30Rnd_65x39_caseless_mag";
    };
} forEach units _group;
// Debugging completed for fn_resourceManagement.sqf
diag_log format ["[DEBUG] Function fn_resourceManagement.sqf completed by: %1", player];

// Debugging completed for fn_resourceManagement.sqf
diag_log format ["[DEBUG] Function fn_resourceManagement.sqf completed by: %1", player];
