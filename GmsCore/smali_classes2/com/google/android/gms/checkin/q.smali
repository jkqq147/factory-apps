.class final Lcom/google/android/gms/checkin/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/checkin/y;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/google/android/gms/checkin/p;

.field private c:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/checkin/p;I)V
    .locals 2

    .prologue
    .line 476
    iput-object p1, p0, Lcom/google/android/gms/checkin/q;->b:Lcom/google/android/gms/checkin/p;

    iput p2, p0, Lcom/google/android/gms/checkin/q;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 477
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/android/gms/checkin/q;->c:J

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 480
    iget-wide v0, p0, Lcom/google/android/gms/checkin/q;->c:J

    iget v2, p0, Lcom/google/android/gms/checkin/q;->a:I

    invoke-static {p1, v2}, Lcom/google/android/gms/checkin/i;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/checkin/i;->a(Ljava/lang/Object;)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/checkin/q;->c:J

    .line 481
    return-void
.end method

.method public final a(Ljava/lang/StringBuilder;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 478
    iget-wide v0, p0, Lcom/google/android/gms/checkin/q;->c:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    return-void
.end method
