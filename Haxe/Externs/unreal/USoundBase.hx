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

@:glueCppIncludes("Sound/SoundBase.h")
@:uextern extern class USoundBase extends unreal.UObject {
  
  /**
    Attenuation settings package for the sound
  **/
  public var AttenuationSettings : unreal.USoundAttenuation;
  
  /**
    Duration of sound in seconds.
  **/
  public var Duration : unreal.Float32;
  
  /**
    Maximum number of times this sound can be played concurrently.
  **/
  public var MaxConcurrentPlayCount : unreal.Int32;
  
  /**
    If we try to play a new version of this sound when at the max concurrent count how should it be resolved.
  **/
  public var MaxConcurrentResolutionRule : unreal.EMaxConcurrentResolutionRule;
  
  /**
    When "stat sounds -debug" has been specified, draw this sound's attenuation shape when the sound is audible. For debugging purpose only.
  **/
  public var bDebug : Bool;
  
  /**
    Sound class this sound belongs to
  **/
  private var SoundClassObject : unreal.USoundClass;
  
}
