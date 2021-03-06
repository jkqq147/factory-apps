.class public Lcom/google/android/gsf/login/SyncSettingsFragment;
.super Landroid/support/v4/app/ListFragment;
.source "SyncSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/login/SyncSettingsFragment$SyncSettingsItem;
    }
.end annotation


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mActivity:Landroid/app/Activity;

.field private final mHandler:Landroid/os/Handler;

.field private final mItems:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gsf/login/SyncSettingsFragment$SyncSettingsItem;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Landroid/widget/ListView;

.field private mSession:Lcom/google/android/gsf/loginservice/GLSSession;

.field private mStatusChangeListenerHandle:Ljava/lang/Object;

.field private final mSyncStatusObserver:Landroid/content/SyncStatusObserver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;-><init>()V

    .line 51
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/login/SyncSettingsFragment;->mHandler:Landroid/os/Handler;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/login/SyncSettingsFragment;->mItems:Ljava/util/HashMap;

    .line 59
    new-instance v0, Lcom/google/android/gsf/login/SyncSettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/login/SyncSettingsFragment$1;-><init>(Lcom/google/android/gsf/login/SyncSettingsFragment;)V

    iput-object v0, p0, Lcom/google/android/gsf/login/SyncSettingsFragment;->mSyncStatusObserver:Landroid/content/SyncStatusObserver;

    .line 205
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gsf/login/SyncSettingsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/gsf/login/SyncSettingsFragment;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/google/android/gsf/login/SyncSettingsFragment;->onSyncStateUpdated()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/gsf/login/SyncSettingsFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/login/SyncSettingsFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/gsf/login/SyncSettingsFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/gsf/login/SyncSettingsFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/login/SyncSettingsFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/gsf/login/SyncSettingsFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method private getLabelFromAuthority(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "authority"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 194
    iget-object v3, p0, Lcom/google/android/gsf/login/SyncSettingsFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 195
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v0, p1, v6}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    .line 196
    .local v1, "providerInfo":Landroid/content/pm/ProviderInfo;
    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/content/pm/ProviderInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 198
    .local v2, "providerLabel":Ljava/lang/CharSequence;
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 199
    const-string v3, "GLSActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Provider needs a label for authority \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    move-object v2, p1

    .line 202
    :cond_0
    const v3, 0x7f070106

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v6

    invoke-virtual {p0, v3, v4}, Lcom/google/android/gsf/login/SyncSettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 196
    .end local v2    # "providerLabel":Ljava/lang/CharSequence;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private onSyncStateUpdated()V
    .locals 2

    .prologue
    .line 78
    const-string v0, "GLSActivity"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    const-string v0, "GLSActivity"

    const-string v1, "Calling onSyncStateUpdated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/login/SyncSettingsFragment;->mAccount:Landroid/accounts/Account;

    invoke-direct {p0, v0}, Lcom/google/android/gsf/login/SyncSettingsFragment;->updateListViewData(Landroid/accounts/Account;)V

    .line 82
    return-void
.end method

