.class public final enum Lcom/google/glass/deferredcontent/GlasswareIconLoadingTask$IconSize;
.super Ljava/lang/Enum;
.source "GlasswareIconLoadingTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/deferredcontent/GlasswareIconLoadingTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IconSize"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/glass/deferredcontent/GlasswareIconLoadingTask$IconSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/deferredcontent/GlasswareIconLoadingTask$IconSize;

.field public static final enum LARGE:Lcom/google/glass/deferredcontent/GlasswareIconLoadingTask$IconSize;

.field public static final enum MEDIUM:Lcom/google/glass/deferredcontent/GlasswareIconLoadingTask$IconSize;

.field public static final enum SMALL:Lcom/google/glass/deferredcontent/GlasswareIconLoadingTask$IconSize;


# instance fields
.field private resourceType:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 23
    new-instance v0, Lcom/google/glass/deferredcontent/GlasswareIconLoadingTask$IconSize;

    const-string v1, "SMALL"

    invoke-direct {v0, v1, v4, v3}, Lcom/google/glass/deferredcontent/GlasswareIconLoadingTask$IconSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/glass/deferredcontent/GlasswareIconLoadingTask$IconSize;->SMALL:Lcom/google/glass/deferredcontent/GlasswareIconLoadingTask$IconSize;

    .line 24
    new-instance v0, Lcom/google/glass/deferredcontent/GlasswareIconLoadingTask$IconSize;

    const-string v1, "MEDIUM"

    invoke-direct {v0, v1, v5, v6}, Lcom/google/glass/deferredcontent/GlasswareIconLoadingTask$IconSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/glass/deferredcontent/GlasswareIconLoadingTask$IconSize;->MEDIUM:Lcom/google/glass/deferredcontent/GlasswareIconLoadingTask$IconSize;

    .line 25
    new-instance v0, Lcom/google/glass/deferredcontent/GlasswareIconLoadingTask$IconSize;

    const-string v1, "LARGE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v3, v2}, Lcom/google/glass/deferredcontent/GlasswareIconLoadingTask$IconSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/glass/deferredcontent/GlasswareIconLoadingTask$IconSize;->LARGE:Lcom/google/glass/deferredcontent/GlasswareIconLoadingTask$IconSize;

    .line 22
    new-array v0, v6, [Lcom/google/glass/deferredcontent/GlasswareIconLoadingTask$IconSize;

    sget-object v1, Lcom/google/glass/deferredcontent/GlasswareIconLoadingTask$IconSize;->SMALL:Lcom/google/glass/deferredcontent/GlasswareIconLoadingTask$IconSize;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/glass/deferredcontent/GlasswareIconLoadingTask$IconSize;->MEDIUM:Lcom/google/glass/deferredcontent/GlasswareIconLoadingTask$IconSize;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/glass/deferredcontent/GlasswareIconLoadingTask$IconSize;->LARGE:Lcom/google/glass/deferredcontent/GlasswareIconLoadingTask$IconSize;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/glass/deferredcontent/GlasswareIconLoadingTask$IconSize;->$VALUES:[Lcom/google/glass/deferredcontent/GlasswareIconLoadingTask$IconSize;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "resourceType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    iput p3, p0, Lcom/google/glass/deferredcontent/GlasswareIconLoadingTask$IconSize;->resourceType:I

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/deferredcontent/GlasswareIconLoadingTask$IconSize;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/deferredcontent/GlasswareIconLoadingTask$IconSize;

    .prologue
    .line 22
    iget v0, p0, Lcom/google/glass/deferredcontent/GlasswareIconLoadingTask$IconSize;->resourceType:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/deferredcontent/GlasswareIconLoadingTask$IconSize;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    const-class v0, Lcom/google/glass/deferredcontent/GlasswareIconLoadingTask$IconSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/deferredcontent/GlasswareIconLoadingTask$IconSize;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/deferredcontent/GlasswareIconLoadingTask$IconSize;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/google/glass/deferredcontent/GlasswareIconLoadingTask$IconSize;->$VALUES:[Lcom/google/glass/deferredcontent/GlasswareIconLoadingTask$IconSize;

    invoke-virtual {v0}, [Lcom/google/glass/deferredcontent/GlasswareIconLoadingTask$IconSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/deferredcontent/GlasswareIconLoadingTask$IconSize;

    return-object v0
.end method
