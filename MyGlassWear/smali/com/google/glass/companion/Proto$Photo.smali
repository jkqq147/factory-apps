.class public final Lcom/google/glass/companion/Proto$Photo;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Photo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/companion/Proto$Photo$Operation;
    }
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$Photo;


# instance fields
.field private bitField0_:I

.field private numOfPhotosToSync_:I

.field private op_:I

.field private photoId_:Ljava/lang/String;

.field private thumbnailBytes_:[B

.field private timestamp_:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6734
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/Proto$Photo;

    sput-object v0, Lcom/google/glass/companion/Proto$Photo;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$Photo;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 6735
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 6746
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Photo;->thumbnailBytes_:[B

    .line 6768
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/companion/Proto$Photo;->timestamp_:J

    .line 6787
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Photo;->photoId_:Ljava/lang/String;

    .line 6809
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$Photo;->op_:I

    .line 6828
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$Photo;->numOfPhotosToSync_:I

    .line 6735
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$Photo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6988
    new-instance v0, Lcom/google/glass/companion/Proto$Photo;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$Photo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/Proto$Photo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$Photo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/Proto$Photo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 6982
    new-instance v0, Lcom/google/glass/companion/Proto$Photo;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$Photo;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$Photo;

    return-object v0
.end method


# virtual methods
.method public clearNumOfPhotosToSync()Lcom/google/glass/companion/Proto$Photo;
    .locals 1

    .prologue
    .line 6841
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$Photo;->numOfPhotosToSync_:I

    .line 6842
    iget v0, p0, Lcom/google/glass/companion/Proto$Photo;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/glass/companion/Proto$Photo;->bitField0_:I

    .line 6843
    return-object p0
.end method

.method public clearOp()Lcom/google/glass/companion/Proto$Photo;
    .locals 1

    .prologue
    .line 6822
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$Photo;->op_:I

    .line 6823
    iget v0, p0, Lcom/google/glass/companion/Proto$Photo;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/glass/companion/Proto$Photo;->bitField0_:I

    .line 6824
    return-object p0
.end method

.method public clearPhotoId()Lcom/google/glass/companion/Proto$Photo;
    .locals 1

    .prologue
    .line 6803
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Photo;->photoId_:Ljava/lang/String;

    .line 6804
    iget v0, p0, Lcom/google/glass/companion/Proto$Photo;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/glass/companion/Proto$Photo;->bitField0_:I

    .line 6805
    return-object p0
.end method

.method public clearThumbnailBytes()Lcom/google/glass/companion/Proto$Photo;
    .locals 1

    .prologue
    .line 6762
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Photo;->thumbnailBytes_:[B

    .line 6763
    iget v0, p0, Lcom/google/glass/companion/Proto$Photo;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$Photo;->bitField0_:I

    .line 6764
    return-object p0
.end method

.method public clearTimestamp()Lcom/google/glass/companion/Proto$Photo;
    .locals 2

    .prologue
    .line 6781
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/companion/Proto$Photo;->timestamp_:J

    .line 6782
    iget v0, p0, Lcom/google/glass/companion/Proto$Photo;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/Proto$Photo;->bitField0_:I

    .line 6783
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 6848
    if-ne p1, p0, :cond_1

    .line 6856
    :cond_0
    :goto_0
    return v1

    .line 6849
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/Proto$Photo;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 6850
    check-cast v0, Lcom/google/glass/companion/Proto$Photo;

    .line 6851
    .local v0, "other":Lcom/google/glass/companion/Proto$Photo;
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Photo;->thumbnailBytes_:[B

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Photo;->thumbnailBytes_:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-wide v3, p0, Lcom/google/glass/companion/Proto$Photo;->timestamp_:J

    iget-wide v5, v0, Lcom/google/glass/companion/Proto$Photo;->timestamp_:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/google/glass/companion/Proto$Photo;->photoId_:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Photo;->photoId_:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 6853
    :goto_1
    iget v3, p0, Lcom/google/glass/companion/Proto$Photo;->op_:I

    iget v4, v0, Lcom/google/glass/companion/Proto$Photo;->op_:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/google/glass/companion/Proto$Photo;->numOfPhotosToSync_:I

    iget v4, v0, Lcom/google/glass/companion/Proto$Photo;->numOfPhotosToSync_:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/glass/companion/Proto$Photo;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Photo;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 6856
    goto :goto_0

    .line 6851
    :cond_4
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Photo;->photoId_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Photo;->photoId_:Ljava/lang/String;

    .line 6853
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Photo;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Photo;->unknownFieldData:Ljava/util/List;

    .line 6856
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getNumOfPhotosToSync()I
    .locals 1

    .prologue
    .line 6830
    iget v0, p0, Lcom/google/glass/companion/Proto$Photo;->numOfPhotosToSync_:I

    return v0
.end method

.method public getOp()I
    .locals 1

    .prologue
    .line 6811
    iget v0, p0, Lcom/google/glass/companion/Proto$Photo;->op_:I

    return v0
.end method

.method public getPhotoId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6789
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Photo;->photoId_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 6898
    const/4 v0, 0x0

    .line 6899
    .local v0, "size":I
    iget v1, p0, Lcom/google/glass/companion/Proto$Photo;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 6900
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Photo;->thumbnailBytes_:[B

    .line 6901
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 6903
    :cond_0
    iget v1, p0, Lcom/google/glass/companion/Proto$Photo;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 6904
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/glass/companion/Proto$Photo;->timestamp_:J

    .line 6905
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 6907
    :cond_1
    iget v1, p0, Lcom/google/glass/companion/Proto$Photo;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 6908
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Photo;->photoId_:Ljava/lang/String;

    .line 6909
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6911
    :cond_2
    iget v1, p0, Lcom/google/glass/companion/Proto$Photo;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 6912
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/glass/companion/Proto$Photo;->op_:I

    .line 6913
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6915
    :cond_3
    iget v1, p0, Lcom/google/glass/companion/Proto$Photo;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 6916
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/glass/companion/Proto$Photo;->numOfPhotosToSync_:I

    .line 6917
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6919
    :cond_4
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Photo;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6920
    iput v0, p0, Lcom/google/glass/companion/Proto$Photo;->cachedSize:I

    .line 6921
    return v0
.end method

.method public getThumbnailBytes()[B
    .locals 1

    .prologue
    .line 6748
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Photo;->thumbnailBytes_:[B

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 6770
    iget-wide v0, p0, Lcom/google/glass/companion/Proto$Photo;->timestamp_:J

    return-wide v0
.end method

.method public hasNumOfPhotosToSync()Z
    .locals 1

    .prologue
    .line 6838
    iget v0, p0, Lcom/google/glass/companion/Proto$Photo;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasOp()Z
    .locals 1

    .prologue
    .line 6819
    iget v0, p0, Lcom/google/glass/companion/Proto$Photo;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPhotoId()Z
    .locals 1

    .prologue
    .line 6800
    iget v0, p0, Lcom/google/glass/companion/Proto$Photo;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasThumbnailBytes()Z
    .locals 1

    .prologue
    .line 6759
    iget v0, p0, Lcom/google/glass/companion/Proto$Photo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 6778
    iget v0, p0, Lcom/google/glass/companion/Proto$Photo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 6860
    const/16 v1, 0x11

    .line 6861
    .local v1, "result":I
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Photo;->thumbnailBytes_:[B

    if-nez v2, :cond_1

    mul-int/lit8 v1, v1, 0x1f

    .line 6867
    :cond_0
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v4, p0, Lcom/google/glass/companion/Proto$Photo;->timestamp_:J

    iget-wide v6, p0, Lcom/google/glass/companion/Proto$Photo;->timestamp_:J

    const/16 v8, 0x20

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int v1, v2, v4

    .line 6868
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Photo;->photoId_:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v3

    :goto_0
    add-int v1, v4, v2

    .line 6869
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/google/glass/companion/Proto$Photo;->op_:I

    add-int v1, v2, v4

    .line 6870
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/google/glass/companion/Proto$Photo;->numOfPhotosToSync_:I

    add-int v1, v2, v4

    .line 6871
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/google/glass/companion/Proto$Photo;->unknownFieldData:Ljava/util/List;

    if-nez v4, :cond_3

    :goto_1
    add-int v1, v2, v3

    .line 6872
    return v1

    .line 6863
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Photo;->thumbnailBytes_:[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 6864
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/google/glass/companion/Proto$Photo;->thumbnailBytes_:[B

    aget-byte v4, v4, v0

    add-int v1, v2, v4

    .line 6863
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 6868
    .end local v0    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Photo;->photoId_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 6871
    :cond_3
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Photo;->unknownFieldData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    goto :goto_1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$Photo;
    .locals 5
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 6929
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 6930
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 6934
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Photo;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_1

    .line 6935
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/glass/companion/Proto$Photo;->unknownFieldData:Ljava/util/List;

    .line 6938
    :cond_1
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Photo;->unknownFieldData:Ljava/util/List;

    invoke-static {v2, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6940
    :sswitch_0
    return-object p0

    .line 6945
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v2

    iput-object v2, p0, Lcom/google/glass/companion/Proto$Photo;->thumbnailBytes_:[B

    .line 6946
    iget v2, p0, Lcom/google/glass/companion/Proto$Photo;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/glass/companion/Proto$Photo;->bitField0_:I

    goto :goto_0

    .line 6950
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/glass/companion/Proto$Photo;->timestamp_:J

    .line 6951
    iget v2, p0, Lcom/google/glass/companion/Proto$Photo;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/glass/companion/Proto$Photo;->bitField0_:I

    goto :goto_0

    .line 6955
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/glass/companion/Proto$Photo;->photoId_:Ljava/lang/String;

    .line 6956
    iget v2, p0, Lcom/google/glass/companion/Proto$Photo;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/glass/companion/Proto$Photo;->bitField0_:I

    goto :goto_0

    .line 6960
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 6961
    .local v1, "temp":I
    if-eq v1, v4, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 6964
    :cond_2
    iput v1, p0, Lcom/google/glass/companion/Proto$Photo;->op_:I

    .line 6965
    iget v2, p0, Lcom/google/glass/companion/Proto$Photo;->bitField0_:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/google/glass/companion/Proto$Photo;->bitField0_:I

    goto :goto_0

    .line 6967
    :cond_3
    iput v4, p0, Lcom/google/glass/companion/Proto$Photo;->op_:I

    goto :goto_0

    .line 6972
    .end local v1    # "temp":I
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/google/glass/companion/Proto$Photo;->numOfPhotosToSync_:I

    .line 6973
    iget v2, p0, Lcom/google/glass/companion/Proto$Photo;->bitField0_:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/google/glass/companion/Proto$Photo;->bitField0_:I

    goto :goto_0

    .line 6930
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
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
    .line 6731
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$Photo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$Photo;

    move-result-object v0

    return-object v0
.end method

.method public setNumOfPhotosToSync(I)Lcom/google/glass/companion/Proto$Photo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 6833
    iput p1, p0, Lcom/google/glass/companion/Proto$Photo;->numOfPhotosToSync_:I

    .line 6834
    iget v0, p0, Lcom/google/glass/companion/Proto$Photo;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/glass/companion/Proto$Photo;->bitField0_:I

    .line 6835
    return-object p0
.end method

.method public setOp(I)Lcom/google/glass/companion/Proto$Photo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 6814
    iput p1, p0, Lcom/google/glass/companion/Proto$Photo;->op_:I

    .line 6815
    iget v0, p0, Lcom/google/glass/companion/Proto$Photo;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/glass/companion/Proto$Photo;->bitField0_:I

    .line 6816
    return-object p0
.end method

.method public setPhotoId(Ljava/lang/String;)Lcom/google/glass/companion/Proto$Photo;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 6792
    if-nez p1, :cond_0

    .line 6793
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6795
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Photo;->photoId_:Ljava/lang/String;

    .line 6796
    iget v0, p0, Lcom/google/glass/companion/Proto$Photo;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/companion/Proto$Photo;->bitField0_:I

    .line 6797
    return-object p0
.end method

.method public setThumbnailBytes([B)Lcom/google/glass/companion/Proto$Photo;
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 6751
    if-nez p1, :cond_0

    .line 6752
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6754
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Photo;->thumbnailBytes_:[B

    .line 6755
    iget v0, p0, Lcom/google/glass/companion/Proto$Photo;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$Photo;->bitField0_:I

    .line 6756
    return-object p0
.end method

.method public setTimestamp(J)Lcom/google/glass/companion/Proto$Photo;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 6773
    iput-wide p1, p0, Lcom/google/glass/companion/Proto$Photo;->timestamp_:J

    .line 6774
    iget v0, p0, Lcom/google/glass/companion/Proto$Photo;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$Photo;->bitField0_:I

    .line 6775
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6877
    iget v0, p0, Lcom/google/glass/companion/Proto$Photo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 6878
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/glass/companion/Proto$Photo;->thumbnailBytes_:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 6880
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$Photo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 6881
    const/4 v0, 0x2

    iget-wide v1, p0, Lcom/google/glass/companion/Proto$Photo;->timestamp_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 6883
    :cond_1
    iget v0, p0, Lcom/google/glass/companion/Proto$Photo;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 6884
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/glass/companion/Proto$Photo;->photoId_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 6886
    :cond_2
    iget v0, p0, Lcom/google/glass/companion/Proto$Photo;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 6887
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/glass/companion/Proto$Photo;->op_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6889
    :cond_3
    iget v0, p0, Lcom/google/glass/companion/Proto$Photo;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 6890
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/glass/companion/Proto$Photo;->numOfPhotosToSync_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6892
    :cond_4
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Photo;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 6894
    return-void
.end method
