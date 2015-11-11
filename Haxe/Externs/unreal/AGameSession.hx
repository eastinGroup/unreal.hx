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
  Acts as a game-specific wrapper around the session interface. The game code makes calls to this when it needs to interact with the session interface.
  A game session exists only the server, while running an online game.
**/
@:glueCppIncludes("GameFramework/GameSession.h")
@:uextern extern class AGameSession extends unreal.AInfo {
  
  /**
    SessionName local copy from PlayerState class.  should really be define in this class, but need to address replication issues
  **/
  public var SessionName : unreal.FName;
  
  /**
    Is voice enabled always or via a push to talk keybinding
  **/
  public var bRequiresPushToTalk : Bool;
  
  /**
    Maximum number of splitscreen players to allow from one connection
  **/
  public var MaxSplitscreensPerConnection : unreal.UInt8;
  
  /**
    Maximum number of players allowed by this server.
  **/
  public var MaxPlayers : unreal.Int32;
  
  /**
    Maximum number of spectators allowed by this server.
  **/
  public var MaxSpectators : unreal.Int32;
  
}
