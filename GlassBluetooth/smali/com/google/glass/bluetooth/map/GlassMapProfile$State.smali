.class final enum Lcom/google/glass/bluetooth/map/GlassMapProfile$State;
.super Ljava/lang/Enum;
.source "GlassMapProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/bluetooth/map/GlassMapProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/glass/bluetooth/map/GlassMapProfile$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/bluetooth/map/GlassMapProfile$State;

.field public static final enum CONNECTING:Lcom/google/glass/bluetooth/map/GlassMapProfile$State;

.field public static final enum DISCONNECTING:Lcom/google/glass/bluetooth/map/GlassMapProfile$State;

.field public static final enum NONE:Lcom/google/glass/bluetooth/map/GlassMapProfile$State;

.field public static final enum PENDING:Lcom/google/glass/bluetooth/map/GlassMapProfile$State;

.field public static final enum READING:Lcom/google/glass/bluetooth/map/GlassMapProfile$State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 52
    new-instance v0, Lcom/google/glass/bluetooth/map/GlassMapProfile$State;

    const-string v1, "CONNECTING"

    invoke-direct {v0, v1, v2}, Lcom/google/glass/bluetooth/map/GlassMapProfile$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/bluetooth/map/GlassMapProfile$State;->CONNECTING:Lcom/google/glass/bluetooth/map/GlassMapProfile$State;

    new-instance v0, Lcom/google/glass/bluetooth/map/GlassMapProfile$State;

    const-string v1, "READING"

    invoke-direct {v0, v1, v3}, Lcom/google/glass/bluetooth/map/GlassMapProfile$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/bluetooth/map/GlassMapProfile$State;->READING:Lcom/google/glass/bluetooth/map/GlassMapProfile$State;

    new-instance v0, Lcom/google/glass/bluetooth/map/GlassMapProfile$State;

    const-string v1, "DISCONNECTING"

    invoke-direct {v0, v1, v4}, Lcom/google/glass/bluetooth/map/GlassMapProfile$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/bluetooth/map/GlassMapProfile$State;->DISCONNECTING:Lcom/google/glass/bluetooth/map/GlassMapProfile$State;

    new-instance v0, Lcom/google/glass/bluetooth/map/GlassMapProfile$State;

    const-string v1, "PENDING"

    invoke-direct {v0, v1, v5}, Lcom/google/glass/bluetooth/map/GlassMapProfile$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/bluetooth/map/GlassMapProfile$State;->PENDING:Lcom/google/glass/bluetooth/map/GlassMapProfile$State;

    new-instance v0, Lcom/google/glass/bluetooth/map/GlassMapProfile$State;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v6}, Lcom/google/glass/bluetooth/map/GlassMapProfile$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/bluetooth/map/GlassMapProfile$State;->NONE:Lcom/google/glass/bluetooth/map/GlassMapProfile$State;

    .line 51
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/glass/bluetooth/map/GlassMapProfile$State;

    sget-object v1, Lcom/google/glass/bluetooth/map/GlassMapProfile$State;->CONNECTING:Lcom/google/glass/bluetooth/map/GlassMapProfile$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/glass/bluetooth/map/GlassMapProfile$State;->READING:Lcom/google/glass/bluetooth/map/GlassMapProfile$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/glass/bluetooth/map/GlassMapProfile$State;->DISCONNECTING:Lcom/google/glass/bluetooth/map/GlassMapProfile$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/glass/bluetooth/map/GlassMapProfile$State;->PENDING:Lcom/google/glass/bluetooth/map/GlassMapProfile$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/glass/bluetooth/map/GlassMapProfile$State;->NONE:Lcom/google/glass/bluetooth/map/GlassMapProfile$State;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/glass/bluetooth/map/GlassMapProfile$State;->$VALUES:[Lcom/google/glass/bluetooth/map/GlassMapProfile$State;

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
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/bluetooth/map/GlassMapProfile$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 51
    const-class v0, Lcom/google/glass/bluetooth/map/GlassMapProfile$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/bluetooth/map/GlassMapProfile$State;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/bluetooth/map/GlassMapProfile$State;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/google/glass/bluetooth/map/GlassMapProfile$State;->$VALUES:[Lcom/google/glass/bluetooth/map/GlassMapProfile$State;

    invoke-virtual {v0}, [Lcom/google/glass/bluetooth/map/GlassMapProfile$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/bluetooth/map/GlassMapProfile$State;

    return-object v0
.end method
