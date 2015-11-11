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
package unreal.blueprintgraph;


/**
  Intended to be wrapped and used by FBlueprintActionMenuItem. Rather than
  sub-classing the menu item, we choose to subclass this instead (for
  different node types). That way, we get the type inference that comes with
  UObjects (and we don't have to continuously compare identification strings).
**/
@:umodule("BlueprintGraph")
@:glueCppIncludes("BlueprintNodeSpawner.h")
@:uextern extern class UBlueprintNodeSpawner extends unreal.UObject {
  
  /**
    Holds the node type that this spawner will instantiate.
  **/
  public var NodeClass : unreal.TSubclassOf<unreal.UEdGraphNode>;
  
}
