.class Lcom/google/glass/timeline/TimelineMenuSelectionHandler$10;
.super Ljava/lang/Object;
.source "TimelineMenuSelectionHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->onReadAloud(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/timeline/TimelineMenuSelectionHandler;

.field final synthetic val$speakExtraContext:Z

.field final synthetic val$timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/TimelineMenuSelectionHandler;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/timeline/TimelineMenuSelectionHandler;

    .prologue
    .line 958
    iput-object p1, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$10;->this$0:Lcom/google/glass/timeline/TimelineMenuSelectionHandler;

    iput-object p2, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$10;->val$timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iput-boolean p3, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$10;->val$speakExtraContext:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 963
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$10;->this$0:Lcom/google/glass/timeline/TimelineMenuSelectionHandler;

    .line 964
    invoke-static {v1}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->access$000(Lcom/google/glass/timeline/TimelineMenuSelectionHandler;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$10;->val$timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iget-boolean v3, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$10;->val$speakExtraContext:Z

    invoke-static {v1, v2, v3}, Lcom/google/glass/timeline/TimelineHelper;->formatSpeakableText(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Z)Ljava/lang/String;

    move-result-object v0

    .line 965
    .local v0, "textToSynthesize":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 966
    invoke-static {}, Lcom/google/glass/util/TtsHelperLazySingletonProvider;->getInstance()Lcom/google/glass/util/TtsHelperLazySingletonProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/util/TtsHelperLazySingletonProvider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/util/TtsHelper;

    new-instance v2, Lcom/google/glass/timeline/NetworkErrorUtteranceProgressListener;

    iget-object v3, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$10;->this$0:Lcom/google/glass/timeline/TimelineMenuSelectionHandler;

    .line 967
    invoke-static {v3}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->access$000(Lcom/google/glass/timeline/TimelineMenuSelectionHandler;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/google/glass/timeline/NetworkErrorUtteranceProgressListener;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 966
    invoke-virtual {v1, v0, v2}, Lcom/google/glass/util/TtsHelper;->speakText(Ljava/lang/String;Landroid/speech/tts/UtteranceProgressListener;)V

    .line 969
    :cond_0
    return-void
.end method
