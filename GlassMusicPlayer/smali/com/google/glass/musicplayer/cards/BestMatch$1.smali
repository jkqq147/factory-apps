.class final Lcom/google/glass/musicplayer/cards/BestMatch$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/google/glass/musicplayer/cards/BestMatch;
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/google/glass/musicplayer/cards/BestMatch;

    invoke-direct {v0, p1}, Lcom/google/glass/musicplayer/cards/BestMatch;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lcom/google/glass/musicplayer/cards/BestMatch$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/glass/musicplayer/cards/BestMatch;

    move-result-object v0

    return-object v0
.end method

.method public final newArray(I)[Lcom/google/glass/musicplayer/cards/BestMatch;
    .locals 1

    .prologue
    .line 26
    new-array v0, p1, [Lcom/google/glass/musicplayer/cards/BestMatch;

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lcom/google/glass/musicplayer/cards/BestMatch$1;->newArray(I)[Lcom/google/glass/musicplayer/cards/BestMatch;

    move-result-object v0

    return-object v0
.end method
