.class public final enum Lcom/google/glass/maps/NavigationActiveItemParams$CardType;
.super Ljava/lang/Enum;
.source "NavigationActiveItemParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/maps/NavigationActiveItemParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CardType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/glass/maps/NavigationActiveItemParams$CardType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/maps/NavigationActiveItemParams$CardType;

.field public static final enum DIRECTIONS:Lcom/google/glass/maps/NavigationActiveItemParams$CardType;

.field public static final enum NAVIGATION:Lcom/google/glass/maps/NavigationActiveItemParams$CardType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    new-instance v0, Lcom/google/glass/maps/NavigationActiveItemParams$CardType;

    const-string v1, "NAVIGATION"

    invoke-direct {v0, v1, v2}, Lcom/google/glass/maps/NavigationActiveItemParams$CardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/maps/NavigationActiveItemParams$CardType;->NAVIGATION:Lcom/google/glass/maps/NavigationActiveItemParams$CardType;

    .line 25
    new-instance v0, Lcom/google/glass/maps/NavigationActiveItemParams$CardType;

    const-string v1, "DIRECTIONS"

    invoke-direct {v0, v1, v3}, Lcom/google/glass/maps/NavigationActiveItemParams$CardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/maps/NavigationActiveItemParams$CardType;->DIRECTIONS:Lcom/google/glass/maps/NavigationActiveItemParams$CardType;

    .line 23
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/glass/maps/NavigationActiveItemParams$CardType;

    sget-object v1, Lcom/google/glass/maps/NavigationActiveItemParams$CardType;->NAVIGATION:Lcom/google/glass/maps/NavigationActiveItemParams$CardType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/glass/maps/NavigationActiveItemParams$CardType;->DIRECTIONS:Lcom/google/glass/maps/NavigationActiveItemParams$CardType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/glass/maps/NavigationActiveItemParams$CardType;->$VALUES:[Lcom/google/glass/maps/NavigationActiveItemParams$CardType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/maps/NavigationActiveItemParams$CardType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 23
    const-class v0, Lcom/google/glass/maps/NavigationActiveItemParams$CardType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/NavigationActiveItemParams$CardType;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/maps/NavigationActiveItemParams$CardType;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/google/glass/maps/NavigationActiveItemParams$CardType;->$VALUES:[Lcom/google/glass/maps/NavigationActiveItemParams$CardType;

    invoke-virtual {v0}, [Lcom/google/glass/maps/NavigationActiveItemParams$CardType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/maps/NavigationActiveItemParams$CardType;

    return-object v0
.end method