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
package unreal.aimodule;

@:umodule("AIModule")
@:glueCppIncludes("BehaviorTree/BlackboardData.h")
@:uextern extern class UBlackboardData extends unreal.UDataAsset {
  
  /**
    blackboard keys
  **/
  public var Keys : unreal.TArray<unreal.aimodule.FBlackboardEntry>;
  #if WITH_EDITORONLY_DATA
  
  /**
    all keys inherited from parent chain
  **/
  public var ParentKeys : unreal.TArray<unreal.aimodule.FBlackboardEntry>;
  #end // WITH_EDITORONLY_DATA
  
  /**
    parent blackboard (keys can be overridden)
  **/
  public var Parent : unreal.aimodule.UBlackboardData;
  
}
