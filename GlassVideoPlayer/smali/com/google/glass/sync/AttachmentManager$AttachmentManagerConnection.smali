.class Lcom/google/glass/sync/AttachmentManager$AttachmentManagerConnection;
.super Lcom/google/glass/util/SafeServiceConnection;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/sync/AttachmentManager;


# direct methods
.method public constructor <init>(Lcom/google/glass/sync/AttachmentManager;Landroid/content/ComponentName;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/google/glass/sync/AttachmentManager$AttachmentManagerConnection;->this$0:Lcom/google/glass/sync/AttachmentManager;

    .line 78
    invoke-direct {p0, p2}, Lcom/google/glass/util/SafeServiceConnection;-><init>(Landroid/content/ComponentName;)V

    .line 79
    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 98
    invoke-static {}, Lcom/google/glass/sync/AttachmentManager;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public onServiceConnectedInternal(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .prologue
    .line 83
    invoke-static {}, Lcom/google/glass/sync/AttachmentManager;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Connected to AttachmentManager."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    iget-object v0, p0, Lcom/google/glass/sync/AttachmentManager$AttachmentManagerConnection;->this$0:Lcom/google/glass/sync/AttachmentManager;

    invoke-static {p2}, Lcom/google/glass/sync/IAttachmentService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/glass/sync/IAttachmentService;

    move-result-object v1

    iput-object v1, v0, Lcom/google/glass/sync/AttachmentManager;->service:Lcom/google/glass/sync/IAttachmentService;

    .line 86
    iget-object v0, p0, Lcom/google/glass/sync/AttachmentManager$AttachmentManagerConnection;->this$0:Lcom/google/glass/sync/AttachmentManager;

    invoke-static {v0}, Lcom/google/glass/sync/AttachmentManager;->access$100(Lcom/google/glass/sync/AttachmentManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/sync/AttachmentManager$AttachmentManagerConnection;->this$0:Lcom/google/glass/sync/AttachmentManager;

    invoke-static {v0}, Lcom/google/glass/sync/AttachmentManager;->access$100(Lcom/google/glass/sync/AttachmentManager;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 88
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    return-void

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onServiceDisconnectedInternal(Landroid/content/ComponentName;Z)V
    .locals 3

    .prologue
    .line 93
    invoke-static {}, Lcom/google/glass/sync/AttachmentManager;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Disconnected from AttachmentManager."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    return-void
.end method
