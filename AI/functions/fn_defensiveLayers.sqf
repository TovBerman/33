// Debugging fn_defensiveLayers.sqf

diag_log format ["[DEBUG] Function fn_defensiveLayers.sqf started by: %1", player];

// Debugging fn_defensiveLayers.sqf

diag_log format ["[DEBUG] Function fn_defensiveLayers.sqf started by: %1", player];

private _group = _this select 0;

// Построение многоуровневой обороны
{
    if (_forEachIndex == 0) then {
        _x doMove (getMarkerPos "SniperPosition");
        _x setBehaviour "STEALTH";
    } else {
        _x doMove (getMarkerPos "DefenseLine");
        _x setBehaviour "COMBAT";
    };
} forEach units _group;
// Debugging completed for fn_defensiveLayers.sqf
diag_log format ["[DEBUG] Function fn_defensiveLayers.sqf completed by: %1", player];

// Debugging completed for fn_defensiveLayers.sqf
diag_log format ["[DEBUG] Function fn_defensiveLayers.sqf completed by: %1", player];
