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
  Handles attachment replication to clients. Movement replication will not happen while AttachParent is non-nullptr
**/
@:glueCppIncludes("GameFramework/Actor.h")
@:uextern extern class FRepAttachment {
  public var AttachComponent : unreal.USceneComponent;
  public var AttachSocket : unreal.FName;
  public var RotationOffset : unreal.FRotator;
  public var RelativeScale3D : unreal.FVector_NetQuantize100;
  public var LocationOffset : unreal.FVector_NetQuantize100;
  public var AttachParent : unreal.AActor;
  
}
