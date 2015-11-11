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
package unreal.html5platformeditor;


/**
  Implements the settings for the HTML5 target platform.
**/
@:umodule("HTML5PlatformEditor")
@:glueCppIncludes("HTML5TargetSettings.h")
@:uextern extern class UHTML5TargetSettings extends unreal.UObject {
  
  /**
    Provide another level of nesting beyond the bucket. Can be left empty, defaults to game name.
  **/
  public var S3FolderName : unreal.FString;
  
  /**
    Required
  **/
  public var S3BucketName : unreal.FString;
  
  /**
    Required
  **/
  public var S3SecretAccessKey : unreal.FString;
  
  /**
    Required
  **/
  public var S3KeyID : unreal.FString;
  public var UploadToS3 : Bool;
  
  /**
    Generate Delta Pak files for these level transitions.
  **/
  public var LevelTransitions : unreal.TArray<unreal.html5platformeditor.FHTML5LevelTransitions>;
  
  /**
    Use a loading level and download maps during transitions.
  **/
  public var UseAsyncLevelLoading : Bool;
  
  /**
    Port to use when deploying game from the editor
  **/
  public var DeployServerPort : unreal.Int32;
  
  /**
    Setting to control HTML5 Heap size
  **/
  public var HeapSizeShipping : unreal.Int32;
  
  /**
    Setting to control HTML5 Heap size (in Development)
  **/
  public var HeapSizeDevelopment : unreal.Int32;
  
}
