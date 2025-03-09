
// Enhanced tactical maneuvers logic with cover hopping and limited open area movement

diag_log "[DEBUG] Tactical maneuvers function started";

private _unit = player;
private _enemy = nearestEnemy _unit;
private _coverPositions = nearestObjects [_unit, ["Building", "Tree", "Wall", "Rock"], 100]; // Search for nearby cover
private _isOpenArea = (count _coverPositions == 0);
private _manueverType = missionNamespace getVariable ["currentManeuver", "none"]; // Example variable for maneuver type

if (_isOpenArea && _manueverType in ["assault", "retreat", "flanking"]) then {
    if (!isNil "SmokeShell") then {
        _unit throw "SmokeShell"; // Use smoke for safer movement in open areas
        diag_log format ["[DEBUG] Smoke used for open area movement by %1", _unit];
    };
    _unit doMove position _enemy; // Move towards the enemy or retreat target
    diag_log format ["[DEBUG] Moving in open area during %1 maneuver by %2", _manueverType, _unit];
} else {
    private _bestCover = objNull;
    private _highestScore = -1;

    // Evaluate covers for hopping
    {
        private _distance = _unit distance _x;
        private _score = 0;
        if (_x isKindOf "Building") then {_score = _score + 50;};
        if (_x isKindOf "Tree") then {_score = _score + 20;};
        if (_x isKindOf "Wall") then {_score = _score + 40;};
        if (_x isKindOf "Rock") then {_score = _score + 35;};
        _score = _score - _distance; // Penalize distant cover

        if (_score > _highestScore) then {
            _highestScore = _score;
            _bestCover = _x;
        };
    } forEach _coverPositions;

    if (!isNull _bestCover) then {
        _unit doMove getPos _bestCover; // Move to the best cover
        diag_log format ["[DEBUG] Moving to cover: %1 by %2", _bestCover, _unit];
        if (!isNil "SmokeShell") then {
            _unit throw "SmokeShell"; // Use smoke for hopping between covers
            diag_log format ["[DEBUG] Smoke used for cover movement by %1", _unit];
        };
    } else {
        diag_log format ["[DEBUG] No valid cover found for %1", _unit];
    };
};

diag_log "[DEBUG] Tactical maneuvers function completed";
