.class public final Lcom/google/android/gms/common/internal/ClientSettings$ParcelableClientSettings;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final a:Lcom/google/android/gms/common/internal/a;


# instance fields
.field private final b:I

.field private final c:Ljava/lang/String;

.field private final d:Ljava/util/List;

.field private final e:I

.field private final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/internal/a;

    invoke-direct {v0}, Lcom/google/android/gms/common/internal/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/ClientSettings$ParcelableClientSettings;->a:Lcom/google/android/gms/common/internal/a;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/util/List;ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/ClientSettings$ParcelableClientSettings;->d:Ljava/util/List;

    iput p1, p0, Lcom/google/android/gms/common/internal/ClientSettings$ParcelableClientSettings;->b:I

    iput-object p2, p0, Lcom/google/android/gms/common/internal/ClientSettings$ParcelableClientSettings;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/ClientSettings$ParcelableClientSettings;->d:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput p4, p0, Lcom/google/android/gms/common/internal/ClientSettings$ParcelableClientSettings;->e:I

    iput-object p5, p0, Lcom/google/android/gms/common/internal/ClientSettings$ParcelableClientSettings;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/ClientSettings$ParcelableClientSettings;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/internal/ClientSettings$ParcelableClientSettings;->e:I

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/ClientSettings$ParcelableClientSettings;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/ClientSettings$ParcelableClientSettings;->d:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/internal/ClientSettings$ParcelableClientSettings;->b:I

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/internal/a;->a(Lcom/google/android/gms/common/internal/ClientSettings$ParcelableClientSettings;Landroid/os/Parcel;I)V

    return-void
.end method
