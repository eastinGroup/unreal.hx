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
  Stores user settings for a game (for example graphics and sound settings), with the ability to save and load to and from a file.
**/
@:glueCppIncludes("GameFramework/GameUserSettings.h")
@:uextern extern class UGameUserSettings extends unreal.UObject {
  private var AudioQualityLevel : unreal.Int32;
  
  /**
    All settings will be wiped and set to default if the serialized version differs from UE_GAMEUSERSETTINGS_VERSION.
  **/
  private var Version : unreal.FakeUInt32;
  
  /**
    Last user confirmed fullscreen mode setting.
  **/
  private var LastConfirmedFullscreenMode : unreal.Int32;
  
  /**
    Game window fullscreen mode
         0 = Fullscreen
         1 = Windowed fullscreen
         2 = Windowed
         3 = WindowedMirror
  **/
  private var FullscreenMode : unreal.Int32;
  
  /**
    Window PosY
  **/
  private var WindowPosY : unreal.Int32;
  
  /**
    Window PosX
  **/
  private var WindowPosX : unreal.Int32;
  
  /**
    Game screen resolution height, in pixels.
  **/
  private var LastUserConfirmedResolutionSizeY : unreal.FakeUInt32;
  
  /**
    Game screen resolution width, in pixels.
  **/
  private var LastUserConfirmedResolutionSizeX : unreal.FakeUInt32;
  
  /**
    Game screen resolution height, in pixels.
  **/
  private var ResolutionSizeY : unreal.FakeUInt32;
  
  /**
    Game screen resolution width, in pixels.
  **/
  private var ResolutionSizeX : unreal.FakeUInt32;
  
  /**
    Whether to use VSync or not. (public to allow UI to connect to it)
  **/
  public var bUseVSync : Bool;
  
}