.method private setListViewData()V
    .locals 6

    .prologue
    .line 177
    iget-object v3, p0, Lcom/google/android/gsf/login/SyncSettingsFragment;->mItems:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    .line 178
    .local v2, "values":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/android/gsf/login/SyncSettingsFragment$SyncSettingsItem;>;"
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v3

    new-array v3, v3, [Lcom/google/android/gsf/login/SyncSettingsFragment$SyncSettingsItem;

    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gsf/login/SyncSettingsFragment$SyncSettingsItem;

    .line 179
    .local v0, "data":[Lcom/google/android/gsf/login/SyncSettingsFragment$SyncSettingsItem;
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 180
    const-string v3, "GLSActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Count of Sync adapters being displayed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    new-instance v3, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/google/android/gsf/login/SyncSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const v5, 0x1090010

    invoke-direct {v3, v4, v5, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v3}, Lcom/google/android/gsf/login/SyncSettingsFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 188
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 189
    iget-object v3, p0, Lcom/google/android/gsf/login/SyncSettingsFragment;->mListView:Landroid/widget/ListView;

    aget-object v4, v0, v1

    invoke-virtual {v4}, Lcom/google/android/gsf/login/SyncSettingsFragment$SyncSettingsItem;->isChecked()Z

    move-result v4

    invoke-virtual {v3, v1, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 188
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 191
    :cond_0
    return-void
.end method

.method private updateListViewData(Landroid/accounts/Account;)V
    .locals 18
    .param p1, "account"    # Landroid/accounts/Account;

    .prologue
    .line 138
    if-nez p1, :cond_0

    .line 139
    const-string v15, "GLSActivity"

    const-string v16, "Account cannot be null"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :goto_0
    return-void

    .line 143
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 144
    .local v2, "auth":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/gsf/login/SyncSettingsFragment;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/gsf/login/SyncSettingsFragment;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v15, v15, Lcom/google/android/gsf/loginservice/GLSSession;->mAccountManagerOptions:Landroid/os/Bundle;

    if-eqz v15, :cond_1

    .line 145
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/gsf/login/SyncSettingsFragment;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v15, v15, Lcom/google/android/gsf/loginservice/GLSSession;->mAccountManagerOptions:Landroid/os/Bundle;

    const-string v16, "syncAuthorities"

    invoke-virtual/range {v15 .. v16}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 147
    .local v4, "authorities":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 148
    const-string v15, ","

    invoke-virtual {v4, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 149
    .local v3, "authArray":[Ljava/lang/String;
    move-object v1, v3

    .local v1, "arr$":[Ljava/lang/String;
    array-length v8, v1

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_1
    if-ge v7, v8, :cond_1

    aget-object v12, v1, v7

    .line 150
    .local v12, "sync":Ljava/lang/String;
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 154
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "authArray":[Ljava/lang/String;
    .end local v4    # "authorities":Ljava/lang/String;
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    .end local v12    # "sync":Ljava/lang/String;
    :cond_1
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v13

    .line 155
    .local v13, "syncAdapters":[Landroid/content/SyncAdapterType;
    const-string v15, "GLSActivity"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Total sync adapters: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    array-length v0, v13

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const/4 v6, 0x0

    .local v6, "i":I
    array-length v9, v13

    .local v9, "n":I
    :goto_2
    if-ge v6, v9, :cond_5

    .line 157
    aget-object v10, v13, v6

    .line 158
    .local v10, "sa":Landroid/content/SyncAdapterType;
    iget-object v15, v10, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 160
    iget-object v15, v10, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v0, v15}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v14

    .line 162
    .local v14, "syncState":I
    invoke-virtual {v10}, Landroid/content/SyncAdapterType;->isUserVisible()Z

    move-result v15

    if-eqz v15, :cond_3

    if-lez v14, :cond_3

    .line 163
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/gsf/login/SyncSettingsFragment;->mItems:Ljava/util/HashMap;

    iget-object v0, v10, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_3

    .line 164
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-eqz v15, :cond_2

    iget-object v15, v10, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    :cond_2
    const/4 v5, 0x1

    .line 165
    .local v5, "checked":Z
    :goto_3
    new-instance v11, Lcom/google/android/gsf/login/SyncSettingsFragment$SyncSettingsItem;

    iget-object v15, v10, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/google/android/gsf/login/SyncSettingsFragment;->getLabelFromAuthority(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v11, v10, v15, v5}, Lcom/google/android/gsf/login/SyncSettingsFragment$SyncSettingsItem;-><init>(Landroid/content/SyncAdapterType;Ljava/lang/String;Z)V

    .line 167
    .local v11, "si":Lcom/google/android/gsf/login/SyncSettingsFragment$SyncSettingsItem;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/gsf/login/SyncSettingsFragment;->mItems:Ljava/util/HashMap;

    iget-object v0, v10, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .end local v5    # "checked":Z
    .end local v11    # "si":Lcom/google/android/gsf/login/SyncSettingsFragment$SyncSettingsItem;
    .end local v14    # "syncState":I
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 164
    .restart local v14    # "syncState":I
    :cond_4
    const/4 v5, 0x0

    goto :goto_3

    .line 172
    .end local v10    # "sa":Landroid/content/SyncAdapterType;
    .end local v14    # "syncState":I
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gsf/login/SyncSettingsFragment;->setListViewData()V

    goto/16 :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 110
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 112
    invoke-virtual {p0}, Lcom/google/android/gsf/login/SyncSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gsf/login/SyncSettingsFragment;->mActivity:Landroid/app/Activity;

    .line 114
    iget-object v4, p0, Lcom/google/android/gsf/login/SyncSettingsFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 115
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "authAccount"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "accountName":Ljava/lang/String;
    new-instance v4, Landroid/accounts/Account;

    const-string v5, "com.google"

    invoke-direct {v4, v0, v5}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/google/android/gsf/login/SyncSettingsFragment;->mAccount:Landroid/accounts/Account;

    .line 118
    invoke-virtual {p0}, Lcom/google/android/gsf/login/SyncSettingsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gsf/login/SyncSettingsFragment;->mListView:Landroid/widget/ListView;

    .line 119
    iget-object v4, p0, Lcom/google/android/gsf/login/SyncSettingsFragment;->mListView:Landroid/widget/ListView;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 120
    iget-object v4, p0, Lcom/google/android/gsf/login/SyncSettingsFragment;->mListView:Landroid/widget/ListView;

    new-instance v5, Lcom/google/android/gsf/login/SyncSettingsFragment$2;

    invoke-direct {v5, p0}, Lcom/google/android/gsf/login/SyncSettingsFragment$2;-><init>(Lcom/google/android/gsf/login/SyncSettingsFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 130
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 131
    .local v1, "extras":Landroid/os/Bundle;
    :goto_0
    if-eqz v1, :cond_0

    .line 132
    const-string v4, "session"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 133
    .local v3, "sessionId":Ljava/lang/String;
    invoke-static {v3}, Lcom/google/android/gsf/loginservice/GLSSession;->getSessionOrNull(Ljava/lang/String;)Lcom/google/android/gsf/loginservice/GLSSession;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gsf/login/SyncSettingsFragment;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    .line 135
    .end local v3    # "sessionId":Ljava/lang/String;
    :cond_0
    return-void

    .end local v1    # "extras":Landroid/os/Bundle;
    :cond_1
    move-object v1, p1

    .line 130
    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 86
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onPause()V

    .line 87
    iget-object v0, p0, Lcom/google/android/gsf/login/SyncSettingsFragment;->mStatusChangeListenerHandle:Ljava/lang/Object;

    invoke-static {v0}, Landroid/content/ContentResolver;->removeStatusChangeListener(Ljava/lang/Object;)V

    .line 88
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 92
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onResume()V

    .line 98
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gsf/login/SyncSettingsFragment;->mSyncStatusObserver:Landroid/content/SyncStatusObserver;

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->addStatusChangeListener(ILandroid/content/SyncStatusObserver;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/login/SyncSettingsFragment;->mStatusChangeListenerHandle:Ljava/lang/Object;

    .line 105
    iget-object v0, p0, Lcom/google/android/gsf/login/SyncSettingsFragment;->mAccount:Landroid/accounts/Account;

    invoke-direct {p0, v0}, Lcom/google/android/gsf/login/SyncSettingsFragment;->updateListViewData(Landroid/accounts/Account;)V

    .line 106
    return-void
.end method
