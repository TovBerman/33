// Debugging fn_guerillaWarfare.sqf

diag_log format ["[DEBUG] Function fn_guerillaWarfare.sqf started by: %1", player];

// Debugging fn_guerillaWarfare.sqf

diag_log format ["[DEBUG] Function fn_guerillaWarfare.sqf started by: %1", player];

private _group = _this select 0;

// Поведение для партизанской тактики
{
    private _mine = "APERSMine_Range_Mag";
    _x addMagazine _mine;
    _x placeMine [_mine, getPos _x];
    _x setBehaviour "STEALTH";
} forEach units _group;

// Быстрое рассеивание
_group setSpeedMode "FULL";
// Debugging completed for fn_guerillaWarfare.sqf
diag_log format ["[DEBUG] Function fn_guerillaWarfare.sqf completed by: %1", player];

// Debugging completed for fn_guerillaWarfare.sqf
diag_log format ["[DEBUG] Function fn_guerillaWarfare.sqf completed by: %1", player];
