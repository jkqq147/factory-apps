.class public final Lcom/google/a/a/a/i;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# static fields
.field private static volatile a:[Lcom/google/a/a/a/i;


# instance fields
.field private b:I

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 769
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 770
    invoke-direct {p0}, Lcom/google/a/a/a/i;->b()Lcom/google/a/a/a/i;

    .line 771
    return-void
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/a/a/a/i;
    .locals 1

    .prologue
    .line 804
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 805
    sparse-switch v0, :sswitch_data_0

    .line 809
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 810
    :sswitch_0
    return-object p0

    .line 815
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/i;->c:Ljava/lang/String;

    .line 816
    iget v0, p0, Lcom/google/a/a/a/i;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/a/a/a/i;->b:I

    goto :goto_0

    .line 805
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public static a()[Lcom/google/a/a/a/i;
    .locals 2

    .prologue
    .line 734
    sget-object v0, Lcom/google/a/a/a/i;->a:[Lcom/google/a/a/a/i;

    if-nez v0, :cond_1

    .line 735
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 737
    :try_start_0
    sget-object v0, Lcom/google/a/a/a/i;->a:[Lcom/google/a/a/a/i;

    if-nez v0, :cond_0

    .line 738
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/a/a/a/i;

    sput-object v0, Lcom/google/a/a/a/i;->a:[Lcom/google/a/a/a/i;

    .line 740
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 742
    :cond_1
    sget-object v0, Lcom/google/a/a/a/i;->a:[Lcom/google/a/a/a/i;

    return-object v0

    .line 740
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b()Lcom/google/a/a/a/i;
    .locals 1

    .prologue
    .line 774
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/a/a/a/i;->b:I

    .line 775
    const-string v0, ""

    iput-object v0, p0, Lcom/google/a/a/a/i;->c:Ljava/lang/String;

    .line 776
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/a/a/a/i;->cachedSize:I

    .line 777
    return-object p0
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 790
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 791
    iget v1, p0, Lcom/google/a/a/a/i;->b:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 792
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/a/a/a/i;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 795
    :cond_0
    iput v0, p0, Lcom/google/a/a/a/i;->cachedSize:I

    .line 796
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 728
    invoke-direct {p0, p1}, Lcom/google/a/a/a/i;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/a/a/a/i;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 783
    iget v0, p0, Lcom/google/a/a/a/i;->b:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 784
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/a/a/a/i;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 786
    :cond_0
    return-void
.end method
