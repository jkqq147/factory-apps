.class public final Lcom/google/glass/notifier/TimelineNotificationProducer$Provider;
.super Lcom/google/glass/inject/LazySingletonProvider;
.source "TimelineNotificationProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/notifier/TimelineNotificationProducer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Provider"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/inject/LazySingletonProvider",
        "<",
        "Lcom/google/glass/notifier/TimelineNotificationProducer;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/google/glass/notifier/TimelineNotificationProducer$Provider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 154
    new-instance v0, Lcom/google/glass/notifier/TimelineNotificationProducer$Provider;

    invoke-direct {v0}, Lcom/google/glass/notifier/TimelineNotificationProducer$Provider;-><init>()V

    sput-object v0, Lcom/google/glass/notifier/TimelineNotificationProducer$Provider;->INSTANCE:Lcom/google/glass/notifier/TimelineNotificationProducer$Provider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 156
    invoke-direct {p0}, Lcom/google/glass/inject/LazySingletonProvider;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/glass/notifier/TimelineNotificationProducer$Provider;
    .locals 1

    .prologue
    .line 159
    sget-object v0, Lcom/google/glass/notifier/TimelineNotificationProducer$Provider;->INSTANCE:Lcom/google/glass/notifier/TimelineNotificationProducer$Provider;

    return-object v0
.end method
