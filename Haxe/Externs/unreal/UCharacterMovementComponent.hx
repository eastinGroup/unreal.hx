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
  CharacterMovementComponent handles movement logic for the associated Character owner.
  It supports various movement modes including: walking, falling, swimming, flying, custom.
  
  Movement is affected primarily by current Velocity and Acceleration. Acceleration is updated each frame
  based on the input vector accumulated thus far (see UPawnMovementComponent::GetPendingInputVector()).
  
  Networking is fully implemented, with server-client correction and prediction included.
  
  @see ACharacter, UPawnMovementComponent
  @see https://docs.unrealengine.com/latest/INT/Gameplay/Framework/Pawn/Character/
**/
@:glueCppIncludes("GameFramework/CharacterMovementComponent.h")
@:uextern extern class UCharacterMovementComponent extends unreal.UPawnMovementComponent implements unreal.IRVOAvoidanceInterface implements unreal.INetworkPredictionInterface {
  
  /**
    True when SimulatedProxies are simulating RootMotion
  **/
  public var bWasSimulatingRootMotion : Bool;
  
  /**
    Root Motion movement params
  **/
  public var RootMotionParams : unreal.FRootMotionMovementParams;
  
  /**
    Minimum time between client TimeStamp resets.
           !! This has to be large enough so that we don't confuse the server if the client can stall or timeout.
           We do this as we use floats for TimeStamps, and server derives DeltaTime from two TimeStamps.
           As time goes on, accuracy decreases from those floating point numbers.
           So we trigger a TimeStamp reset at regular intervals to maintain a high level of accuracy.
  **/
  public var MinTimeBetweenTimeStampResets : unreal.Float32;
  
  /**
    Post-physics tick function for this character
  **/
  public var PreClothComponentTick : unreal.FCharacterMovementComponentPreClothTickFunction;
  
  /**
    Scale of the total capsule height to use for projection from navmesh to underlying geometry in the downward direction.
    In other words, trace down to [CapsuleHeight * NavMeshProjectionHeightScaleDown] below nav mesh.
  **/
  public var NavMeshProjectionHeightScaleDown : unreal.Float32;
  
  /**
    Scale of the total capsule height to use for projection from navmesh to underlying geometry in the upward direction.
    In other words, start the trace at [CapsuleHeight * NavMeshProjectionHeightScaleUp] above nav mesh.
  **/
  public var NavMeshProjectionHeightScaleUp : unreal.Float32;
  
  /**
    Speed at which to interpolate agent navmesh offset between traces. 0: Instant (no interp) > 0: Interp speed")
  **/
  public var NavMeshProjectionInterpSpeed : unreal.Float32;
  public var NavMeshProjectionTimer : unreal.Float32;
  
  /**
    How often we should raycast to project from navmesh to underlying geometry
  **/
  public var NavMeshProjectionInterval : unreal.Float32;
  
  /**
    Temporarily holds launch velocity when pawn is to be launched so it happens at end of movement.
  **/
  public var PendingLaunchVelocity : unreal.FVector;
  
  /**
    De facto default value 0.5 (due to that being the default in the avoidance registration function), indicates RVO behavior.
  **/
  public var AvoidanceWeight : unreal.Float32;
  
  /**
    Will NOT avoid other agents if they are in one of specified groups, higher priority than GroupsToAvoid
  **/
  public var GroupsToIgnore : unreal.FNavAvoidanceMask;
  
  /**
    Will avoid other agents if they are in one of specified groups
  **/
  public var GroupsToAvoid : unreal.FNavAvoidanceMask;
  
  /**
    Moving actor's group mask
  **/
  public var AvoidanceGroup : unreal.FNavAvoidanceMask;
  
  /**
    No default value, for now it's assumed to be valid if GetAvoidanceManager() returns non-NULL.
  **/
  public var AvoidanceUID : unreal.Int32;
  
  /**
    Velocity requested by path following.
    @see RequestDirectMove()
  **/
  public var RequestedVelocity : unreal.FVector;
  public var AvoidanceConsiderationRadius : unreal.Float32;
  
  /**
    Should use acceleration for path following?
    If true, acceleration is applied when path following to reach the target velocity.
    If false, path following velocity is set directly, disregarding acceleration.
  **/
  public var bRequestedMoveUseAcceleration : Bool;
  
  /**
    If set, component will use RVO avoidance
  **/
  public var bUseRVOAvoidance : Bool;
  
  /**
    Used to safely leave NavWalking movement mode
  **/
  public var bWantsToLeaveNavWalking : Bool;
  
  /**
    Used to prevent reentry of JumpOff()
  **/
  public var bPerformingJumpOff : Bool;
  
  /**
    Performs floor checks as if the character is using a shape with a flat base.
    This avoids the situation where characters slowly lower off the side of a ledge (as their capsule 'balances' on the edge).
  **/
  public var bUseFlatBaseForFloorChecks : Bool;
  
  /**
    Whether we always force floor checks for stationary Characters while walking.
    Normally floor checks are avoided if possible when not moving, but this can be used to force them if there are use-cases where they are being skipped erroneously
    (such as objects moving up into the character from below).
  **/
  public var bAlwaysCheckFloor : Bool;
  
  /**
    Set this to true if riding on a moving base that you know is clear from non-moving world obstructions.
    Optimization to avoid sweeps during based movement, use with care.
  **/
  public var bFastAttachedMove : Bool;
  
  /**
    Whether the character ignores changes in rotation of the base it is standing on.
    If true, the character maintains current world rotation.
    If false, the character rotates with the moving base.
  **/
  public var bIgnoreBaseRotation : Bool;
  
  /**
    If true, crouching should keep the base of the capsule in place by lowering the center of the shrunken capsule. If false, the base of the capsule moves up and the center stays in place.
    The same behavior applies when the character uncrouches: if true, the base is kept in the same location and the center moves up. If false, the capsule grows and only moves up if the base impacts something.
    By default this variable is set when the movement mode changes: set to true when walking and false otherwise. Feel free to override the behavior when the movement mode changes.
  **/
  public var bCrouchMaintainsBaseLocation : Bool;
  
  /**
    If true, try to crouch (or keep crouching) on next update. If false, try to stop crouching on next update.
  **/
  public var bWantsToCrouch : Bool;
  
  /**
    Instantly stop when in flying mode and no acceleration is being applied.
  **/
  public var bCheatFlying : Bool;
  
  /**
    if true, event NotifyJumpApex() to CharacterOwner's controller when at apex of jump.  Is cleared when event is triggered.
  **/
  public var bNotifyApex : Bool;
  
  /**
    True when the networked movement mode has been replicated.
  **/
  public var bNetworkMovementModeChanged : Bool;
  
  /**
    True when a network replication update is received for simulated proxies.
  **/
  public var bNetworkUpdateReceived : Bool;
  
  /**
    Used by movement code to determine if a change in position is based on normal movement or a teleport. If not a teleport, velocity can be recomputed based on the change in position.
  **/
  public var bJustTeleported : Bool;
  
  /**
    If true, impart the base component's tangential components of angular velocity when jumping or falling off it.
    Only those components of the velocity allowed by the separate component settings (bImpartBaseVelocityX etc) will be applied.
    @see bImpartBaseVelocityX, bImpartBaseVelocityY, bImpartBaseVelocityZ
  **/
  public var bImpartBaseAngularVelocity : Bool;
  
  /**
    If true, impart the base actor's Z velocity when falling off it (which includes jumping)
  **/
  public var bImpartBaseVelocityZ : Bool;
  
  /**
    If true, impart the base actor's Y velocity when falling off it (which includes jumping)
  **/
  public var bImpartBaseVelocityY : Bool;
  
  /**
    If true, impart the base actor's X velocity when falling off it (which includes jumping)
  **/
  public var bImpartBaseVelocityX : Bool;
  
  /**
    If true, walking movement always maintains horizontal velocity when moving up ramps, which causes movement up ramps to be faster parallel to the ramp surface.
    If false, then walking movement maintains velocity magnitude parallel to the ramp surface.
  **/
  public var bMaintainHorizontalGroundVelocity : Bool;
  
  /**
    Default movement mode when in water. Used at player startup or when teleported.
    @see DefaultLandMovementMode
    @see bRunPhysicsWithNoController
  **/
  public var DefaultWaterMovementMode : unreal.EMovementMode;
  
  /**
    Default movement mode when not in water. Used at player startup or when teleported.
    @see DefaultWaterMovementMode
    @see bRunPhysicsWithNoController
  **/
  public var DefaultLandMovementMode : unreal.EMovementMode;
  
  /**
    Information about the floor the Character is standing on (updated only during walking movement).
  **/
  public var CurrentFloor : unreal.FFindFloorResult;
  
  /**
    When exiting water, jump if control pitch angle is this high or above.
  **/
  public var JumpOutOfWaterPitch : unreal.Float32;
  
  /**
    Used in determining if pawn is going off ledge.  If the ledge is "shorter" than this value then the pawn will be able to walk off it. *
  **/
  public var LedgeCheckThreshold : unreal.Float32;
  
  /**
    How long to take to smoothly interpolate from the old pawn rotation on the client to the corrected one sent by the server.
  **/
  public var NetworkSimulatedSmoothRotationTime : unreal.Float32;
  
  /**
    How long to take to smoothly interpolate from the old pawn position on the client to the corrected one sent by the server.
  **/
  public var NetworkSimulatedSmoothLocationTime : unreal.Float32;
  
  /**
    Max number of iterations used for each discrete simulation step.
    Used primarily in the the more advanced movement modes that break up larger time steps (usually those applying gravity such as falling and walking).
    Increasing this value can address issues with fast-moving objects or complex collision scenarios, at the cost of performance.
    
    WARNING: if (MaxSimulationTimeStep * MaxSimulationIterations) is too low for the min framerate, the last simulation step may exceed MaxSimulationTimeStep to complete the simulation.
    @see MaxSimulationTimeStep
  **/
  public var MaxSimulationIterations : unreal.Int32;
  
  /**
    Max time delta for each discrete simulation step.
    Used primarily in the the more advanced movement modes that break up larger time steps (usually those applying gravity such as falling and walking).
    Lowering this value can address issues with fast-moving objects or complex collision scenarios, at the cost of performance.
    
    WARNING: if (MaxSimulationTimeStep * MaxSimulationIterations) is too low for the min framerate, the last simulation step may exceed MaxSimulationTimeStep to complete the simulation.
    @see MaxSimulationIterations
  **/
  public var MaxSimulationTimeStep : unreal.Float32;
  
  /**
    Modifier to applied to values such as acceleration and max speed due to analog input.
  **/
  private var AnalogInputModifier : unreal.Float32;
  
  /**
    Accumulated force to be added next tick.
  **/
  private var PendingForceToApply : unreal.FVector;
  
  /**
    Accumulated impulse to be added next tick.
  **/
  private var PendingImpulseToApply : unreal.FVector;
  
  /**
    Location after last PerformMovement update. Used internally to detect changes in position from outside character movement to try to validate the current floor.
  **/
  private var LastUpdateLocation : unreal.FVector;
  
  /**
    Current acceleration vector (with magnitude).
    This is calculated each update based on the input vector and the constraints of MaxAcceleration and the current movement mode.
  **/
  private var Acceleration : unreal.FVector;
  public var UpperImpactNormalScale_DEPRECATED : unreal.Float32;
  
  /**
    Multiplier to max ground speed to use when crouched
  **/
  public var CrouchedSpeedMultiplier_DEPRECATED : unreal.Float32;
  
  /**
    Deprecated properties
  **/
  public var bForceBraking_DEPRECATED : Bool;
  
  /**
    Force per kg applied constantly to all overlapping components.
  **/
  public var RepulsionForce : unreal.Float32;
  
  /**
    Maximum force applied to touched physics objects. If < 0.0f, there is no maximum.
  **/
  public var MaxTouchForce : unreal.Float32;
  
  /**
    Minimum Force applied to touched physics objects. If < 0.0f, there is no minimum.
  **/
  public var MinTouchForce : unreal.Float32;
  
  /**
    Force to apply to physics objects that are touched by the player.
  **/
  public var TouchForceFactor : unreal.Float32;
  
  /**
    Z-Offset for the position the force is applied to. 0.0f is the center of the physics object, 1.0f is the top and -1.0f is the bottom of the object.
  **/
  public var PushForcePointZOffsetFactor : unreal.Float32;
  
  /**
    Force to apply when the player collides with a blocking physics object.
  **/
  public var PushForceFactor : unreal.Float32;
  
  /**
    Initial impulse force to apply when the player bounces into a blocking physics object.
  **/
  public var InitialPushForceFactor : unreal.Float32;
  
  /**
    Force applied to objects we stand on (due to Mass and Gravity) is scaled by this amount.
  **/
  public var StandingDownwardForceScale : unreal.Float32;
  
  /**
    If enabled, the applied push force will try to get the physics object to the same velocity than the player, not faster. This will only
                  scale the force down, it will never apply more force than defined by PushForceFactor.
  **/
  public var bScalePushForceToVelocity : Bool;
  
  /**
    If enabled, the PushForceFactor is applied per kg mass of the affected object.
  **/
  public var bPushForceScaledToMass : Bool;
  
  /**
    If enabled, the TouchForceFactor is applied per kg mass of the affected object.
  **/
  public var bTouchForceScaledToMass : Bool;
  
  /**
    If enabled, the player will interact with physics objects when walking into them.
  **/
  public var bEnablePhysicsInteraction : Bool;
  
  /**
    Mass of pawn (for when momentum is imparted to it).
  **/
  public var Mass : unreal.Float32;
  
  /**
    Z velocity applied when pawn tries to get out of water
  **/
  public var OutofWaterZ : unreal.Float32;
  
  /**
    Maximum step height for getting out of water
  **/
  public var MaxOutOfWaterStepHeight : unreal.Float32;
  
  /**
    What to update CharacterOwner and UpdatedComponent after movement ends
  **/
  public var DeferredUpdatedMoveComponent : unreal.USceneComponent;
  
  /**
    true to update CharacterOwner and UpdatedComponent after movement ends
  **/
  public var bDeferUpdateMoveComponent : Bool;
  
  /**
    If true, Character can walk off a ledge when crouching.
  **/
  public var bCanWalkOffLedgesWhenCrouching : Bool;
  
  /**
    If true, Character can walk off a ledge.
  **/
  public var bCanWalkOffLedges : Bool;
  
  /**
    If true, the capsule needs to be shrunk on this simulated proxy, to avoid replication rounding putting us in geometry.
    Whenever this is set to true, this will cause the capsule to be shrunk again on the next update, and then set to false.
  **/
  public var bShrinkProxyCapsule : Bool;
  
  /**
    Force the Character in MOVE_Walking to do a check for a valid floor even if he hasn't moved. Cleared after next floor check.
    Normally if bAlwaysCheckFloor is false we try to avoid the floor check unless some conditions are met, but this can be used to force the next check to always run.
  **/
  public var bForceNextFloorCheck : Bool;
  
  /**
    If true, movement will be performed even if there is no Controller for the Character owner.
    Normally without a Controller, movement will be aborted and velocity and acceleration are zeroed if the character is walking.
    Characters that are spawned without a Controller but with this flag enabled will initialize the movement mode to DefaultLandMovementMode or DefaultWaterMovementMode appropriately.
    @see DefaultLandMovementMode, DefaultWaterMovementMode
  **/
  public var bRunPhysicsWithNoController : Bool;
  
  /**
    Ignores size of acceleration component, and forces max acceleration to drive character at full velocity.
  **/
  public var bForceMaxAccel : Bool;
  
  /**
    If true, high-level movement updates will be wrapped in a movement scope that accumulates updates and defers a bulk of the work until the end.
    When enabled, touch and hit events will not be triggered until the end of multiple moves within an update, which can improve performance.
    
    @see FScopedMovementUpdate
  **/
  public var bEnableScopedMovementUpdates : Bool;
  
  /**
    If true, rotate the Character toward the direction of acceleration, using RotationRate as the rate of rotation change. Overrides UseControllerDesiredRotation.
    Normally you will want to make sure that other settings are cleared, such as bUseControllerRotationYaw on the Character.
  **/
  public var bOrientRotationToMovement : Bool;
  
  /**
    If true, smoothly rotate the Character toward the Controller's desired rotation, using RotationRate as the rate of rotation change. Overridden by OrientRotationToMovement.
  **/
  public var bUseControllerDesiredRotation : Bool;
  
  /**
    Change in rotation per second, used when UseControllerDesiredRotation or OrientRotationToMovement are true.
  **/
  public var RotationRate : unreal.FRotator;
  
  /**
    When perching on a ledge, add this additional distance to MaxStepHeight when determining how high above a walkable floor we can perch.
    Note that we still enforce MaxStepHeight to start the step up; this just allows the character to hang off the edge or step slightly higher off the floor.
    (@see PerchRadiusThreshold)
  **/
  public var PerchAdditionalHeight : unreal.Float32;
  
  /**
    Don't allow the character to perch on the edge of a surface if the contact is this close to the edge of the capsule.
    Note that characters will not fall off if they are within MaxStepHeight of a walkable surface below.
  **/
  public var PerchRadiusThreshold : unreal.Float32;
  
  /**
    Water buoyancy. A ratio (1.0 = neutral buoyancy, 0.0 = no buoyancy)
  **/
  public var Buoyancy : unreal.Float32;
  
  /**
    Collision half-height when crouching (component scale is applied separately)
  **/
  public var CrouchedHalfHeight : unreal.Float32;
  
  /**
    Friction to apply to lateral air movement when falling.
    If bUseSeparateBrakingFriction is false, also affects the ability to stop more quickly when braking (whenever Acceleration is zero).
    @see BrakingFriction, bUseSeparateBrakingFriction
  **/
  public var FallingLateralFriction : unreal.Float32;
  
  /**
    When falling, if lateral velocity magnitude is less than this value, AirControl is multiplied by AirControlBoostMultiplier.
    Setting this to zero will disable air control boosting.
  **/
  public var AirControlBoostVelocityThreshold : unreal.Float32;
  
  /**
    When falling, multiplier applied to AirControl when lateral velocity is less than AirControlBoostVelocityThreshold.
    Setting this to zero will disable air control boosting. Final result is clamped at 1.
  **/
  public var AirControlBoostMultiplier : unreal.Float32;
  
  /**
    When falling, amount of lateral movement control available to the character.
    0 = no control, 1 = full control at max speed of MaxWalkSpeed.
  **/
  public var AirControl : unreal.Float32;
  
  /**
    Deceleration when flying and not applying acceleration.
    @see MaxAcceleration
  **/
  public var BrakingDecelerationFlying : unreal.Float32;
  
  /**
    Deceleration when swimming and not applying acceleration.
    @see MaxAcceleration
  **/
  public var BrakingDecelerationSwimming : unreal.Float32;
  
  /**
    Lateral deceleration when falling and not applying acceleration.
    @see MaxAcceleration
  **/
  public var BrakingDecelerationFalling : unreal.Float32;
  
  /**
    Deceleration when walking and not applying acceleration. This is a constant opposing force that directly lowers velocity by a constant value.
    @see GroundFriction, MaxAcceleration
  **/
  public var BrakingDecelerationWalking : unreal.Float32;
  
  /**
    If true, BrakingFriction will be used to slow the character to a stop (when there is no Acceleration).
    If false, braking uses the same friction passed to CalcVelocity() (ie GroundFriction when walking), multiplied by BrakingFrictionFactor.
    This setting applies to all movement modes; if only desired in certain modes, consider toggling it when movement modes change.
    @see BrakingFriction
  **/
  public var bUseSeparateBrakingFriction : Bool;
  
  /**
    Friction (drag) coefficient applied when braking (whenever Acceleration = 0, or if character is exceeding max speed); actual value used is this multiplied by BrakingFrictionFactor.
    When braking, this property allows you to control how much friction is applied when moving across the ground, applying an opposing force that scales with current velocity.
    Braking is composed of friction (velocity-dependent drag) and constant deceleration.
    This is the current value, used in all movement modes; if this is not desired, override it or bUseSeparateBrakingFriction when movement mode changes.
    @note Only used if bUseSeparateBrakingFriction setting is true, otherwise current friction such as GroundFriction is used.
    @see bUseSeparateBrakingFriction, BrakingFrictionFactor, GroundFriction, BrakingDecelerationWalking
  **/
  public var BrakingFriction : unreal.Float32;
  
  /**
    Factor used to multiply actual value of friction used when braking.
    This applies to any friction value that is currently used, which may depend on bUseSeparateBrakingFriction.
    @note This is 2 by default for historical reasons, a value of 1 gives the true drag equation.
    @see bUseSeparateBrakingFriction, GroundFriction, BrakingFriction
  **/
  public var BrakingFrictionFactor : unreal.Float32;
  
  /**
    Max Acceleration (rate of change of velocity)
  **/
  public var MaxAcceleration : unreal.Float32;
  
  /**
    The maximum speed when using Custom movement mode.
  **/
  public var MaxCustomMovementSpeed : unreal.Float32;
  
  /**
    The maximum flying speed.
  **/
  public var MaxFlySpeed : unreal.Float32;
  
  /**
    The maximum swimming speed.
  **/
  public var MaxSwimSpeed : unreal.Float32;
  
  /**
    The maximum ground speed when walking and crouched.
  **/
  public var MaxWalkSpeedCrouched : unreal.Float32;
  
  /**
    The maximum ground speed when walking. Also determines maximum lateral speed when falling.
  **/
  public var MaxWalkSpeed : unreal.Float32;
  
  /**
    Setting that affects movement control. Higher values allow faster changes in direction.
    If bUseSeparateBrakingFriction is false, also affects the ability to stop more quickly when braking (whenever Acceleration is zero), where it is multiplied by BrakingFrictionFactor.
    When braking, this property allows you to control how much friction is applied when moving across the ground, applying an opposing force that scales with current velocity.
    This can be used to simulate slippery surfaces such as ice or oil by changing the value (possibly based on the material pawn is standing on).
    @see BrakingDecelerationWalking, BrakingFriction, bUseSeparateBrakingFriction, BrakingFrictionFactor
  **/
  public var GroundFriction : unreal.Float32;
  
  /**
    Current custom sub-mode if MovementMode is set to Custom.
    This is automatically replicated through the Character owner and for client-server movement functions.
    @see SetMovementMode()
  **/
  public var CustomMovementMode : unreal.UInt8;
  
  /**
    Actor's current movement mode (walking, falling, etc).
       - walking:  Walking on a surface, under the effects of friction, and able to "step up" barriers. Vertical velocity is zero.
       - falling:  Falling under the effects of gravity, after jumping or walking off the edge of a surface.
       - flying:   Flying, ignoring the effects of gravity.
       - swimming: Swimming through a fluid volume, under the effects of gravity and buoyancy.
       - custom:   User-defined custom movement mode, including many possible sub-modes.
    This is automatically replicated through the Character owner and for client-server movement functions.
    @see SetMovementMode(), CustomMovementMode
  **/
  public var MovementMode : unreal.EMovementMode;
  
  /**
    Fraction of JumpZVelocity to use when automatically "jumping off" of a base actor that's not allowed to be a base for a character. (For example, if you're not allowed to stand on other players.)
  **/
  public var JumpOffJumpZFactor : unreal.Float32;
  
  /**
    Initial velocity (instantaneous vertical acceleration) when jumping.
  **/
  public var JumpZVelocity : unreal.Float32;
  
  /**
    Maximum height character can step up
  **/
  public var MaxStepHeight : unreal.Float32;
  
  /**
    Custom gravity scale. Gravity is multiplied by this amount for the character.
  **/
  public var GravityScale : unreal.Float32;
  
  /**
    Character movement component belongs to
  **/
  private var CharacterOwner : unreal.ACharacter;
  @:final public function SetAvoidanceGroup(GroupFlags : unreal.Int32) : Void;
  @:final public function SetGroupsToAvoid(GroupFlags : unreal.Int32) : Void;
  @:final public function SetGroupsToIgnore(GroupFlags : unreal.Int32) : Void;
  
  /**
    Change avoidance state and registers in RVO manager if needed
  **/
  @:final public function SetAvoidanceEnabled(bEnable : Bool) : Void;
  
  /**
    Get the Character that owns UpdatedComponent.
  **/
  @:thisConst @:final public function GetCharacterOwner() : unreal.ACharacter;
  
  /**
    Change movement mode.
    
    @param NewMovementMode       The new movement mode
    @param NewCustomMode         The new custom sub-mode, only applicable if NewMovementMode is Custom.
  **/
  public function SetMovementMode(NewMovementMode : unreal.EMovementMode, NewCustomMode : unreal.UInt8) : Void;
  
  /**
    @return true if the character is in the 'Walking' movement mode.
  **/
  @:thisConst @:final public function IsWalking() : Bool;
  
  /**
    Make movement impossible (sets movement mode to MOVE_None).
  **/
  public function DisableMovement() : Void;
  
  /**
    Return PrimitiveComponent we are based on (standing and walking on).
  **/
  @:thisConst @:final public function GetMovementBase() : unreal.UPrimitiveComponent;
  
  /**
    If we have a movement base, get the velocity that should be imparted by that base, usually when jumping off of it.
    Only applies the components of the velocity enabled by bImpartBaseVelocityX, bImpartBaseVelocityY, bImpartBaseVelocityZ.
  **/
  @:thisConst public function GetImpartedMovementBaseVelocity() : unreal.FVector;
  
  /**
    Updates Velocity and Acceleration based on the current state, applying the effects of friction and acceleration or deceleration. Does not apply gravity.
    This is used internally during movement updates. Normally you don't need to call this from outside code, but you might want to use it for custom movement modes.
    
    @param       DeltaTime                                               time elapsed since last frame.
    @param       Friction                                                coefficient of friction when not accelerating, or in the direction opposite acceleration.
    @param       bFluid                                                  true if moving through a fluid, causing Friction to always be applied regardless of acceleration.
    @param       BrakingDeceleration                             deceleration applied when not accelerating, or when exceeding max velocity.
  **/
  public function CalcVelocity(DeltaTime : unreal.Float32, Friction : unreal.Float32, bFluid : Bool, BrakingDeceleration : unreal.Float32) : Void;
  
  /**
    Compute the max jump height based on the JumpZVelocity velocity and gravity.
  **/
  @:thisConst public function GetMaxJumpHeight() : unreal.Float32;
  
  /**
    @return Maximum acceleration for the current state, based on MaxAcceleration and any additional modifiers.
  **/
  @:thisConst public function K2_GetModifiedMaxAcceleration() : unreal.Float32;
  
  /**
    @return Maximum acceleration for the current state.
  **/
  @:thisConst public function GetMaxAcceleration() : unreal.Float32;
  
  /**
    @return Current acceleration, computed from input vector each update.
  **/
  @:thisConst @:final public function GetCurrentAcceleration() : unreal.FVector;
  
  /**
    @return Modifier [0..1] based on the magnitude of the last input vector, which is used to modify the acceleration and max speed during movement.
  **/
  @:thisConst @:final public function GetAnalogInputModifier() : unreal.Float32;
  
  /**
    Add impulse to character. Impulses are accumulated each tick and applied together
    so multiple calls to this function will accumulate.
    An impulse is an instantaneous force, usually applied once. If you want to continually apply
    forces each frame, use AddForce().
    Note that changing the momentum of characters like this can change the movement mode.
    
    @param       Impulse                         Impulse to apply.
    @param       bVelocityChange         Whether or not the impulse is relative to mass.
  **/
  public function AddImpulse(Impulse : unreal.FVector, bVelocityChange : Bool) : Void;
  
  /**
    Add force to character. Forces are accumulated each tick and applied together
    so multiple calls to this function will accumulate.
    Forces are scaled depending on timestep, so they can be applied each frame. If you want an
    instantaneous force, use AddImpulse.
    Adding a force always takes the actor's mass into account.
    Note that changing the momentum of characters like this can change the movement mode.
    
    @param       Force                   Force to apply.
  **/
  public function AddForce(Force : unreal.FVector) : Void;
  
  /**
    @return The distance from the edge of the capsule within which we don't allow the character to perch on the edge of a surface.
  **/
  @:thisConst @:final public function GetPerchRadiusThreshold() : unreal.Float32;
  
  /**
    Returns the radius within which we can stand on the edge of a surface without falling (if this is a walkable surface).
    Simply computed as the capsule radius minus the result of GetPerchRadiusThreshold().
  **/
  @:thisConst @:final public function GetValidPerchRadius() : unreal.Float32;
  
  /**
    Return true if the hit result should be considered a walkable surface for the character.
  **/
  @:thisConst public function IsWalkable(Hit : unreal.Const<unreal.PRef<unreal.FHitResult>>) : Bool;
  
  /**
    Get the max angle in degrees of a walkable surface for the character.
  **/
  @:thisConst @:final public function K2_GetWalkableFloorAngle() : unreal.Float32;
  
  /**
    Set the max angle in degrees of a walkable surface for the character. Also computes WalkableFloorZ.
  **/
  @:final public function SetWalkableFloorAngle(InWalkableFloorAngle : unreal.Float32) : Void;
  
  /**
    Get the Z component of the normal of the steepest walkable surface for the character. Any lower than this and it is not walkable.
  **/
  @:thisConst @:final public function K2_GetWalkableFloorZ() : unreal.Float32;
  
  /**
    Set the Z component of the normal of the steepest walkable surface for the character. Also computes WalkableFloorAngle.
  **/
  @:final public function SetWalkableFloorZ(InWalkableFloorZ : unreal.Float32) : Void;
  
  /**
    Called when the collision capsule touches another primitive component
  **/
  private function CapsuleTouched(Other : unreal.AActor, OtherComp : unreal.UPrimitiveComponent, OtherBodyIndex : unreal.Int32, bFromSweep : Bool, SweepResult : unreal.Const<unreal.PRef<unreal.FHitResult>>) : Void;
  
  /**
    Replicated function sent by client to server - contains client movement and view info.
  **/
  public function ServerMove(TimeStamp : unreal.Float32, InAccel : unreal.FVector_NetQuantize10, ClientLoc : unreal.FVector_NetQuantize100, CompressedMoveFlags : unreal.UInt8, ClientRoll : unreal.UInt8, View : unreal.FakeUInt32, ClientMovementBase : unreal.UPrimitiveComponent, ClientBaseBoneName : unreal.FName, ClientMovementMode : unreal.UInt8) : Void;
  
  /**
    Replicated function sent by client to server - contains client movement and view info for two moves.
  **/
  public function ServerMoveDual(TimeStamp0 : unreal.Float32, InAccel0 : unreal.FVector_NetQuantize10, PendingFlags : unreal.UInt8, View0 : unreal.FakeUInt32, TimeStamp : unreal.Float32, InAccel : unreal.FVector_NetQuantize10, ClientLoc : unreal.FVector_NetQuantize100, NewFlags : unreal.UInt8, ClientRoll : unreal.UInt8, View : unreal.FakeUInt32, ClientMovementBase : unreal.UPrimitiveComponent, ClientBaseBoneName : unreal.FName, ClientMovementMode : unreal.UInt8) : Void;
  
  /**
    Replicated function sent by client to server - contains client movement and view info for two moves. First move is non root motion, second is root motion.
  **/
  public function ServerMoveDualHybridRootMotion(TimeStamp0 : unreal.Float32, InAccel0 : unreal.FVector_NetQuantize10, PendingFlags : unreal.UInt8, View0 : unreal.FakeUInt32, TimeStamp : unreal.Float32, InAccel : unreal.FVector_NetQuantize10, ClientLoc : unreal.FVector_NetQuantize100, NewFlags : unreal.UInt8, ClientRoll : unreal.UInt8, View : unreal.FakeUInt32, ClientMovementBase : unreal.UPrimitiveComponent, ClientBaseBoneName : unreal.FName, ClientMovementMode : unreal.UInt8) : Void;
  
  /**
    Resending an (important) old move. Process it if not already processed.
  **/
  public function ServerMoveOld(OldTimeStamp : unreal.Float32, OldAccel : unreal.FVector_NetQuantize10, OldMoveFlags : unreal.UInt8) : Void;
  
  /**
    If no client adjustment is needed after processing received ServerMove(), ack the good move so client can remove it from SavedMoves
  **/
  public function ClientAckGoodMove(TimeStamp : unreal.Float32) : Void;
  
  /**
    Replicate position correction to client, associated with a timestamped servermove.  Client will replay subsequent moves after applying adjustment.
  **/
  public function ClientAdjustPosition(TimeStamp : unreal.Float32, NewLoc : unreal.FVector, NewVel : unreal.FVector, NewBase : unreal.UPrimitiveComponent, NewBaseBoneName : unreal.FName, bHasBase : Bool, bBaseRelativePosition : Bool, ServerMovementMode : unreal.UInt8) : Void;
  
  /**
    Bandwidth saving version, when velocity is zeroed
  **/
  public function ClientVeryShortAdjustPosition(TimeStamp : unreal.Float32, NewLoc : unreal.FVector, NewBase : unreal.UPrimitiveComponent, NewBaseBoneName : unreal.FName, bHasBase : Bool, bBaseRelativePosition : Bool, ServerMovementMode : unreal.UInt8) : Void;
  
  /**
    Replicate position correction to client when using root motion for movement.
  **/
  public function ClientAdjustRootMotionPosition(TimeStamp : unreal.Float32, ServerMontageTrackPosition : unreal.Float32, ServerLoc : unreal.FVector, ServerRotation : unreal.FVector_NetQuantizeNormal, ServerVelZ : unreal.Float32, ServerBase : unreal.UPrimitiveComponent, ServerBoneName : unreal.FName, bHasBase : Bool, bBaseRelativePosition : Bool, ServerMovementMode : unreal.UInt8) : Void;
  
}
