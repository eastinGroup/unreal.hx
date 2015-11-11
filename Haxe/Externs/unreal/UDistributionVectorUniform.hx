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

@:glueCppIncludes("Distributions/DistributionVectorUniform.h")
@:uextern extern class UDistributionVectorUniform extends unreal.UDistributionVector {
  public var bUseExtremes : Bool;
  public var LockedAxes : unreal.EDistributionVectorLockFlags;
  
  /**
    If true, X == Y == Z ie. only one degree of freedom. If false, each axis is picked independently.
  **/
  public var bLockAxes : Bool;
  
  /**
    Lower end of FVector magnitude range.
  **/
  public var Min : unreal.FVector;
  
  /**
    Upper end of FVector magnitude range.
  **/
  public var Max : unreal.FVector;
  
}
