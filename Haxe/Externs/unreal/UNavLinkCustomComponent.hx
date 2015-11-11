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
  Encapsulates NavLinkCustomInterface interface, can be used with Actors not relevant for navigation
  
  Additional functionality:
  - can be toggled
  - can create obstacle area for easier/forced separation of link end points
  - can broadcast state changes to nearby agents
**/
@:glueCppIncludes("AI/Navigation/NavLinkCustomComponent.h")
@:uextern extern class UNavLinkCustomComponent extends unreal.UNavRelevantComponent implements unreal.INavLinkCustomInterface {
  
  /**
    trace channel for state change broadcast
  **/
  private var BroadcastChannel : unreal.ECollisionChannel;
  
  /**
    interval for state change broadcast (0 = single broadcast)
  **/
  private var BroadcastInterval : unreal.Float32;
  
  /**
    radius of state change broadcast
  **/
  private var BroadcastRadius : unreal.Float32;
  
  /**
    area class for simple box obstacle
  **/
  private var ObstacleAreaClass : unreal.TSubclassOf<unreal.UNavArea>;
  
  /**
    extent of simple box obstacle
  **/
  private var ObstacleExtent : unreal.FVector;
  
  /**
    offset of simple box obstacle
  **/
  private var ObstacleOffset : unreal.FVector;
  
  /**
    direction of link
  **/
  private var LinkDirection : unreal.ENavLinkDirection;
  
  /**
    end point, relative to owner
  **/
  private var LinkRelativeEnd : unreal.FVector;
  
  /**
    start point, relative to owner
  **/
  private var LinkRelativeStart : unreal.FVector;
  
  /**
    area class to use when link is disabled
  **/
  private var DisabledAreaClass : unreal.TSubclassOf<unreal.UNavArea>;
  
  /**
    area class to use when link is enabled
  **/
  private var EnabledAreaClass : unreal.TSubclassOf<unreal.UNavArea>;
  
  /**
    link Id assigned by navigation system
  **/
  private var NavLinkUserId : unreal.FakeUInt32;
  
}
