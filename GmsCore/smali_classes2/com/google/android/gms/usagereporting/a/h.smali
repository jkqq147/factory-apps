.class public abstract Lcom/google/android/gms/usagereporting/a/h;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/usagereporting/a/g;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "com.google.android.gms.usagereporting.internal.IUsageReportingService"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/usagereporting/a/h;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lcom/google/android/gms/usagereporting/a/g;
    .locals 2

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    .line 31
    :cond_0
    const-string v0, "com.google.android.gms.usagereporting.internal.IUsageReportingService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/google/android/gms/usagereporting/a/g;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Lcom/google/android/gms/usagereporting/a/g;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Lcom/google/android/gms/usagereporting/a/i;

    invoke-direct {v0, p0}, Lcom/google/android/gms/usagereporting/a/i;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 98
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 47
    :sswitch_0
    const-string v0, "com.google.android.gms.usagereporting.internal.IUsageReportingService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v1

    .line 48
    goto :goto_0

    .line 52
    :sswitch_1
    const-string v0, "com.google.android.gms.usagereporting.internal.IUsageReportingService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/usagereporting/a/b;->a(Landroid/os/IBinder;)Lcom/google/android/gms/usagereporting/a/a;

    move-result-object v0

    .line 55
    invoke-virtual {p0, v0}, Lcom/google/android/gms/usagereporting/a/h;->a(Lcom/google/android/gms/usagereporting/a/a;)V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 57
    goto :goto_0

    .line 61
    :sswitch_2
    const-string v0, "com.google.android.gms.usagereporting.internal.IUsageReportingService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    sget-object v0, Lcom/google/android/gms/usagereporting/UsageReportingOptInOptions;->CREATOR:Lcom/google/android/gms/usagereporting/h;

    invoke-static {p2}, Lcom/google/android/gms/usagereporting/h;->a(Landroid/os/Parcel;)Lcom/google/android/gms/usagereporting/UsageReportingOptInOptions;

    move-result-object v0

    .line 70
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/usagereporting/a/b;->a(Landroid/os/IBinder;)Lcom/google/android/gms/usagereporting/a/a;

    move-result-object v2

    .line 71
    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/usagereporting/a/h;->a(Lcom/google/android/gms/usagereporting/UsageReportingOptInOptions;Lcom/google/android/gms/usagereporting/a/a;)V

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 73
    goto :goto_0

    .line 67
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 77
    :sswitch_3
    const-string v0, "com.google.android.gms.usagereporting.internal.IUsageReportingService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/usagereporting/a/e;->a(Landroid/os/IBinder;)Lcom/google/android/gms/usagereporting/a/d;

    move-result-object v0

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/usagereporting/a/b;->a(Landroid/os/IBinder;)Lcom/google/android/gms/usagereporting/a/a;

    move-result-object v2

    .line 82
    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/usagereporting/a/h;->a(Lcom/google/android/gms/usagereporting/a/d;Lcom/google/android/gms/usagereporting/a/a;)V

    .line 83
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 84
    goto :goto_0

    .line 88
    :sswitch_4
    const-string v0, "com.google.android.gms.usagereporting.internal.IUsageReportingService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/usagereporting/a/e;->a(Landroid/os/IBinder;)Lcom/google/android/gms/usagereporting/a/d;

    move-result-object v0

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/usagereporting/a/b;->a(Landroid/os/IBinder;)Lcom/google/android/gms/usagereporting/a/a;

    move-result-object v2

    .line 93
    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/usagereporting/a/h;->b(Lcom/google/android/gms/usagereporting/a/d;Lcom/google/android/gms/usagereporting/a/a;)V

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 95
    goto :goto_0

    .line 43
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
