.class public Lcom/google/android/gms/auth/RecoveryWriteRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final a:Lcom/google/android/gms/auth/h;


# instance fields
.field final b:I

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/h;

    invoke-direct {v0}, Lcom/google/android/gms/auth/h;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/RecoveryWriteRequest;->a:Lcom/google/android/gms/auth/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/RecoveryWriteRequest;->b:I

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/RecoveryWriteRequest;->b:I

    iput-object p2, p0, Lcom/google/android/gms/auth/RecoveryWriteRequest;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/auth/RecoveryWriteRequest;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/auth/RecoveryWriteRequest;->e:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/auth/RecoveryWriteRequest;->f:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/google/android/gms/auth/RecoveryWriteRequest;->g:Z

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/h;->a(Lcom/google/android/gms/auth/RecoveryWriteRequest;Landroid/os/Parcel;I)V

    return-void
.end method
