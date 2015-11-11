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
package unreal;


/**
  Class containing definition of a navigation area
**/
@:glueCppIncludes("AI/Navigation/NavAreas/NavArea.h")
@:uextern extern class UNavArea extends unreal.UObject {
  public var bSupportsAgent15 : Bool;
  public var bSupportsAgent14 : Bool;
  public var bSupportsAgent13 : Bool;
  public var bSupportsAgent12 : Bool;
  public var bSupportsAgent11 : Bool;
  public var bSupportsAgent10 : Bool;
  public var bSupportsAgent9 : Bool;
  public var bSupportsAgent8 : Bool;
  public var bSupportsAgent7 : Bool;
  public var bSupportsAgent6 : Bool;
  public var bSupportsAgent5 : Bool;
  public var bSupportsAgent4 : Bool;
  public var bSupportsAgent3 : Bool;
  public var bSupportsAgent2 : Bool;
  public var bSupportsAgent1 : Bool;
  
  /**
    DEPRECATED AGENT CONFIG
  **/
  public var bSupportsAgent0 : Bool;
  
  /**
    restrict area only to specified agents
  **/
  public var SupportedAgents : unreal.FNavAgentSelector;
  
  /**
    area color in navigation view
  **/
  public var DrawColor : unreal.FColor;
  
  /**
    entering cost
  **/
  private var FixedAreaEnteringCost : unreal.Float32;
  
  /**
    travel cost multiplier for path distance
  **/
  public var DefaultCost : unreal.Float32;
  
}
