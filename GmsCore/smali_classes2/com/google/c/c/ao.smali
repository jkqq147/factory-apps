.class final Lcom/google/c/c/ao;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field a:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/c/c/ao;-><init>(I)V

    .line 34
    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lcom/google/c/c/ao;->a:I

    .line 38
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/google/c/c/ao;->a:I

    return v0
.end method

.method public final a(I)I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/google/c/c/ao;->a:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/c/c/ao;->a:I

    return v0
.end method

.method public final b()I
    .locals 2

    .prologue
    .line 59
    iget v0, p0, Lcom/google/c/c/ao;->a:I

    .line 60
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/c/c/ao;->a:I

    .line 61
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 71
    instance-of v0, p1, Lcom/google/c/c/ao;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/c/c/ao;

    iget v0, p1, Lcom/google/c/c/ao;->a:I

    iget v1, p0, Lcom/google/c/c/ao;->a:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/google/c/c/ao;->a:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/google/c/c/ao;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
