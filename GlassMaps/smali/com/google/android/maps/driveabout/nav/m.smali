.class final Lcom/google/android/maps/driveabout/nav/m;
.super Lcom/google/android/maps/driveabout/nav/k;
.source "SourceFile"


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(III)V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/maps/driveabout/nav/m;-><init>(IIIZ)V

    .line 75
    return-void
.end method

.method public constructor <init>(IIIZ)V
    .locals 1

    .prologue
    .line 79
    const/16 v0, 0xc

    invoke-direct {p0, v0, p1, p3, p4}, Lcom/google/android/maps/driveabout/nav/k;-><init>(IIIZ)V

    .line 82
    iput p2, p0, Lcom/google/android/maps/driveabout/nav/m;->a:I

    .line 83
    return-void
.end method


# virtual methods
.method public final a(III)Z
    .locals 1

    .prologue
    .line 87
    if-ltz p3, :cond_0

    iget v0, p0, Lcom/google/android/maps/driveabout/nav/m;->a:I

    if-gt p3, v0, :cond_0

    .line 88
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/maps/driveabout/nav/k;->a(III)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
