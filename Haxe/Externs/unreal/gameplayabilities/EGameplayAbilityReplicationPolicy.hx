/**
   * 
   * WARNING! This file was autogenerated by: 
   *  _   _ _____     ___   _   _ __   __ 
   * | | | |  ___|   /   | | | | |\ \ / / 
   * | | | | |__    / /| | | |_| | \ V /  
   * | | | |  __|  / /_| | |  _  | /   \  
   * | |_| | |___  \___  | | | | |/ /^\ \ 
   *  \___/\____/      |_/ \_| |_/\/   \/ 
   * 
   * This file was autogenerated by UE4HaxeExternGenerator using UHT definitions. It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
   * In order to add more definitions, create or edit a type with the same name/package, but with an `_Extra` suffix
**/
package unreal.gameplayabilities;


/**
  How an ability replicates state/events to everyone on the network.
**/
@:umodule("GameplayAbilities")
@:glueCppIncludes("Abilities/GameplayAbility.h")
@:uname("EGameplayAbilityReplicationPolicy.Type")
@:uextern extern enum EGameplayAbilityReplicationPolicy {
  
  /**
    We don't replicate the instance of the ability to anyone.
    @DisplayName Do Not Replicate
  **/
  @DisplayName("Do Not Replicate")
  ReplicateNo;
  
  /**
    We replicate the instance of the ability to the owner.
    @DisplayName Replicate
  **/
  @DisplayName("Replicate")
  ReplicateYes;
  
}
