// Debugging fn_peekFromCover.sqf

diag_log format ["[DEBUG] Function fn_peekFromCover.sqf started by: %1", player];

// Debugging fn_peekFromCover.sqf

diag_log format ["[DEBUG] Function fn_peekFromCover.sqf started by: %1", player];

private _unit = _this select 0;

// Выглядывание из-за укрытия
if (random 1 > 0.5) then {
    _unit setPos [getPos _unit select 0, getPos _unit select 1, (getPos _unit select 2) + 1];
    _unit doWatch (getPos _unit vectorAdd [50, 0, 0]);
    sleep 2;
};
// Debugging completed for fn_peekFromCover.sqf
diag_log format ["[DEBUG] Function fn_peekFromCover.sqf completed by: %1", player];

// Debugging completed for fn_peekFromCover.sqf
diag_log format ["[DEBUG] Function fn_peekFromCover.sqf completed by: %1", player];
