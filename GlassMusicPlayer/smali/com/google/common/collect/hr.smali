.class final Lcom/google/common/collect/hr;
.super Lcom/google/common/collect/hh;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/MapMakerInternalMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/MapMakerInternalMap;)V
    .locals 0

    .prologue
    .line 3601
    iput-object p1, p0, Lcom/google/common/collect/hr;->a:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-direct {p0, p1}, Lcom/google/common/collect/hh;-><init>(Lcom/google/common/collect/MapMakerInternalMap;)V

    return-void
.end method


# virtual methods
.method public final next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3605
    invoke-virtual {p0}, Lcom/google/common/collect/hr;->a()Lcom/google/common/collect/hz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/hz;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
