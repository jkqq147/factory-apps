.class public final Lcom/google/android/gms/maps/model/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:D

.field private b:D

.field private c:D

.field private d:D


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    iput-wide v0, p0, Lcom/google/android/gms/maps/model/g;->a:D

    .line 37
    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    iput-wide v0, p0, Lcom/google/android/gms/maps/model/g;->b:D

    .line 41
    iput-wide v2, p0, Lcom/google/android/gms/maps/model/g;->c:D

    .line 43
    iput-wide v2, p0, Lcom/google/android/gms/maps/model/g;->d:D

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/maps/model/LatLngBounds;
    .locals 8

    .prologue
    .line 97
    iget-wide v0, p0, Lcom/google/android/gms/maps/model/g;->c:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "no included points"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/aj;->a(ZLjava/lang/Object;)V

    .line 98
    new-instance v0, Lcom/google/android/gms/maps/model/LatLngBounds;

    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v2, p0, Lcom/google/android/gms/maps/model/g;->a:D

    iget-wide v4, p0, Lcom/google/android/gms/maps/model/g;->c:D

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v4, p0, Lcom/google/android/gms/maps/model/g;->b:D

    iget-wide v6, p0, Lcom/google/android/gms/maps/model/g;->d:D

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/maps/model/LatLngBounds;-><init>(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)V

    return-object v0

    .line 97
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/g;
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 59
    iget-wide v2, p0, Lcom/google/android/gms/maps/model/g;->a:D

    iget-wide v4, p1, Lcom/google/android/gms/maps/model/LatLng;->a:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/maps/model/g;->a:D

    .line 60
    iget-wide v2, p0, Lcom/google/android/gms/maps/model/g;->b:D

    iget-wide v4, p1, Lcom/google/android/gms/maps/model/LatLng;->a:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/maps/model/g;->b:D

    .line 62
    iget-wide v2, p1, Lcom/google/android/gms/maps/model/LatLng;->b:D

    .line 63
    iget-wide v4, p0, Lcom/google/android/gms/maps/model/g;->c:D

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 64
    iput-wide v2, p0, Lcom/google/android/gms/maps/model/g;->c:D

    .line 72
    :cond_0
    iput-wide v2, p0, Lcom/google/android/gms/maps/model/g;->d:D

    .line 75
    :cond_1
    :goto_0
    return-object p0

    .line 66
    :cond_2
    iget-wide v4, p0, Lcom/google/android/gms/maps/model/g;->c:D

    iget-wide v6, p0, Lcom/google/android/gms/maps/model/g;->d:D

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_5

    iget-wide v4, p0, Lcom/google/android/gms/maps/model/g;->c:D

    cmpg-double v4, v4, v2

    if-gtz v4, :cond_4

    iget-wide v4, p0, Lcom/google/android/gms/maps/model/g;->d:D

    cmpg-double v4, v2, v4

    if-gtz v4, :cond_4

    :cond_3
    :goto_1
    if-nez v0, :cond_1

    .line 68
    iget-wide v0, p0, Lcom/google/android/gms/maps/model/g;->c:D

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/maps/model/LatLngBounds;->a(DD)D

    move-result-wide v0

    iget-wide v4, p0, Lcom/google/android/gms/maps/model/g;->d:D

    invoke-static {v4, v5, v2, v3}, Lcom/google/android/gms/maps/model/LatLngBounds;->b(DD)D

    move-result-wide v4

    cmpg-double v0, v0, v4

    if-gez v0, :cond_0

    .line 70
    iput-wide v2, p0, Lcom/google/android/gms/maps/model/g;->c:D

    goto :goto_0

    :cond_4
    move v0, v1

    .line 66
    goto :goto_1

    :cond_5
    iget-wide v4, p0, Lcom/google/android/gms/maps/model/g;->c:D

    cmpg-double v4, v4, v2

    if-lez v4, :cond_3

    iget-wide v4, p0, Lcom/google/android/gms/maps/model/g;->d:D

    cmpg-double v4, v2, v4

    if-lez v4, :cond_3

    move v0, v1

    goto :goto_1
.end method
