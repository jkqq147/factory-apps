.class public Lcom/google/android/gms/auth/firstparty/dataservice/PasswordSettings;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/z;


# instance fields
.field public final status:Ljava/lang/String;

.field final version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/z;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/z;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/PasswordSettings;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/z;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "status"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/PasswordSettings;->version:I

    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/PasswordSettings;->status:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/firstparty/dataservice/z;->a(Lcom/google/android/gms/auth/firstparty/dataservice/PasswordSettings;Landroid/os/Parcel;I)V

    return-void
.end method
