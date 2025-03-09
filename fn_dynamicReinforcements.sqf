// Debugging fn_dynamicReinforcements.sqf

diag_log format ["[DEBUG] Function fn_dynamicReinforcements.sqf started by: %1", player];

// Debugging fn_dynamicReinforcements.sqf

diag_log format ["[DEBUG] Function fn_dynamicReinforcements.sqf started by: %1", player];

params ["_caller", "_reinforcementType"];

private _reinforcements = createGroup east;
for "_i" from 1 to 5 do {
    _reinforcements createUnit [_reinforcementType, getPos _caller, [], 0, "FORM"];
};
// Debugging completed for fn_dynamicReinforcements.sqf
diag_log format ["[DEBUG] Function fn_dynamicReinforcements.sqf completed by: %1", player];

// Debugging completed for fn_dynamicReinforcements.sqf
diag_log format ["[DEBUG] Function fn_dynamicReinforcements.sqf completed by: %1", player];
