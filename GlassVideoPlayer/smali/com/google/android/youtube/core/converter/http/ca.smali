.class final Lcom/google/android/youtube/core/converter/http/ca;
.super Lcom/google/android/youtube/core/converter/m;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/google/android/youtube/core/converter/m;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/utils/k;Lorg/xml/sax/Attributes;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 154
    const-class v0, Lcom/google/android/youtube/core/model/Playlist$Builder;

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Playlist$Builder;

    invoke-static {p3}, Lcom/google/android/youtube/core/utils/Util;->b(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Playlist$Builder;->updated(Ljava/util/Date;)Lcom/google/android/youtube/core/model/Playlist$Builder;

    .line 155
    return-void
.end method
