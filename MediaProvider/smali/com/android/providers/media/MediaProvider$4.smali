.class Lcom/android/providers/media/MediaProvider$4;
.super Landroid/os/Handler;
.source "MediaProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/media/MediaProvider;->onCreate()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/media/MediaProvider;


# direct methods
.method constructor <init>(Lcom/android/providers/media/MediaProvider;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 594
    iput-object p1, p0, Lcom/android/providers/media/MediaProvider$4;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 597
    iget v4, p1, Landroid/os/Message;->what:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 598
    iget-object v4, p0, Lcom/android/providers/media/MediaProvider$4;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-static {v4}, Lcom/android/providers/media/MediaProvider;->access$900(Lcom/android/providers/media/MediaProvider;)Ljava/util/PriorityQueue;

    move-result-object v5

    monitor-enter v5

    .line 599
    :try_start_0
    iget-object v6, p0, Lcom/android/providers/media/MediaProvider$4;->this$0:Lcom/android/providers/media/MediaProvider;

    iget-object v4, p0, Lcom/android/providers/media/MediaProvider$4;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-static {v4}, Lcom/android/providers/media/MediaProvider;->access$900(Lcom/android/providers/media/MediaProvider;)Ljava/util/PriorityQueue;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/providers/media/MediaThumbRequest;

    invoke-static {v6, v4}, Lcom/android/providers/media/MediaProvider;->access$1002(Lcom/android/providers/media/MediaProvider;Lcom/android/providers/media/MediaThumbRequest;)Lcom/android/providers/media/MediaThumbRequest;

    .line 600
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 601
    iget-object v4, p0, Lcom/android/providers/media/MediaProvider$4;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-static {v4}, Lcom/android/providers/media/MediaProvider;->access$1000(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v4

    if-nez v4, :cond_1

    .line 602
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$500()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Have message but no request?"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    :cond_0
    :goto_0
    return-void

    .line 600
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 605
    :cond_1
    :try_start_2
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/providers/media/MediaProvider$4;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-static {v4}, Lcom/android/providers/media/MediaProvider;->access$1000(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v4

    iget-object v4, v4, Lcom/android/providers/media/MediaThumbRequest;->mPath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 606
    .local v3, "origFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    .line 607
    iget-object v4, p0, Lcom/android/providers/media/MediaProvider$4;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-static {v4}, Lcom/android/providers/media/MediaProvider;->access$1000(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/providers/media/MediaThumbRequest;->execute()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    .line 632
    :goto_1
    iget-object v4, p0, Lcom/android/providers/media/MediaProvider$4;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-static {v4}, Lcom/android/providers/media/MediaProvider;->access$1000(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v5

    monitor-enter v5

    .line 633
    :try_start_3
    iget-object v4, p0, Lcom/android/providers/media/MediaProvider$4;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-static {v4}, Lcom/android/providers/media/MediaProvider;->access$1000(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v4

    sget-object v6, Lcom/android/providers/media/MediaThumbRequest$State;->DONE:Lcom/android/providers/media/MediaThumbRequest$State;

    iput-object v6, v4, Lcom/android/providers/media/MediaThumbRequest;->mState:Lcom/android/providers/media/MediaThumbRequest$State;

    .line 634
    iget-object v4, p0, Lcom/android/providers/media/MediaProvider$4;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-static {v4}, Lcom/android/providers/media/MediaProvider;->access$1000(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 635
    monitor-exit v5

    goto :goto_0

    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4

    .line 610
    :cond_2
    :try_start_4
    iget-object v4, p0, Lcom/android/providers/media/MediaProvider$4;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-static {v4}, Lcom/android/providers/media/MediaProvider;->access$900(Lcom/android/providers/media/MediaProvider;)Ljava/util/PriorityQueue;

    move-result-object v5

    monitor-enter v5
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    .line 611
    :try_start_5
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$500()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "original file hasn\'t been stored yet: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/providers/media/MediaProvider$4;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-static {v7}, Lcom/android/providers/media/MediaProvider;->access$1000(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v7

    iget-object v7, v7, Lcom/android/providers/media/MediaThumbRequest;->mPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    monitor-exit v5

    goto :goto_1

    :catchall_2
    move-exception v4

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw v4
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 614
    .end local v3    # "origFile":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 615
    .local v2, "ex":Ljava/io/IOException;
    :try_start_7
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$500()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 632
    iget-object v4, p0, Lcom/android/providers/media/MediaProvider$4;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-static {v4}, Lcom/android/providers/media/MediaProvider;->access$1000(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v5

    monitor-enter v5

    .line 633
    :try_start_8
    iget-object v4, p0, Lcom/android/providers/media/MediaProvider$4;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-static {v4}, Lcom/android/providers/media/MediaProvider;->access$1000(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v4

    sget-object v6, Lcom/android/providers/media/MediaThumbRequest$State;->DONE:Lcom/android/providers/media/MediaThumbRequest$State;

    iput-object v6, v4, Lcom/android/providers/media/MediaThumbRequest;->mState:Lcom/android/providers/media/MediaThumbRequest$State;

    .line 634
    iget-object v4, p0, Lcom/android/providers/media/MediaProvider$4;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-static {v4}, Lcom/android/providers/media/MediaProvider;->access$1000(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 635
    monitor-exit v5

    goto/16 :goto_0

    :catchall_3
    move-exception v4

    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v4

    .line 616
    .end local v2    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 619
    .local v2, "ex":Ljava/lang/UnsupportedOperationException;
    :try_start_9
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$500()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 632
    iget-object v4, p0, Lcom/android/providers/media/MediaProvider$4;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-static {v4}, Lcom/android/providers/media/MediaProvider;->access$1000(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v5

    monitor-enter v5

    .line 633
    :try_start_a
    iget-object v4, p0, Lcom/android/providers/media/MediaProvider$4;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-static {v4}, Lcom/android/providers/media/MediaProvider;->access$1000(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v4

    sget-object v6, Lcom/android/providers/media/MediaThumbRequest$State;->DONE:Lcom/android/providers/media/MediaThumbRequest$State;

    iput-object v6, v4, Lcom/android/providers/media/MediaThumbRequest;->mState:Lcom/android/providers/media/MediaThumbRequest$State;

    .line 634
    iget-object v4, p0, Lcom/android/providers/media/MediaProvider$4;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-static {v4}, Lcom/android/providers/media/MediaProvider;->access$1000(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 635
    monitor-exit v5

    goto/16 :goto_0

    :catchall_4
    move-exception v4

    monitor-exit v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    throw v4

    .line 620
    .end local v2    # "ex":Ljava/lang/UnsupportedOperationException;
    :catch_2
    move-exception v1

    .line 630
    .local v1, "err":Ljava/lang/OutOfMemoryError;
    :try_start_b
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$500()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 632
    iget-object v4, p0, Lcom/android/providers/media/MediaProvider$4;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-static {v4}, Lcom/android/providers/media/MediaProvider;->access$1000(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v5

    monitor-enter v5

    .line 633
    :try_start_c
    iget-object v4, p0, Lcom/android/providers/media/MediaProvider$4;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-static {v4}, Lcom/android/providers/media/MediaProvider;->access$1000(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v4

    sget-object v6, Lcom/android/providers/media/MediaThumbRequest$State;->DONE:Lcom/android/providers/media/MediaThumbRequest$State;

    iput-object v6, v4, Lcom/android/providers/media/MediaThumbRequest;->mState:Lcom/android/providers/media/MediaThumbRequest$State;

    .line 634
    iget-object v4, p0, Lcom/android/providers/media/MediaProvider$4;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-static {v4}, Lcom/android/providers/media/MediaProvider;->access$1000(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 635
    monitor-exit v5

    goto/16 :goto_0

    :catchall_5
    move-exception v4

    monitor-exit v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    throw v4

    .line 632
    .end local v1    # "err":Ljava/lang/OutOfMemoryError;
    :catchall_6
    move-exception v4

    iget-object v5, p0, Lcom/android/providers/media/MediaProvider$4;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-static {v5}, Lcom/android/providers/media/MediaProvider;->access$1000(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v5

    monitor-enter v5

    .line 633
    :try_start_d
    iget-object v6, p0, Lcom/android/providers/media/MediaProvider$4;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-static {v6}, Lcom/android/providers/media/MediaProvider;->access$1000(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v6

    sget-object v7, Lcom/android/providers/media/MediaThumbRequest$State;->DONE:Lcom/android/providers/media/MediaThumbRequest$State;

    iput-object v7, v6, Lcom/android/providers/media/MediaThumbRequest;->mState:Lcom/android/providers/media/MediaThumbRequest$State;

    .line 634
    iget-object v6, p0, Lcom/android/providers/media/MediaProvider$4;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-static {v6}, Lcom/android/providers/media/MediaProvider;->access$1000(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 635
    monitor-exit v5
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    throw v4

    :catchall_7
    move-exception v4

    :try_start_e
    monitor-exit v5
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    throw v4

    .line 638
    :cond_3
    iget v4, p1, Landroid/os/Message;->what:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 640
    iget-object v4, p0, Lcom/android/providers/media/MediaProvider$4;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-static {v4}, Lcom/android/providers/media/MediaProvider;->access$1100(Lcom/android/providers/media/MediaProvider;)Ljava/util/Stack;

    move-result-object v5

    monitor-enter v5

    .line 641
    :try_start_f
    iget-object v4, p0, Lcom/android/providers/media/MediaProvider$4;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-static {v4}, Lcom/android/providers/media/MediaProvider;->access$1100(Lcom/android/providers/media/MediaProvider;)Ljava/util/Stack;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/media/MediaProvider$ThumbData;

    .line 642
    .local v0, "d":Lcom/android/providers/media/MediaProvider$ThumbData;
    monitor-exit v5
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    .line 644
    iget-object v4, p0, Lcom/android/providers/media/MediaProvider$4;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-static {v4, v0}, Lcom/android/providers/media/MediaProvider;->access$1200(Lcom/android/providers/media/MediaProvider;Lcom/android/providers/media/MediaProvider$ThumbData;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 645
    iget-object v4, p0, Lcom/android/providers/media/MediaProvider$4;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-static {v4}, Lcom/android/providers/media/MediaProvider;->access$1300(Lcom/android/providers/media/MediaProvider;)Ljava/util/HashSet;

    move-result-object v5

    monitor-enter v5

    .line 646
    :try_start_10
    iget-object v4, p0, Lcom/android/providers/media/MediaProvider$4;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-static {v4}, Lcom/android/providers/media/MediaProvider;->access$1300(Lcom/android/providers/media/MediaProvider;)Ljava/util/HashSet;

    move-result-object v4

    iget-object v6, v0, Lcom/android/providers/media/MediaProvider$ThumbData;->path:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 647
    monitor-exit v5

    goto/16 :goto_0

    :catchall_8
    move-exception v4

    monitor-exit v5
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    throw v4

    .line 642
    .end local v0    # "d":Lcom/android/providers/media/MediaProvider$ThumbData;
    :catchall_9
    move-exception v4

    :try_start_11
    monitor-exit v5
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    throw v4
.end method
