.class public final Lcom/google/android/maps/driveabout/a/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/a/ar;


# instance fields
.field private final a:Lcom/google/android/maps/driveabout/a/aa;

.field private final b:Landroid/os/Handler;

.field private c:Lcom/google/android/maps/driveabout/a/w;

.field private d:Landroid/content/Context;

.field private e:I

.field private final f:Lcom/google/android/maps/driveabout/a/ab;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/maps/driveabout/a/aa;)V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/google/android/maps/driveabout/a/v;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/a/v;-><init>(Lcom/google/android/maps/driveabout/a/u;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/a/u;->f:Lcom/google/android/maps/driveabout/a/ab;

    .line 48
    iput-object p1, p0, Lcom/google/android/maps/driveabout/a/u;->d:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/google/android/maps/driveabout/a/u;->a:Lcom/google/android/maps/driveabout/a/aa;

    .line 50
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/a/u;->b:Landroid/os/Handler;

    .line 52
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/a/u;->a(I)Z

    .line 53
    return-void
.end method

.method private a(Lcom/google/android/maps/driveabout/a/m;)Lcom/google/android/maps/driveabout/a/a;
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 93
    instance-of v0, p1, Lcom/google/android/maps/driveabout/a/r;

    if-eqz v0, :cond_1

    .line 94
    check-cast p1, Lcom/google/android/maps/driveabout/a/r;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/a/r;->b()Lcom/google/android/maps/driveabout/a/m;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/a/u;->a(Lcom/google/android/maps/driveabout/a/m;)Lcom/google/android/maps/driveabout/a/a;

    move-result-object v4

    .line 147
    :cond_0
    :goto_0
    return-object v4

    .line 97
    :cond_1
    instance-of v0, p1, Lcom/google/android/maps/driveabout/a/q;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 98
    check-cast v0, Lcom/google/android/maps/driveabout/a/q;

    .line 99
    iget v2, p0, Lcom/google/android/maps/driveabout/a/u;->e:I

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/a/q;->c()I

    move-result v5

    if-eq v2, v5, :cond_2

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/a/q;->c()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/a/u;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    :cond_2
    instance-of v0, p1, Lcom/google/android/maps/driveabout/a/o;

    if-eqz v0, :cond_c

    .line 105
    check-cast p1, Lcom/google/android/maps/driveabout/a/o;

    .line 106
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/a/o;->b()[Lcom/google/android/maps/driveabout/a/m;

    move-result-object v6

    .line 107
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    move v2, v1

    .line 110
    :goto_1
    array-length v5, v6

    if-ge v0, v5, :cond_8

    .line 111
    aget-object v5, v6, v0

    invoke-direct {p0, v5}, Lcom/google/android/maps/driveabout/a/u;->a(Lcom/google/android/maps/driveabout/a/m;)Lcom/google/android/maps/driveabout/a/a;

    move-result-object v5

    .line 112
    aget-object v8, v6, v0

    invoke-virtual {v8}, Lcom/google/android/maps/driveabout/a/m;->a()Z

    move-result v8

    if-eqz v8, :cond_5

    if-eqz v5, :cond_3

    instance-of v8, v5, Lcom/google/android/maps/driveabout/a/aw;

    if-eqz v8, :cond_5

    .line 114
    :cond_3
    instance-of v5, v5, Lcom/google/android/maps/driveabout/a/aw;

    if-eqz v5, :cond_4

    move v2, v3

    .line 110
    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 119
    :cond_5
    if-nez v5, :cond_6

    .line 120
    const-string v1, "CannedSpeechAlertGenerator"

    aget-object v0, v6, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x21

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "No voice instruction defined for:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 122
    :cond_6
    instance-of v8, v5, Lcom/google/android/maps/driveabout/a/aw;

    if-eqz v8, :cond_7

    move-object v4, v5

    .line 124
    goto :goto_0

    .line 126
    :cond_7
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 129
    :cond_8
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_a

    .line 130
    if-eqz v2, :cond_9

    new-instance v0, Lcom/google/android/maps/driveabout/a/aw;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/a/aw;-><init>()V

    :goto_3
    move-object v4, v0

    goto/16 :goto_0

    :cond_9
    move-object v0, v4

    goto :goto_3

    .line 131
    :cond_a
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v3, :cond_b

    .line 132
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/a/a;

    move-object v4, v0

    goto/16 :goto_0

    .line 134
    :cond_b
    new-instance v4, Lcom/google/android/maps/driveabout/a/ai;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/maps/driveabout/a/a;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/maps/driveabout/a/a;

    invoke-direct {v4, v0}, Lcom/google/android/maps/driveabout/a/ai;-><init>([Lcom/google/android/maps/driveabout/a/a;)V

    goto/16 :goto_0

    .line 137
    :cond_c
    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/u;->c:Lcom/google/android/maps/driveabout/a/w;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/a/w;->a(Lcom/google/android/maps/driveabout/a/m;)Lcom/google/android/maps/driveabout/a/y;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/a/y;->d()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 142
    new-instance v4, Lcom/google/android/maps/driveabout/a/aw;

    invoke-direct {v4}, Lcom/google/android/maps/driveabout/a/aw;-><init>()V

    goto/16 :goto_0

    .line 143
    :cond_d
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/a/y;->e()Z

    move-result v1

    if-nez v1, :cond_e

    .line 144
    iget-object v1, p0, Lcom/google/android/maps/driveabout/a/u;->d:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/a/y;->c()Ljava/io/File;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/a/u;->b:Landroid/os/Handler;

    invoke-static {v1, v0, v2}, Lcom/google/android/maps/driveabout/a/an;->a(Landroid/content/Context;Ljava/io/File;Landroid/os/Handler;)Lcom/google/android/maps/driveabout/a/a;

    move-result-object v4

    goto/16 :goto_0

    .line 146
    :cond_e
    const-string v0, "CannedSpeechAlertGenerator"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x21

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Cannot find sound for a message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/a/u;Lcom/google/android/maps/driveabout/a/w;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/a/u;->a(Lcom/google/android/maps/driveabout/a/w;)V

    return-void
.end method

.method private declared-synchronized a(Lcom/google/android/maps/driveabout/a/w;)V
    .locals 1

    .prologue
    .line 67
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/maps/driveabout/a/u;->c:Lcom/google/android/maps/driveabout/a/w;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    monitor-exit p0

    return-void

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(I)Z
    .locals 3

    .prologue
    .line 56
    invoke-static {}, Lcom/google/android/maps/driveabout/b;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/a/u;->c:Lcom/google/android/maps/driveabout/a/w;

    .line 63
    :goto_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/u;->c:Lcom/google/android/maps/driveabout/a/w;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/u;->a:Lcom/google/android/maps/driveabout/a/aa;

    .line 60
    invoke-static {}, Lcom/google/glass/locale/LocaleProvider;->getInstance()Lcom/google/glass/locale/LocaleProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/locale/LocaleProvider;->get()Ljava/util/Locale;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/a/u;->f:Lcom/google/android/maps/driveabout/a/ab;

    .line 59
    invoke-interface {v0, v1, p1, v2}, Lcom/google/android/maps/driveabout/a/aa;->a(Ljava/util/Locale;ILcom/google/android/maps/driveabout/a/ab;)Lcom/google/android/maps/driveabout/a/w;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/a/u;->c:Lcom/google/android/maps/driveabout/a/w;

    .line 61
    iput p1, p0, Lcom/google/android/maps/driveabout/a/u;->e:I

    goto :goto_0

    .line 63
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/google/android/maps/driveabout/a/at;)Lcom/google/android/maps/driveabout/a/a;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 80
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/maps/driveabout/a/u;->c:Lcom/google/android/maps/driveabout/a/w;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 89
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 84
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/a/at;->b()Lcom/google/android/maps/driveabout/a/m;

    move-result-object v1

    .line 85
    if-eqz v1, :cond_0

    .line 89
    invoke-direct {p0, v1}, Lcom/google/android/maps/driveabout/a/u;->a(Lcom/google/android/maps/driveabout/a/m;)Lcom/google/android/maps/driveabout/a/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a()V
    .locals 0

    .prologue
    .line 158
    return-void
.end method

.method public final a(Lcom/google/android/maps/driveabout/a/at;Lcom/google/android/maps/driveabout/a/as;)V
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/a/u;->a(Lcom/google/android/maps/driveabout/a/at;)Lcom/google/android/maps/driveabout/a/a;

    move-result-object v0

    .line 73
    if-eqz p2, :cond_0

    .line 74
    invoke-interface {p2, p1, v0}, Lcom/google/android/maps/driveabout/a/as;->a(Lcom/google/android/maps/driveabout/a/at;Lcom/google/android/maps/driveabout/a/a;)V

    .line 76
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 154
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x0

    return-object v0
.end method
