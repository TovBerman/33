// Debugging fn_transferRoles.sqf

diag_log format ["[DEBUG] Function fn_transferRoles.sqf started by: %1", player];

// Debugging fn_transferRoles.sqf

diag_log format ["[DEBUG] Function fn_transferRoles.sqf started by: %1", player];

private _group = _this select 0;

// Передача ролей после потерь
private _leader = leader _group;
if (!alive _leader) then {
    private _newLeader = selectRandom (units _group select {alive _x});
    if (!isNil "_newLeader") then {
        _group setGroupLeader _newLeader;
    };
};
// Debugging completed for fn_transferRoles.sqf
diag_log format ["[DEBUG] Function fn_transferRoles.sqf completed by: %1", player];

// Debugging completed for fn_transferRoles.sqf
diag_log format ["[DEBUG] Function fn_transferRoles.sqf completed by: %1", player];
