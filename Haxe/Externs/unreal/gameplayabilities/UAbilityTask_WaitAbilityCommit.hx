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
  Waits for the actor to activate another ability
**/
@:umodule("GameplayAbilities")
@:glueCppIncludes("Abilities/Tasks/AbilityTask_WaitAbilityCommit.h")
@:uextern extern class UAbilityTask_WaitAbilityCommit extends unreal.gameplayabilities.UAbilityTask {
  @:final public function OnAbilityCommit(ActivatedAbility : unreal.gameplayabilities.UGameplayAbility) : Void;
  
  /**
    Wait until a new ability (of the same or different type) is commited. Used to gracefully interrupt abilities in specific ways.
  **/
  static public function WaitForAbilityCommit(WorldContextObject : unreal.UObject, WithTag : unreal.gameplaytags.FGameplayTag, WithoutTage : unreal.gameplaytags.FGameplayTag, TriggerOnce : Bool) : unreal.gameplayabilities.UAbilityTask_WaitAbilityCommit;
  
}
