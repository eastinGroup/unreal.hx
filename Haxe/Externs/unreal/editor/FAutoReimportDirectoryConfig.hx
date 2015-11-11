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


/**
  Auto reimport settings for a specific directory
**/
@:umodule("UnrealEd")
@:glueCppIncludes("Settings/EditorLoadingSavingSettings.h")
@:uextern extern class FAutoReimportDirectoryConfig {
  
  /**
    A set of wildcard filters to apply to this directory
  **/
  public var Wildcards : unreal.TArray<unreal.editor.FAutoReimportWildcard>;
  
  /**
    Where SourceDirectory points to an ordinary file system path, MountPoint specifies the virtual mounted location to import new files to.
  **/
  public var MountPoint : unreal.FString;
  
  /**
    The source directory to monitor. Either an absolute directory on the file system, or a virtual mounted path
  **/
  public var SourceDirectory : unreal.FString;
  
}
