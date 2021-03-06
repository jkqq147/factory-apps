.class public Lcom/google/glass/util/SettingsContract;
.super Landroid/provider/Settings$NameValueTable;
.source "SettingsContract.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.google.glass.settings"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final TABLE_NAME:Ljava/lang/String; = "system"

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/SettingsContract;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 26
    const-string v0, "content://com.google.glass.settings/system"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/SettingsContract;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/provider/Settings$NameValueTable;-><init>()V

    return-void
.end method


# virtual methods
.method public getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x1

    const/4 v1, 0x0

    const/4 v11, 0x0

    .line 41
    new-array v2, v12, [Ljava/lang/String;

    const-string v5, "value"

    aput-object v5, v2, v11

    .line 42
    .local v2, "projection":[Ljava/lang/String;
    const-string v3, "name =?"

    .line 43
    .local v3, "selection":Ljava/lang/String;
    new-array v4, v12, [Ljava/lang/String;

    aput-object p2, v4, v11

    .line 45
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 47
    .local v8, "cursor":Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 49
    .local v10, "returnValue":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 50
    .local v0, "resolver":Landroid/content/ContentResolver;
    if-nez v0, :cond_1

    .line 70
    if-eqz v8, :cond_0

    .line 71
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 74
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    :cond_0
    :goto_0
    return-object v1

    .line 54
    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    :cond_1
    :try_start_1
    sget-object v5, Lcom/google/glass/util/SettingsContract;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v5}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    .line 55
    .local v6, "client":Landroid/content/ContentProviderClient;
    if-nez v6, :cond_2

    .line 70
    if-eqz v8, :cond_0

    .line 71
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 58
    :cond_2
    :try_start_2
    invoke-virtual {v6}, Landroid/content/ContentProviderClient;->release()Z

    .line 61
    sget-object v1, Lcom/google/glass/util/SettingsContract;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 62
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 63
    const-string v1, "value"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 64
    .local v7, "colIndex":I
    invoke-interface {v8, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v10

    .line 70
    .end local v7    # "colIndex":I
    :cond_3
    if-eqz v8, :cond_4

    .line 71
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v6    # "client":Landroid/content/ContentProviderClient;
    :cond_4
    :goto_1
    move-object v1, v10

    .line 74
    goto :goto_0

    .line 66
    :catch_0
    move-exception v9

    .line 68
    .local v9, "e":Ljava/lang/RuntimeException;
    :try_start_3
    sget-object v1, Lcom/google/glass/util/SettingsContract;->logger:Lcom/google/glass/logging/FormattingLogger;

    sget-object v5, Lcom/google/glass/util/SettingsContract;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, 0x1b

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v12, "RuntimeException accessing "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-interface {v1, v9, v5, v11}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 70
    if-eqz v8, :cond_4

    .line 71
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 70
    .end local v9    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_5

    .line 71
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v1
.end method

.method public declared-synchronized updateOrInsert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 88
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 89
    .local v2, "resolver":Landroid/content/ContentResolver;
    if-nez v2, :cond_1

    .line 105
    :cond_0
    :goto_0
    monitor-exit p0

    return v4

    .line 93
    :cond_1
    :try_start_1
    sget-object v5, Lcom/google/glass/util/SettingsContract;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v5}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 94
    .local v0, "client":Landroid/content/ContentProviderClient;
    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 100
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 101
    .local v1, "contentValues":Landroid/content/ContentValues;
    const-string v5, "name"

    invoke-virtual {v1, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v5, "value"

    invoke-virtual {v1, v5, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    sget-object v5, Lcom/google/glass/util/SettingsContract;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v5, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 105
    .local v3, "uri":Landroid/net/Uri;
    if-eqz v3, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    .line 88
    .end local v0    # "client":Landroid/content/ContentProviderClient;
    .end local v1    # "contentValues":Landroid/content/ContentValues;
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    .end local v3    # "uri":Landroid/net/Uri;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method
