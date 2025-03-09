// Debugging fn_attackAndDefense.sqf

diag_log format ["[DEBUG] Function fn_attackAndDefense.sqf started by: %1", player];

// Debugging fn_attackAndDefense.sqf

diag_log format ["[DEBUG] Function fn_attackAndDefense.sqf started by: %1", player];

params ["_group", "_target"];

{
    _x doTarget _target;
    _x doFire _target;
    _x setBehaviour "COMBAT";
} forEach units _group;
// Enhanced defensive strategies
private _keyPositions = [getPos player, getMarkerPos "Base"]; // Define critical defense zones
{
    _unit assignAsGuard _x; // Assign units to defend critical zones
    _unit doMove _x;
    _unit enableDynamicSimulation true;
    [_unit, "SAFE"] call BIS_fnc_ambientAnim; // Defensive posture
} forEach _keyPositions;

// Aggressive counterattack logic
if (count (enemies nearEntities 300) > 5) then {
    {
        _x doFire (selectRandom enemies); // Fire at visible enemies
        if (_x distance enemies < 200) then {
            _x setCombatMode "RED"; // Aggressive attack mode for close-range enemies
        };
    } forEach units group player;
};

// Debugging completed for fn_attackAndDefense.sqf
diag_log format ["[DEBUG] Function fn_attackAndDefense.sqf completed by: %1", player];

// Debugging completed for fn_attackAndDefense.sqf
diag_log format ["[DEBUG] Function fn_attackAndDefense.sqf completed by: %1", player];
