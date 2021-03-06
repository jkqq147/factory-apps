.class abstract Lcom/google/common/collect/aj;
.super Lcom/google/common/collect/af;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/mf;


# instance fields
.field final comparator:Ljava/util/Comparator;

.field private transient descendingMultiset:Lcom/google/common/collect/mf;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/aj;-><init>(Ljava/util/Comparator;)V

    .line 45
    return-void
.end method

.method constructor <init>(Ljava/util/Comparator;)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/google/common/collect/af;-><init>()V

    .line 48
    invoke-static {p1}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lcom/google/common/collect/aj;->comparator:Ljava/util/Comparator;

    .line 49
    return-void
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/common/collect/aj;->comparator:Ljava/util/Comparator;

    return-object v0
.end method

.method createDescendingMultiset()Lcom/google/common/collect/mf;
    .locals 1

    .prologue
    .line 119
    new-instance v0, Lcom/google/common/collect/ak;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ak;-><init>(Lcom/google/common/collect/aj;)V

    return-object v0
.end method

.method bridge synthetic createElementSet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/google/common/collect/aj;->createElementSet()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method createElementSet()Ljava/util/SortedSet;
    .locals 1

    .prologue
    .line 58
    new-instance v0, Lcom/google/common/collect/mi;

    invoke-direct {v0, p0}, Lcom/google/common/collect/mi;-><init>(Lcom/google/common/collect/mf;)V

    return-object v0
.end method

.method abstract descendingEntryIterator()Ljava/util/Iterator;
.end method

.method descendingIterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/google/common/collect/aj;->descendingMultiset()Lcom/google/common/collect/mf;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Multisets;->b(Lcom/google/common/collect/kp;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public descendingMultiset()Lcom/google/common/collect/mf;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/common/collect/aj;->descendingMultiset:Lcom/google/common/collect/mf;

    .line 115
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/aj;->createDescendingMultiset()Lcom/google/common/collect/mf;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/aj;->descendingMultiset:Lcom/google/common/collect/mf;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic elementSet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/google/common/collect/aj;->elementSet()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public elementSet()Ljava/util/SortedSet;
    .locals 1

    .prologue
    .line 53
    invoke-super {p0}, Lcom/google/common/collect/af;->elementSet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/SortedSet;

    return-object v0
.end method

.method public firstEntry()Lcom/google/common/collect/kq;
    .locals 2

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/google/common/collect/aj;->entryIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 67
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/kq;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lastEntry()Lcom/google/common/collect/kq;
    .locals 2

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/google/common/collect/aj;->descendingEntryIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 72
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/kq;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pollFirstEntry()Lcom/google/common/collect/kq;
    .locals 3

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/google/common/collect/aj;->entryIterator()Ljava/util/Iterator;

    move-result-object v1

    .line 77
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/kq;

    .line 79
    invoke-interface {v0}, Lcom/google/common/collect/kq;->getElement()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Lcom/google/common/collect/kq;->getCount()I

    move-result v0

    invoke-static {v2, v0}, Lcom/google/common/collect/Multisets;->a(Ljava/lang/Object;I)Lcom/google/common/collect/kq;

    move-result-object v0

    .line 80
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 83
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pollLastEntry()Lcom/google/common/collect/kq;
    .locals 3

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/google/common/collect/aj;->descendingEntryIterator()Ljava/util/Iterator;

    move-result-object v1

    .line 88
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/kq;

    .line 90
    invoke-interface {v0}, Lcom/google/common/collect/kq;->getElement()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Lcom/google/common/collect/kq;->getCount()I

    move-result v0

    invoke-static {v2, v0}, Lcom/google/common/collect/Multisets;->a(Ljava/lang/Object;I)Lcom/google/common/collect/kq;

    move-result-object v0

    .line 91
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 94
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public subMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/mf;
    .locals 1

    .prologue
    .line 100
    invoke-static {p2}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    invoke-static {p4}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/aj;->tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/mf;

    move-result-object v0

    invoke-interface {v0, p3, p4}, Lcom/google/common/collect/mf;->headMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/mf;

    move-result-object v0

    return-object v0
.end method
