.class final Lcom/google/android/gms/internal/rb$ae;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/people/Graph$LoadPeopleResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/rb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ae"
.end annotation


# instance fields
.field private final FJ:Lcom/google/android/gms/common/api/Status;

.field private final aDS:Lcom/google/android/gms/people/model/PersonBuffer;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/people/model/PersonBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/rb$ae;->FJ:Lcom/google/android/gms/common/api/Status;

    iput-object p2, p0, Lcom/google/android/gms/internal/rb$ae;->aDS:Lcom/google/android/gms/people/model/PersonBuffer;

    return-void
.end method


# virtual methods
.method public getPeople()Lcom/google/android/gms/people/model/PersonBuffer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/rb$ae;->aDS:Lcom/google/android/gms/people/model/PersonBuffer;

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/rb$ae;->FJ:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/rb$ae;->aDS:Lcom/google/android/gms/people/model/PersonBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/rb$ae;->aDS:Lcom/google/android/gms/people/model/PersonBuffer;

    invoke-virtual {v0}, Lcom/google/android/gms/people/model/PersonBuffer;->close()V

    :cond_0
    return-void
.end method
