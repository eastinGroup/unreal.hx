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
  Used to create fogging effects such as clouds but with a density that is related to the height of the fog.
**/
@:glueCppIncludes("Components/ExponentialHeightFogComponent.h")
@:uextern extern class UExponentialHeightFogComponent extends unreal.USceneComponent {
  
  /**
    Distance from the camera that the fog will start, in world units.
  **/
  public var StartDistance : unreal.Float32;
  
  /**
    Maximum opacity of the fog.
    A value of 1 means the fog can become fully opaque at a distance and replace scene color completely,
    A value of 0 means the fog color will not be factored in at all.
  **/
  public var FogMaxOpacity : unreal.Float32;
  
  /**
    Height density factor, controls how the density increases as height decreases.
    Smaller values make the visible transition larger.
  **/
  public var FogHeightFalloff : unreal.Float32;
  
  /**
    Controls the color of the directional inscattering, which is used to approximate inscattering from a directional light.
    Note: there must be a directional light with bUsedAsAtmosphereSunLight enabled for DirectionalInscattering to be used.
  **/
  public var DirectionalInscatteringColor : unreal.FLinearColor;
  
  /**
    Controls the start distance from the viewer of the directional inscattering, which is used to approximate inscattering from a directional light.
    Note: there must be a directional light with bUsedAsAtmosphereSunLight enabled for DirectionalInscattering to be used.
  **/
  public var DirectionalInscatteringStartDistance : unreal.Float32;
  
  /**
    Controls the size of the directional inscattering cone, which is used to approximate inscattering from a directional light.
    Note: there must be a directional light with bUsedAsAtmosphereSunLight enabled for DirectionalInscattering to be used.
  **/
  public var DirectionalInscatteringExponent : unreal.Float32;
  public var FogInscatteringColor : unreal.FLinearColor;
  
  /**
    Global density factor.
  **/
  public var FogDensity : unreal.Float32;
  @:final public function SetFogDensity(Value : unreal.Float32) : Void;
  @:final public function SetFogInscatteringColor(Value : unreal.FLinearColor) : Void;
  @:final public function SetDirectionalInscatteringExponent(Value : unreal.Float32) : Void;
  @:final public function SetDirectionalInscatteringStartDistance(Value : unreal.Float32) : Void;
  @:final public function SetDirectionalInscatteringColor(Value : unreal.FLinearColor) : Void;
  @:final public function SetFogHeightFalloff(Value : unreal.Float32) : Void;
  @:final public function SetFogMaxOpacity(Value : unreal.Float32) : Void;
  @:final public function SetStartDistance(Value : unreal.Float32) : Void;
  
}
