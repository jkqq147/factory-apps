.class public Lcom/android/providers/contacts/DataRowHandlerForIm;
.super Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;
.source "DataRowHandlerForIm.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/aggregation/ContactAggregator;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dbHelper"    # Lcom/android/providers/contacts/ContactsDatabaseHelper;
    .param p3, "aggregator"    # Lcom/android/providers/contacts/aggregation/ContactAggregator;

    .prologue
    .line 32
    const-string v4, "vnd.android.cursor.item/im"

    const-string v5, "data2"

    const-string v6, "data3"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;-><init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/aggregation/ContactAggregator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    return-void
.end method


# virtual methods
.method public appendSearchableData(Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;)V
    .locals 4
    .param p1, "builder"    # Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;

    .prologue
    .line 42
    const-string v2, "data5"

    invoke-virtual {p1, v2}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 43
    .local v1, "protocol":I
    const-string v2, "data6"

    invoke-virtual {p1, v2}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, "customProtocol":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/providers/contacts/DataRowHandlerForIm;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v1, v0}, Landroid/provider/ContactsContract$CommonDataKinds$Im;->getProtocolLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->appendContent(Ljava/lang/String;)V

    .line 46
    const-string v2, "data1"

    const/4 v3, 0x2

    invoke-virtual {p1, v2, v3}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->appendContentFromColumn(Ljava/lang/String;I)V

    .line 47
    return-void
.end method

.method public containsSearchableColumns(Landroid/content/ContentValues;)Z
    .locals 1
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 37
    const-string v0, "data1"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
