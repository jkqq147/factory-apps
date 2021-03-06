.class Lcom/google/glass/camera/CameraClient$4;
.super Ljava/lang/Object;
.source "CameraClient.java"

# interfaces
.implements Lcom/google/android/glass/media/CameraManager$OpenCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/camera/CameraClient;->takePictureInternal(JIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/camera/CameraClient;

.field final synthetic val$requestTime:J

.field final synthetic val$retryCount:I

.field final synthetic val$useGcam:Z


# direct methods
.method constructor <init>(Lcom/google/glass/camera/CameraClient;ZIJ)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/camera/CameraClient;

    .prologue
    .line 478
    iput-object p1, p0, Lcom/google/glass/camera/CameraClient$4;->this$0:Lcom/google/glass/camera/CameraClient;

    iput-boolean p2, p0, Lcom/google/glass/camera/CameraClient$4;->val$useGcam:Z

    iput p3, p0, Lcom/google/glass/camera/CameraClient$4;->val$retryCount:I

    iput-wide p4, p0, Lcom/google/glass/camera/CameraClient$4;->val$requestTime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraOpenFailed()V
    .locals 3

    .prologue
    .line 502
    iget v0, p0, Lcom/google/glass/camera/CameraClient$4;->val$retryCount:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 503
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient$4;->this$0:Lcom/google/glass/camera/CameraClient;

    const-string v1, "Failed to open camera."

    invoke-virtual {v0, v1}, Lcom/google/glass/camera/CameraClient;->dispatchError(Ljava/lang/String;)V

    .line 519
    :goto_0
    return-void

    .line 507
    :cond_0
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient$4;->this$0:Lcom/google/glass/camera/CameraClient;

    iget-object v0, v0, Lcom/google/glass/camera/CameraClient;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Camera open failed, retrying..."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 508
    sget-object v0, Lcom/google/glass/camera/CameraClient;->backgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/glass/camera/CameraClient$4$1;

    invoke-direct {v1, p0}, Lcom/google/glass/camera/CameraClient$4$1;-><init>(Lcom/google/glass/camera/CameraClient$4;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onCameraOpened(Landroid/hardware/Camera;)V
    .locals 6
    .param p1, "androidCamera"    # Landroid/hardware/Camera;

    .prologue
    .line 481
    invoke-static {}, Lcom/google/glass/android/hardware/CameraProvider;->getInstance()Lcom/google/glass/android/hardware/CameraProvider;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/glass/android/hardware/CameraProvider;->wrap(Landroid/hardware/Camera;)Lcom/google/glass/android/hardware/Camera;

    move-result-object v0

    .line 482
    .local v0, "camera":Lcom/google/glass/android/hardware/Camera;
    iget-object v2, p0, Lcom/google/glass/camera/CameraClient$4;->this$0:Lcom/google/glass/camera/CameraClient;

    iget-object v2, v2, Lcom/google/glass/camera/CameraClient;->errorCallback:Landroid/hardware/Camera$ErrorCallback;

    invoke-interface {v0, v2}, Lcom/google/glass/android/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 484
    iget-object v2, p0, Lcom/google/glass/camera/CameraClient$4;->this$0:Lcom/google/glass/camera/CameraClient;

    iget-object v2, v2, Lcom/google/glass/camera/CameraClient;->cameraManager:Lcom/google/android/glass/media/CameraManager;

    .line 485
    invoke-interface {v0}, Lcom/google/glass/android/hardware/Camera;->getAndroidCamera()Landroid/hardware/Camera;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/camera/CameraClient$4;->this$0:Lcom/google/glass/camera/CameraClient;

    iget-boolean v5, p0, Lcom/google/glass/camera/CameraClient$4;->val$useGcam:Z

    invoke-virtual {v4, v5}, Lcom/google/glass/camera/CameraClient;->getPostviewBuffer(Z)[B

    move-result-object v4

    .line 484
    invoke-virtual {v2, v3, v4}, Lcom/google/android/glass/media/CameraManager;->addPostviewCallbackBuffer(Landroid/hardware/Camera;[B)V

    .line 487
    iget-object v2, p0, Lcom/google/glass/camera/CameraClient$4;->this$0:Lcom/google/glass/camera/CameraClient;

    iget-object v2, v2, Lcom/google/glass/camera/CameraClient;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Requesting to take picture."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 489
    :try_start_0
    iget-boolean v2, p0, Lcom/google/glass/camera/CameraClient$4;->val$useGcam:Z

    if-eqz v2, :cond_0

    .line 490
    iget-object v2, p0, Lcom/google/glass/camera/CameraClient$4;->this$0:Lcom/google/glass/camera/CameraClient;

    iget-object v2, v2, Lcom/google/glass/camera/CameraClient;->cameraManager:Lcom/google/android/glass/media/CameraManager;

    invoke-virtual {v2}, Lcom/google/android/glass/media/CameraManager;->takeEnhancedPicture()V

    .line 498
    :goto_0
    return-void

    .line 492
    :cond_0
    iget-object v2, p0, Lcom/google/glass/camera/CameraClient$4;->this$0:Lcom/google/glass/camera/CameraClient;

    iget-object v2, v2, Lcom/google/glass/camera/CameraClient;->cameraManager:Lcom/google/android/glass/media/CameraManager;

    invoke-virtual {v2}, Lcom/google/android/glass/media/CameraManager;->takePicture()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 494
    :catch_0
    move-exception v1

    .line 495
    .local v1, "e":Ljava/lang/RuntimeException;
    iget-object v2, p0, Lcom/google/glass/camera/CameraClient$4;->this$0:Lcom/google/glass/camera/CameraClient;

    iget-object v2, v2, Lcom/google/glass/camera/CameraClient;->cameraManager:Lcom/google/android/glass/media/CameraManager;

    invoke-virtual {v2}, Lcom/google/android/glass/media/CameraManager;->release()V

    .line 496
    iget-object v2, p0, Lcom/google/glass/camera/CameraClient$4;->this$0:Lcom/google/glass/camera/CameraClient;

    const-string v3, "Failed to take picture!"

    invoke-virtual {v2, v3}, Lcom/google/glass/camera/CameraClient;->dispatchError(Ljava/lang/String;)V

    goto :goto_0
.end method
