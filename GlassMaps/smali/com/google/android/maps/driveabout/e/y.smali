.class final Lcom/google/android/maps/driveabout/e/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;)I
    .locals 2

    .prologue
    .line 302
    iget v0, p0, Lcom/google/android/maps/driveabout/e/ab;->e:I

    iget v1, p1, Lcom/google/android/maps/driveabout/e/ab;->e:I

    sub-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 300
    check-cast p1, Lcom/google/android/maps/driveabout/e/ab;

    check-cast p2, Lcom/google/android/maps/driveabout/e/ab;

    invoke-static {p1, p2}, Lcom/google/android/maps/driveabout/e/y;->a(Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;)I

    move-result v0

    return v0
.end method
