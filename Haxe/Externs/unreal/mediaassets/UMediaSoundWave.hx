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
package unreal.mediaassets;


/**
  Implements a playable sound asset for audio streams from UMediaPlayer assets.
**/
@:umodule("MediaAssets")
@:glueCppIncludes("MediaSoundWave.h")
@:uextern extern class UMediaSoundWave extends unreal.USoundWave {
  
  /**
    The MediaPlayer asset to stream audio from.
  **/
  public var MediaPlayer : unreal.mediaassets.UMediaPlayer;
  
  /**
    The index of the MediaPlayer's audio track to get the wave data from.
  **/
  public var AudioTrackIndex : unreal.Int32;
  
  /**
    Sets the MediaPlayer asset to be used for this texture.
    
    @param InMediaPlayer The asset to set.
  **/
  @:final public function SetMediaPlayer(InMediaPlayer : unreal.mediaassets.UMediaPlayer) : Void;
  
}
