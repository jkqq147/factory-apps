.class final Lcom/google/android/location/os/real/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/google/android/location/os/real/b;


# direct methods
.method constructor <init>(Lcom/google/android/location/os/real/b;I)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/google/android/location/os/real/f;->b:Lcom/google/android/location/os/real/b;

    iput p2, p0, Lcom/google/android/location/os/real/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/google/android/location/os/real/f;->b:Lcom/google/android/location/os/real/b;

    iget-object v0, v0, Lcom/google/android/location/os/real/b;->a:Lcom/google/android/location/collectionlib/ao;

    iget v1, p0, Lcom/google/android/location/os/real/f;->a:I

    invoke-interface {v0, v1}, Lcom/google/android/location/collectionlib/ao;->c_(I)V

    .line 174
    return-void
.end method
