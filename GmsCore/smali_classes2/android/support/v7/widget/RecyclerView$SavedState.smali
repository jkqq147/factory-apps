.class Landroid/support/v7/widget/RecyclerView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field a:Landroid/os/Parcelable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7029
    new-instance v0, Landroid/support/v7/widget/br;

    invoke-direct {v0}, Landroid/support/v7/widget/br;-><init>()V

    sput-object v0, Landroid/support/v7/widget/RecyclerView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 7008
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 7009
    const-class v0, Landroid/support/v7/widget/bj;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$SavedState;->a:Landroid/os/Parcelable;

    .line 7010
    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .prologue
    .line 7016
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 7017
    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/RecyclerView$SavedState;Landroid/support/v7/widget/RecyclerView$SavedState;)V
    .locals 1

    .prologue
    .line 7000
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$SavedState;->a:Landroid/os/Parcelable;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$SavedState;->a:Landroid/os/Parcelable;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 7021
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 7022
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$SavedState;->a:Landroid/os/Parcelable;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 7023
    return-void
.end method
