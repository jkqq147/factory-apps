.class public abstract Lcom/google/c/c/gp;
.super Lcom/google/c/c/hi;


# instance fields
.field a:Lcom/google/c/c/gr;

.field private b:Ljava/lang/Object;


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/c/c/hi;-><init>()V

    sget-object v0, Lcom/google/c/c/gr;->b:Lcom/google/c/c/gr;

    iput-object v0, p0, Lcom/google/c/c/gp;->a:Lcom/google/c/c/gr;

    return-void
.end method


# virtual methods
.method protected abstract a()Ljava/lang/Object;
.end method

.method public final hasNext()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/c/c/gp;->a:Lcom/google/c/c/gr;

    sget-object v3, Lcom/google/c/c/gr;->d:Lcom/google/c/c/gr;

    if-eq v0, v3, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/c/a/cj;->b(Z)V

    sget-object v0, Lcom/google/c/c/gq;->a:[I

    iget-object v3, p0, Lcom/google/c/c/gp;->a:Lcom/google/c/c/gr;

    invoke-virtual {v3}, Lcom/google/c/c/gr;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/google/c/c/gr;->d:Lcom/google/c/c/gr;

    iput-object v0, p0, Lcom/google/c/c/gp;->a:Lcom/google/c/c/gr;

    invoke-virtual {p0}, Lcom/google/c/c/gp;->a()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/c/gp;->b:Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/c/c/gp;->a:Lcom/google/c/c/gr;

    sget-object v3, Lcom/google/c/c/gr;->c:Lcom/google/c/c/gr;

    if-eq v0, v3, :cond_0

    sget-object v0, Lcom/google/c/c/gr;->a:Lcom/google/c/c/gr;

    iput-object v0, p0, Lcom/google/c/c/gp;->a:Lcom/google/c/c/gr;

    move v2, v1

    :cond_0
    :goto_1
    :pswitch_0
    return v2

    :cond_1
    move v0, v2

    goto :goto_0

    :pswitch_1
    move v2, v1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/c/c/gp;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    sget-object v0, Lcom/google/c/c/gr;->b:Lcom/google/c/c/gr;

    iput-object v0, p0, Lcom/google/c/c/gp;->a:Lcom/google/c/c/gr;

    iget-object v0, p0, Lcom/google/c/c/gp;->b:Ljava/lang/Object;

    return-object v0
.end method
