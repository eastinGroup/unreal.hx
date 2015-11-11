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
  Information for one cut in this track.
**/
@:glueCppIncludes("Matinee/InterpTrackDirector.h")
@:uextern extern class FDirectorTrackCut {
  
  /**
    Shot number for developer reference
  **/
  public var ShotNumber : unreal.Int32;
  
  /**
    GroupName of UInterpGroup to cut viewpoint to.
  **/
  public var TargetCamGroup : unreal.FName;
  
  /**
    Time taken to move view to new camera.
  **/
  public var TransitionTime : unreal.Float32;
  
  /**
    Time to perform the cut.
  **/
  public var Time : unreal.Float32;
  
}
