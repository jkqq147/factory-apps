.class public final Lcom/google/glass/companion/ConnectionChecker$Provider;
.super Lcom/google/glass/inject/Provider;
.source "ConnectionChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/ConnectionChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Provider"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/inject/Provider",
        "<",
        "Lcom/google/glass/companion/ConnectionChecker;",
        ">;"
    }
.end annotation


# static fields
.field private static final instance:Lcom/google/glass/companion/ConnectionChecker$Provider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 211
    new-instance v0, Lcom/google/glass/companion/ConnectionChecker$Provider;

    invoke-direct {v0}, Lcom/google/glass/companion/ConnectionChecker$Provider;-><init>()V

    sput-object v0, Lcom/google/glass/companion/ConnectionChecker$Provider;->instance:Lcom/google/glass/companion/ConnectionChecker$Provider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 213
    invoke-direct {p0}, Lcom/google/glass/inject/Provider;-><init>()V

    return-void
.end method

.method static getInstance()Lcom/google/glass/companion/ConnectionChecker$Provider;
    .locals 1

    .prologue
    .line 215
    sget-object v0, Lcom/google/glass/companion/ConnectionChecker$Provider;->instance:Lcom/google/glass/companion/ConnectionChecker$Provider;

    return-object v0
.end method


# virtual methods
.method public get(Landroid/content/Context;)Lcom/google/glass/companion/ConnectionChecker;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 222
    const-string v0, "null context"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    new-instance v0, Lcom/google/glass/companion/ConnectionChecker$Provider$1;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/companion/ConnectionChecker$Provider$1;-><init>(Lcom/google/glass/companion/ConnectionChecker$Provider;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/ConnectionChecker$Provider;->get(Lcom/google/common/base/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/ConnectionChecker;

    return-object v0
.end method
