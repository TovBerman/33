// Debugging fn_useTransport.sqf

diag_log format ["[DEBUG] Function fn_useTransport.sqf started by: %1", player];

// Debugging fn_useTransport.sqf

diag_log format ["[DEBUG] Function fn_useTransport.sqf started by: %1", player];

private _unit = _this select 0;
private _vehicle = vehicle _unit;
private _driver = driver _vehicle;
private _enemyDistanceThreshold = 500; // Максимальная дистанция до врага для использования транспорта
private _safeDistanceThreshold = 200; // Дистанция до врага, чтобы считать зону безопасной

if (!isNull _vehicle) then {
    _unit addEventHandler ["GetIn", {
        params ["_unit", "_role", "_vehicle"];
        if (isNull _driver) then {
            _unit moveInDriver _vehicle;
        } else {
            _unit moveInCargo _vehicle;
        };
    }];

    _unit addEventHandler ["GetOut", {
        params ["_unit", "_role", "_vehicle"];
        private _nearbyEnemies = nearestObjects [_unit, ["Man"], _enemyDistanceThreshold];
        if (count _nearbyEnemies > 0) then {
            private _enemy = _nearbyEnemies select 0;
            _unit doMove (getPos _enemy);
            _unit setBehaviour "COMBAT";
        };
    }];
};
// Debugging completed for fn_useTransport.sqf
diag_log format ["[DEBUG] Function fn_useTransport.sqf completed by: %1", player];

// Debugging completed for fn_useTransport.sqf
diag_log format ["[DEBUG] Function fn_useTransport.sqf completed by: %1", player];
