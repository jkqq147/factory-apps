.class public final Lcom/google/glass/bluetooth/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/bluetooth/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final AutoStartVideoView:[I

.field public static final AutoStartVideoView_auto_repeat:I = 0x2

.field public static final AutoStartVideoView_thumbnail_image:I = 0x1

.field public static final AutoStartVideoView_video_file_name:I = 0x0

.field public static final MapAttrs:[I

.field public static final MapAttrs_cameraBearing:I = 0x1

.field public static final MapAttrs_cameraTargetLat:I = 0x2

.field public static final MapAttrs_cameraTargetLng:I = 0x3

.field public static final MapAttrs_cameraTilt:I = 0x4

.field public static final MapAttrs_cameraZoom:I = 0x5

.field public static final MapAttrs_mapType:I = 0x0

.field public static final MapAttrs_uiCompass:I = 0x6

.field public static final MapAttrs_uiRotateGestures:I = 0x7

.field public static final MapAttrs_uiScrollGestures:I = 0x8

.field public static final MapAttrs_uiTiltGestures:I = 0x9

.field public static final MapAttrs_uiZoomControls:I = 0xa

.field public static final MapAttrs_uiZoomGestures:I = 0xb

.field public static final MapAttrs_useViewLifecycle:I = 0xc

.field public static final MapAttrs_zOrderOnTop:I = 0xd

.field public static final TipsView:[I

.field public static final TipsView_tip:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 2184
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/glass/bluetooth/R$styleable;->AutoStartVideoView:[I

    .line 2261
    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/glass/bluetooth/R$styleable;->MapAttrs:[I

    .line 2479
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f01000e

    aput v2, v0, v1

    sput-object v0, Lcom/google/glass/bluetooth/R$styleable;->TipsView:[I

    return-void

    .line 2184
    nop

    :array_0
    .array-data 4
        0x7f01000f
        0x7f010010
        0x7f010011
    .end array-data

    .line 2261
    :array_1
    .array-data 4
        0x7f010000
        0x7f010001
        0x7f010002
        0x7f010003
        0x7f010004
        0x7f010005
        0x7f010006
        0x7f010007
        0x7f010008
        0x7f010009
        0x7f01000a
        0x7f01000b
        0x7f01000c
        0x7f01000d
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
