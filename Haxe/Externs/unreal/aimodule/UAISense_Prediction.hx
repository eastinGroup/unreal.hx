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
package unreal.aimodule;

@:umodule("AIModule")
@:glueCppIncludes("Perception/AISense_Prediction.h")
@:uextern extern class UAISense_Prediction extends unreal.aimodule.UAISense {
  public var RegisteredEvents : unreal.TArray<unreal.aimodule.FAIPredictionEvent>;
  
  /**
    Asks perception system to supply Requestor with PredictedActor's predicted location in PredictionTime seconds
        Location is being predicted based on PredicterActor's current location and velocity
  **/
  static public function RequestControllerPredictionEvent(Requestor : unreal.aimodule.AAIController, PredictedActor : unreal.AActor, PredictionTime : unreal.Float32) : Void;
  
  /**
    Asks perception system to supply Requestor with PredictedActor's predicted location in PredictionTime seconds
        Location is being predicted based on PredicterActor's current location and velocity
  **/
  static public function RequestPawnPredictionEvent(Requestor : unreal.APawn, PredictedActor : unreal.AActor, PredictionTime : unreal.Float32) : Void;
  
}
