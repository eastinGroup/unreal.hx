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

@:umodule("UnrealEd")
@:glueCppIncludes("Builders/LinearStairBuilder.h")
@:uextern extern class ULinearStairBuilder extends unreal.editor.UEditorBrushBuilder {
  public var GroupName : unreal.FName;
  
  /**
    The distance below the first step
  **/
  public var AddToFirstStep : unreal.Int32;
  
  /**
    The number of steps
  **/
  public var NumSteps : unreal.Int32;
  
  /**
    The width of each step
  **/
  public var StepWidth : unreal.Int32;
  
  /**
    The height of each step
  **/
  public var StepHeight : unreal.Int32;
  
  /**
    The length of each step
  **/
  public var StepLength : unreal.Int32;
  
}
