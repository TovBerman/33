// Debugging fn_vehicleResponse.sqf

diag_log format ["[DEBUG] Function fn_vehicleResponse.sqf started by: %1", player];

// Debugging fn_vehicleResponse.sqf

diag_log format ["[DEBUG] Function fn_vehicleResponse.sqf started by: %1", player];

private _group = _this select 0;
private _vehicle = _this select 1;

// Реакция на технику
if (_vehicle isKindOf "Tank" || _vehicle isKindOf "Car") then {
    {
        private _cover = nearestObject [_x, ["House", "Rock", "Tree"], 100];
        if (!isNil "_cover") then {
            _x doMove (getPos _cover);
        };
        _x setBehaviour "STEALTH";
    } forEach units _group;
};
// Enhanced vehicle response logic

private _enemyVehicles = nearestObjects [player, ["LandVehicle", "Air", "Ship"], 1000]; // Scan for enemy vehicles within 1km
if (count _enemyVehicles > 0) then {
    {
        if (_x isKindOf "Tank" || _x isKindOf "Helicopter") then {
            player commandFire _x; // Engage high-value targets first
        } else {
            if (_x distance player < 300) then {
                player doTarget _x; // Prioritize closer threats
            };
        };
    } forEach _enemyVehicles;
};

// Defensive maneuvers in case of vehicle attack
if (vehicle player != player) then {
    private _myVehicle = vehicle player;
    if (_myVehicle getHit "engine" > 0.7) then {
        // Evacuate vehicle if heavily damaged
        {unAssignVehicle _x; _x action ["Eject", _myVehicle];} forEach crew _myVehicle;
    };
};

// Debugging completed for fn_vehicleResponse.sqf
diag_log format ["[DEBUG] Function fn_vehicleResponse.sqf completed by: %1", player];

// Debugging completed for fn_vehicleResponse.sqf
diag_log format ["[DEBUG] Function fn_vehicleResponse.sqf completed by: %1", player];
