.class public final Lcom/google/android/gms/plus/service/v1whitelisted/models/co;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method static a(Lcom/google/android/gms/plus/service/v1whitelisted/models/FavaDiagnosticsEntity;Landroid/os/Parcel;I)V
    .locals 8

    .prologue
    const/16 v7, 0x18

    const/16 v6, 0x14

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 114
    const/16 v0, 0x4f45

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;I)I

    move-result v0

    .line 116
    iget-object v1, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/FavaDiagnosticsEntity;->a:Ljava/util/Set;

    .line 119
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 120
    iget v2, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/FavaDiagnosticsEntity;->b:I

    invoke-static {p1, v3, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->b(Landroid/os/Parcel;II)V

    .line 128
    :cond_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 129
    iget-object v2, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/FavaDiagnosticsEntity;->c:Lcom/google/android/gms/plus/service/v1whitelisted/models/FavaDiagnosticsNamespacedTypeEntity;

    invoke-static {p1, v4, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 137
    :cond_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 138
    iget-object v2, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/FavaDiagnosticsEntity;->d:Lcom/google/android/gms/plus/service/v1whitelisted/models/FavaDiagnosticsNamespacedTypeEntity;

    invoke-static {p1, v5, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 146
    :cond_2
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 147
    iget-object v2, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/FavaDiagnosticsEntity;->e:Lcom/google/android/gms/plus/service/v1whitelisted/models/FavaDiagnosticsNamespacedTypeEntity;

    invoke-static {p1, v6, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 155
    :cond_3
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 156
    iget v1, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/FavaDiagnosticsEntity;->f:I

    invoke-static {p1, v7, v1}, Lcom/google/android/gms/common/internal/safeparcel/c;->b(Landroid/os/Parcel;II)V

    .line 165
    :cond_4
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/c;->b(Landroid/os/Parcel;I)V

    .line 166
    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;)I

    move-result v7

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    move-object v4, v5

    move-object v3, v5

    move v2, v6

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-ge v0, v7, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const v8, 0xffff

    and-int/2addr v8, v0

    sparse-switch v8, :sswitch_data_0

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    goto :goto_0

    :sswitch_0
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->e(Landroid/os/Parcel;I)I

    move-result v2

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :sswitch_1
    sget-object v3, Lcom/google/android/gms/plus/service/v1whitelisted/models/FavaDiagnosticsNamespacedTypeEntity;->CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/cq;

    invoke-static {p1, v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/FavaDiagnosticsNamespacedTypeEntity;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object v3, v0

    goto :goto_0

    :sswitch_2
    sget-object v4, Lcom/google/android/gms/plus/service/v1whitelisted/models/FavaDiagnosticsNamespacedTypeEntity;->CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/cq;

    invoke-static {p1, v0, v4}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/FavaDiagnosticsNamespacedTypeEntity;

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object v4, v0

    goto :goto_0

    :sswitch_3
    sget-object v5, Lcom/google/android/gms/plus/service/v1whitelisted/models/FavaDiagnosticsNamespacedTypeEntity;->CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/cq;

    invoke-static {p1, v0, v5}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/FavaDiagnosticsNamespacedTypeEntity;

    const/16 v5, 0x14

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object v5, v0

    goto :goto_0

    :sswitch_4
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->e(Landroid/os/Parcel;I)I

    move-result v6

    const/16 v0, 0x18

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-eq v0, v7, :cond_1

    new-instance v0, Lcom/google/android/gms/common/internal/safeparcel/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Overread allowed size end="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/internal/safeparcel/b;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/FavaDiagnosticsEntity;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/plus/service/v1whitelisted/models/FavaDiagnosticsEntity;-><init>(Ljava/util/Set;ILcom/google/android/gms/plus/service/v1whitelisted/models/FavaDiagnosticsNamespacedTypeEntity;Lcom/google/android/gms/plus/service/v1whitelisted/models/FavaDiagnosticsNamespacedTypeEntity;Lcom/google/android/gms/plus/service/v1whitelisted/models/FavaDiagnosticsNamespacedTypeEntity;I)V

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x14 -> :sswitch_3
        0x18 -> :sswitch_4
    .end sparse-switch
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    new-array v0, p1, [Lcom/google/android/gms/plus/service/v1whitelisted/models/FavaDiagnosticsEntity;

    return-object v0
.end method
