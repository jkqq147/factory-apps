.class final Lcom/google/common/collect/if;
.super Lcom/google/common/collect/oa;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/util/Iterator;)V
    .locals 0

    .prologue
    .line 2603
    invoke-direct {p0, p1}, Lcom/google/common/collect/oa;-><init>(Ljava/util/Iterator;)V

    return-void
.end method

.method private static a(Ljava/util/Map$Entry;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2607
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2603
    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p1}, Lcom/google/common/collect/if;->a(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
