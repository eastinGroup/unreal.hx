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
  Enum for specifying type of a name instance parameter.
**/
@:glueCppIncludes("Particles/ParticleSystemComponent.h")
@:uname("EParticleSysParamType")
@:uextern extern enum EParticleSysParamType {
  
  /**
    None
  **/
  @DisplayName("None")
  PSPT_None;
  
  /**
    Scalar
  **/
  @DisplayName("Scalar")
  PSPT_Scalar;
  
  /**
    Scalar Random
  **/
  @DisplayName("Scalar Random")
  PSPT_ScalarRand;
  
  /**
    Vector
  **/
  @DisplayName("Vector")
  PSPT_Vector;
  
  /**
    Vector Random
  **/
  @DisplayName("Vector Random")
  PSPT_VectorRand;
  
  /**
    Color
  **/
  @DisplayName("Color")
  PSPT_Color;
  
  /**
    Actor
  **/
  @DisplayName("Actor")
  PSPT_Actor;
  
  /**
    Material
  **/
  @DisplayName("Material")
  PSPT_Material;
  
}
