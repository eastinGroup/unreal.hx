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

@:glueCppIncludes("VectorField/VectorFieldStatic.h")
@:uextern extern class UVectorFieldStatic extends unreal.UVectorField {
  #if WITH_EDITORONLY_DATA
  public var AssetImportData : unreal.UAssetImportData;
  public var SourceFilePath_DEPRECATED : unreal.FString;
  #end // WITH_EDITORONLY_DATA
  
  /**
    Size of the vector field volume.
  **/
  public var SizeZ : unreal.Int32;
  
  /**
    Size of the vector field volume.
  **/
  public var SizeY : unreal.Int32;
  
  /**
    Size of the vector field volume.
  **/
  public var SizeX : unreal.Int32;
  
}
