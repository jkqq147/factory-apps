.class public final Lcom/google/common/collect/HashMultiset;
.super Lcom/google/common/collect/AbstractMapBasedMultiset;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/common/collect/AbstractMapBasedMultiset;-><init>(Ljava/util/Map;)V

    .line 72
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    .prologue
    .line 75
    invoke-static {p1}, Lcom/google/common/collect/Maps;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/AbstractMapBasedMultiset;-><init>(Ljava/util/Map;)V

    .line 76
    return-void
.end method

.method public static create()Lcom/google/common/collect/HashMultiset;
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/google/common/collect/HashMultiset;

    invoke-direct {v0}, Lcom/google/common/collect/HashMultiset;-><init>()V

    return-object v0
.end method

.method public static create(I)Lcom/google/common/collect/HashMultiset;
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lcom/google/common/collect/HashMultiset;

    invoke-direct {v0, p0}, Lcom/google/common/collect/HashMultiset;-><init>(I)V

    return-object v0
.end method

.method public static create(Ljava/lang/Iterable;)Lcom/google/common/collect/HashMultiset;
    .locals 1

    .prologue
    .line 65
    invoke-static {p0}, Lcom/google/common/collect/Multisets;->a(Ljava/lang/Iterable;)I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/HashMultiset;->create(I)Lcom/google/common/collect/HashMultiset;

    move-result-object v0

    .line 66
    invoke-static {v0, p0}, Lcom/google/common/collect/eg;->a(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 67
    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2

    .prologue
    .line 90
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 91
    invoke-static {p1}, Lcom/google/common/collect/lt;->a(Ljava/io/ObjectInputStream;)I

    move-result v0

    .line 92
    invoke-static {v0}, Lcom/google/common/collect/Maps;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/common/collect/HashMultiset;->setBackingMap(Ljava/util/Map;)V

    .line 93
    invoke-static {p0, p1, v0}, Lcom/google/common/collect/lt;->a(Lcom/google/common/collect/kp;Ljava/io/ObjectInputStream;I)V

    .line 94
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0

    .prologue
    .line 84
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 85
    invoke-static {p0, p1}, Lcom/google/common/collect/lt;->a(Lcom/google/common/collect/kp;Ljava/io/ObjectOutputStream;)V

    .line 86
    return-void
.end method


# virtual methods
.method public final bridge synthetic add(Ljava/lang/Object;I)I
    .locals 1

    .prologue
    .line 34
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractMapBasedMultiset;->add(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public final bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultiset;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic addAll(Ljava/util/Collection;)Z
    .locals 1

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultiset;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic clear()V
    .locals 0

    .prologue
    .line 34
    invoke-super {p0}, Lcom/google/common/collect/AbstractMapBasedMultiset;->clear()V

    return-void
.end method

.method public final bridge synthetic contains(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultiset;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic count(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultiset;->count(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final bridge synthetic elementSet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 34
    invoke-super {p0}, Lcom/google/common/collect/AbstractMapBasedMultiset;->elementSet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 34
    invoke-super {p0}, Lcom/google/common/collect/AbstractMapBasedMultiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultiset;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic hashCode()I
    .locals 1

    .prologue
    .line 34
    invoke-super {p0}, Lcom/google/common/collect/AbstractMapBasedMultiset;->hashCode()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic isEmpty()Z
    .locals 1

    .prologue
    .line 34
    invoke-super {p0}, Lcom/google/common/collect/AbstractMapBasedMultiset;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 34
    invoke-super {p0}, Lcom/google/common/collect/AbstractMapBasedMultiset;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic remove(Ljava/lang/Object;I)I
    .locals 1

    .prologue
    .line 34
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractMapBasedMultiset;->remove(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public final bridge synthetic remove(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultiset;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic removeAll(Ljava/util/Collection;)Z
    .locals 1

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultiset;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic retainAll(Ljava/util/Collection;)Z
    .locals 1

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultiset;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic setCount(Ljava/lang/Object;I)I
    .locals 1

    .prologue
    .line 34
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractMapBasedMultiset;->setCount(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public final bridge synthetic setCount(Ljava/lang/Object;II)Z
    .locals 1

    .prologue
    .line 34
    invoke-super {p0, p1, p2, p3}, Lcom/google/common/collect/AbstractMapBasedMultiset;->setCount(Ljava/lang/Object;II)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic size()I
    .locals 1

    .prologue
    .line 34
    invoke-super {p0}, Lcom/google/common/collect/AbstractMapBasedMultiset;->size()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    invoke-super {p0}, Lcom/google/common/collect/AbstractMapBasedMultiset;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
