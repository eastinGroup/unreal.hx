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

@:glueCppIncludes("Animation/AnimSequence.h")
@:uextern extern class UAnimSequence extends unreal.UAnimSequenceBase {
  #if WITH_EDITORONLY_DATA
  public var bNeedsRebake : Bool;
  
  /**
    Date/Time-stamp of the file from the last import
  **/
  public var SourceFileTimestamp_DEPRECATED : unreal.FString;
  
  /**
    Path to the resource used to construct this skeletal mesh
  **/
  public var SourceFilePath_DEPRECATED : unreal.FString;
  
  /**
    Importing data and options used for this mesh
  **/
  public var AssetImportData : unreal.UAssetImportData;
  
  /**
    Used to track whether, or not, this sequence was compressed with it's full translation tracks
  **/
  public var bWasCompressedWithoutTranslations : Bool;
  
  /**
    Do not attempt to override compression scheme when running CompressAnimations commandlet.
    Some high frequency animations are too sensitive and shouldn't be changed.
  **/
  public var bDoNotOverrideCompression : Bool;
  
  /**
    Saved version number with CompressAnimations commandlet. To help with doing it in multiple passes.
  **/
  public var CompressCommandletVersion : unreal.Int32;
  #end // WITH_EDITORONLY_DATA
  
  /**
    Have we copied root motion settings from an owning montage
  **/
  public var bRootMotionSettingsCopiedFromMontage : Bool;
  
  /**
    Root Bone will be locked to that position when extracting root motion.*
  **/
  public var RootMotionRootLock : unreal.ERootMotionRootLock;
  
  /**
    If this is on, it will allow extracting of root motion *
  **/
  public var bEnableRootMotion : Bool;
  
  /**
    Base pose to use when retargeting
  **/
  public var RetargetSource : unreal.FName;
  
  /**
    The version of the global encoding package used at the time of import
  **/
  public var EncodingPkgVersion : unreal.Int32;
  
  /**
    Additve reference frame if RefPoseType == AnimFrame *
  **/
  public var RefFrameIndex : unreal.Int32;
  
  /**
    Additive reference animation if it's relevant - i.e. AnimScaled or AnimFrame *
  **/
  public var RefPoseSeq : unreal.UAnimSequence;
  
  /**
    Additive refrerence pose type. Refer above enum type
  **/
  public var RefPoseType : unreal.EAdditiveBasePoseType;
  
  /**
    Additive animation type. *
  **/
  public var AdditiveAnimType : unreal.EAdditiveAnimationType;
  public var KeyEncodingFormat : unreal.AnimationKeyFormat;
  
  /**
    An array of 2*NumTrack ints, arranged as follows:
                   if identity, it is offset
                   if not, it is num of keys
      [0] Scale0.Offset or NumKeys
      [1] Scale1.Offset or NumKeys
    
    @TODO NOTE: first implementation is offset is [0], numkeys [1]
      . . .
  **/
  public var CompressedScaleOffsets : unreal.FCompressedOffsetData;
  
  /**
    An array of 4*NumTrack ints, arranged as follows: - PerTrack is 2*NumTrack, so this isn't true any more
      [0] Trans0.Offset
      [1] Trans0.NumKeys
      [2] Rot0.Offset
      [3] Rot0.NumKeys
      [4] Trans1.Offset
      . . .
  **/
  public var CompressedTrackOffsets : unreal.TArray<unreal.Int32>;
  
  /**
    The compression format that was used to compress rotation tracks.
  **/
  public var ScaleCompressionFormat : unreal.AnimationCompressionFormat;
  
  /**
    The compression format that was used to compress rotation tracks.
  **/
  public var RotationCompressionFormat : unreal.AnimationCompressionFormat;
  
  /**
    The compression format that was used to compress translation tracks.
  **/
  public var TranslationCompressionFormat : unreal.AnimationCompressionFormat;
  #if WITH_EDITORONLY_DATA
  
  /**
    The compression scheme that was most recently used to compress this animation.
    May be NULL.
  **/
  public var CompressionScheme : unreal.UAnimCompress;
  #end // WITH_EDITORONLY_DATA
  
  /**
    Scale data post keyframe reduction.  ScaleData.Num() is zero if keyframe reduction
    has not yet been applied.
  **/
  public var ScaleData : unreal.TArray<unreal.FScaleTrack>;
  
  /**
    Rotation data post keyframe reduction.  RotationData.Num() is zero if keyframe reduction
    has not yet been applied.
  **/
  public var RotationData : unreal.TArray<unreal.FRotationTrack>;
  
  /**
    Translation data post keyframe reduction.  TranslationData.Num() is zero if keyframe reduction
    has not yet been applied.
  **/
  public var TranslationData : unreal.TArray<unreal.FTranslationTrack>;
  #if WITH_EDITORONLY_DATA
  
  /**
    This is name of tracks for editoronly - if we lose skeleton, we'll need relink them
  **/
  public var AnimationTrackNames : unreal.TArray<unreal.FName>;
  #end // WITH_EDITORONLY_DATA
  
  /**
    In the future, maybe keeping RawAnimSequenceTrack + TrackMap as one would be good idea to avoid inconsistent array size
    TrackToSkeletonMapTable(i) should contains  track mapping data for RawAnimationData(i).
  **/
  public var TrackToSkeletonMapTable : unreal.TArray<unreal.FTrackToSkeletonMap>;
  
  /**
    Number of raw frames in this sequence (not used by engine - just for informational purposes).
  **/
  public var NumFrames : unreal.Int32;
  
}
