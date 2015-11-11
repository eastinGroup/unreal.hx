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
package unreal.udpmessaging;

@:umodule("UdpMessaging")
@:glueCppIncludes("Private/Shared/UdpMessagingSettings.h")
@:uextern extern class UUdpMessagingSettings extends unreal.UObject {
  
  /**
    The IP endpoints of remote tunnel nodes.
    
    Use this setting to connect to remote tunnel services.
  **/
  public var RemoteTunnelEndpoints : unreal.TArray<unreal.FString>;
  
  /**
    The IP endpoint to send multicast packets to.
  **/
  public var TunnelMulticastEndpoint : unreal.FString;
  
  /**
    The IP endpoint to listen to and send packets from.
  **/
  public var TunnelUnicastEndpoint : unreal.FString;
  
  /**
    Whether the UDP tunnel is enabled.
  **/
  public var EnableTunnel : Bool;
  
  /**
    The IP endpoints of static devices.
    
    Use this setting to list devices on other subnets, such as mobile phones on a WiFi network.
  **/
  public var StaticEndpoints : unreal.TArray<unreal.FString>;
  
  /**
    The time-to-live (TTL) for sent multicast packets.
  **/
  public var MulticastTimeToLive : unreal.UInt8;
  
  /**
    The IP endpoint to send multicast packets to.
  **/
  public var MulticastEndpoint : unreal.FString;
  
  /**
    The IP endpoint to listen to and send packets from.
  **/
  public var UnicastEndpoint : unreal.FString;
  
  /**
    Whether the UDP transport channel is enabled.
  **/
  public var EnableTransport : Bool;
  
}
