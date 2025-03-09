// Debugging fn_complexScenarios.sqf

diag_log format ["[DEBUG] Function fn_complexScenarios.sqf started by: %1", player];

// Debugging fn_complexScenarios.sqf

diag_log format ["[DEBUG] Function fn_complexScenarios.sqf started by: %1", player];

private _group = _this select 0;
private _scenarioType = _this select 1;

// Сценарий Antistasi
if (_scenarioType isEqualTo "Antistasi") then {
    {
        private _base = getMarkerPos "EnemyBase";
        _x doMove _base;
        _x setBehaviour "STEALTH";
    } forEach units _group;
};

// Сценарий Warlords
if (_scenarioType isEqualTo "Warlords") then {
    {
        private _zone = getMarkerPos "CaptureZone";
        _x doMove _zone;
        _x setBehaviour "AWARE";
    } forEach units _group;
};
// Debugging completed for fn_complexScenarios.sqf
diag_log format ["[DEBUG] Function fn_complexScenarios.sqf completed by: %1", player];

// Debugging completed for fn_complexScenarios.sqf
diag_log format ["[DEBUG] Function fn_complexScenarios.sqf completed by: %1", player];
