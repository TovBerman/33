// Debugging fn_alliedInteraction.sqf

diag_log format ["[DEBUG] Function fn_alliedInteraction.sqf started by: %1", player];

// Debugging fn_alliedInteraction.sqf

diag_log format ["[DEBUG] Function fn_alliedInteraction.sqf started by: %1", player];

private _group = _this select 0;

// Обмен ресурсами между союзниками
{
    if (magazines _x isEqualTo []) then {
        private _ally = selectRandom units group _group;
        _x addMagazine (magazines _ally select 0);
    };
} forEach units _group;
// Debugging completed for fn_alliedInteraction.sqf
diag_log format ["[DEBUG] Function fn_alliedInteraction.sqf completed by: %1", player];

// Debugging completed for fn_alliedInteraction.sqf
diag_log format ["[DEBUG] Function fn_alliedInteraction.sqf completed by: %1", player];
