.class final Lcom/google/android/gms/common/a/e;
.super Lcom/google/android/gms/common/a/b;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 175
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/a/b;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected final synthetic b()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 175
    sget-object v1, Lcom/google/android/gms/common/a/b;->a:Lcom/google/android/gms/common/a/i;

    iget-object v2, p0, Lcom/google/android/gms/common/a/e;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/common/a/e;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/common/a/i;->a(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
