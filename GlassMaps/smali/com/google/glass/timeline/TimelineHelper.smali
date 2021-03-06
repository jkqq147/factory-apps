.class public Lcom/google/glass/timeline/TimelineHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final IGNORE_INDEX:Ljava/lang/String; = "+"

.field public static final POST_DELETE_INTENT_TIMELINE_ITEM_EXTRA:Ljava/lang/String; = "post_delete_intent_timeline_item_extra"

.field private static final SPEAKABLE_TEXT_DISPLAY_TIME_PATTERN:Ljava/util/regex/Pattern;

.field static final SPEAKABLE_TEXT_MAX_LENGTH:I = 0xf9f

.field private static final SPEAKABLE_TEXT_TIME_FORMAT:Ljava/text/SimpleDateFormat;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 57
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/timeline/TimelineHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 70
    const-string v0, "$DISPLAY_TIME"

    const/16 v1, 0x10

    .line 71
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/glass/timeline/TimelineHelper;->SPEAKABLE_TEXT_DISPLAY_TIME_PATTERN:Ljava/util/regex/Pattern;

    .line 74
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "h:mm a"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/glass/timeline/TimelineHelper;->SPEAKABLE_TEXT_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    return-void
.end method

.method public static varargs binarySearch(Ljava/lang/String;JLandroid/database/Cursor;Z[I)I
    .locals 15

    .prologue
    .line 366
    if-eqz p0, :cond_0

    if-nez p3, :cond_1

    .line 367
    :cond_0
    sget-object v1, Lcom/google/glass/timeline/TimelineHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Cannot search for target: %s, cursor: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p3, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 368
    const/4 v1, -0x1

    .line 451
    :goto_0
    return v1

    .line 370
    :cond_1
    const/4 v8, 0x0

    .line 371
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    add-int/lit8 v7, v1, -0x1

    .line 373
    const-string v1, "_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 374
    const-string v1, "display_time"

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 375
    const-string v1, "is_deleted"

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 377
    move-object/from16 v0, p5

    array-length v14, v0

    const/4 v1, 0x0

    move v10, v1

    :goto_1
    if-ge v10, v14, :cond_9

    aget v9, p5, v10

    .line 379
    if-ltz v9, :cond_10

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ge v9, v1, :cond_10

    .line 382
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    move-object/from16 v0, p3

    invoke-interface {v0, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 383
    :cond_2
    sget-object v1, Lcom/google/glass/timeline/TimelineHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Could not move cursor to position %d."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 384
    const/4 v1, -0x1

    goto :goto_0

    .line 388
    :cond_3
    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 389
    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    move-object v1, p0

    move-wide/from16 v2, p1

    .line 391
    invoke-static/range {v1 .. v6}, Lcom/google/glass/timeline/TimelineHelper;->compare(Ljava/lang/String;JLjava/lang/String;J)I

    move-result v1

    .line 394
    if-nez p4, :cond_4

    .line 395
    neg-int v1, v1

    .line 398
    :cond_4
    if-nez v1, :cond_6

    .line 399
    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 400
    if-eqz v1, :cond_5

    .line 403
    sget-object v1, Lcom/google/glass/timeline/TimelineHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Found item, but it is deleted. Ignoring the item."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 404
    const/4 v1, -0x1

    goto :goto_0

    :cond_5
    move v1, v9

    .line 406
    goto :goto_0

    .line 407
    :cond_6
    if-gez v1, :cond_7

    .line 408
    add-int/lit8 v1, v9, 0x1

    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v2, v1

    move v1, v7

    .line 377
    :goto_2
    add-int/lit8 v3, v10, 0x1

    move v10, v3

    move v7, v1

    move v8, v2

    goto :goto_1

    .line 410
    :cond_7
    add-int/lit8 v1, v9, -0x1

    invoke-static {v7, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    move v2, v8

    goto :goto_2

    .line 444
    :cond_8
    if-gez v1, :cond_e

    .line 445
    add-int/lit8 v1, v9, 0x1

    move v2, v1

    move v1, v7

    :goto_3
    move v7, v1

    move v8, v2

    .line 415
    :cond_9
    if-gt v8, v7, :cond_f

    .line 416
    add-int v1, v8, v7

    shr-int/lit8 v9, v1, 0x1

    .line 419
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_a

    move-object/from16 v0, p3

    invoke-interface {v0, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-nez v1, :cond_b

    .line 420
    :cond_a
    sget-object v1, Lcom/google/glass/timeline/TimelineHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Could not move cursor to position %d."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 421
    const/4 v1, -0x1

    goto/16 :goto_0

    .line 425
    :cond_b
    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 426
    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    move-object v1, p0

    move-wide/from16 v2, p1

    .line 428
    invoke-static/range {v1 .. v6}, Lcom/google/glass/timeline/TimelineHelper;->compare(Ljava/lang/String;JLjava/lang/String;J)I

    move-result v1

    .line 431
    if-nez p4, :cond_c

    .line 432
    neg-int v1, v1

    .line 435
    :cond_c
    if-nez v1, :cond_8

    .line 436
    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 437
    if-eqz v1, :cond_d

    .line 440
    sget-object v1, Lcom/google/glass/timeline/TimelineHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Found item, but it is deleted. Ignoring the item."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 441
    const/4 v1, -0x1

    goto/16 :goto_0

    :cond_d
    move v1, v9

    .line 443
    goto/16 :goto_0

    .line 447
    :cond_e
    add-int/lit8 v1, v9, -0x1

    move v2, v8

    goto :goto_3

    .line 451
    :cond_f
    const/4 v1, -0x1

    goto/16 :goto_0

    :cond_10
    move v1, v7

    move v2, v8

    goto :goto_2
.end method

.method private static compare(Ljava/lang/String;JLjava/lang/String;J)I
    .locals 2

    .prologue
    .line 335
    invoke-virtual {p0, p3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 336
    if-nez v0, :cond_1

    .line 337
    const/4 v0, 0x0

    .line 347
    :cond_0
    :goto_0
    return v0

    .line 340
    :cond_1
    cmp-long v1, p1, p4

    if-gez v1, :cond_2

    .line 341
    const/4 v0, -0x1

    goto :goto_0

    .line 343
    :cond_2
    cmp-long v1, p1, p4

    if-lez v1, :cond_0

    .line 344
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static createItemLoaderForBundleTimeline(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JZZ)Landroid/content/CursorLoader;
    .locals 9

    .prologue
    .line 256
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 261
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 262
    const-string v0, "+is_deleted=0"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    const-string v0, " AND "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    const-string v0, "+pin_time"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eqz p6, :cond_1

    const-string v0, "<>"

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v5, -0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x14

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    const-string v0, " AND "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    const-string v0, "+bundle_cover_status!=1"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    const-string v0, " AND "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 272
    const-string v0, "_id==?"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v5, v0

    const/4 v0, 0x1

    aput-object v1, v5, v0

    .line 293
    :goto_1
    const-string v0, " AND "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    const-string v0, "+delivery_time<=?"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    const-string v0, ""

    .line 299
    if-eqz p6, :cond_0

    .line 300
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "pin_score DESC, "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 301
    :goto_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "pin_time, "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 303
    :cond_0
    :goto_3
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "display_time"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eqz p5, :cond_5

    const-string v0, " DESC "

    :goto_4
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0xc8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x11

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "LIMIT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 307
    new-instance v0, Landroid/content/CursorLoader;

    sget-object v2, Lcom/google/glass/timeline/TimelineContract$Timeline;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    .line 308
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 264
    :cond_1
    const-string v0, "=="

    goto/16 :goto_0

    .line 280
    :cond_2
    const-string v0, "("

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    const-string v0, "_id==?"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    const-string v0, " OR "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    const-string v0, "bundle_id==?"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    const/4 v0, 0x3

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v5, v0

    const/4 v0, 0x1

    .line 289
    invoke-static {p2}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v0

    const/4 v0, 0x2

    aput-object v1, v5, v0

    goto/16 :goto_1

    .line 300
    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 301
    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 303
    :cond_5
    const-string v0, " "

    goto/16 :goto_4
.end method

.method public static createItemLoaderForSingleItem(Landroid/content/Context;Ljava/lang/String;)Landroid/content/CursorLoader;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 313
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 314
    const-string v0, "+is_deleted=0"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    const-string v0, " AND "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    const-string v0, "_id==?"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    new-instance v0, Landroid/content/CursorLoader;

    sget-object v2, Lcom/google/glass/timeline/TimelineContract$Timeline;->CONTENT_URI:Landroid/net/Uri;

    .line 318
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v5, v1

    move-object v1, p0

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createItemLoaderForTimeline(Landroid/content/Context;JZZLcom/google/glass/timeline/TimelineDatabaseFilter;)Landroid/content/CursorLoader;
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    const-string v0, "+is_deleted=0"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    const-string v0, " AND "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    const-string v0, "+pin_time"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eqz p3, :cond_1

    const-string v0, "<>"

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v3, -0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x14

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    const-string v0, " AND "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    const-string v0, "+delivery_time<=?"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    const-string v0, " AND ("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    const-string v0, "bundle_cover_status!=0"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    const-string v0, " OR "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    const-string v0, "bundle_id=\"\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {p5, v8}, Lcom/google/glass/timeline/TimelineDatabaseFilter;->constructSqlQuery(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    const-string v0, ""

    .line 203
    if-eqz p3, :cond_0

    .line 204
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "pin_score, "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 205
    :goto_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "pin_time, "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 207
    :cond_0
    :goto_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "display_time"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    if-eqz p4, :cond_4

    const-string v0, " DESC "

    :goto_3
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0xc8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x11

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "LIMIT "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 210
    new-instance v0, Landroid/content/CursorLoader;

    sget-object v2, Lcom/google/glass/timeline/TimelineContract$Timeline;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 211
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 188
    :cond_1
    const-string v0, "="

    goto/16 :goto_0

    .line 204
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 205
    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 207
    :cond_4
    const-string v0, " "

    goto :goto_3
.end method

.method public static formatAndSpeakText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V
    .locals 1

    .prologue
    .line 590
    invoke-static {p0, p1, p3}, Lcom/google/glass/timeline/TimelineHelper;->formatSpeakableText(Landroid/content/Context;Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 591
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 597
    :goto_0
    return-void

    .line 596
    :cond_0
    invoke-static {}, Lcom/google/glass/util/TtsHelperLazySingletonProvider;->getInstance()Lcom/google/glass/util/TtsHelperLazySingletonProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/util/TtsHelperLazySingletonProvider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/util/TtsHelper;

    invoke-virtual {v0, p2, p1}, Lcom/google/glass/util/TtsHelper;->speakTextLookupLocale(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static formatSpeakableText(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 556
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 558
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/glass/timeline/TimelineHelper;->formatSpeakableText(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatSpeakableText(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Z)Ljava/lang/String;
    .locals 4

    .prologue
    .line 573
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 575
    if-nez p1, :cond_0

    .line 576
    sget-object v0, Lcom/google/glass/timeline/TimelineHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Cannot format speakable text for null timeline item"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 577
    const/4 v0, 0x0

    .line 581
    :goto_0
    return-object v0

    .line 580
    :cond_0
    new-instance v0, Lcom/google/glass/timeline/SpeakableText;

    invoke-direct {v0, p0}, Lcom/google/glass/timeline/SpeakableText;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/timeline/SpeakableText;->getSpeakableText(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Z)Ljava/lang/String;

    move-result-object v0

    .line 581
    new-instance v1, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getDisplayTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-static {p0, v0, v1}, Lcom/google/glass/timeline/TimelineHelper;->formatSpeakableText(Landroid/content/Context;Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected static formatSpeakableText(Landroid/content/Context;Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0xf9f

    const/4 v4, 0x0

    .line 506
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 509
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/glass/common/R$string;->speakable_text_fallback:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 510
    sget-object v1, Lcom/google/glass/timeline/TimelineHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Request to format speakable text had no text to format"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 542
    :cond_1
    :goto_0
    return-object v0

    .line 515
    :cond_2
    sget-object v0, Lcom/google/glass/timeline/TimelineHelper;->SPEAKABLE_TEXT_DISPLAY_TIME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 516
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 517
    sget-object v1, Lcom/google/glass/timeline/TimelineHelper;->SPEAKABLE_TEXT_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 518
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 527
    :cond_3
    const-string v0, "[\\[\\]]"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 530
    sget-object v1, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 531
    :goto_1
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 532
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/glass/timeline/TimelineHelper;->getDomainName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 537
    :cond_4
    const-string v1, "throughglass"

    const-string v2, "through glass"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 539
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v5, :cond_1

    .line 540
    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getDomainName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 603
    sget-object v0, Landroid/util/Patterns;->DOMAIN_NAME:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 604
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 605
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p0

    .line 606
    const-string v0, "\\b(?:www\\.)"

    const/4 v1, 0x2

    .line 607
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 608
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 609
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 613
    :cond_0
    return-object p0
.end method

.method public static getItemLoaderSelectArgs(JLcom/google/googlex/glass/common/proto/TimelineNano$Entity;)[Ljava/lang/String;
    .locals 3

    .prologue
    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 220
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    if-eqz p2, :cond_0

    .line 223
    invoke-static {p2}, Lcom/google/glass/entity/EntityUtils;->getIds(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)[Ljava/lang/String;

    move-result-object v1

    .line 224
    if-eqz v1, :cond_0

    array-length v2, v1

    if-eqz v2, :cond_0

    .line 225
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 228
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static linearSearch(Ljava/lang/String;Landroid/database/Cursor;I)I
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v0, -0x1

    .line 460
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 461
    :cond_0
    sget-object v1, Lcom/google/glass/timeline/TimelineHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Cannot search for target: %s, cursos: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v2

    aput-object p1, v4, v5

    invoke-interface {v1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 492
    :cond_1
    :goto_0
    return v0

    .line 466
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_3

    .line 467
    sget-object v1, Lcom/google/glass/timeline/TimelineHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Cannot search for %s; no items."

    new-array v4, v5, [Ljava/lang/Object;

    aput-object p0, v4, v2

    invoke-interface {v1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 472
    :cond_3
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 473
    const-string v1, "is_deleted"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move v1, v2

    .line 474
    :goto_1
    if-ge v1, p2, :cond_1

    .line 475
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 476
    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 479
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 480
    if-eqz v3, :cond_4

    .line 483
    sget-object v1, Lcom/google/glass/timeline/TimelineHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Found item, but it is deleted. Ignoring the item."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v1, v3, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    move v0, v1

    .line 486
    goto :goto_0

    .line 488
    :cond_5
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 474
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public deletePendingActions(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 147
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 148
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_0

    .line 149
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 150
    invoke-static {p2}, Lcom/google/glass/timeline/TimelineContract$PendingAction;->getPendingActionUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "_id<=?"

    new-array v3, v6, [Ljava/lang/String;

    .line 151
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 150
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 152
    sget-object v1, Lcom/google/glass/timeline/TimelineHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Deleted %s pending actions with maxRowId %s for %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 153
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v6

    const/4 v0, 0x2

    aput-object p2, v3, v0

    .line 152
    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    :cond_0
    return-void
.end method

.method public getPendingActions(Landroid/content/Context;Ljava/lang/String;)Lcom/google/glass/timeline/TimelineHelper$GetPendingActionsResponse;
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 111
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 112
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 115
    :try_start_0
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/dm;

    move-result-object v9

    .line 116
    const-wide/16 v7, 0x0

    .line 117
    invoke-static {p2}, Lcom/google/glass/timeline/TimelineContract$PendingAction;->getPendingActionUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "_id"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    move-wide v2, v7

    .line 119
    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    const-string v0, "action_type"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 121
    new-instance v2, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    invoke-direct {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;-><init>()V

    .line 122
    invoke-virtual {v2, v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->setType(I)Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    .line 123
    const-string v0, "payload"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 124
    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {v2, v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->setPayload(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    .line 127
    :cond_0
    invoke-virtual {v9, v2}, Lcom/google/common/collect/dm;->b(Ljava/lang/Object;)Lcom/google/common/collect/dm;

    .line 128
    const-string v0, "_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    goto :goto_0

    .line 130
    :cond_1
    new-instance v0, Lcom/google/glass/timeline/TimelineHelper$GetPendingActionsResponse;

    invoke-virtual {v9}, Lcom/google/common/collect/dm;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    invoke-direct {v0, v4, v2, v3}, Lcom/google/glass/timeline/TimelineHelper$GetPendingActionsResponse;-><init>(Ljava/util/List;J)V

    .line 131
    sget-object v2, Lcom/google/glass/timeline/TimelineHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Returning %s pending actions for %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/google/glass/timeline/TimelineHelper$GetPendingActionsResponse;->actions:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 134
    if-eqz v1, :cond_2

    .line 135
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v0

    .line 134
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_1
    if-eqz v1, :cond_3

    .line 135
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 134
    :catchall_1
    move-exception v0

    goto :goto_1
.end method
