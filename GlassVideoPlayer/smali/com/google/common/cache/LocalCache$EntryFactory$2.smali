.class final enum Lcom/google/common/cache/LocalCache$EntryFactory$2;
.super Lcom/google/common/cache/LocalCache$EntryFactory;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 449
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/cache/LocalCache$EntryFactory;-><init>(Ljava/lang/String;ILcom/google/common/cache/k;)V

    return-void
.end method


# virtual methods
.method final copyEntry(Lcom/google/common/cache/LocalCache$Segment;Lcom/google/common/cache/y;Lcom/google/common/cache/y;)Lcom/google/common/cache/y;
    .locals 1

    .prologue
    .line 460
    invoke-super {p0, p1, p2, p3}, Lcom/google/common/cache/LocalCache$EntryFactory;->copyEntry(Lcom/google/common/cache/LocalCache$Segment;Lcom/google/common/cache/y;Lcom/google/common/cache/y;)Lcom/google/common/cache/y;

    move-result-object v0

    .line 461
    invoke-virtual {p0, p2, v0}, Lcom/google/common/cache/LocalCache$EntryFactory$2;->copyAccessEntry(Lcom/google/common/cache/y;Lcom/google/common/cache/y;)V

    .line 462
    return-object v0
.end method

.method final newEntry(Lcom/google/common/cache/LocalCache$Segment;Ljava/lang/Object;ILcom/google/common/cache/y;)Lcom/google/common/cache/y;
    .locals 1
    .param p4    # Lcom/google/common/cache/y;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 454
    new-instance v0, Lcom/google/common/cache/ab;

    invoke-direct {v0, p2, p3, p4}, Lcom/google/common/cache/ab;-><init>(Ljava/lang/Object;ILcom/google/common/cache/y;)V

    return-object v0
.end method
