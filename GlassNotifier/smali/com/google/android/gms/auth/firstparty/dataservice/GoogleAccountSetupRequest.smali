.class public Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/t;


# instance fields
.field HA:Z

.field HB:Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;

.field Hh:Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;

.field Hz:Z

.field Ic:Landroid/os/Bundle;

.field Id:Z

.field Ie:Z

.field If:Z

.field Ig:Ljava/lang/String;

.field Ih:Z

.field Ii:Ljava/lang/String;

.field callingAppDescription:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

.field firstName:Ljava/lang/String;

.field lastName:Ljava/lang/String;

.field phoneCountryCode:Ljava/lang/String;

.field phoneNumber:Ljava/lang/String;

.field secondaryEmail:Ljava/lang/String;

.field final version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/t;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/t;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/t;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->version:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->Ic:Landroid/os/Bundle;

    return-void
.end method

.method constructor <init>(ILandroid/os/Bundle;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Lcom/google/android/gms/auth/firstparty/shared/AppDescription;Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "version"    # I
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "isAgreedToWebHistory"    # Z
    .param p4, "isAgreedToPersonalizedContent"    # Z
    .param p5, "isAgreedToMobileTos"    # Z
    .param p6, "firstName"    # Ljava/lang/String;
    .param p7, "lastName"    # Ljava/lang/String;
    .param p8, "secondaryEmail"    # Ljava/lang/String;
    .param p9, "gender"    # Ljava/lang/String;
    .param p10, "isCreatingAccount"    # Z
    .param p11, "isAddingAccount"    # Z
    .param p12, "isSetupWizardInProgress"    # Z
    .param p13, "ropRevision"    # Ljava/lang/String;
    .param p14, "callingAppDescription"    # Lcom/google/android/gms/auth/firstparty/shared/AppDescription;
    .param p15, "accountCredentials"    # Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;
    .param p16, "optionalCaptchaSolution"    # Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;
    .param p17, "phoneNumber"    # Ljava/lang/String;
    .param p18, "phoneCountryCode"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->version:I

    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->Ic:Landroid/os/Bundle;

    iput-boolean p3, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->Id:Z

    iput-boolean p4, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->Ie:Z

    iput-boolean p5, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->If:Z

    iput-object p6, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->firstName:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->lastName:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->secondaryEmail:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->Ig:Ljava/lang/String;

    iput-boolean p10, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->Hz:Z

    iput-boolean p11, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->Ih:Z

    iput-boolean p12, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->HA:Z

    iput-object p13, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->Ii:Ljava/lang/String;

    iput-object p14, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->callingAppDescription:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->HB:Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->Hh:Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->phoneNumber:Ljava/lang/String;

    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->phoneCountryCode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAccountCredentials()Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->HB:Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;

    return-object v0
.end method

.method public getCallingAppDescription()Lcom/google/android/gms/auth/firstparty/shared/AppDescription;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->callingAppDescription:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    return-object v0
.end method

.method public getCaptchaSolution()Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->Hh:Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;

    return-object v0
.end method

.method public getFirstName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->firstName:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->Ig:Ljava/lang/String;

    return-object v0
.end method

.method public getLastName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->lastName:Ljava/lang/String;

    return-object v0
.end method

.method public getOptions()Landroid/os/Bundle;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->Ic:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public getPhoneCountryCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->phoneCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getRopRevision()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->Ii:Ljava/lang/String;

    return-object v0
.end method

.method public getSecondaryEmail()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->secondaryEmail:Ljava/lang/String;

    return-object v0
.end method

.method public isAddingAccount()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->Ih:Z

    return v0
.end method

.method public isAgreedToMobileTos()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->If:Z

    return v0
.end method

.method public isAgreedToPersonalizedContent()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->Ie:Z

    return v0
.end method

.method public isAgreedToWebHistory()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->Id:Z

    return v0
.end method

.method public isCreatingAccount()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->Hz:Z

    return v0
.end method

.method public isSetupWizardInProgress()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->HA:Z

    return v0
.end method

.method public setAccountCredentials(Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;)Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;
    .locals 0
    .param p1, "accountCredentials"    # Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->HB:Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;

    return-object p0
.end method

.method public setAddingAccount(Z)Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;
    .locals 0
    .param p1, "isAdding"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->Ih:Z

    return-object p0
.end method

.method public setAgreedToMobileTos(Z)Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;
    .locals 0
    .param p1, "isAgreed"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->If:Z

    return-object p0
.end method

.method public setAgreedToPersonalizedContent(Z)Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;
    .locals 0
    .param p1, "isAgreedToPersonalizedContent"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->Ie:Z

    return-object p0
.end method

.method public setAgreedToWebHistory(Z)Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;
    .locals 0
    .param p1, "isAgreedToWebHistory"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->Id:Z

    return-object p0
.end method

.method public setCallingAppDescription(Lcom/google/android/gms/auth/firstparty/shared/AppDescription;)Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;
    .locals 0
    .param p1, "appDescription"    # Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->callingAppDescription:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    return-object p0
.end method

.method public setCaptchaSolution(Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;)Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;
    .locals 0
    .param p1, "captchaSolution"    # Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->Hh:Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;

    return-object p0
.end method

.method public setCreatingAccount(Z)Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;
    .locals 0
    .param p1, "isCreating"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->Hz:Z

    return-object p0
.end method

.method public setFirstName(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;
    .locals 0
    .param p1, "firstName"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->firstName:Ljava/lang/String;

    return-object p0
.end method

.method public setGender(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;
    .locals 0
    .param p1, "gender"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->Ig:Ljava/lang/String;

    return-object p0
.end method

.method public setLastName(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;
    .locals 0
    .param p1, "lastName"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->lastName:Ljava/lang/String;

    return-object p0
.end method

.method public setOptions(Landroid/os/Bundle;)Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;
    .locals 1
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->Ic:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->Ic:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    return-object p0
.end method

.method public setPhoneCountryCode(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;
    .locals 0
    .param p1, "phoneCountryCode"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->phoneCountryCode:Ljava/lang/String;

    return-object p0
.end method

.method public setPhoneNumber(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;
    .locals 0
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->phoneNumber:Ljava/lang/String;

    return-object p0
.end method

.method public setRopRevision(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;
    .locals 0
    .param p1, "ropRevision"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->Ii:Ljava/lang/String;

    return-object p0
.end method

.method public setSecondaryEmail(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;
    .locals 0
    .param p1, "secondaryEmail"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->secondaryEmail:Ljava/lang/String;

    return-object p0
.end method

.method public setSetupWizardInProgress(Z)Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;
    .locals 0
    .param p1, "isProgress"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->HA:Z

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/firstparty/dataservice/t;->a(Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;Landroid/os/Parcel;I)V

    return-void
.end method
