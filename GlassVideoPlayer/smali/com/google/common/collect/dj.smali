.class final Lcom/google/common/collect/dj;
.super Lcom/google/common/collect/ol;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/ImmutableEnumMap$2;

.field private final b:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableEnumMap$2;)V
    .locals 1

    .prologue
    .line 108
    iput-object p1, p0, Lcom/google/common/collect/dj;->a:Lcom/google/common/collect/ImmutableEnumMap$2;

    invoke-direct {p0}, Lcom/google/common/collect/ol;-><init>()V

    .line 109
    iget-object v0, p0, Lcom/google/common/collect/dj;->a:Lcom/google/common/collect/ImmutableEnumMap$2;

    iget-object v0, v0, Lcom/google/common/collect/ImmutableEnumMap$2;->this$0:Lcom/google/common/collect/ImmutableEnumMap;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableEnumMap;->access$000(Lcom/google/common/collect/ImmutableEnumMap;)Ljava/util/EnumMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/dj;->b:Ljava/util/Iterator;

    return-void
.end method

.method private a()Ljava/util/Map$Entry;
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/common/collect/dj;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 117
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/common/collect/dj;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/google/common/collect/dj;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
