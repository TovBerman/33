[] execVM "\AdvancedCombatAI\functions\fn_assignRoles.sqf";
[] execVM "\AdvancedCombatAI\functions\fn_tacticalManeuvers.sqf";
[] execVM "\AdvancedCombatAI\functions\fn_attackAndDefense.sqf";
[] execVM "\AdvancedCombatAI\functions\fn_vehicleIntegration.sqf";
[] execVM "\AdvancedCombatAI\functions\fn_airSupport.sqf";
[] execVM "\AdvancedCombatAI\functions\fn_resourceManagement.sqf";
[] execVM "\AdvancedCombatAI\functions\fn_dynamicReinforcements.sqf";
[] execVM "\AdvancedCombatAI\functions\fn_territoryControl.sqf";
[] execVM "\AdvancedCombatAI\functions\fn_evacuateWounded.sqf";
[] execVM "\AdvancedCombatAI\functions\fn_ambushSetup.sqf";
[] execVM "\AdvancedCombatAI\functions\fn_buildTemporaryBases.sqf";
[] execVM "\AdvancedCombatAI\functions\fn_focusFire.sqf";
[] execVM "\AdvancedCombatAI\functions\fn_logisticsSupport.sqf";
[] execVM "\AdvancedCombatAI\functions\fn_regroup.sqf";
[] execVM "\AdvancedCombatAI\functions\fn_useSmoke.sqf";[] execVM "\AdvancedCombatAI\functions\fn_enhanceAI.sqf";
[] execVM "\AdvancedCombatAI\functions\fn_useTransport.sqf";
[] execVM "\AdvancedCombatAI\functions\fn_manageMachineGunners.sqf";
[] execVM "\AdvancedCombatAI\functions\fn_manageSnipers.sqf";
[] execVM "\AdvancedCombatAI\functions\fn_priorityTargets.sqf";
[] execVM "\AdvancedCombatAI\functions\fn_useExplosives.sqf";
[] execVM "\AdvancedCombatAI\functions\fn_improveStaticWeapons.sqf";
[] execVM "\AdvancedCombatAI\functions\fn_timeAdaptation.sqf";
[] execVM "\AdvancedCombatAI\functions\fn_weatherAdaptation.sqf";
[] execVM "\AdvancedCombatAI\functions\fn_artilleryCoordination.sqf";
[] execVM "\AdvancedCombatAI\functions\fn_guerillaWarfare.sqf";
[] execVM "\AdvancedCombatAI\functions\fn_realisticLogistics.sqf";
[] execVM "\AdvancedCombatAI\functions\fn_droneSupport.sqf";
[] execVM "\AdvancedCombatAI\functions\fn_psychologyAndMorale.sqf";
[] execVM "\AdvancedCombatAI\functions\fn_defensiveLayers.sqf";
[] execVM "\AdvancedCombatAI\functions\fn_underwaterTactics.sqf";
[] execVM "\AdvancedCombatAI\functions\fn_alliedInteraction.sqf";
[] execVM "\AdvancedCombatAI\functions\fn_complexScenarios.sqf";
[] execVM "\AdvancedCombatAI\functions\fn_initializeFrontline.sqf";
[] execVM "\AdvancedCombatAI\functions\fn_updateFrontline.sqf";
[] execVM "\AdvancedCombatAI\functions\fn_aiFrontlineBehavior.sqf";
[] execVM "\AdvancedCombatAI\functions\fn_resourceImpactFrontline.sqf";
[] execVM "\AdvancedCombatAI\functions\fn_dynamicTasksFrontline.sqf";
[] execVM "\AdvancedCombatAI\functions\fn_adaptiveTactics.sqf";
[] execVM "\AdvancedCombatAI\functions\fn_dynamicCover.sqf";
[] execVM "\AdvancedCombatAI\functions\fn_suppressiveFire.sqf";
[] execVM "\AdvancedCombatAI\functions\fn_grenadeUsage.sqf";
[] execVM "\AdvancedCombatAI\functions\fn_flankingManeuvers.sqf";
[] execVM "\AdvancedCombatAI\functions\fn_buildingAssault.sqf";
[] execVM "\AdvancedCombatAI\functions\fn_urbanCombat.sqf";
[] execVM "\AdvancedCombatAI\functions\fn_vehicleResponse.sqf";
[] execVM "\AdvancedCombatAI\functions\fn_explosionReactions.sqf";
[] execVM "\AdvancedCombatAI\functions\fn_transferRoles.sqf";
[] execVM "\AdvancedCombatAI\functions\fn_peekFromCover.sqf";
[] execVM "\AdvancedCombatAI\functions\fn_controlledFire.sqf";
[] execVM "\AdvancedCombatAI\functions\fn_meleeCombat.sqf";
[] execVM "\AdvancedCombatAI\functions\fn_sniperSupport.sqf";
[] execVM "\AdvancedCombatAI\functions\fn_splitGroup.sqf";
[] execVM "\AdvancedCombatAI\functions\fn_vehicleFocusFire.sqf";
[] execVM "\AdvancedCombatAI\functions\fn_dynamicallyAdaptTasks.sqf";

