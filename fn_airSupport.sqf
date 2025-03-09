// Debugging fn_airSupport.sqf

diag_log format ["[DEBUG] Function fn_airSupport.sqf started by: %1", player];

// Debugging fn_airSupport.sqf

diag_log format ["[DEBUG] Function fn_airSupport.sqf started by: %1", player];

params ["_caller", "_target"];

private _jet = createVehicle ["B_Plane_CAS_01_F", getPos _caller, [], 0, "FLY"];
_jet doTarget _target;
_jet fireAtTarget _target;
// Debugging completed for fn_airSupport.sqf
diag_log format ["[DEBUG] Function fn_airSupport.sqf completed by: %1", player];

// Debugging completed for fn_airSupport.sqf
diag_log format ["[DEBUG] Function fn_airSupport.sqf completed by: %1", player];
