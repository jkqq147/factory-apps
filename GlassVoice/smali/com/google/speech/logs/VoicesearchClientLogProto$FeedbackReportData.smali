.class public final Lcom/google/speech/logs/VoicesearchClientLogProto$FeedbackReportData;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "VoicesearchClientLogProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/logs/VoicesearchClientLogProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FeedbackReportData"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$FeedbackReportData;


# instance fields
.field private bitField0_:I

.field private feedbackReportId_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2378
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 2379
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$FeedbackReportData;->clear()Lcom/google/speech/logs/VoicesearchClientLogProto$FeedbackReportData;

    .line 2380
    return-void
.end method

.method public static emptyArray()[Lcom/google/speech/logs/VoicesearchClientLogProto$FeedbackReportData;
    .locals 2

    .prologue
    .line 2346
    sget-object v0, Lcom/google/speech/logs/VoicesearchClientLogProto$FeedbackReportData;->_emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$FeedbackReportData;

    if-nez v0, :cond_1

    .line 2347
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 2349
    :try_start_0
    sget-object v0, Lcom/google/speech/logs/VoicesearchClientLogProto$FeedbackReportData;->_emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$FeedbackReportData;

    if-nez v0, :cond_0

    .line 2350
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/speech/logs/VoicesearchClientLogProto$FeedbackReportData;

    sput-object v0, Lcom/google/speech/logs/VoicesearchClientLogProto$FeedbackReportData;->_emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$FeedbackReportData;

    .line 2352
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2354
    :cond_1
    sget-object v0, Lcom/google/speech/logs/VoicesearchClientLogProto$FeedbackReportData;->_emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$FeedbackReportData;

    return-object v0

    .line 2352
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/VoicesearchClientLogProto$FeedbackReportData;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2440
    new-instance v0, Lcom/google/speech/logs/VoicesearchClientLogProto$FeedbackReportData;

    invoke-direct {v0}, Lcom/google/speech/logs/VoicesearchClientLogProto$FeedbackReportData;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$FeedbackReportData;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/VoicesearchClientLogProto$FeedbackReportData;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/logs/VoicesearchClientLogProto$FeedbackReportData;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 2434
    new-instance v0, Lcom/google/speech/logs/VoicesearchClientLogProto$FeedbackReportData;

    invoke-direct {v0}, Lcom/google/speech/logs/VoicesearchClientLogProto$FeedbackReportData;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/speech/logs/VoicesearchClientLogProto$FeedbackReportData;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/speech/logs/VoicesearchClientLogProto$FeedbackReportData;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2383
    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$FeedbackReportData;->bitField0_:I

    .line 2384
    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$FeedbackReportData;->feedbackReportId_:I

    .line 2385
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$FeedbackReportData;->cachedSize:I

    .line 2386
    return-object p0
.end method

.method public clearFeedbackReportId()Lcom/google/speech/logs/VoicesearchClientLogProto$FeedbackReportData;
    .locals 1

    .prologue
    .line 2373
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$FeedbackReportData;->feedbackReportId_:I

    .line 2374
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$FeedbackReportData;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$FeedbackReportData;->bitField0_:I

    .line 2375
    return-object p0
.end method

.method public getFeedbackReportId()I
    .locals 1

    .prologue
    .line 2362
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$FeedbackReportData;->feedbackReportId_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 2399
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 2400
    .local v0, "size":I
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$FeedbackReportData;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 2401
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$FeedbackReportData;->feedbackReportId_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2404
    :cond_0
    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$FeedbackReportData;->cachedSize:I

    .line 2405
    return v0
.end method

.method public hasFeedbackReportId()Z
    .locals 1

    .prologue
    .line 2370
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$FeedbackReportData;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1
    .param p1, "x0"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2340
    invoke-virtual {p0, p1}, Lcom/google/speech/logs/VoicesearchClientLogProto$FeedbackReportData;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/VoicesearchClientLogProto$FeedbackReportData;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/VoicesearchClientLogProto$FeedbackReportData;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2413
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 2414
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 2418
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2419
    :sswitch_0
    return-object p0

    .line 2424
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$FeedbackReportData;->feedbackReportId_:I

    .line 2425
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$FeedbackReportData;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$FeedbackReportData;->bitField0_:I

    goto :goto_0

    .line 2414
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public setFeedbackReportId(I)Lcom/google/speech/logs/VoicesearchClientLogProto$FeedbackReportData;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2365
    iput p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$FeedbackReportData;->feedbackReportId_:I

    .line 2366
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$FeedbackReportData;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$FeedbackReportData;->bitField0_:I

    .line 2367
    return-object p0
.end method

.method public writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .param p1, "output"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2392
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$FeedbackReportData;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2393
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$FeedbackReportData;->feedbackReportId_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2395
    :cond_0
    return-void
.end method
