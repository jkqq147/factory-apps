.class public final Lcom/google/glass/logging/PiiHasher$Provider;
.super Lcom/google/glass/inject/LazySingletonProvider;
.source "SourceFile"


# static fields
.field private static final INSTANCE:Lcom/google/glass/logging/PiiHasher$Provider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lcom/google/glass/logging/PiiHasher$Provider;

    invoke-direct {v0}, Lcom/google/glass/logging/PiiHasher$Provider;-><init>()V

    sput-object v0, Lcom/google/glass/logging/PiiHasher$Provider;->INSTANCE:Lcom/google/glass/logging/PiiHasher$Provider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/google/glass/inject/LazySingletonProvider;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/glass/logging/PiiHasher$Provider;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/google/glass/logging/PiiHasher$Provider;->INSTANCE:Lcom/google/glass/logging/PiiHasher$Provider;

    return-object v0
.end method