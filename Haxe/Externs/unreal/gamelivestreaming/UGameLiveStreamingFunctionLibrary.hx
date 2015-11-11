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
package unreal.gamelivestreaming;

@:umodule("GameLiveStreaming")
@:glueCppIncludes("GameLiveStreamingFunctionLibrary.h")
@:uextern extern class UGameLiveStreamingFunctionLibrary extends unreal.UBlueprintFunctionLibrary {
  
  /**
    Checks to see if we are currently broadcasting live video (and possibly audio) from the game's viewport
    
    @return      True if we are currently transmitting
  **/
  static public function IsBroadcastingGame() : Bool;
  
  /**
    Starts broadcasting the game's video (and optionally audio) using an internet streaming service, if one is available
    
    @param       FrameRate                                       Frame rate to stream video from when broadcasting to services like Twitch.
    @param       ScreenScaling                           How much to scale the broadcast video resolution down to reduce streaming bandwidth.  We recommend broadcasting at resolutions of 1280x720 or lower.  Some live streaming providers will not be able to transcode your video to a lower resolution, so using a high resolution stream may prevent low-bandwidth users from having a good viewing experience.
    @param       bEnableWebCam                           If enabled, video from your web camera will be captured and displayed while broadcasting, so that your viewers can see your presence.
    @param       DesiredWebCamWidth                      Desired web cam capture resolution width.  The web cam may only support a limited number of resolutions, so we'll choose one that matches as closely to this as possible
    @param       DesiredWebCamHeight                     Desired web cam capture resolution height.
    @param       bMirrorWebCamImage                      You can enable this to flip the web camera image horizontally, so that it looks like a mirror
    @param       bCaptureAudioFromComputer       Enables broadcast of audio being played by your computer, such as in-game sounds
    @param       bCaptureAudioFromMicrophone     Enables broadcast of audio from your default microphone recording device
    @param       bDrawSimpleWebCamVideo          If enabled, the engine will draw a simple web cam image on top of the game viewport.  If you turn this off, it's up to you to draw the web cam image yourself.  You can access the web cam texture by calling IGameLiveStreaming::Get().GetWebCamTexture().
  **/
  static public function StartBroadcastingGame(FrameRate : unreal.Int32, ScreenScaling : unreal.Float32, bEnableWebCam : Bool, DesiredWebCamWidth : unreal.Int32, DesiredWebCamHeight : unreal.Int32, bMirrorWebCamImage : Bool, bCaptureAudioFromComputer : Bool, bCaptureAudioFromMicrophone : Bool, bDrawSimpleWebCamVideo : Bool) : Void;
  
  /**
    Stops broadcasting the game
  **/
  static public function StopBroadcastingGame() : Void;
  
}
