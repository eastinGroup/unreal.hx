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

@:umodule("BlueprintGraph")
@:glueCppIncludes("K2Node_ActorBoundEvent.h")
@:uextern extern class UK2Node_ActorBoundEvent extends unreal.blueprintgraph.UK2Node_Event {
  
  /**
    The event that this event is bound to
  **/
  public var EventOwner : unreal.AActor;
  
  /**
    Delegate property's owner class that this event is associated with
  **/
  public var DelegateOwnerClass : unreal.UClass;
  
  /**
    Delegate property name that this event is associated with
  **/
  public var DelegatePropertyName : unreal.FName;
  
}
