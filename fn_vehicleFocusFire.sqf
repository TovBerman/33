// Debugging fn_vehicleFocusFire.sqf

diag_log format ["[DEBUG] Function fn_vehicleFocusFire.sqf started by: %1", player];

// Debugging fn_vehicleFocusFire.sqf

diag_log format ["[DEBUG] Function fn_vehicleFocusFire.sqf started by: %1", player];


// Debugging vehicle focus fire logic

diag_log "[DEBUG] Vehicle Focus Fire function started";

private _group = _this select 0;
private _vehicle = _this select 1;

// Приоритетный огонь по технике
{
    if (_x hasWeapon "launch_NLAW_F") then {
        _x doTarget _vehicle;
        _x fireAtTarget _vehicle;
    };
} forEach units _group;
// Improved focus fire on enemy vehicles

private _enemyVehicles = nearestObjects [player, ["LandVehicle", "Air", "Ship"], 1000]; // Detect enemy vehicles within range
if (count _enemyVehicles > 0) then {
    private _priorityTarget = selectBestVehicle _enemyVehicles;
    if (!isNull _priorityTarget) then {
        {
            if (alive _x) then {
                _x doTarget _priorityTarget; // Focus fire on priority target
                _x doFire _priorityTarget;
            };
        } forEach units group player;
    };
};

// Function to select the best target
selectBestVehicle = {
    private _vehicles = _this;
    private _bestVehicle = objNull;
    private _maxScore = -1;

    {
        private _score = 0;
        if (_x isKindOf "Tank") then {_score = _score + 50;};
        if (_x isKindOf "Helicopter") then {_score = _score + 40;};
        if (_x isKindOf "Plane") then {_score = _score + 30;};
        if (_x isKindOf "Car") then {_score = _score + 20;};
        if (damage _x > 0.5) then {_score = _score - 30;}; // Penalize damaged targets
        if (_score > _maxScore) then {
            _bestVehicle = _x;
            _maxScore = _score;
        };
    } forEach _vehicles;

    _bestVehicle
};


// Debugging completed for vehicle focus fire
diag_log "[DEBUG] Vehicle Focus Fire function completed successfully";

// Debugging completed for fn_vehicleFocusFire.sqf
diag_log format ["[DEBUG] Function fn_vehicleFocusFire.sqf completed by: %1", player];

// Debugging completed for fn_vehicleFocusFire.sqf
diag_log format ["[DEBUG] Function fn_vehicleFocusFire.sqf completed by: %1", player];
