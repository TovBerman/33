// Debugging fn_vehicleIntegration.sqf

diag_log format ["[DEBUG] Function fn_vehicleIntegration.sqf started by: %1", player];

// Debugging fn_vehicleIntegration.sqf

diag_log format ["[DEBUG] Function fn_vehicleIntegration.sqf started by: %1", player];


// Debugging vehicle integration logic

diag_log "[DEBUG] Vehicle Integration function started";

params ["_group", "_vehicle"];

private _crew = units _group select [0, 3];
{
    _x assignAsDriver _vehicle;
    _x moveInDriver _vehicle;
} forEach _crew;

_vehicle doMove getMarkerPos "attackZone";


        // Advanced vehicle interaction
        if (isVehicleAvailable()) {
            evaluateAndAssignVehicle();
        }
        if (vehicleUnderThreat() && driverAvailable()) {
            moveVehicleToSafety();
        }
        


        // Advanced vehicle interaction
        if (nearestVehicleAvailable()) {
            boardVehicle(nearestVehicle);
        }
        if (vehicleUnderThreat()) {
            repositionVehicleToSafety();
        }
        
// Enhanced logic for vehicle search and capture

private _nearbyVehicles = nearestObjects [player, ["LandVehicle", "Air", "Ship"], 500]; // Search for vehicles within 500 meters
private _preferredVehicle = objNull;

if (count _nearbyVehicles > 0) then {
    _preferredVehicle = selectBestVehicle _nearbyVehicles; // Function to prioritize vehicles based on type and condition
    if (!isNull _preferredVehicle && {alive _preferredVehicle}) then {
        if (crew _preferredVehicle isEqualTo []) then {
            player assignAsDriver _preferredVehicle;
            player moveInDriver _preferredVehicle; // Occupy the driver's seat if available
        };
    };
};

// Function to prioritize vehicles
selectBestVehicle = {
    private _vehicles = _this;
    private _bestVehicle = objNull;
    private _maxScore = -1;

    {
        private _score = 0;
        if (_x isKindOf "Tank") then {_score = _score + 50;};
        if (_x isKindOf "Car") then {_score = _score + 20;};
        if (_x isKindOf "Helicopter") then {_score = _score + 40;};
        if (_x isKindOf "Plane") then {_score = _score + 30;};
        if (damage _x > 0.5) then {_score = _score - 30;}; // Penalize damaged vehicles
        if (_score > _maxScore) then {
            _bestVehicle = _x;
            _maxScore = _score;
        };
    } forEach _vehicles;

    _bestVehicle
};


// Debugging completed for vehicle integration
diag_log "[DEBUG] Vehicle Integration function completed successfully";

// Debugging completed for fn_vehicleIntegration.sqf
diag_log format ["[DEBUG] Function fn_vehicleIntegration.sqf completed by: %1", player];

// Debugging completed for fn_vehicleIntegration.sqf
diag_log format ["[DEBUG] Function fn_vehicleIntegration.sqf completed by: %1", player];
