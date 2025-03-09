// Debugging fn_psychologyAndMorale.sqf

diag_log format ["[DEBUG] Function fn_psychologyAndMorale.sqf started by: %1", player];

// Debugging fn_psychologyAndMorale.sqf

diag_log format ["[DEBUG] Function fn_psychologyAndMorale.sqf started by: %1", player];

private _group = _this select 0;

// Проверка уровня потерь
if ((count units _group) < 0.5 * (count (units group _group))) then {
    {
        _x setBehaviour "STEALTH";
        _x doMove (getMarkerPos "SafeZone");
    } forEach units _group;
};
// Debugging completed for fn_psychologyAndMorale.sqf
diag_log format ["[DEBUG] Function fn_psychologyAndMorale.sqf completed by: %1", player];

// Debugging completed for fn_psychologyAndMorale.sqf
diag_log format ["[DEBUG] Function fn_psychologyAndMorale.sqf completed by: %1", player];
