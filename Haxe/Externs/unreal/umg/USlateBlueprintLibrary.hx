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
package unreal.umg;

@:umodule("UMG")
@:glueCppIncludes("Blueprint/SlateBlueprintLibrary.h")
@:uextern extern class USlateBlueprintLibrary extends unreal.UBlueprintFunctionLibrary {
  
  /**
    Absolute coordinates could be either desktop or window space depending on what space the root of the widget hierarchy is in.
    
    @return true if the provided location in absolute coordinates is within the bounds of this geometry.
  **/
  static public function IsUnderLocation(Geometry : unreal.Const<unreal.PRef<unreal.slatecore.FGeometry>>, AbsoluteCoordinate : unreal.Const<unreal.PRef<unreal.FVector2D>>) : Bool;
  
  /**
    Absolute coordinates could be either desktop or window space depending on what space the root of the widget hierarchy is in.
    
    @return Transforms AbsoluteCoordinate into the local space of this Geometry.
  **/
  static public function AbsoluteToLocal(Geometry : unreal.Const<unreal.PRef<unreal.slatecore.FGeometry>>, AbsoluteCoordinate : unreal.FVector2D) : unreal.FVector2D;
  
  /**
    Translates local coordinates into absolute coordinates
    
    Absolute coordinates could be either desktop or window space depending on what space the root of the widget hierarchy is in.
    
    @return  Absolute coordinates
  **/
  static public function LocalToAbsolute(Geometry : unreal.Const<unreal.PRef<unreal.slatecore.FGeometry>>, LocalCoordinate : unreal.FVector2D) : unreal.FVector2D;
  
  /**
    @return the size of the geometry in local space.
  **/
  static public function GetLocalSize(Geometry : unreal.Const<unreal.PRef<unreal.slatecore.FGeometry>>) : unreal.FVector2D;
  
  /**
    Translates local coordinate of the geometry provided into local viewport coordinates.
    
    @param PixelPosition The position in the game's viewport, usable for line traces and
    other uses where you need a coordinate in the space of viewport resolution units.
    @param ViewportPosition The position in the space of other widgets in the viewport.  Like if you wanted
    to add another widget to the viewport at the same position in viewport space as this location, this is
    what you would use.
  **/
  static public function LocalToViewport(WorldContextObject : unreal.UObject, Geometry : unreal.Const<unreal.PRef<unreal.slatecore.FGeometry>>, LocalCoordinate : unreal.FVector2D, PixelPosition : unreal.PRef<unreal.FVector2D>, ViewportPosition : unreal.PRef<unreal.FVector2D>) : Void;
  
  /**
    Translates absolute coordinate in desktop space of the geometry provided into local viewport coordinates.
    
    @param PixelPosition The position in the game's viewport, usable for line traces and
    other uses where you need a coordinate in the space of viewport resolution units.
    @param ViewportPosition The position in the space of other widgets in the viewport.  Like if you wanted
    to add another widget to the viewport at the same position in viewport space as this location, this is
    what you would use.
  **/
  static public function AbsoluteToViewport(WorldContextObject : unreal.UObject, AbsoluteDesktopCoordinate : unreal.FVector2D, PixelPosition : unreal.PRef<unreal.FVector2D>, ViewportPosition : unreal.PRef<unreal.FVector2D>) : Void;
  
}
