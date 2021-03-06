.class public Lcom/google/glass/build/BuildHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final FIRST_LETTER_OF_15_SERIAL_NUM:[Ljava/lang/String;

.field private static final IS_DOGFOOD_GSERVICES_KEY:Ljava/lang/String; = "is_dogfood"

.field private static final PRODUCT_NAME_GLASS_1:Ljava/lang/String; = "glass_1"

.field private static final PRODUCT_NAME_GLASS_PREFIX:Ljava/lang/String; = "glass_"

.field private static final SYSTEM_SHARED_USER_ID:Ljava/lang/String; = "android.uid.system"

.field private static final operatingSystemType:Lcom/google/glass/build/BuildHelper$Type;

.field private static type:Lcom/google/glass/build/BuildHelper$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 30
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "M"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "O"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "P"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Q"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/glass/build/BuildHelper;->FIRST_LETTER_OF_15_SERIAL_NUM:[Ljava/lang/String;

    .line 38
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/glass/build/BuildHelper$Type;->getType(Ljava/lang/String;)Lcom/google/glass/build/BuildHelper$Type;

    move-result-object v0

    sput-object v0, Lcom/google/glass/build/BuildHelper;->operatingSystemType:Lcom/google/glass/build/BuildHelper$Type;

    .line 44
    sget-object v0, Lcom/google/glass/build/BuildHelper;->operatingSystemType:Lcom/google/glass/build/BuildHelper$Type;

    sput-object v0, Lcom/google/glass/build/BuildHelper;->type:Lcom/google/glass/build/BuildHelper$Type;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    return-void
.end method

.method public static clearTypeForTest()V
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/google/glass/build/BuildHelper;->operatingSystemType:Lcom/google/glass/build/BuildHelper$Type;

    sput-object v0, Lcom/google/glass/build/BuildHelper;->type:Lcom/google/glass/build/BuildHelper$Type;

    .line 111
    return-void
.end method

.method public static getGservicesDogfoodValue(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 185
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "is_dogfood"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/c;->a(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getSerialNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 152
    sget-object v0, Landroid/os/Build;->RADIO:Ljava/lang/String;

    .line 153
    const-string v1, "unknown"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    const/4 v0, 0x0

    .line 156
    :cond_0
    return-object v0
.end method

.method public static getType()Lcom/google/glass/build/BuildHelper$Type;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/google/glass/build/BuildHelper;->type:Lcom/google/glass/build/BuildHelper$Type;

    if-nez v0, :cond_0

    .line 90
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/glass/build/BuildHelper$Type;->getType(Ljava/lang/String;)Lcom/google/glass/build/BuildHelper$Type;

    move-result-object v0

    sput-object v0, Lcom/google/glass/build/BuildHelper;->type:Lcom/google/glass/build/BuildHelper$Type;

    .line 92
    :cond_0
    sget-object v0, Lcom/google/glass/build/BuildHelper;->type:Lcom/google/glass/build/BuildHelper$Type;

    return-object v0
.end method

.method public static isEng()Z
    .locals 2

    .prologue
    .line 84
    sget-object v0, Lcom/google/glass/build/BuildHelper$Type;->ENG:Lcom/google/glass/build/BuildHelper$Type;

    invoke-static {}, Lcom/google/glass/build/BuildHelper;->getType()Lcom/google/glass/build/BuildHelper$Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/build/BuildHelper$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isGlass()Z
    .locals 2

    .prologue
    .line 143
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v1, "glass_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isGlass1()Z
    .locals 2

    .prologue
    .line 134
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v1, "glass_1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isGlass15()Z
    .locals 1

    .prologue
    .line 164
    invoke-static {}, Lcom/google/glass/build/BuildHelper;->isGlass1()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/glass/build/BuildHelper;->getSerialNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/build/BuildHelper;->isV15Serial(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isRunningAsSystemUser(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 117
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 118
    if-nez v1, :cond_1

    .line 126
    :cond_0
    :goto_0
    return v0

    .line 121
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 125
    :goto_1
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.uid.system"

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    .line 126
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 123
    :catch_0
    move-exception v1

    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static isUser()Z
    .locals 2

    .prologue
    .line 74
    sget-object v0, Lcom/google/glass/build/BuildHelper$Type;->USER:Lcom/google/glass/build/BuildHelper$Type;

    invoke-static {}, Lcom/google/glass/build/BuildHelper;->getType()Lcom/google/glass/build/BuildHelper$Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/build/BuildHelper$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isUserdebug()Z
    .locals 2

    .prologue
    .line 79
    sget-object v0, Lcom/google/glass/build/BuildHelper$Type;->USERDEBUG:Lcom/google/glass/build/BuildHelper$Type;

    invoke-static {}, Lcom/google/glass/build/BuildHelper;->getType()Lcom/google/glass/build/BuildHelper$Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/build/BuildHelper$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static isV15Serial(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 170
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 180
    :cond_0
    :goto_0
    return v0

    .line 174
    :cond_1
    sget-object v2, Lcom/google/glass/build/BuildHelper;->FIRST_LETTER_OF_15_SERIAL_NUM:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 175
    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 176
    const/4 v0, 0x1

    goto :goto_0

    .line 174
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static setTypeForTest(Lcom/google/glass/build/BuildHelper$Type;)V
    .locals 1

    .prologue
    .line 102
    const-string v0, "null type"

    invoke-static {p0, v0}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/build/BuildHelper$Type;

    sput-object v0, Lcom/google/glass/build/BuildHelper;->type:Lcom/google/glass/build/BuildHelper$Type;

    .line 103
    return-void
.end method
