.class Lcom/google/common/collect/ImmutableMapKeySet$1;
.super Lcom/google/common/collect/ImmutableAsList;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/ImmutableMapKeySet;

.field final synthetic val$entryList:Lcom/google/common/collect/ImmutableList;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableMapKeySet;Lcom/google/common/collect/ImmutableList;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/google/common/collect/ImmutableMapKeySet$1;->this$0:Lcom/google/common/collect/ImmutableMapKeySet;

    iput-object p2, p0, Lcom/google/common/collect/ImmutableMapKeySet$1;->val$entryList:Lcom/google/common/collect/ImmutableList;

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableAsList;-><init>()V

    return-void
.end method


# virtual methods
.method delegateCollection()Lcom/google/common/collect/ImmutableCollection;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMapKeySet$1;->this$0:Lcom/google/common/collect/ImmutableMapKeySet;

    return-object v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMapKeySet$1;->val$entryList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
