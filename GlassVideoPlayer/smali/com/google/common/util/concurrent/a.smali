.class public abstract Lcom/google/common/util/concurrent/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/util/concurrent/o;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/m;
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/common/util/concurrent/n;->a(Ljava/lang/Runnable;Ljava/lang/Object;)Lcom/google/common/util/concurrent/n;

    move-result-object v0

    .line 50
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/a;->execute(Ljava/lang/Runnable;)V

    .line 51
    return-object v0
.end method

.method private a(Ljava/lang/Runnable;Ljava/lang/Object;)Lcom/google/common/util/concurrent/m;
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 56
    invoke-static {p1, p2}, Lcom/google/common/util/concurrent/n;->a(Ljava/lang/Runnable;Ljava/lang/Object;)Lcom/google/common/util/concurrent/n;

    move-result-object v0

    .line 57
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/a;->execute(Ljava/lang/Runnable;)V

    .line 58
    return-object v0
.end method


# virtual methods
.method public final a(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/m;
    .locals 1

    .prologue
    .line 63
    invoke-static {p1}, Lcom/google/common/util/concurrent/n;->a(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/n;

    move-result-object v0

    .line 64
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/a;->execute(Ljava/lang/Runnable;)V

    .line 65
    return-object v0
.end method

.method public invokeAll(Ljava/util/Collection;)Ljava/util/List;
    .locals 4

    .prologue
    .line 87
    if-nez p1, :cond_0

    .line 88
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 90
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 93
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Callable;

    .line 94
    invoke-static {v0}, Lcom/google/common/util/concurrent/n;->a(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/n;

    move-result-object v0

    .line 95
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/a;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 108
    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 109
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 110
    const/4 v3, 0x1

    invoke-interface {v0, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_1

    .line 98
    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 99
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-nez v3, :cond_2

    .line 101
    :try_start_2
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 102
    :catch_0
    move-exception v0

    goto :goto_2

    .line 111
    :cond_3
    throw v1

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_4
    return-object v2
.end method

.method public invokeAll(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/util/List;
    .locals 11

    .prologue
    const-wide/16 v9, 0x0

    const/4 v8, 0x1

    .line 119
    if-eqz p1, :cond_0

    if-nez p4, :cond_1

    .line 120
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 122
    :cond_1
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    .line 123
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 126
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Callable;

    .line 127
    invoke-static {v0}, Lcom/google/common/util/concurrent/n;->a(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/n;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 163
    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 164
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 165
    invoke-interface {v0, v8}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_1

    .line 130
    :cond_2
    :try_start_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 134
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 135
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 136
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/a;->execute(Ljava/lang/Runnable;)V

    .line 137
    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    .line 138
    sub-long v2, v0, v2

    sub-long/2addr v4, v2

    .line 140
    cmp-long v2, v4, v9

    if-gtz v2, :cond_4

    .line 164
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 165
    invoke-interface {v0, v8}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_3

    :cond_3
    move-object v0, v6

    .line 166
    :goto_4
    return-object v0

    :cond_4
    move-wide v2, v0

    .line 143
    goto :goto_2

    .line 145
    :cond_5
    :try_start_2
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 146
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    if-nez v1, :cond_b

    .line 147
    cmp-long v1, v4, v9

    if-gtz v1, :cond_7

    .line 164
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 165
    invoke-interface {v0, v8}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_6

    :cond_6
    move-object v0, v6

    .line 166
    goto :goto_4

    .line 151
    :cond_7
    :try_start_3
    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v4, v5, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 155
    :goto_7
    :try_start_4
    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-wide v0

    .line 156
    sub-long v2, v0, v2

    sub-long v2, v4, v2

    :goto_8
    move-wide v4, v2

    move-wide v2, v0

    .line 159
    goto :goto_5

    .line 153
    :catch_0
    move-exception v0

    .line 164
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 165
    invoke-interface {v0, v8}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_9

    :cond_8
    move-object v0, v6

    .line 166
    goto :goto_4

    :cond_9
    move-object v0, v6

    goto :goto_4

    :cond_a
    throw v1

    .line 154
    :catch_1
    move-exception v0

    goto :goto_7

    :catch_2
    move-exception v0

    goto :goto_7

    :cond_b
    move-wide v0, v2

    move-wide v2, v4

    goto :goto_8
.end method

.method public invokeAny(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 72
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    :try_start_0
    invoke-static {p0, p1, v0, v1, v2}, Lcom/google/common/util/concurrent/p;->a(Lcom/google/common/util/concurrent/o;Ljava/util/Collection;ZJ)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 74
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public invokeAny(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 81
    const/4 v0, 0x1

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v1

    invoke-static {p0, p1, v0, v1, v2}, Lcom/google/common/util/concurrent/p;->a(Lcom/google/common/util/concurrent/o;Ljava/util/Collection;ZJ)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/a;->a(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/m;

    move-result-object v0

    return-object v0
.end method

.method public synthetic submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/google/common/util/concurrent/a;->a(Ljava/lang/Runnable;Ljava/lang/Object;)Lcom/google/common/util/concurrent/m;

    move-result-object v0

    return-object v0
.end method

.method public synthetic submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/a;->a(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/m;

    move-result-object v0

    return-object v0
.end method
