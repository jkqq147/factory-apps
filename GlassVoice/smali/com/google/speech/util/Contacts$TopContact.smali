.class public final Lcom/google/speech/util/Contacts$TopContact;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "Contacts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/util/Contacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TopContact"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/speech/util/Contacts$TopContact;


# instance fields
.field private affinity_:F

.field private bitField0_:I

.field private name_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 69
    invoke-virtual {p0}, Lcom/google/speech/util/Contacts$TopContact;->clear()Lcom/google/speech/util/Contacts$TopContact;

    .line 70
    return-void
.end method

.method public static emptyArray()[Lcom/google/speech/util/Contacts$TopContact;
    .locals 2

    .prologue
    .line 14
    sget-object v0, Lcom/google/speech/util/Contacts$TopContact;->_emptyArray:[Lcom/google/speech/util/Contacts$TopContact;

    if-nez v0, :cond_1

    .line 15
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 17
    :try_start_0
    sget-object v0, Lcom/google/speech/util/Contacts$TopContact;->_emptyArray:[Lcom/google/speech/util/Contacts$TopContact;

    if-nez v0, :cond_0

    .line 18
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/speech/util/Contacts$TopContact;

    sput-object v0, Lcom/google/speech/util/Contacts$TopContact;->_emptyArray:[Lcom/google/speech/util/Contacts$TopContact;

    .line 20
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :cond_1
    sget-object v0, Lcom/google/speech/util/Contacts$TopContact;->_emptyArray:[Lcom/google/speech/util/Contacts$TopContact;

    return-object v0

    .line 20
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/util/Contacts$TopContact;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    new-instance v0, Lcom/google/speech/util/Contacts$TopContact;

    invoke-direct {v0}, Lcom/google/speech/util/Contacts$TopContact;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/util/Contacts$TopContact;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/util/Contacts$TopContact;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/util/Contacts$TopContact;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 137
    new-instance v0, Lcom/google/speech/util/Contacts$TopContact;

    invoke-direct {v0}, Lcom/google/speech/util/Contacts$TopContact;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/speech/util/Contacts$TopContact;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/speech/util/Contacts$TopContact;
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/util/Contacts$TopContact;->bitField0_:I

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/util/Contacts$TopContact;->name_:Ljava/lang/String;

    .line 75
    const v0, 0x3c23d70a    # 0.01f

    iput v0, p0, Lcom/google/speech/util/Contacts$TopContact;->affinity_:F

    .line 76
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/util/Contacts$TopContact;->cachedSize:I

    .line 77
    return-object p0
.end method

.method public clearAffinity()Lcom/google/speech/util/Contacts$TopContact;
    .locals 1

    .prologue
    .line 63
    const v0, 0x3c23d70a    # 0.01f

    iput v0, p0, Lcom/google/speech/util/Contacts$TopContact;->affinity_:F

    .line 64
    iget v0, p0, Lcom/google/speech/util/Contacts$TopContact;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/speech/util/Contacts$TopContact;->bitField0_:I

    .line 65
    return-object p0
.end method

.method public clearName()Lcom/google/speech/util/Contacts$TopContact;
    .locals 1

    .prologue
    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/util/Contacts$TopContact;->name_:Ljava/lang/String;

    .line 45
    iget v0, p0, Lcom/google/speech/util/Contacts$TopContact;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/speech/util/Contacts$TopContact;->bitField0_:I

    .line 46
    return-object p0
.end method

.method public getAffinity()F
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/google/speech/util/Contacts$TopContact;->affinity_:F

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/speech/util/Contacts$TopContact;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 93
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 94
    .local v0, "size":I
    iget v1, p0, Lcom/google/speech/util/Contacts$TopContact;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 95
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/speech/util/Contacts$TopContact;->name_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 98
    :cond_0
    iget v1, p0, Lcom/google/speech/util/Contacts$TopContact;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 99
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/speech/util/Contacts$TopContact;->affinity_:F

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 102
    :cond_1
    iput v0, p0, Lcom/google/speech/util/Contacts$TopContact;->cachedSize:I

    .line 103
    return v0
.end method

.method public hasAffinity()Z
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/google/speech/util/Contacts$TopContact;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/google/speech/util/Contacts$TopContact;->bitField0_:I

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
    .line 8
    invoke-virtual {p0, p1}, Lcom/google/speech/util/Contacts$TopContact;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/util/Contacts$TopContact;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/util/Contacts$TopContact;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 112
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 116
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 117
    :sswitch_0
    return-object p0

    .line 122
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/speech/util/Contacts$TopContact;->name_:Ljava/lang/String;

    .line 123
    iget v1, p0, Lcom/google/speech/util/Contacts$TopContact;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/speech/util/Contacts$TopContact;->bitField0_:I

    goto :goto_0

    .line 127
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/speech/util/Contacts$TopContact;->affinity_:F

    .line 128
    iget v1, p0, Lcom/google/speech/util/Contacts$TopContact;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/speech/util/Contacts$TopContact;->bitField0_:I

    goto :goto_0

    .line 112
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x15 -> :sswitch_2
    .end sparse-switch
.end method

.method public setAffinity(F)Lcom/google/speech/util/Contacts$TopContact;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 55
    iput p1, p0, Lcom/google/speech/util/Contacts$TopContact;->affinity_:F

    .line 56
    iget v0, p0, Lcom/google/speech/util/Contacts$TopContact;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/speech/util/Contacts$TopContact;->bitField0_:I

    .line 57
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/speech/util/Contacts$TopContact;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 33
    if-nez p1, :cond_0

    .line 34
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 36
    :cond_0
    iput-object p1, p0, Lcom/google/speech/util/Contacts$TopContact;->name_:Ljava/lang/String;

    .line 37
    iget v0, p0, Lcom/google/speech/util/Contacts$TopContact;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/speech/util/Contacts$TopContact;->bitField0_:I

    .line 38
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
    .line 83
    iget v0, p0, Lcom/google/speech/util/Contacts$TopContact;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 84
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/speech/util/Contacts$TopContact;->name_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 86
    :cond_0
    iget v0, p0, Lcom/google/speech/util/Contacts$TopContact;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 87
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/speech/util/Contacts$TopContact;->affinity_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 89
    :cond_1
    return-void
.end method
