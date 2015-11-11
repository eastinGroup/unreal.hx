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
  A Level is a collection of Actors (lights, volumes, mesh instances etc.).
  Multiple Levels can be loaded and unloaded into the World to create a streaming experience.
  
  @see https://docs.unrealengine.com/latest/INT/Engine/Levels
  @see UActor
**/
@:glueCppIncludes("Engine/Level.h")
@:uextern extern class ULevel extends unreal.UObject implements unreal.IInterface_AssetUserData {
  
  /**
    Array of user data stored with the asset
  **/
  private var AssetUserData : unreal.TArray<unreal.UAssetUserData>;
  
  /**
    List of RuntimeMovieScenePlayers that are currently active in this level.  We'll keep references to these to keep
              them around until they're no longer needed.  Also, we'll tick them every frame! // @todo sequencer uobjects: Ideally this is using URuntimeMovieScenePlayer* and not UObject*, but there are DLL/interface issues with that
  **/
  private var ActiveRuntimeMovieScenePlayers : unreal.TArray<unreal.UObject>;
  
  /**
    Array of all MovieSceneBindings that are used in this level.  These store the relationship between
              a MovieScene asset and possessed actors in this level.
  **/
  private var MovieSceneBindingsArray : unreal.TArray<unreal.UObject>;
  
  /**
    Whether this level is locked; that is, its actors are read-only
        Used by WorldBrowser to lock a level when corresponding ULevelStreaming does not exist
  **/
  public var bLocked : Bool;
  
  /**
    Whether the level is currently visible/ associated with the world
  **/
  public var bIsVisible : Bool;
  
  /**
    threes of triangle vertices - AABB filtering friendly. Stored if there's a runtime need to rebuild navigation that accepts BSPs
        as well - it's a lot easier this way than retrieve this data at runtime
  **/
  public var StaticNavigableGeometry : unreal.TArray<unreal.FVector>;
  
  /**
    Total number of KB used for shadowmap textures in the level.
  **/
  public var ShadowmapTotalSize : unreal.Float32;
  
  /**
    Total number of KB used for lightmap textures in the level.
  **/
  public var LightmapTotalSize : unreal.Float32;
  
  /**
    Navigation related data that can be stored per level
  **/
  public var NavDataChunks : unreal.TArray<unreal.UNavigationDataChunk>;
  public var NavListEnd : unreal.ANavigationObjectBase;
  
  /**
    Start and end of the navigation list for this level, used for quickly fixing up
    when streaming this level in/out. @TODO DEPRECATED - DELETE
  **/
  public var NavListStart : unreal.ANavigationObjectBase;
  
  /**
    The level scripting actor, created by instantiating the class from LevelScriptBlueprint.  This handles all level scripting
  **/
  public var LevelScriptActor : unreal.ALevelScriptActor;
  #if WITH_EDITORONLY_DATA
  
  /**
    Reference to the blueprint for level scripting
  **/
  public var LevelScriptBlueprint : unreal.ULevelScriptBlueprint;
  #end // WITH_EDITORONLY_DATA
  
  /**
    BSP Model components used for rendering.
  **/
  public var ModelComponents : unreal.TArray<unreal.UModelComponent>;
  
  /**
    BSP UModel.
  **/
  public var Model : unreal.UModel;
  
  /**
    The World that has this level in its Levels array.
    This is not the same as GetOuter(), because GetOuter() for a streaming level is a vestigial world that is not used.
    It should not be accessed during BeginDestroy(), just like any other UObject references, since GC may occur in any order.
  **/
  public var OwningWorld : unreal.UWorld;
  
}
