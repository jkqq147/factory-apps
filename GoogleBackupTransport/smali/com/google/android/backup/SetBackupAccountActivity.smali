.class public Lcom/google/android/backup/SetBackupAccountActivity;
.super Landroid/app/Activity;
.source "SetBackupAccountActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/backup/SetBackupAccountActivity$AccountArrayAdapter;,
        Lcom/google/android/backup/SetBackupAccountActivity$ViewHolder;
    }
.end annotation


# instance fields
.field private mAccounts:[Landroid/os/Parcelable;

.field private mAddIcon:Landroid/graphics/drawable/Drawable;

.field private mCallback:Landroid/accounts/AccountManagerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mGoogleAuthenticatorIcon:Landroid/graphics/drawable/Drawable;

.field private mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/backup/SetBackupAccountActivity;->mAccounts:[Landroid/os/Parcelable;

    .line 66
    new-instance v0, Lcom/google/android/backup/SetBackupAccountActivity$1;

    invoke-direct {v0, p0}, Lcom/google/android/backup/SetBackupAccountActivity$1;-><init>(Lcom/google/android/backup/SetBackupAccountActivity;)V

    iput-object v0, p0, Lcom/google/android/backup/SetBackupAccountActivity;->mCallback:Landroid/accounts/AccountManagerCallback;

    .line 214
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/backup/SetBackupAccountActivity;Landroid/accounts/Account;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/backup/SetBackupAccountActivity;
    .param p1, "x1"    # Landroid/accounts/Account;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/google/android/backup/SetBackupAccountActivity;->saveAccountInPreferences(Landroid/accounts/Account;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/backup/SetBackupAccountActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/backup/SetBackupAccountActivity;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/google/android/backup/SetBackupAccountActivity;->cancelSetBackupAccountNotification()V

    return-void
.end method

.method private addAndSaveNewAccount()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 177
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.google"

    iget-object v6, p0, Lcom/google/android/backup/SetBackupAccountActivity;->mCallback:Landroid/accounts/AccountManagerCallback;

    move-object v3, v2

    move-object v4, v2

    move-object v5, p0

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 185
    return-void
.end method

.method private cancelSetBackupAccountNotification()V
    .locals 3

    .prologue
    .line 96
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/google/android/backup/SetBackupAccountActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 98
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    const-string v1, "com.google.android.backup.notification.tag"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 101
    return-void
.end method

.method private getGoogleAuthenticatorAccountIcon()Landroid/graphics/drawable/Drawable;
    .locals 8

    .prologue
    .line 144
    const/4 v4, 0x0

    .line 145
    .local v4, "icon":Landroid/graphics/drawable/Drawable;
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v0

    .local v0, "arr$":[Landroid/accounts/AuthenticatorDescription;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v2, v0, v3

    .line 146
    .local v2, "desc":Landroid/accounts/AuthenticatorDescription;
    const-string v6, "com.google"

    iget-object v7, v2, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 148
    :try_start_0
    iget-object v6, v2, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Lcom/google/android/backup/SetBackupAccountActivity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    .line 149
    .local v1, "authContext":Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, v2, Landroid/accounts/AuthenticatorDescription;->iconId:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 145
    .end local v1    # "authContext":Landroid/content/Context;
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 155
    .end local v2    # "desc":Landroid/accounts/AuthenticatorDescription;
    :cond_1
    return-object v4

    .line 150
    .restart local v2    # "desc":Landroid/accounts/AuthenticatorDescription;
    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method private notifyTransportOfAccountChange()V
    .locals 3

    .prologue
    .line 201
    invoke-static {}, Lcom/google/android/backup/BackupTransportService;->getTransportInstance()Lcom/google/android/backup/BackupTransportService;

    move-result-object v0

    .line 202
    .local v0, "transport":Lcom/google/android/backup/BackupTransportService;
    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {v0}, Lcom/google/android/backup/BackupTransportService;->clearMoratoriums()V

    .line 207
    :goto_0
    return-void

    .line 205
    :cond_0
    const-string v1, "BackupTransportService"

    const-string v2, "Transport is not currently available!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private saveAccountInPreferences(Landroid/accounts/Account;)V
    .locals 4
    .param p1, "account"    # Landroid/accounts/Account;

    .prologue
    .line 188
    iget-object v1, p0, Lcom/google/android/backup/SetBackupAccountActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 189
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "BackupTransportService"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 190
    const-string v1, "BackupTransportService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Saved backup account in preferences: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_0
    const-string v1, "accountName"

    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 193
    const-string v1, "accountType"

    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 194
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 197
    invoke-direct {p0}, Lcom/google/android/backup/SetBackupAccountActivity;->notifyTransportOfAccountChange()V

    .line 198
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x1

    .line 105
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 108
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v6

    .line 109
    .local v6, "am":Landroid/accounts/AccountManager;
    const-string v0, "com.google"

    invoke-virtual {v6, v0}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/backup/SetBackupAccountActivity;->mAccounts:[Landroid/os/Parcelable;

    .line 111
    iget-object v0, p0, Lcom/google/android/backup/SetBackupAccountActivity;->mAccounts:[Landroid/os/Parcelable;

    array-length v7, v0

    .line 112
    .local v7, "count":I
    add-int/lit8 v0, v7, 0x1

    new-array v3, v0, [Ljava/lang/String;

    .line 113
    .local v3, "items":[Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v7, :cond_0

    .line 114
    iget-object v0, p0, Lcom/google/android/backup/SetBackupAccountActivity;->mAccounts:[Landroid/os/Parcelable;

    aget-object v0, v0, v8

    check-cast v0, Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v0, v3, v8

    .line 113
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 116
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/backup/SetBackupAccountActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v7

    .line 118
    const-string v0, "BackupTransport.backupAccount"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/backup/SetBackupAccountActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/backup/SetBackupAccountActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 121
    const v0, 0x7f020001

    invoke-virtual {p0, v0}, Lcom/google/android/backup/SetBackupAccountActivity;->setContentView(I)V

    .line 124
    invoke-direct {p0}, Lcom/google/android/backup/SetBackupAccountActivity;->getGoogleAuthenticatorAccountIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/backup/SetBackupAccountActivity;->mGoogleAuthenticatorIcon:Landroid/graphics/drawable/Drawable;

    .line 125
    invoke-virtual {p0}, Lcom/google/android/backup/SetBackupAccountActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080033

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/backup/SetBackupAccountActivity;->mAddIcon:Landroid/graphics/drawable/Drawable;

    .line 128
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/google/android/backup/SetBackupAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ListView;

    .line 130
    .local v9, "list":Landroid/widget/ListView;
    new-instance v0, Lcom/google/android/backup/SetBackupAccountActivity$AccountArrayAdapter;

    const v2, 0x1090003

    iget-object v4, p0, Lcom/google/android/backup/SetBackupAccountActivity;->mGoogleAuthenticatorIcon:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/google/android/backup/SetBackupAccountActivity;->mAddIcon:Landroid/graphics/drawable/Drawable;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/backup/SetBackupAccountActivity$AccountArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v9, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 134
    invoke-virtual {v9, v10}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 135
    invoke-virtual {v9, v10}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 136
    new-instance v0, Lcom/google/android/backup/SetBackupAccountActivity$2;

    invoke-direct {v0, p0}, Lcom/google/android/backup/SetBackupAccountActivity$2;-><init>(Lcom/google/android/backup/SetBackupAccountActivity;)V

    invoke-virtual {v9, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 141
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 173
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 174
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3
    .param p1, "listView"    # Landroid/widget/ListView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 159
    invoke-virtual {p1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    .line 160
    .local v1, "count":I
    add-int/lit8 v2, v1, -0x1

    if-ne p3, v2, :cond_0

    .line 161
    invoke-direct {p0}, Lcom/google/android/backup/SetBackupAccountActivity;->addAndSaveNewAccount()V

    .line 169
    :goto_0
    return-void

    .line 163
    :cond_0
    iget-object v2, p0, Lcom/google/android/backup/SetBackupAccountActivity;->mAccounts:[Landroid/os/Parcelable;

    aget-object v0, v2, p3

    check-cast v0, Landroid/accounts/Account;

    .line 164
    .local v0, "account":Landroid/accounts/Account;
    invoke-direct {p0, v0}, Lcom/google/android/backup/SetBackupAccountActivity;->saveAccountInPreferences(Landroid/accounts/Account;)V

    .line 166
    invoke-direct {p0}, Lcom/google/android/backup/SetBackupAccountActivity;->cancelSetBackupAccountNotification()V

    .line 167
    invoke-virtual {p0}, Lcom/google/android/backup/SetBackupAccountActivity;->finish()V

    goto :goto_0
.end method
