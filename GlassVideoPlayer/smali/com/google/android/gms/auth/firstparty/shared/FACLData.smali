.class public Lcom/google/android/gms/auth/firstparty/shared/FACLData;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final a:Lcom/google/android/gms/auth/firstparty/shared/f;


# instance fields
.field final b:I

.field c:Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;

.field d:Ljava/lang/String;

.field e:Z

.field f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/firstparty/shared/f;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/shared/f;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/shared/FACLData;->a:Lcom/google/android/gms/auth/firstparty/shared/f;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/auth/firstparty/shared/FACLConfig;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/firstparty/shared/FACLData;->b:I

    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/shared/FACLData;->c:Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;

    iput-object p3, p0, Lcom/google/android/gms/auth/firstparty/shared/FACLData;->d:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/gms/auth/firstparty/shared/FACLData;->e:Z

    iput-object p5, p0, Lcom/google/android/gms/auth/firstparty/shared/FACLData;->f:Ljava/lang/String;

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/firstparty/shared/f;->a(Lcom/google/android/gms/auth/firstparty/shared/FACLData;Landroid/os/Parcel;I)V

    return-void
.end method
