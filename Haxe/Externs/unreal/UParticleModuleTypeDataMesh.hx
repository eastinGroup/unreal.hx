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

@:glueCppIncludes("Particles/TypeData/ParticleModuleTypeDataMesh.h")
@:uextern extern class UParticleModuleTypeDataMesh extends unreal.UParticleModuleTypeDataBase {
  
  /**
    If true, all collisions for mesh particle on this emitter will take the particle size into account.
    If false, particle size will be ignored in collision checks.
  **/
  public var bCollisionsConsiderPartilceSize : Bool;
  
  /**
    If true, all camera facing options will point the mesh against the camera's view direction rather than pointing at the cameras location.
    If false, the camera facing will point to the cameras position as normal.
  **/
  public var bFaceCameraDirectionRatherThanPosition : Bool;
  
  /**
    If true, apply 'sprite' particle rotation about the orientation axis (direction mesh is pointing).
    If false, apply 'sprite' particle rotation about the camera facing axis.
  **/
  public var bApplyParticleRotationAsSpin : Bool;
  
  /**
    The camera facing option to use:
    All camera facing options without locked axis assume X-axis will be facing the camera.
            XAxisFacing_NoUp                                - X-axis camera facing, no attempt to face an axis up or down.
            XAxisFacing_ZUp                                 - X-axis camera facing, Z-axis of the mesh should attempt to point up.
            XAxisFacing_NegativeZUp                 - X-axis camera facing, Z-axis of the mesh should attempt to point down.
            XAxisFacing_YUp                                 - X-axis camera facing, Y-axis of the mesh should attempt to point up.
            XAxisFacing_NegativeYUp                 - X-axis camera facing, Y-axis of the mesh should attempt to point down.
    All axis-locked camera facing options assume the AxisLockOption is set. EPAL_NONE will be treated as EPAL_X.
            LockedAxis_ZAxisFacing                  - X-axis locked on AxisLockOption axis, rotate Z-axis of the mesh to face towards camera.
            LockedAxis_NegativeZAxisFacing  - X-axis locked on AxisLockOption axis, rotate Z-axis of the mesh to face away from camera.
            LockedAxis_YAxisFacing                  - X-axis locked on AxisLockOption axis, rotate Y-axis of the mesh to face towards camera.
            LockedAxis_NegativeYAxisFacing  - X-axis locked on AxisLockOption axis, rotate Y-axis of the mesh to face away from camera.
    All velocity-aligned options do NOT require the ScreenAlignment be set to PSA_Velocity.
    Doing so will result in additional work being performed... (it will orient the mesh twice).
            VelocityAligned_ZAxisFacing         - X-axis aligned to the velocity, rotate the Z-axis of the mesh to face towards camera.
            VelocityAligned_NegativeZAxisFacing - X-axis aligned to the velocity, rotate the Z-axis of the mesh to face away from camera.
            VelocityAligned_YAxisFacing         - X-axis aligned to the velocity, rotate the Y-axis of the mesh to face towards camera.
            VelocityAligned_NegativeYAxisFacing - X-axis aligned to the velocity, rotate the Y-axis of the mesh to face away from camera.
  **/
  public var CameraFacingOption : unreal.EMeshCameraFacingOptions;
  
  /**
    The axis of the mesh to point up when camera facing the X-axis.
            CameraFacing_NoneUP                     No attempt to face an axis up or down.
            CameraFacing_ZUp                        Z-axis of the mesh should attempt to point up.
            CameraFacing_NegativeZUp        Z-axis of the mesh should attempt to point down.
            CameraFacing_YUp                        Y-axis of the mesh should attempt to point up.
            CameraFacing_NegativeYUp        Y-axis of the mesh should attempt to point down.
  **/
  public var CameraFacingUpAxisOption_DEPRECATED : unreal.EMeshCameraFacingUpAxis;
  
  /**
    If true, then point the X-axis of the mesh towards the camera.
    When set, AxisLockOption as well as all other locked axis/screen alignment settings are ignored.
  **/
  public var bCameraFacing : Bool;
  
  /**
    The axis to lock the mesh on. This overrides TypeSpecific mesh alignment as well as the LockAxis module.
            EPAL_NONE                -      No locking to an axis.
            EPAL_X                   -      Lock the mesh X-axis facing towards +X.
            EPAL_Y                   -      Lock the mesh X-axis facing towards +Y.
            EPAL_Z                   -      Lock the mesh X-axis facing towards +Z.
            EPAL_NEGATIVE_X  -      Lock the mesh X-axis facing towards -X.
            EPAL_NEGATIVE_Y  -      Lock the mesh X-axis facing towards -Y.
            EPAL_NEGATIVE_Z  -      Lock the mesh X-axis facing towards -Z.
            EPAL_ROTATE_X    -      Ignored for mesh emitters. Treated as EPAL_NONE.
            EPAL_ROTATE_Y    -      Ignored for mesh emitters. Treated as EPAL_NONE.
            EPAL_ROTATE_Z    -      Ignored for mesh emitters. Treated as EPAL_NONE.
  **/
  public var AxisLockOption : unreal.EParticleAxisLock;
  
  /**
    The 'pre' rotation pitch (in degrees) to apply to the static mesh used.
  **/
  public var RollPitchYawRange : unreal.FRawDistributionVector;
  public var Yaw_DEPRECATED : unreal.Float32;
  public var Roll_DEPRECATED : unreal.Float32;
  
  /**
    deprecated properties for initial orientation
  **/
  public var Pitch_DEPRECATED : unreal.Float32;
  
  /**
    If true, use the emitter material when rendering rather than the one applied
    to the static mesh model.
  **/
  public var bOverrideMaterial : Bool;
  
  /**
    The alignment to use on the meshes emitted.
    The RequiredModule->ScreenAlignment MUST be set to PSA_TypeSpecific to use.
    One of the following:
    PSMA_MeshFaceCameraWithRoll
            Face the camera allowing for rotation around the mesh-to-camera FVector
            (amount provided by the standard particle sprite rotation).
    PSMA_MeshFaceCameraWithSpin
            Face the camera allowing for the mesh to rotate about the tangential axis.
    PSMA_MeshFaceCameraWithLockedAxis
            Face the camera while maintaining the up FVector as the locked direction.
  **/
  public var MeshAlignment : unreal.EMeshScreenAlignment;
  
  /**
    UNUSED (the collision module dictates doing collisions)
  **/
  public var DoCollisions : Bool;
  
  /**
    If true, has the meshes cast shadows
  **/
  public var CastShadows : Bool;
  
  /**
    The static mesh to render at the particle positions
  **/
  public var Mesh : unreal.UStaticMesh;
  
}
