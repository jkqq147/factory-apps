.class public abstract Lcom/google/glass/async/SerialAsyncTask;
.super Landroid/os/AsyncTask;
.source "SerialAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask",
        "<TParams;TProgress;TResult;>;"
    }
.end annotation


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/async/SerialAsyncTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    .local p0, "this":Lcom/google/glass/async/SerialAsyncTask;, "Lcom/google/glass/async/SerialAsyncTask<TParams;TProgress;TResult;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/glass/async/SerialAsyncTask;, "Lcom/google/glass/async/SerialAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "params":[Ljava/lang/Object;, "[TParams;"
    const/4 v4, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 39
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v8}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 40
    .local v2, "preLatch":Ljava/util/concurrent/CountDownLatch;
    invoke-static {}, Lcom/google/glass/async/MainThreadExecutorManager;->getMainThreadExecutor()Lcom/google/glass/async/MainThreadExecutorManager$InlineMainThreadExecutor;

    move-result-object v5

    new-instance v6, Lcom/google/glass/async/SerialAsyncTask$1;

    invoke-direct {v6, p0, v2}, Lcom/google/glass/async/SerialAsyncTask$1;-><init>(Lcom/google/glass/async/SerialAsyncTask;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v5, v6}, Lcom/google/glass/async/MainThreadExecutorManager$InlineMainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    .line 50
    :try_start_0
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    invoke-virtual {p0, p1}, Lcom/google/glass/async/SerialAsyncTask;->serialDoInBackground([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 60
    .local v3, "result":Ljava/lang/Object;, "TResult;"
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v8}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 61
    .local v1, "postLatch":Ljava/util/concurrent/CountDownLatch;
    invoke-static {}, Lcom/google/glass/async/MainThreadExecutorManager;->getMainThreadExecutor()Lcom/google/glass/async/MainThreadExecutorManager$InlineMainThreadExecutor;

    move-result-object v5

    new-instance v6, Lcom/google/glass/async/SerialAsyncTask$2;

    invoke-direct {v6, p0, v3, v1}, Lcom/google/glass/async/SerialAsyncTask$2;-><init>(Lcom/google/glass/async/SerialAsyncTask;Ljava/lang/Object;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v5, v6}, Lcom/google/glass/async/MainThreadExecutorManager$InlineMainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    .line 71
    :try_start_1
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 77
    .end local v1    # "postLatch":Ljava/util/concurrent/CountDownLatch;
    .end local v3    # "result":Ljava/lang/Object;, "TResult;"
    :goto_0
    return-object v3

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Ljava/lang/InterruptedException;
    sget-object v5, Lcom/google/glass/async/SerialAsyncTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Interrupted during serialOnPreExecute()."

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v5, v0, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v3, v4

    .line 53
    goto :goto_0

    .line 72
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local v1    # "postLatch":Ljava/util/concurrent/CountDownLatch;
    .restart local v3    # "result":Ljava/lang/Object;, "TResult;"
    :catch_1
    move-exception v0

    .line 73
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    sget-object v5, Lcom/google/glass/async/SerialAsyncTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Interrupted during serialOnPostExecute()."

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v5, v0, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v3, v4

    .line 74
    goto :goto_0
.end method

.method protected final onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 89
    .local p0, "this":Lcom/google/glass/async/SerialAsyncTask;, "Lcom/google/glass/async/SerialAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 90
    return-void
.end method

.method protected final onPreExecute()V
    .locals 0

    .prologue
    .line 83
    .local p0, "this":Lcom/google/glass/async/SerialAsyncTask;, "Lcom/google/glass/async/SerialAsyncTask<TParams;TProgress;TResult;>;"
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 84
    return-void
.end method

.method protected varargs abstract serialDoInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation
.end method

.method protected serialOnPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "this":Lcom/google/glass/async/SerialAsyncTask;, "Lcom/google/glass/async/SerialAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    return-void
.end method

.method protected serialOnPreExecute()V
    .locals 0

    .prologue
    .line 25
    .local p0, "this":Lcom/google/glass/async/SerialAsyncTask;, "Lcom/google/glass/async/SerialAsyncTask<TParams;TProgress;TResult;>;"
    return-void
.end method
