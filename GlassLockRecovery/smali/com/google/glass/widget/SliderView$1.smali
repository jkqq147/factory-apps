.class Lcom/google/glass/widget/SliderView$1;
.super Ljava/lang/Object;
.source "SliderView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/widget/SliderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/widget/SliderView;


# direct methods
.method constructor <init>(Lcom/google/glass/widget/SliderView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/widget/SliderView;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/google/glass/widget/SliderView$1;->this$0:Lcom/google/glass/widget/SliderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/glass/widget/SliderView$1;->this$0:Lcom/google/glass/widget/SliderView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/glass/widget/SliderView;->access$000(Lcom/google/glass/widget/SliderView;Z)V

    .line 61
    return-void
.end method
