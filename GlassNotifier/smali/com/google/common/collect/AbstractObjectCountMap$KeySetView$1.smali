.class Lcom/google/common/collect/AbstractObjectCountMap$KeySetView$1;
.super Lcom/google/common/collect/AbstractObjectCountMap$Itr;
.source "AbstractObjectCountMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/AbstractObjectCountMap$KeySetView;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractObjectCountMap",
        "<TK;>.Itr<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/collect/AbstractObjectCountMap$KeySetView;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractObjectCountMap$KeySetView;)V
    .locals 1
    .param p1, "this$1"    # Lcom/google/common/collect/AbstractObjectCountMap$KeySetView;

    .prologue
    .line 169
    .local p0, "this":Lcom/google/common/collect/AbstractObjectCountMap$KeySetView$1;, "Lcom/google/common/collect/AbstractObjectCountMap$KeySetView$1;"
    iput-object p1, p0, Lcom/google/common/collect/AbstractObjectCountMap$KeySetView$1;->this$1:Lcom/google/common/collect/AbstractObjectCountMap$KeySetView;

    iget-object v0, p1, Lcom/google/common/collect/AbstractObjectCountMap$KeySetView;->this$0:Lcom/google/common/collect/AbstractObjectCountMap;

    invoke-direct {p0, v0}, Lcom/google/common/collect/AbstractObjectCountMap$Itr;-><init>(Lcom/google/common/collect/AbstractObjectCountMap;)V

    return-void
.end method


# virtual methods
.method getOutput(I)Ljava/lang/Object;
    .locals 1
    .param p1, "entry"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    .prologue
    .line 173
    .local p0, "this":Lcom/google/common/collect/AbstractObjectCountMap$KeySetView$1;, "Lcom/google/common/collect/AbstractObjectCountMap$KeySetView$1;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractObjectCountMap$KeySetView$1;->this$1:Lcom/google/common/collect/AbstractObjectCountMap$KeySetView;

    iget-object v0, v0, Lcom/google/common/collect/AbstractObjectCountMap$KeySetView;->this$0:Lcom/google/common/collect/AbstractObjectCountMap;

    iget-object v0, v0, Lcom/google/common/collect/AbstractObjectCountMap;->keys:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method
