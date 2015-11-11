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
package unreal.lightpropagationvolumeruntime;


/**
  BlueprintType to make the object spawnable in blueprint
**/
@:umodule("LightPropagationVolumeRuntime")
@:glueCppIncludes("LightPropagationVolumeBlendable.h")
@:uextern extern class ULightPropagationVolumeBlendable extends unreal.UObject implements unreal.IBlendableInterface {
  
  /**
    0:no effect, 1:full effect
  **/
  public var BlendWeight : unreal.Float32;
  public var Settings : unreal.lightpropagationvolumeruntime.FLightPropagationVolumeSettings;
  
}
