.class public final Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SourceFile"


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;


# instance fields
.field private bitField0_:I

.field private type_:I

.field private value_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;

    sput-object v0, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 19
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->type_:I

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->value_:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;
    .locals 1

    .prologue
    .line 152
    new-instance v0, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;
    .locals 1

    .prologue
    .line 146
    new-instance v0, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;

    return-object v0
.end method


# virtual methods
.method public final clearType()Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->type_:I

    .line 33
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->bitField0_:I

    .line 34
    return-object p0
.end method

.method public final clearValue()Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;
    .locals 1

    .prologue
    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->value_:Ljava/lang/String;

    .line 55
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->bitField0_:I

    .line 56
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 61
    if-ne p1, p0, :cond_1

    .line 66
    :cond_0
    :goto_0
    return v0

    .line 62
    :cond_1
    instance-of v2, p1, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 63
    :cond_2
    check-cast p1, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;

    .line 64
    iget v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->type_:I

    iget v3, p1, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->type_:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->value_:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->value_:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 65
    :goto_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->unknownFieldData:Ljava/util/List;

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    .line 66
    goto :goto_0

    .line 64
    :cond_4
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->value_:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->value_:Ljava/lang/String;

    .line 65
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->unknownFieldData:Ljava/util/List;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->unknownFieldData:Ljava/util/List;

    .line 66
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0
.end method

.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 91
    const/4 v0, 0x0

    .line 92
    iget v1, p0, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 93
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->type_:I

    .line 94
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 96
    :cond_0
    iget v1, p0, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 97
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->value_:Ljava/lang/String;

    .line 98
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 100
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 101
    iput v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->cachedSize:I

    .line 102
    return v0
.end method

.method public final getType()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->type_:I

    return v0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->value_:Ljava/lang/String;

    return-object v0
.end method

.method public final hasType()Z
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasValue()Z
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 70
    .line 71
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->type_:I

    add-int/lit16 v0, v0, 0x20f

    .line 72
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->value_:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    .line 73
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    .line 74
    return v0

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->value_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 73
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->unknownFieldData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 110
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 111
    sparse-switch v0, :sswitch_data_0

    .line 115
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    .line 116
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->unknownFieldData:Ljava/util/List;

    .line 119
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    :sswitch_0
    return-object p0

    .line 126
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 127
    if-ne v0, v2, :cond_2

    .line 128
    iput v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->type_:I

    .line 129
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->bitField0_:I

    goto :goto_0

    .line 131
    :cond_2
    iput v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->type_:I

    goto :goto_0

    .line 136
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->value_:Ljava/lang/String;

    .line 137
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->bitField0_:I

    goto :goto_0

    .line 111
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;

    move-result-object v0

    return-object v0
.end method

.method public final setType(I)Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;
    .locals 1

    .prologue
    .line 24
    iput p1, p0, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->type_:I

    .line 25
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->bitField0_:I

    .line 26
    return-object p0
.end method

.method public final setValue(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;
    .locals 1

    .prologue
    .line 43
    if-nez p1, :cond_0

    .line 44
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 46
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->value_:Ljava/lang/String;

    .line 47
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->bitField0_:I

    .line 48
    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 79
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 80
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->type_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 82
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 83
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->value_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 87
    return-void
.end method
