.class public final Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "AttachmentSyncNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/AttachmentSyncNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AttachmentGetRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest$ScreenDimensions;
    }
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest;


# instance fields
.field private attachmentId_:Ljava/lang/String;

.field private bitField0_:I

.field private screenDimensions_:Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest$ScreenDimensions;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest;

    sput-object v0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 154
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest;->attachmentId_:Ljava/lang/String;

    .line 10
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 284
    new-instance v0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 278
    new-instance v0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest;

    return-object v0
.end method


# virtual methods
.method public clearAttachmentId()Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest;
    .locals 1

    .prologue
    .line 170
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest;->attachmentId_:Ljava/lang/String;

    .line 171
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest;->bitField0_:I

    .line 172
    return-object p0
.end method

.method public clearScreenDimensions()Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest;
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest;->screenDimensions_:Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest$ScreenDimensions;

    .line 192
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 196
    if-ne p1, p0, :cond_1

    .line 201
    :cond_0
    :goto_0
    return v1

    .line 197
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 198
    check-cast v0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest;

    .line 199
    .local v0, "other":Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest;
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest;->attachmentId_:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest;->attachmentId_:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest;->screenDimensions_:Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest$ScreenDimensions;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest;->screenDimensions_:Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest$ScreenDimensions;

    if-nez v3, :cond_3

    .line 200
    :goto_2
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_6

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 201
    goto :goto_0

    .line 199
    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest;->attachmentId_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest;->attachmentId_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest;->screenDimensions_:Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest$ScreenDimensions;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest;->screenDimensions_:Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest$ScreenDimensions;

    .line 200
    invoke-virtual {v3, v4}, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest$ScreenDimensions;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest;->unknownFieldData:Ljava/util/List;

    .line 201
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getAttachmentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest;->attachmentId_:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenDimensions()Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest$ScreenDimensions;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest;->screenDimensions_:Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest$ScreenDimensions;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 226
    const/4 v0, 0x0

    .line 227
    .local v0, "size":I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 228
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest;->attachmentId_:Ljava/lang/String;

    .line 229
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 231
    :cond_0
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest;->screenDimensions_:Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest$ScreenDimensions;

    if-eqz v1, :cond_1

    .line 232
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest;->screenDimensions_:Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest$ScreenDimensions;

    .line 233
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 235
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 236
    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest;->cachedSize:I

    .line 237
    return v0
.end method

.method public hasAttachmentId()Z
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasScreenDimensions()Z
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest;->screenDimensions_:Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest$ScreenDimensions;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 205
    const/16 v0, 0x11

    .line 206
    .local v0, "result":I
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest;->attachmentId_:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    add-int/lit16 v0, v1, 0x20f

    .line 207
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest;->screenDimensions_:Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest$ScreenDimensions;

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    add-int v0, v3, v1

    .line 208
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_2

    :goto_2
    add-int v0, v1, v2

    .line 209
    return v0

    .line 206
    :cond_0
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest;->attachmentId_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    .line 207
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest;->screenDimensions_:Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest$ScreenDimensions;

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest$ScreenDimensions;->hashCode()I

    move-result v1

    goto :goto_1

    .line 208
    :cond_2
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest;->unknownFieldData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_2
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 245
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 246
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 250
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    .line 251
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest;->unknownFieldData:Ljava/util/List;

    .line 254
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 256
    :sswitch_0
    return-object p0

    .line 261
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest;->attachmentId_:Ljava/lang/String;

    .line 262
    iget v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest;->bitField0_:I

    goto :goto_0

    .line 266
    :sswitch_2
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest;->screenDimensions_:Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest$ScreenDimensions;

    if-nez v1, :cond_2

    .line 267
    new-instance v1, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest$ScreenDimensions;

    invoke-direct {v1}, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest$ScreenDimensions;-><init>()V

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest;->screenDimensions_:Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest$ScreenDimensions;

    .line 269
    :cond_2
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest;->screenDimensions_:Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest$ScreenDimensions;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 246
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest;

    move-result-object v0

    return-object v0
.end method

.method public setAttachmentId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 159
    if-nez p1, :cond_0

    .line 160
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 162
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest;->attachmentId_:Ljava/lang/String;

    .line 163
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest;->bitField0_:I

    .line 164
    return-object p0
.end method

.method public setScreenDimensions(Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest$ScreenDimensions;)Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest;
    .locals 1
    .param p1, "value"    # Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest$ScreenDimensions;

    .prologue
    .line 181
    if-nez p1, :cond_0

    .line 182
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 184
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest;->screenDimensions_:Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest$ScreenDimensions;

    .line 185
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 214
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 215
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest;->attachmentId_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest;->screenDimensions_:Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest$ScreenDimensions;

    if-eqz v0, :cond_1

    .line 218
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest;->screenDimensions_:Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest$ScreenDimensions;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 222
    return-void
.end method
