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


/**
  Composite generator allows using multiple generators in single query option
  All child generators must produce exactly the same item type!
**/
@:umodule("AIModule")
@:glueCppIncludes("EnvironmentQuery/Generators/EnvQueryGenerator_Composite.h")
@:uextern extern class UEnvQueryGenerator_Composite extends unreal.aimodule.UEnvQueryGenerator {
  public var bHasMatchingItemType : Bool;
  public var Generators : unreal.TArray<unreal.aimodule.UEnvQueryGenerator>;
  
}
