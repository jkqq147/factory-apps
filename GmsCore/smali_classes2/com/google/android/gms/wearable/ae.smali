.class final Lcom/google/android/gms/wearable/ae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/data/DataHolder;

.field final synthetic b:Lcom/google/android/gms/wearable/ad;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/ad;Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/google/android/gms/wearable/ae;->b:Lcom/google/android/gms/wearable/ad;

    iput-object p2, p0, Lcom/google/android/gms/wearable/ae;->a:Lcom/google/android/gms/common/data/DataHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 156
    new-instance v1, Lcom/google/android/gms/wearable/i;

    iget-object v0, p0, Lcom/google/android/gms/wearable/ae;->a:Lcom/google/android/gms/common/data/DataHolder;

    invoke-direct {v1, v0}, Lcom/google/android/gms/wearable/i;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/ae;->b:Lcom/google/android/gms/wearable/ad;

    iget-object v0, v0, Lcom/google/android/gms/wearable/ad;->a:Lcom/google/android/gms/wearable/ac;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/wearable/ac;->a(Lcom/google/android/gms/wearable/i;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    invoke-virtual {v1}, Lcom/google/android/gms/wearable/i;->a()V

    .line 161
    return-void

    .line 160
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/google/android/gms/wearable/i;->a()V

    throw v0
.end method
