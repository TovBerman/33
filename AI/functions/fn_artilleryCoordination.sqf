// Debugging fn_artilleryCoordination.sqf

diag_log format ["[DEBUG] Function fn_artilleryCoordination.sqf started by: %1", player];

// Debugging fn_artilleryCoordination.sqf

diag_log format ["[DEBUG] Function fn_artilleryCoordination.sqf started by: %1", player];

params ["_artillery", "_target"];

// Координация артиллерийского удара
private _targetZone = createMarker ["ArtilleryZone", getPos _target];
_artillery doArtilleryFire [getMarkerPos _targetZone, "8Rnd_82mm_Mo_shells", 5];
// Debugging completed for fn_artilleryCoordination.sqf
diag_log format ["[DEBUG] Function fn_artilleryCoordination.sqf completed by: %1", player];

// Debugging completed for fn_artilleryCoordination.sqf
diag_log format ["[DEBUG] Function fn_artilleryCoordination.sqf completed by: %1", player];
