.class public final Lcom/google/glass/speechlib/com/google/protobuf/nano/UnknownFieldData;
.super Ljava/lang/Object;
.source "UnknownFieldData.java"


# instance fields
.field final bytes:[B

.field final tag:I


# direct methods
.method constructor <init>(I[B)V
    .locals 0
    .param p1, "tag"    # I
    .param p2, "bytes"    # [B

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput p1, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/UnknownFieldData;->tag:I

    .line 48
    iput-object p2, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/UnknownFieldData;->bytes:[B

    .line 49
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 53
    if-ne p1, p0, :cond_1

    .line 61
    :cond_0
    :goto_0
    return v1

    .line 56
    :cond_1
    instance-of v3, p1, Lcom/google/glass/speechlib/com/google/protobuf/nano/UnknownFieldData;

    if-nez v3, :cond_2

    move v1, v2

    .line 57
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 60
    check-cast v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/UnknownFieldData;

    .line 61
    .local v0, "other":Lcom/google/glass/speechlib/com/google/protobuf/nano/UnknownFieldData;
    iget v3, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/UnknownFieldData;->tag:I

    iget v4, v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/UnknownFieldData;->tag:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/UnknownFieldData;->bytes:[B

    iget-object v4, v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/UnknownFieldData;->bytes:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 66
    const/16 v0, 0x11

    .line 67
    .local v0, "result":I
    iget v1, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/UnknownFieldData;->tag:I

    add-int/lit16 v0, v1, 0x20f

    .line 68
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/UnknownFieldData;->bytes:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int v0, v1, v2

    .line 69
    return v0
.end method
