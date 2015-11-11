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

@:glueCppIncludes("Particles/Attractor/ParticleModuleAttractorLine.h")
@:uextern extern class UParticleModuleAttractorLine extends unreal.UParticleModuleAttractorBase {
  
  /**
    The strength of the line attractor.
  **/
  public var Strength : unreal.FRawDistributionFloat;
  
  /**
    The range of the line attractor.
  **/
  public var Range : unreal.FRawDistributionFloat;
  
  /**
    The second endpoint of the line.
  **/
  public var EndPoint1 : unreal.FVector;
  
  /**
    The first endpoint of the line.
  **/
  public var EndPoint0 : unreal.FVector;
  
}
