.class Lcom/google/android/search/core/hotword/HotwordRecognitionRunner$1;
.super Ljava/lang/Object;
.source "HotwordRecognitionRunner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/search/core/hotword/HotwordRecognitionRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/search/core/hotword/HotwordRecognitionRunner;


# direct methods
.method constructor <init>(Lcom/google/android/search/core/hotword/HotwordRecognitionRunner;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/google/android/search/core/hotword/HotwordRecognitionRunner$1;->this$0:Lcom/google/android/search/core/hotword/HotwordRecognitionRunner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/search/core/hotword/HotwordRecognitionRunner$1;->this$0:Lcom/google/android/search/core/hotword/HotwordRecognitionRunner;

    invoke-virtual {v0}, Lcom/google/android/search/core/hotword/HotwordRecognitionRunner;->runHotwordLoop()V

    .line 75
    return-void
.end method
