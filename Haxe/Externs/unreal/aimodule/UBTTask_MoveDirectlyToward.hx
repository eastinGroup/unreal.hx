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
  Move Directly Toward task node.
  Moves the AI pawn toward the specified Actor or Location (Vector) blackboard entry in a straight line, without regard to any navigation system. If you need the AI to navigate, use the "Move To" node instead.
**/
@:umodule("AIModule")
@:glueCppIncludes("BehaviorTree/Tasks/BTTask_MoveDirectlyToward.h")
@:uextern extern class UBTTask_MoveDirectlyToward extends unreal.aimodule.UBTTask_BlackboardBase {
  
  /**
    if set to true agent's radius will be added to AcceptableRadius for purposes of checking
        if path's end point has been reached. Will result in AI stopping on contact with destination location
  **/
  public var bStopOnOverlap : Bool;
  public var bAllowStrafe : Bool;
  public var bProjectVectorGoalToNavigation : Bool;
  
  /**
    set to true will result in not updating move destination in
        case where goal is an Actor that can change
        his location while task is being performed
  **/
  public var bDisablePathUpdateOnGoalLocationChange : Bool;
  public var AcceptableRadius : unreal.Float32;
  
}
