.class abstract Lcom/google/android/gms/internal/jj$a;
.super Lcom/google/android/gms/common/api/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/jj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/common/api/Result;",
        ">",
        "Lcom/google/android/gms/common/api/a$a",
        "<TR;",
        "Lcom/google/android/gms/internal/jk;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/clearcut/ClearcutLogger;->CLIENT_KEY:Lcom/google/android/gms/common/api/Api$c;

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/common/api/a$a;-><init>(Lcom/google/android/gms/common/api/Api$c;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method
