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
package unreal.niagara;


/**
  A C++ and Blueprint accessible library of utility functions for accessing Leap Motion device.
  All positions & orientations are returned in Unreal reference frame & units, assuming the Leap device is located at the origin.
**/
@:umodule("Niagara")
@:glueCppIncludes("NiagaraFunctionLibrary.h")
@:uextern extern class UNiagaraFunctionLibrary extends unreal.UBlueprintFunctionLibrary {
  
  /**
    Spawns a Niagara effect at the specified world location/rotation
    @return                       The spawned UNiagaraComponent
  **/
  static public function SpawnEffectAtLocation(WorldContextObject : unreal.UObject, EffectTemplate : unreal.niagara.UNiagaraEffect, Location : unreal.FVector, Rotation : unreal.FRotator, bAutoDestroy : Bool) : unreal.niagara.UNiagaraComponent;
  static public function SpawnEffectAttached(EffectTemplate : unreal.niagara.UNiagaraEffect, AttachToComponent : unreal.USceneComponent, AttachPointName : unreal.FName, Location : unreal.FVector, Rotation : unreal.FRotator, LocationType : unreal.EAttachLocation, bAutoDestroy : Bool) : unreal.niagara.UNiagaraComponent;
  static public function SetUpdateScriptConstant(Component : unreal.niagara.UNiagaraComponent, EmitterName : unreal.FName, ConstantName : unreal.FName, Value : unreal.FVector) : Void;
  
}
