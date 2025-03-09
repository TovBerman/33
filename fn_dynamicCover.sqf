
// Enhanced dynamic cover logic

diag_log "[DEBUG] Enhanced dynamic cover function started";

private _unit = player;
private _threat = nearestEnemy _unit;
private _coverPositions = nearestObjects [_unit, ["Building", "Tree", "Wall", "Rock"], 100]; // Scan for cover in 100m

if (count _coverPositions > 0) then {
    private _bestCover = objNull;
    private _highestScore = -1;

    {
        private _distance = _unit distance _x;
        private _lineOfSight = _unit knowsAbout _threat > 0 && lineIntersects [getPosASL _x, getPosASL _threat];
        private _score = 0;

        if (_lineOfSight) then {_score = _score + 30;}; // Prioritize covers with line of sight to the enemy
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
        _unit doMove getPos _bestCover;
        diag_log format ["[DEBUG] Moving to best cover: %1 by %2", _bestCover, _unit];
        _unit throw "SmokeShell"; // Use smoke for safer movement
    };
} else {
    diag_log format ["[DEBUG] No cover available for: %1", _unit];
};

diag_log "[DEBUG] Enhanced dynamic cover function completed";
