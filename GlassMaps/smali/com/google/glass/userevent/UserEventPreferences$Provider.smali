.class public final Lcom/google/glass/userevent/UserEventPreferences$Provider;
.super Lcom/google/glass/inject/Provider;
.source "SourceFile"


# static fields
.field private static final INSTANCE:Lcom/google/glass/userevent/UserEventPreferences$Provider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 126
    new-instance v0, Lcom/google/glass/userevent/UserEventPreferences$Provider;

    invoke-direct {v0}, Lcom/google/glass/userevent/UserEventPreferences$Provider;-><init>()V

    sput-object v0, Lcom/google/glass/userevent/UserEventPreferences$Provider;->INSTANCE:Lcom/google/glass/userevent/UserEventPreferences$Provider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/google/glass/inject/Provider;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/glass/userevent/UserEventPreferences$Provider;
    .locals 1

    .prologue
    .line 130
    sget-object v0, Lcom/google/glass/userevent/UserEventPreferences$Provider;->INSTANCE:Lcom/google/glass/userevent/UserEventPreferences$Provider;

    return-object v0
.end method


# virtual methods
.method public final get(Landroid/content/Context;)Lcom/google/glass/userevent/UserEventPreferences;
    .locals 1

    .prologue
    .line 139
    const-string v0, "null context"

    invoke-static {p1, v0}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    new-instance v0, Lcom/google/glass/userevent/UserEventPreferences$Provider$1;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/userevent/UserEventPreferences$Provider$1;-><init>(Lcom/google/glass/userevent/UserEventPreferences$Provider;Landroid/content/Context;)V

    invoke-super {p0, v0}, Lcom/google/glass/inject/Provider;->get(Lcom/google/common/base/aw;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/userevent/UserEventPreferences;

    return-object v0
.end method
