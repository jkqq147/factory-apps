.class public final Lcom/google/a/a/a/k;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field public a:[Lcom/google/a/a/a/l;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1344
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 1345
    invoke-direct {p0}, Lcom/google/a/a/a/k;->a()Lcom/google/a/a/a/k;

    .line 1346
    return-void
.end method

.method private a()Lcom/google/a/a/a/k;
    .locals 1

    .prologue
    .line 1349
    invoke-static {}, Lcom/google/a/a/a/l;->a()[Lcom/google/a/a/a/l;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/k;->a:[Lcom/google/a/a/a/l;

    .line 1350
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/a/a/a/k;->cachedSize:I

    .line 1351
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/a/a/a/k;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1388
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1389
    sparse-switch v0, :sswitch_data_0

    .line 1393
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1394
    :sswitch_0
    return-object p0

    .line 1399
    :sswitch_1
    const/16 v0, 0x12

    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 1401
    iget-object v0, p0, Lcom/google/a/a/a/k;->a:[Lcom/google/a/a/a/l;

    if-nez v0, :cond_2

    move v0, v1

    .line 1402
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/a/a/a/l;

    .line 1404
    if-eqz v0, :cond_1

    .line 1405
    iget-object v3, p0, Lcom/google/a/a/a/k;->a:[Lcom/google/a/a/a/l;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1407
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 1408
    new-instance v3, Lcom/google/a/a/a/l;

    invoke-direct {v3}, Lcom/google/a/a/a/l;-><init>()V

    aput-object v3, v2, v0

    .line 1409
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1410
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1407
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1401
    :cond_2
    iget-object v0, p0, Lcom/google/a/a/a/k;->a:[Lcom/google/a/a/a/l;

    array-length v0, v0

    goto :goto_1

    .line 1413
    :cond_3
    new-instance v3, Lcom/google/a/a/a/l;

    invoke-direct {v3}, Lcom/google/a/a/a/l;-><init>()V

    aput-object v3, v2, v0

    .line 1414
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1415
    iput-object v2, p0, Lcom/google/a/a/a/k;->a:[Lcom/google/a/a/a/l;

    goto :goto_0

    .line 1389
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x12 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 4

    .prologue
    .line 1369
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v1

    .line 1370
    iget-object v0, p0, Lcom/google/a/a/a/k;->a:[Lcom/google/a/a/a/l;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/a/a/a/k;->a:[Lcom/google/a/a/a/l;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 1371
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/a/a/a/k;->a:[Lcom/google/a/a/a/l;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 1372
    iget-object v2, p0, Lcom/google/a/a/a/k;->a:[Lcom/google/a/a/a/l;

    aget-object v2, v2, v0

    .line 1373
    if-eqz v2, :cond_0

    .line 1374
    const/4 v3, 0x2

    invoke-static {v3, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1371
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1379
    :cond_1
    iput v1, p0, Lcom/google/a/a/a/k;->cachedSize:I

    .line 1380
    return v1
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 1158
    invoke-direct {p0, p1}, Lcom/google/a/a/a/k;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/a/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    .prologue
    .line 1357
    iget-object v0, p0, Lcom/google/a/a/a/k;->a:[Lcom/google/a/a/a/l;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/a/a/a/k;->a:[Lcom/google/a/a/a/l;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 1358
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/a/a/a/k;->a:[Lcom/google/a/a/a/l;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1359
    iget-object v1, p0, Lcom/google/a/a/a/k;->a:[Lcom/google/a/a/a/l;

    aget-object v1, v1, v0

    .line 1360
    if-eqz v1, :cond_0

    .line 1361
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1358
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1365
    :cond_1
    return-void
.end method
