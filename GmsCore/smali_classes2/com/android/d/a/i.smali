.class public final Lcom/android/d/a/i;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 110
    :try_start_0
    invoke-static {p0}, Lorg/apache/http/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Lorg/apache/http/impl/cookie/DateParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 113
    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/android/d/m;)Lcom/android/d/c;
    .locals 15

    .prologue
    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 42
    iget-object v14, p0, Lcom/android/d/m;->c:Ljava/util/Map;

    .line 50
    const-string v0, "Date"

    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 54
    if-eqz v0, :cond_a

    .line 55
    invoke-static {v0}, Lcom/android/d/a/i;->a(Ljava/lang/String;)J

    move-result-wide v0

    move-wide v2, v0

    .line 58
    :goto_0
    const-string v0, "Cache-Control"

    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 59
    if-eqz v0, :cond_9

    .line 60
    const/4 v1, 0x1

    .line 61
    const-string v7, ","

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    move v0, v6

    move-wide v6, v4

    .line 62
    :goto_1
    array-length v9, v8

    if-ge v0, v9, :cond_5

    .line 63
    aget-object v9, v8, v0

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 64
    const-string v10, "no-cache"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "no-store"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 65
    :cond_0
    const/4 v0, 0x0

    .line 101
    :goto_2
    return-object v0

    .line 66
    :cond_1
    const-string v10, "max-age="

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 68
    const/16 v10, 0x8

    :try_start_0
    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    .line 62
    :cond_2
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 71
    :cond_3
    const-string v10, "must-revalidate"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    const-string v10, "proxy-revalidate"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    :cond_4
    move-wide v6, v4

    .line 72
    goto :goto_3

    :cond_5
    move-wide v8, v6

    move v6, v1

    .line 77
    :goto_4
    const-string v0, "Expires"

    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 78
    if-eqz v0, :cond_8

    .line 79
    invoke-static {v0}, Lcom/android/d/a/i;->a(Ljava/lang/String;)J

    move-result-wide v0

    move-wide v10, v0

    .line 82
    :goto_5
    const-string v0, "ETag"

    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 86
    if-eqz v6, :cond_7

    .line 87
    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, v8

    add-long/2addr v4, v12

    .line 93
    :cond_6
    :goto_6
    new-instance v1, Lcom/android/d/c;

    invoke-direct {v1}, Lcom/android/d/c;-><init>()V

    .line 94
    iget-object v6, p0, Lcom/android/d/m;->b:[B

    iput-object v6, v1, Lcom/android/d/c;->a:[B

    .line 95
    iput-object v0, v1, Lcom/android/d/c;->b:Ljava/lang/String;

    .line 96
    iput-wide v4, v1, Lcom/android/d/c;->e:J

    .line 97
    iget-wide v4, v1, Lcom/android/d/c;->e:J

    iput-wide v4, v1, Lcom/android/d/c;->d:J

    .line 98
    iput-wide v2, v1, Lcom/android/d/c;->c:J

    .line 99
    iput-object v14, v1, Lcom/android/d/c;->f:Ljava/util/Map;

    move-object v0, v1

    .line 101
    goto :goto_2

    .line 88
    :cond_7
    cmp-long v1, v2, v4

    if-lez v1, :cond_6

    cmp-long v1, v10, v2

    if-ltz v1, :cond_6

    .line 90
    sub-long v4, v10, v2

    add-long/2addr v4, v12

    goto :goto_6

    .line 70
    :catch_0
    move-exception v9

    goto :goto_3

    :cond_8
    move-wide v10, v4

    goto :goto_5

    :cond_9
    move-wide v8, v4

    goto :goto_4

    :cond_a
    move-wide v2, v4

    goto/16 :goto_0
.end method
