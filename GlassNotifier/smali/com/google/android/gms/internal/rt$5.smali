.class Lcom/google/android/gms/internal/rt$5;
.super Lcom/google/android/gms/people/People$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/rt;->loadAggregatedPeople(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/people/People$a",
        "<",
        "Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic aFE:Ljava/lang/String;

.field final synthetic aFI:Lcom/google/android/gms/internal/rt;

.field final synthetic aFK:Ljava/lang/String;

.field final synthetic aFQ:Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/rt;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/rt$5;->aFI:Lcom/google/android/gms/internal/rt;

    iput-object p3, p0, Lcom/google/android/gms/internal/rt$5;->aFE:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/rt$5;->aFK:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/rt$5;->aFQ:Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;

    invoke-direct {p0, p2}, Lcom/google/android/gms/people/People$a;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/rb;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/rt$5;->a(Lcom/google/android/gms/internal/rb;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/rb;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v2, p0, Lcom/google/android/gms/internal/rt$5;->aFE:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/rt$5;->aFK:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/rt$5;->aFQ:Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;->isIncludeInvisible()Z

    move-result v4

    iget-object v0, p0, Lcom/google/android/gms/internal/rt$5;->aFQ:Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;->getQuery()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/google/android/gms/internal/rt$5;->aFQ:Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;->isPeopleOnly()Z

    move-result v6

    iget-object v0, p0, Lcom/google/android/gms/internal/rt$5;->aFQ:Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;->getProjection()I

    move-result v7

    iget-object v0, p0, Lcom/google/android/gms/internal/rt$5;->aFQ:Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;->getExtraColumns()I

    move-result v8

    iget-object v0, p0, Lcom/google/android/gms/internal/rt$5;->aFQ:Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;->getFilterGaiaId()Ljava/lang/String;

    move-result-object v9

    iget-object v0, p0, Lcom/google/android/gms/internal/rt$5;->aFQ:Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;->isIncludeEvergreenPeople()Z

    move-result v10

    iget-object v0, p0, Lcom/google/android/gms/internal/rt$5;->aFQ:Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;->getSortOrder()I

    move-result v11

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v11}, Lcom/google/android/gms/internal/rb;->a(Lcom/google/android/gms/common/api/a$b;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIILjava/lang/String;ZI)V

    return-void
.end method

.method protected bf(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleResult;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/rt$5$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/rt$5$1;-><init>(Lcom/google/android/gms/internal/rt$5;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method

.method protected synthetic createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1
    .param p1, "x0"    # Lcom/google/android/gms/common/api/Status;

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/rt$5;->bf(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleResult;

    move-result-object v0

    return-object v0
.end method