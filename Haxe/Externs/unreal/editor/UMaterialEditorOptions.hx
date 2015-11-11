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
package unreal.editor;

@:umodule("UnrealEd")
@:glueCppIncludes("Preferences/MaterialEditorOptions.h")
@:uextern extern class UMaterialEditorOptions extends unreal.UObject {
  
  /**
    The users favorite material expressions.
  **/
  public var FavoriteExpressions : unreal.TArray<unreal.FString>;
  
  /**
    If true, show mobile statis and errors.
  **/
  public var bShowMobileStats : Bool;
  
  /**
    If false, use expression categorized menus.
  **/
  public var bUseUnsortedMenus : Bool;
  
  /**
    If true, always refresh all expression previews.
  **/
  public var bAlwaysRefreshAllPreviews : Bool;
  
  /**
    If true, always refresh the material preview.
  **/
  public var bLivePreviewUpdate : Bool;
  
  /**
    If true, the linked object viewport updates in realtime.
  **/
  public var bRealtimeExpressionViewport : Bool;
  
  /**
    If true, the 3D material preview viewport updates in realtime.
  **/
  public var bRealtimeMaterialViewport : Bool;
  
  /**
    If true, don't render connectors that are not connected to anything.
  **/
  public var bHideUnusedConnectors : Bool;
  
  /**
    If true, render background object in the preview scene.
  **/
  public var bShowBackground : Bool;
  
  /**
    If true, render grid the preview scene.
  **/
  public var bShowGrid : Bool;
  
}
