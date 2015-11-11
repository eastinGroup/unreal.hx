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
  What type of location calculation to use when an ability asks for our transform.
**/
@:umodule("GameplayAbilities")
@:glueCppIncludes("Abilities/GameplayAbilityTargetActor.h")
@:uname("EGameplayAbilityTargetingLocationType.Type")
@:uextern extern enum EGameplayAbilityTargetingLocationType {
  
  /**
    Literal Transform
  **/
  @DisplayName("Literal Transform")
  LiteralTransform;
  
  /**
    We report an actual raw transform. This is also the final fallback if other methods fail.
    @DisplayName Actor Transform
  **/
  @DisplayName("Actor Transform")
  ActorTransform;
  
  /**
    We pull the transform from an associated actor directly.
    @DisplayName Socket Transform
  **/
  @DisplayName("Socket Transform")
  SocketTransform;
  
}
