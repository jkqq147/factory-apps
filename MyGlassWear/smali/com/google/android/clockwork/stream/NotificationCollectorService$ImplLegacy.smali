.class Lcom/google/android/clockwork/stream/NotificationCollectorService$ImplLegacy;
.super Ljava/lang/Object;
.source "NotificationCollectorService.java"

# interfaces
.implements Lcom/google/android/clockwork/stream/NotificationCollectorService$Impl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/clockwork/stream/NotificationCollectorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImplLegacy"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/clockwork/stream/NotificationCollectorService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/clockwork/stream/NotificationCollectorService$1;

    .prologue
    .line 296
    invoke-direct {p0}, Lcom/google/android/clockwork/stream/NotificationCollectorService$ImplLegacy;-><init>()V

    return-void
.end method


# virtual methods
.method public getActiveNotifications(Landroid/service/notification/NotificationListenerService;[Ljava/lang/String;)[Landroid/service/notification/StatusBarNotification;
    .locals 1
    .param p1, "service"    # Landroid/service/notification/NotificationListenerService;
    .param p2, "keys"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 305
    invoke-virtual {p1}, Landroid/service/notification/NotificationListenerService;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    return-object v0
.end method

.method public getSupportsListenerConnectedApi()Z
    .locals 1

    .prologue
    .line 299
    const/4 v0, 0x0

    return v0
.end method
