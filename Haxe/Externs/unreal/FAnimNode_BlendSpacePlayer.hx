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
  @TODO: Comment
**/
@:glueCppIncludes("AnimGraphNode_BlendSpaceEvaluator.h")
@:uextern extern class FAnimNode_BlendSpacePlayer extends unreal.FAnimNode_AssetPlayerBase {
  private var BlendSampleDataCache : unreal.TArray<unreal.FBlendSampleData>;
  private var BlendFilter : unreal.FBlendFilter;
  
  /**
    The role this player can assume within the group (ignored if GroupIndex is INDEX_NONE)
  **/
  public var GroupRole : unreal.EAnimGroupRole;
  
  /**
    The group index, assigned at compile time based on the editoronly GroupName (or INDEX_NONE if it is not part of any group)
  **/
  public var GroupIndex : unreal.Int32;
  
  /**
    The blendspace asset to play
  **/
  public var BlendSpace : unreal.UBlendSpaceBase;
  
  /**
    Should the animation continue looping when it reaches the end?
  **/
  public var bLoop : Bool;
  
  /**
    The play rate multiplier. Can be negative, which will cause the animation to play in reverse.
  **/
  public var PlayRate : unreal.Float32;
  
  /**
    The Z coordinate to sample in the blendspace
  **/
  public var Z : unreal.Float32;
  
  /**
    The Y coordinate to sample in the blendspace
  **/
  public var Y : unreal.Float32;
  
  /**
    The X coordinate to sample in the blendspace
  **/
  public var X : unreal.Float32;
  
}