// Initialize key functions for Advanced Combat AI
if (isServer) then {
    // Ensure all core functions are initialized properly
    [] execVM "\AdvancedCombatAI\functions\fn_tacticalManeuvers.sqf";
    [] execVM "\AdvancedCombatAI\functions\fn_grenadeUsage.sqf";
    [] execVM "\AdvancedCombatAI\functions\fn_attackAndDefense.sqf";
    [] execVM "\AdvancedCombatAI\functions\fn_vehicleIntegration.sqf";
    [] execVM "\AdvancedCombatAI\functions\fn_vehicleResponse.sqf";
    [] execVM "\AdvancedCombatAI\functions\fn_vehicleFocusFire.sqf";
    diag_log "Advanced Combat AI functions initialized successfully.";
};


// Initialize missing functions
if (isServer) then {
    [] execVM "\AdvancedCombatAI\functions\fn_adaptiveTactics.sqf";
    [] execVM "\AdvancedCombatAI\functions\fn_aiFrontlineBehavior.sqf";
    [] execVM "\AdvancedCombatAI\functions\fn_airSupport.sqf";
    [] execVM "\AdvancedCombatAI\functions\fn_alliedInteraction.sqf";
    [] execVM "\AdvancedCombatAI\functions\fn_ambushSetup.sqf";
    [] execVM "\AdvancedCombatAI\functions\fn_artilleryCoordination.sqf";
    [] execVM "\AdvancedCombatAI\functions\fn_assignRoles.sqf";
    [] execVM "\AdvancedCombatAI\functions\fn_attackAndDefense.sqf";
    [] execVM "\AdvancedCombatAI\functions\fn_buildingAssault.sqf";
    [] execVM "\AdvancedCombatAI\functions\fn_complexScenarios.sqf";
    [] execVM "\AdvancedCombatAI\functions\fn_controlledFire.sqf";
    [] execVM "\AdvancedCombatAI\functions\fn_defensiveLayers.sqf";
    [] execVM "\AdvancedCombatAI\functions\fn_droneSupport.sqf";
    [] execVM "\AdvancedCombatAI\functions\fn_dynamicallyAdaptTasks.sqf";
    [] execVM "\AdvancedCombatAI\functions\fn_dynamicCover.sqf";
    [] execVM "\AdvancedCombatAI\functions\fn_dynamicReinforcements.sqf";
    [] execVM "\AdvancedCombatAI\functions\fn_dynamicTasksFrontline.sqf";
    [] execVM "\AdvancedCombatAI\functions\fn_enhanceAI.sqf";
    [] execVM "\AdvancedCombatAI\functions\fn_evacuateWounded.sqf";
    [] execVM "\AdvancedCombatAI\functions\fn_explosionReactions.sqf";
    [] execVM "\AdvancedCombatAI\functions\fn_flankingManeuvers.sqf";
    [] execVM "\AdvancedCombatAI\functions\fn_grenadeUsage.sqf";
    [] execVM "\AdvancedCombatAI\functions\fn_guerillaWarfare.sqf";
    [] execVM "\AdvancedCombatAI\functions\fn_improveStaticWeapons.sqf";
    [] execVM "\AdvancedCombatAI\functions\fn_initializeFrontline.sqf";
    [] execVM "\AdvancedCombatAI\functions\fn_manageMachineGunners.sqf";
    [] execVM "\AdvancedCombatAI\functions\fn_manageSnipers.sqf";
    [] execVM "\AdvancedCombatAI\functions\fn_meleeCombat.sqf";
    [] execVM "\AdvancedCombatAI\functions\fn_peekFromCover.sqf";
    [] execVM "\AdvancedCombatAI\functions\fn_priorityTargets.sqf";
    [] execVM "\AdvancedCombatAI\functions\fn_psychologyAndMorale.sqf";
    [] execVM "\AdvancedCombatAI\functions\fn_realisticLogistics.sqf";
    [] execVM "\AdvancedCombatAI\functions\fn_resourceImpactFrontline.sqf";
    [] execVM "\AdvancedCombatAI\functions\fn_resourceManagement.sqf";
    [] execVM "\AdvancedCombatAI\functions\fn_sniperSupport.sqf";
    [] execVM "\AdvancedCombatAI\functions\fn_splitGroup.sqf";
    [] execVM "\AdvancedCombatAI\functions\fn_suppressiveFire.sqf";
    [] execVM "\AdvancedCombatAI\functions\fn_tacticalManeuvers.sqf";
    [] execVM "\AdvancedCombatAI\functions\fn_territoryControl.sqf";
    [] execVM "\AdvancedCombatAI\functions\fn_timeAdaptation.sqf";
    [] execVM "\AdvancedCombatAI\functions\fn_transferRoles.sqf";
    [] execVM "\AdvancedCombatAI\functions\fn_underwaterTactics.sqf";
    [] execVM "\AdvancedCombatAI\functions\fn_updateFrontline.sqf";
    [] execVM "\AdvancedCombatAI\functions\fn_urbanCombat.sqf";
    [] execVM "\AdvancedCombatAI\functions\fn_useExplosives.sqf";
    [] execVM "\AdvancedCombatAI\functions\fn_useTransport.sqf";
    [] execVM "\AdvancedCombatAI\functions\fn_vehicleFocusFire.sqf";
    [] execVM "\AdvancedCombatAI\functions\fn_vehicleIntegration.sqf";
    [] execVM "\AdvancedCombatAI\functions\fn_vehicleResponse.sqf";
    [] execVM "\AdvancedCombatAI\functions\fn_weatherAdaptation.sqf";

    diag_log "Advanced Combat AI: All functions initialized successfully.";
};
