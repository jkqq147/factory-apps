.class public final Lcom/google/common/base/ak;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/common/base/c;

.field private final b:Z

.field private final c:Lcom/google/common/base/ar;

.field private final d:I


# direct methods
.method private constructor <init>(Lcom/google/common/base/ar;)V
    .locals 3

    .prologue
    .line 108
    const/4 v0, 0x0

    sget-object v1, Lcom/google/common/base/c;->m:Lcom/google/common/base/c;

    const v2, 0x7fffffff

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/common/base/ak;-><init>(Lcom/google/common/base/ar;ZLcom/google/common/base/c;I)V

    .line 109
    return-void
.end method

.method private constructor <init>(Lcom/google/common/base/ar;ZLcom/google/common/base/c;I)V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Lcom/google/common/base/ak;->c:Lcom/google/common/base/ar;

    .line 113
    iput-boolean p2, p0, Lcom/google/common/base/ak;->b:Z

    .line 114
    iput-object p3, p0, Lcom/google/common/base/ak;->a:Lcom/google/common/base/c;

    .line 115
    iput p4, p0, Lcom/google/common/base/ak;->d:I

    .line 116
    return-void
.end method

.method public static a(C)Lcom/google/common/base/ak;
    .locals 1

    .prologue
    .line 127
    invoke-static {p0}, Lcom/google/common/base/c;->a(C)Lcom/google/common/base/c;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/ak;->a(Lcom/google/common/base/c;)Lcom/google/common/base/ak;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/google/common/base/c;)Lcom/google/common/base/ak;
    .locals 2

    .prologue
    .line 141
    invoke-static {p0}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    new-instance v0, Lcom/google/common/base/ak;

    new-instance v1, Lcom/google/common/base/al;

    invoke-direct {v1, p0}, Lcom/google/common/base/al;-><init>(Lcom/google/common/base/c;)V

    invoke-direct {v0, v1}, Lcom/google/common/base/ak;-><init>(Lcom/google/common/base/ar;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcom/google/common/base/ak;
    .locals 2

    .prologue
    .line 169
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "The separator may not be the empty string."

    invoke-static {v0, v1}, Lcom/google/common/base/ah;->a(ZLjava/lang/Object;)V

    .line 171
    new-instance v0, Lcom/google/common/base/ak;

    new-instance v1, Lcom/google/common/base/an;

    invoke-direct {v1, p0}, Lcom/google/common/base/an;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/common/base/ak;-><init>(Lcom/google/common/base/ar;)V

    return-object v0

    .line 169
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/common/base/ak;)Lcom/google/common/base/c;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/common/base/ak;->a:Lcom/google/common/base/c;

    return-object v0
.end method

.method static synthetic a(Lcom/google/common/base/ak;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/google/common/base/ak;->b(Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/google/common/base/ak;->c:Lcom/google/common/base/ar;

    invoke-interface {v0, p0, p1}, Lcom/google/common/base/ar;->a(Lcom/google/common/base/ak;Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/google/common/base/ak;)Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/google/common/base/ak;->b:Z

    return v0
.end method

.method static synthetic c(Lcom/google/common/base/ak;)I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/google/common/base/ak;->d:I

    return v0
.end method


# virtual methods
.method public final a()Lcom/google/common/base/ak;
    .locals 5
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .prologue
    .line 314
    new-instance v0, Lcom/google/common/base/ak;

    iget-object v1, p0, Lcom/google/common/base/ak;->c:Lcom/google/common/base/ar;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/common/base/ak;->a:Lcom/google/common/base/c;

    iget v4, p0, Lcom/google/common/base/ak;->d:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/common/base/ak;-><init>(Lcom/google/common/base/ar;ZLcom/google/common/base/c;I)V

    return-object v0
.end method

.method public final a(Ljava/lang/CharSequence;)Ljava/lang/Iterable;
    .locals 1

    .prologue
    .line 383
    invoke-static {p1}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    new-instance v0, Lcom/google/common/base/ap;

    invoke-direct {v0, p0, p1}, Lcom/google/common/base/ap;-><init>(Lcom/google/common/base/ak;Ljava/lang/CharSequence;)V

    return-object v0
.end method
