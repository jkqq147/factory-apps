.class final Lcom/google/android/gsf/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/os/Parcel;)Lcom/google/android/gsf/GoogleLoginCredentialsResult;
    .locals 2

    .prologue
    .line 129
    new-instance v0, Lcom/google/android/gsf/GoogleLoginCredentialsResult;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gsf/GoogleLoginCredentialsResult;-><init>(Landroid/os/Parcel;Lcom/google/android/gsf/a;)V

    return-object v0
.end method

.method private static a(I)[Lcom/google/android/gsf/GoogleLoginCredentialsResult;
    .locals 1

    .prologue
    .line 133
    new-array v0, p0, [Lcom/google/android/gsf/GoogleLoginCredentialsResult;

    return-object v0
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 127
    invoke-static {p1}, Lcom/google/android/gsf/a;->a(Landroid/os/Parcel;)Lcom/google/android/gsf/GoogleLoginCredentialsResult;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 127
    invoke-static {p1}, Lcom/google/android/gsf/a;->a(I)[Lcom/google/android/gsf/GoogleLoginCredentialsResult;

    move-result-object v0

    return-object v0
.end method
