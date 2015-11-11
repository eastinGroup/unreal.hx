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
package unreal.functionaltesting;

@:umodule("FunctionalTesting")
@:glueCppIncludes("FunctionalAITest.h")
@:uextern extern class FAITestSpawnSet {
  
  /**
    location used for spawning if spawn info doesn't define one
  **/
  public var FallbackSpawnLocation : unreal.AActor;
  public var bEnabled : Bool;
  
  /**
    give the set a name to help identify it if need be
  **/
  public var Name : unreal.FName;
  
  /**
    what to spawn
  **/
  public var SpawnInfoContainer : unreal.TArray<unreal.functionaltesting.FAITestSpawnInfo>;
  
}
