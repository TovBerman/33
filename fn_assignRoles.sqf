// Debugging fn_assignRoles.sqf

diag_log format ["[DEBUG] Function fn_assignRoles.sqf started by: %1", player];

// Debugging fn_assignRoles.sqf

diag_log format ["[DEBUG] Function fn_assignRoles.sqf started by: %1", player];

params ["_group"];

// Формируем роли
private _roles = ["TeamLeader", "Rifleman", "Grenadier"];
{
    private _role = _roles select (_forEachIndex mod count _roles);
    _x setVariable ["role", _role];
} forEach units _group;
// Debugging completed for fn_assignRoles.sqf
diag_log format ["[DEBUG] Function fn_assignRoles.sqf completed by: %1", player];

// Debugging completed for fn_assignRoles.sqf
diag_log format ["[DEBUG] Function fn_assignRoles.sqf completed by: %1", player];
