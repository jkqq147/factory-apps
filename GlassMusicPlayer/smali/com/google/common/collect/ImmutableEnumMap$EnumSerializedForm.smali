.class Lcom/google/common/collect/ImmutableEnumMap$EnumSerializedForm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final delegate:Ljava/util/EnumMap;


# direct methods
.method constructor <init>(Ljava/util/EnumMap;)V
    .locals 0

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-object p1, p0, Lcom/google/common/collect/ImmutableEnumMap$EnumSerializedForm;->delegate:Ljava/util/EnumMap;

    .line 143
    return-void
.end method


# virtual methods
.method readResolve()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 146
    new-instance v0, Lcom/google/common/collect/ImmutableEnumMap;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableEnumMap$EnumSerializedForm;->delegate:Ljava/util/EnumMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/ImmutableEnumMap;-><init>(Ljava/util/EnumMap;Lcom/google/common/collect/ImmutableEnumMap$1;)V

    return-object v0
.end method