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

@:glueCppIncludes("Materials/MaterialExpressionFunctionOutput.h")
@:uextern extern class UMaterialExpressionFunctionOutput extends unreal.UMaterialExpression {
  
  /**
    Id of this input, used to maintain references through name changes.
  **/
  public var Id : unreal.FGuid;
  
  /**
    Whether this output was previewed the last time this function was edited.
  **/
  public var bLastPreviewed : Bool;
  
  /**
    Stores the expression in the material function connected to this output.
  **/
  public var A : unreal.FExpressionInput;
  
  /**
    Controls where the output is displayed relative to the other outputs.
  **/
  public var SortPriority : unreal.Int32;
  
  /**
    The output's description, which will be used as a tooltip on the connector in function call expressions that use this function.
  **/
  public var Description : unreal.FString;
  
  /**
    The output's name, which will be drawn on the connector in function call expressions that use this function.
  **/
  public var OutputName : unreal.FString;
  
}
