.class public abstract Lcom/google/android/gms/auth/api/v;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/auth/api/u;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.google.android.gms.auth.api.IGoogleAuthService"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/auth/api/v;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 62
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 42
    :sswitch_0
    const-string v0, "com.google.android.gms.auth.api.IGoogleAuthService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v2

    .line 43
    goto :goto_0

    .line 47
    :sswitch_1
    const-string v0, "com.google.android.gms.auth.api.IGoogleAuthService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    if-nez v3, :cond_1

    move-object v0, v1

    .line 51
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 52
    sget-object v1, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->CREATOR:Lcom/google/android/gms/auth/api/i;

    invoke-static {p2}, Lcom/google/android/gms/auth/api/i;->a(Landroid/os/Parcel;)Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;

    move-result-object v1

    .line 57
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/auth/api/v;->a(Lcom/google/android/gms/auth/api/r;Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;)V

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v2

    .line 59
    goto :goto_0

    .line 49
    :cond_1
    const-string v0, "com.google.android.gms.auth.api.IGoogleAuthApiCallbacks"

    invoke-interface {v3, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_2

    instance-of v4, v0, Lcom/google/android/gms/auth/api/r;

    if-eqz v4, :cond_2

    check-cast v0, Lcom/google/android/gms/auth/api/r;

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/google/android/gms/auth/api/t;

    invoke-direct {v0, v3}, Lcom/google/android/gms/auth/api/t;-><init>(Landroid/os/IBinder;)V

    goto :goto_1

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
