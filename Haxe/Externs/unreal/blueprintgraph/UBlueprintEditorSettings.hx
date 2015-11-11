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
package unreal.blueprintgraph;

@:umodule("BlueprintGraph")
@:glueCppIncludes("BlueprintEditorSettings.h")
@:uextern extern class UBlueprintEditorSettings extends unreal.UObject {
  
  /**
    The node template cache is used to speed up blueprint menuing. This determines the peak data size for that cache.
  **/
  public var NodeTemplateCacheCapMB : unreal.Float32;
  
  /**
    Minimum event time threshold used as a filter when additional details are enabled for display in the Compiler Results tab. A value of zero means that all events will be included in the final summary.
  **/
  public var CompileEventDisplayThresholdMs : unreal.Int32;
  
  /**
    If enabled, additional details will be displayed in the Compiler Results tab after compiling a blueprint.
  **/
  public var bShowDetailedCompileResults : Bool;
  
  /**
    If enabled, tooltips on action menu items will show the associated action's signature id (can be used to setup custom favorites menus).
  **/
  public var bShowActionMenuItemSignatures : Bool;
  
  /**
    When enabled, if a blueprint has compiler errors, then the graph will jump and focus on the first node generating an error
  **/
  public var bJumpToNodeErrors : Bool;
  
  /**
    Determines when to save Blueprints post-compile
  **/
  public var SaveOnCompile : unreal.blueprintgraph.ESaveOnCompile;
  
  /**
    If set will exclude components added in a Blueprint class Construction Script from the component details view
  **/
  public var bHideConstructionScriptComponentsInDetailsView : Bool;
  
  /**
    If set will spawn default nodes in new Blueprints
  **/
  public var bSpawnDefaultBlueprintNodes : Bool;
  
  /**
    If set we'll show empty sections in the My Blueprint view.
  **/
  public var bShowEmptySections : Bool;
  
  /**
    If set we'll show the inherited variables in the My Blueprint view.
  **/
  public var bShowInheritedVariables : Bool;
  
  /**
    If true will show the viewport tab when simulate is clicked.
  **/
  public var bShowViewportOnSimulate : Bool;
  
  /**
    If enabled, then you'll be able to directly connect arbitrary object pins together (a pure cast node will be injected automatically).
  **/
  public var bAutoCastObjectConnections : Bool;
  
  /**
    If enabled, then placed cast nodes will default to their "pure" form (meaning: without execution pins).
  **/
  public var bFavorPureCastNodes : Bool;
  
  /**
    If enabled, then your Blueprint favorites will be uncategorized, leaving you with less nested categories to sort through.
  **/
  public var bFlattenFavoritesMenus : Bool;
  
  /**
    If enabled, then call-on-member actions will be spawned as a single node (instead of a GetMember + FunctionCall node).
  **/
  public var bCompactCallOnMemberNodes : Bool;
  
  /**
    If enabled, then a separate section with your Blueprint favorites will be pined to the top of the context menu.
  **/
  public var bShowContextualFavorites : Bool;
  
  /**
    If enabled, then ALL component functions are exposed to the context menu (when the contextual target is a component owner). Ignores "ExposeFunctionCategories" metadata for components.
  **/
  public var bExposeAllMemberComponentFunctions : Bool;
  
  /**
    If enabled, we'll save off your chosen target setting based off of the context (allowing you to have different preferences based off what you're operating on).
  **/
  public var bSplitContextTargetSettings : Bool;
  
  /**
    Determines if lightweight tutorial text shows up at the top of empty blueprint graphs
  **/
  public var bShowGraphInstructionText : Bool;
  
  /**
    Should arrows indicating data/execution flow be drawn halfway along wires?
  **/
  public var bDrawMidpointArrowsInBlueprints : Bool;
  
}
