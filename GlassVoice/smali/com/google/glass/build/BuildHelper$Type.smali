.class public final enum Lcom/google/glass/build/BuildHelper$Type;
.super Ljava/lang/Enum;
.source "BuildHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/build/BuildHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/glass/build/BuildHelper$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/build/BuildHelper$Type;

.field public static final enum ENG:Lcom/google/glass/build/BuildHelper$Type;

.field public static final enum UNKNOWN:Lcom/google/glass/build/BuildHelper$Type;

.field public static final enum USER:Lcom/google/glass/build/BuildHelper$Type;

.field public static final enum USERDEBUG:Lcom/google/glass/build/BuildHelper$Type;


# instance fields
.field private rawBuildType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 48
    new-instance v0, Lcom/google/glass/build/BuildHelper$Type;

    const-string v1, "USER"

    const-string/jumbo v2, "user"

    invoke-direct {v0, v1, v3, v2}, Lcom/google/glass/build/BuildHelper$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/glass/build/BuildHelper$Type;->USER:Lcom/google/glass/build/BuildHelper$Type;

    .line 49
    new-instance v0, Lcom/google/glass/build/BuildHelper$Type;

    const-string v1, "USERDEBUG"

    const-string/jumbo v2, "userdebug"

    invoke-direct {v0, v1, v4, v2}, Lcom/google/glass/build/BuildHelper$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/glass/build/BuildHelper$Type;->USERDEBUG:Lcom/google/glass/build/BuildHelper$Type;

    .line 50
    new-instance v0, Lcom/google/glass/build/BuildHelper$Type;

    const-string v1, "ENG"

    const-string v2, "eng"

    invoke-direct {v0, v1, v5, v2}, Lcom/google/glass/build/BuildHelper$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/glass/build/BuildHelper$Type;->ENG:Lcom/google/glass/build/BuildHelper$Type;

    .line 51
    new-instance v0, Lcom/google/glass/build/BuildHelper$Type;

    const-string v1, "UNKNOWN"

    const-string v2, ""

    invoke-direct {v0, v1, v6, v2}, Lcom/google/glass/build/BuildHelper$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/glass/build/BuildHelper$Type;->UNKNOWN:Lcom/google/glass/build/BuildHelper$Type;

    .line 47
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/glass/build/BuildHelper$Type;

    sget-object v1, Lcom/google/glass/build/BuildHelper$Type;->USER:Lcom/google/glass/build/BuildHelper$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/glass/build/BuildHelper$Type;->USERDEBUG:Lcom/google/glass/build/BuildHelper$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/glass/build/BuildHelper$Type;->ENG:Lcom/google/glass/build/BuildHelper$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/glass/build/BuildHelper$Type;->UNKNOWN:Lcom/google/glass/build/BuildHelper$Type;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/glass/build/BuildHelper$Type;->$VALUES:[Lcom/google/glass/build/BuildHelper$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "rawBuildType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 57
    iput-object p3, p0, Lcom/google/glass/build/BuildHelper$Type;->rawBuildType:Ljava/lang/String;

    .line 58
    return-void
.end method

.method static getType(Ljava/lang/String;)Lcom/google/glass/build/BuildHelper$Type;
    .locals 5
    .param p0, "rawBuildType"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 63
    invoke-static {}, Lcom/google/glass/build/BuildHelper$Type;->values()[Lcom/google/glass/build/BuildHelper$Type;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 64
    .local v0, "type":Lcom/google/glass/build/BuildHelper$Type;
    iget-object v4, v0, Lcom/google/glass/build/BuildHelper$Type;->rawBuildType:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 68
    .end local v0    # "type":Lcom/google/glass/build/BuildHelper$Type;
    :goto_1
    return-object v0

    .line 63
    .restart local v0    # "type":Lcom/google/glass/build/BuildHelper$Type;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 68
    .end local v0    # "type":Lcom/google/glass/build/BuildHelper$Type;
    :cond_1
    sget-object v0, Lcom/google/glass/build/BuildHelper$Type;->UNKNOWN:Lcom/google/glass/build/BuildHelper$Type;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/build/BuildHelper$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 47
    const-class v0, Lcom/google/glass/build/BuildHelper$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/build/BuildHelper$Type;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/build/BuildHelper$Type;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/google/glass/build/BuildHelper$Type;->$VALUES:[Lcom/google/glass/build/BuildHelper$Type;

    invoke-virtual {v0}, [Lcom/google/glass/build/BuildHelper$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/build/BuildHelper$Type;

    return-object v0
.end method
