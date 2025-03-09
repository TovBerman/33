
// Updated grenade and launcher usage logic

diag_log "[DEBUG] Updated grenade usage function started";

private _unit = player;
private _enemy = nearestEnemy _unit;
private _enemyPos = position _enemy;
private _distanceToEnemy = _unit distance _enemyPos;

// Fragmentation grenades
if (_distanceToEnemy < 40) then {
    _unit throw "HandGrenade"; // Use fragmentation grenade
    diag_log format ["[DEBUG] Fragmentation grenade used by %1 at distance %2", _unit, _distanceToEnemy];
};

// Underbarrel grenade launchers
if (_distanceToEnemy < 150 && lineIntersects [getPosASL _unit, getPosASL _enemy]) then {
    _unit fire "G_40mm_HE"; // Use underbarrel grenade launcher
    diag_log format ["[DEBUG] Underbarrel grenade launcher used by %1 at distance %2", _unit, _distanceToEnemy];
};

// Rocket launchers
if (_distanceToEnemy < 150 && !(lineIntersects [getPosASL _unit, getPosASL _enemy])) then {
    _unit fire "RPG32_F"; // Use launcher for enemies in cover
    diag_log format ["[DEBUG] Launcher used on enemy in cover by %1 at distance %2", _unit, _distanceToEnemy];
};

// Vehicles (ground and air)
private _vehicles = nearestObjects [_unit, ["Car", "Tank", "Helicopter", "Plane"], 1000]; // Search for vehicles in 1km radius
{
    if (alive _x) then {
        _unit fire "RPG32_F"; // Use launcher for vehicles
        diag_log format ["[DEBUG] Launcher used on vehicle %1 by %2 at distance %3", _x, _unit, (_unit distance _x)];
    };
} forEach _vehicles;

diag_log "[DEBUG] Updated grenade usage function completed";
