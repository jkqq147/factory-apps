.class public Lcom/google/glass/util/ScreenshotUtil;
.super Ljava/lang/Object;
.source "ScreenshotUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;

.field private static final saveExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 25
    const-class v0, Lcom/google/glass/util/ScreenshotUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/ScreenshotUtil;->TAG:Ljava/lang/String;

    .line 26
    sget-object v0, Lcom/google/glass/util/ScreenshotUtil;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/ScreenshotUtil;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 29
    new-instance v0, Lcom/google/glass/async/PriorityThreadFactory;

    const/16 v1, 0x13

    sget-object v2, Lcom/google/glass/util/ScreenshotUtil;->TAG:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "/saveExecutor"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/glass/async/PriorityThreadFactory;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/ScreenshotUtil;->saveExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/google/glass/util/ScreenshotUtil;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method public static captureAndSaveScreenshot(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/glass/util/ScreenshotUtil;->captureAndSaveScreenshot(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static captureAndSaveScreenshot(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-static {p0}, Lcom/google/glass/util/ScreenshotUtil;->captureScreenshot(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 62
    .local v2, "screenshot":Landroid/graphics/Bitmap;
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, "realFileName":Ljava/lang/String;
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v0

    .line 67
    .local v0, "cachedFilesManager":Lcom/google/glass/util/CachedFilesManager;
    sget-object v3, Lcom/google/glass/util/ScreenshotUtil;->saveExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lcom/google/glass/util/ScreenshotUtil$1;

    invoke-direct {v4, v0, v1, v2}, Lcom/google/glass/util/ScreenshotUtil$1;-><init>(Lcom/google/glass/util/CachedFilesManager;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 88
    sget-object v3, Lcom/google/glass/util/FileType;->SCREENSHOT:Lcom/google/glass/util/FileType;

    invoke-virtual {v0, v3, v1}, Lcom/google/glass/util/CachedFilesManager;->getPath(Lcom/google/glass/util/FileType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static captureScreenshot(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 40
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v2}, Lcom/google/android/glass/hidden/HiddenSurface;->screenshot(II)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static getSaveExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/google/glass/util/ScreenshotUtil;->saveExecutor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method
