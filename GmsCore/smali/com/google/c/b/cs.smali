.class final Lcom/google/c/b/cs;
.super Lcom/google/c/c/ic;


# instance fields
.field private synthetic a:Lcom/google/c/b/cq;


# direct methods
.method constructor <init>(Lcom/google/c/b/cq;Lcom/google/c/b/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/c/b/cs;->a:Lcom/google/c/b/cq;

    invoke-direct {p0, p2}, Lcom/google/c/c/ic;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/google/c/b/dq;

    invoke-interface {p1}, Lcom/google/c/b/dq;->e()Lcom/google/c/b/dq;

    move-result-object v0

    iget-object v1, p0, Lcom/google/c/b/cs;->a:Lcom/google/c/b/cq;

    iget-object v1, v1, Lcom/google/c/b/cq;->a:Lcom/google/c/b/dq;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method
