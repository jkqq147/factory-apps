.class final Lcom/google/common/collect/nv;
.super Lcom/google/common/collect/ch;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/util/Iterator;

.field final synthetic b:Lcom/google/common/collect/Synchronized$SynchronizedAsMapValues;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Synchronized$SynchronizedAsMapValues;Ljava/util/Iterator;)V
    .locals 0

    .prologue
    .line 1184
    iput-object p1, p0, Lcom/google/common/collect/nv;->b:Lcom/google/common/collect/Synchronized$SynchronizedAsMapValues;

    iput-object p2, p0, Lcom/google/common/collect/nv;->a:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/google/common/collect/ch;-><init>()V

    return-void
.end method

.method private b()Ljava/util/Collection;
    .locals 2

    .prologue
    .line 1192
    invoke-super {p0}, Lcom/google/common/collect/ch;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    iget-object v1, p0, Lcom/google/common/collect/nv;->b:Lcom/google/common/collect/Synchronized$SynchronizedAsMapValues;

    iget-object v1, v1, Lcom/google/common/collect/Synchronized$SynchronizedAsMapValues;->mutex:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/common/collect/Synchronized;->a(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final a()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 1187
    iget-object v0, p0, Lcom/google/common/collect/nv;->a:Ljava/util/Iterator;

    return-object v0
.end method

.method protected final synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1184
    invoke-virtual {p0}, Lcom/google/common/collect/nv;->a()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1184
    invoke-direct {p0}, Lcom/google/common/collect/nv;->b()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
