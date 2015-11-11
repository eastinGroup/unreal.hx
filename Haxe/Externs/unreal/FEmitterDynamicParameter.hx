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
  Helper structure for displaying the parameter.
**/
@:glueCppIncludes("Particles/Parameter/ParticleModuleParameterDynamic.h")
@:uextern extern class FEmitterDynamicParameter {
  
  /**
    The distriubtion for the parameter value.
  **/
  public var ParamValue : unreal.FRawDistributionFloat;
  
  /**
    If true, scale the velocity value selected in ValueMethod by the evaluated ParamValue.
  **/
  public var bScaleVelocityByParamValue : Bool;
  
  /**
    Where to get the parameter value from.
  **/
  public var ValueMethod : unreal.EEmitterDynamicParameterValue;
  
  /**
    If true, only set the value at spawn time of the particle, otherwise update each frame.
  **/
  public var bSpawnTimeOnly : Bool;
  
  /**
    If true, use the EmitterTime to retrieve the value, otherwise use Particle RelativeTime.
  **/
  public var bUseEmitterTime : Bool;
  
  /**
    The parameter name - from the material DynamicParameter expression. READ-ONLY
  **/
  public var ParamName : unreal.FName;
  
}
