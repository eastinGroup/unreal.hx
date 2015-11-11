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
  Indicates whether an animation is additive, and what kind.
**/
@:glueCppIncludes("Animation/AnimSequence.h")
@:uname("EAdditiveAnimationType")
@:uextern extern enum EAdditiveAnimationType {
  
  /**
    No additive.
    @DisplayName No additive
  **/
  @DisplayName("No additive")
  AAT_None;
  
  /**
    Create Additive from LocalSpace Base.
    @DisplayName Local Space
  **/
  @DisplayName("Local Space")
  AAT_LocalSpaceBase;
  
  /**
    Create Additive from MeshSpace Rotation Only, Translation still will be LocalSpace.
    @DisplayName Mesh Space
  **/
  @DisplayName("Mesh Space")
  AAT_RotationOffsetMeshSpace;
  
}
