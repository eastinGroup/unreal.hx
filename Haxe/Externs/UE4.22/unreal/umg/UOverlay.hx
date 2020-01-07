/**
 * 
 * WARNING! This file was autogenerated by: 
 *  _   _ _   _ __   __ 
 * | | | | | | |\ \ / / 
 * | | | | |_| | \ V /  
 * | | | |  _  | /   \  
 * | |_| | | | |/ /^\ \ 
 *  \___/\_| |_/\/   \/ 
 * 
 * This file was autogenerated by UnrealHxGenerator using UHT definitions.
 * It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
 * In order to add more definitions, create or edit a type with the same name/package, but with an `_Extra` suffix
**/
package unreal.umg;

/**
  Allows widgets to be stacked on top of each other, uses simple flow layout for content on each layer.
**/
@:umodule("UMG")
@:glueCppIncludes("UMG.h")
@:uextern @:uclass extern class UOverlay extends unreal.umg.UPanelWidget {
  @:ufunction(BlueprintCallable) @:final public function AddChildToOverlay(Content : unreal.umg.UWidget) : unreal.umg.UOverlaySlot;
  @:ufunction(BlueprintCallable) @:final public function OverridePaintGeometry(Content : unreal.umg.UWidget) : Void;
}
