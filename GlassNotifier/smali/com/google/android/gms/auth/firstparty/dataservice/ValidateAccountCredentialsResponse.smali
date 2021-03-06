.class public Lcom/google/android/gms/auth/firstparty/dataservice/ValidateAccountCredentialsResponse;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/ai;

.field public static final STATUS_ERROR_INVALID_CREDENTIALS:I = 0x3

.field public static final STATUS_ERROR_NETWORK:I = 0x2

.field public static final STATUS_ERROR_UNKNOWN:I = 0x1

.field public static final STATUS_OK:I


# instance fields
.field public final accountId:Ljava/lang/String;

.field public final status:I

.field final version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/ai;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/ai;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/ValidateAccountCredentialsResponse;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/ai;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "errorStatus"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/gms/auth/firstparty/dataservice/ValidateAccountCredentialsResponse;-><init>(IILjava/lang/String;)V

    return-void
.end method

.method constructor <init>(IILjava/lang/String;)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "status"    # I
    .param p3, "accountId"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/ValidateAccountCredentialsResponse;->version:I

    iput p2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/ValidateAccountCredentialsResponse;->status:I

    iput-object p3, p0, Lcom/google/android/gms/auth/firstparty/dataservice/ValidateAccountCredentialsResponse;->accountId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "accountId"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/gms/auth/firstparty/dataservice/ValidateAccountCredentialsResponse;-><init>(IILjava/lang/String;)V

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
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/firstparty/dataservice/ai;->a(Lcom/google/android/gms/auth/firstparty/dataservice/ValidateAccountCredentialsResponse;Landroid/os/Parcel;I)V

    return-void
.end method
