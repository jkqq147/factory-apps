.class public final Lcom/google/e/a/bm;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6289
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 6290
    invoke-direct {p0}, Lcom/google/e/a/bm;->a()Lcom/google/e/a/bm;

    .line 6291
    return-void
.end method

.method private a()Lcom/google/e/a/bm;
    .locals 1

    .prologue
    .line 6294
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/e/a/bm;->a:I

    .line 6295
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/bm;->b:Ljava/lang/String;

    .line 6296
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/bm;->c:Ljava/lang/String;

    .line 6297
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/bm;->d:Ljava/lang/String;

    .line 6298
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/bm;->e:Ljava/lang/String;

    .line 6299
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/e/a/bm;->cachedSize:I

    .line 6300
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/bm;
    .locals 1

    .prologue
    .line 6348
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 6349
    sparse-switch v0, :sswitch_data_0

    .line 6353
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6354
    :sswitch_0
    return-object p0

    .line 6359
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/bm;->b:Ljava/lang/String;

    .line 6360
    iget v0, p0, Lcom/google/e/a/bm;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/e/a/bm;->a:I

    goto :goto_0

    .line 6364
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/bm;->c:Ljava/lang/String;

    .line 6365
    iget v0, p0, Lcom/google/e/a/bm;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/e/a/bm;->a:I

    goto :goto_0

    .line 6369
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/bm;->d:Ljava/lang/String;

    .line 6370
    iget v0, p0, Lcom/google/e/a/bm;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/e/a/bm;->a:I

    goto :goto_0

    .line 6374
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/bm;->e:Ljava/lang/String;

    .line 6375
    iget v0, p0, Lcom/google/e/a/bm;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/e/a/bm;->a:I

    goto :goto_0

    .line 6349
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x32 -> :sswitch_4
    .end sparse-switch
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 6322
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 6323
    iget v1, p0, Lcom/google/e/a/bm;->a:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 6324
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/e/a/bm;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6327
    :cond_0
    iget v1, p0, Lcom/google/e/a/bm;->a:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 6328
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/e/a/bm;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6331
    :cond_1
    iget v1, p0, Lcom/google/e/a/bm;->a:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 6332
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/e/a/bm;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6335
    :cond_2
    iget v1, p0, Lcom/google/e/a/bm;->a:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 6336
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/e/a/bm;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6339
    :cond_3
    iput v0, p0, Lcom/google/e/a/bm;->cachedSize:I

    .line 6340
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 6182
    invoke-direct {p0, p1}, Lcom/google/e/a/bm;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/bm;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 6306
    iget v0, p0, Lcom/google/e/a/bm;->a:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 6307
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/e/a/bm;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 6309
    :cond_0
    iget v0, p0, Lcom/google/e/a/bm;->a:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 6310
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/e/a/bm;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 6312
    :cond_1
    iget v0, p0, Lcom/google/e/a/bm;->a:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 6313
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/e/a/bm;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 6315
    :cond_2
    iget v0, p0, Lcom/google/e/a/bm;->a:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 6316
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/e/a/bm;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 6318
    :cond_3
    return-void
.end method
