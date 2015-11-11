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

@:glueCppIncludes("Sound/SoundMix.h")
@:uextern extern class USoundMix extends unreal.UObject {
  
  /**
    Time taken in seconds for the mix to fade out.
  **/
  public var FadeOutTime : unreal.Float32;
  
  /**
    Duration of mix, negative means it will be applied until another mix is set.
  **/
  public var Duration : unreal.Float32;
  
  /**
    Time taken in seconds for the mix to fade in.
  **/
  public var FadeInTime : unreal.Float32;
  
  /**
    Initial delay in seconds before the the mix is applied.
  **/
  public var InitialDelay : unreal.Float32;
  
  /**
    Array of changes to be applied to groups.
  **/
  public var SoundClassEffects : unreal.TArray<unreal.FSoundClassAdjuster>;
  public var EQSettings : unreal.FAudioEQEffect;
  public var EQPriority : unreal.Float32;
  
  /**
    Whether to apply the EQ effect
  **/
  public var bApplyEQ : Bool;
  
}
