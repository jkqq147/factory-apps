.class Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$2$1;
.super Ljava/lang/Object;
.source "PhoneCallService.java"

# interfaces
.implements Lcom/google/glass/phone/PhoneCallService$PhoneCallListenerOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$2;


# direct methods
.method constructor <init>(Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$2;)V
    .locals 0
    .param p1, "this$2"    # Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$2;

    .prologue
    .line 247
    iput-object p1, p0, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$2$1;->this$2:Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doOperation(Landroid/os/IInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 247
    check-cast p1, Lcom/google/glass/phone/IPhoneCallListener;

    invoke-virtual {p0, p1}, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$2$1;->doOperation(Lcom/google/glass/phone/IPhoneCallListener;)V

    return-void
.end method

.method public doOperation(Lcom/google/glass/phone/IPhoneCallListener;)V
    .locals 1
    .param p1, "callback"    # Lcom/google/glass/phone/IPhoneCallListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 250
    iget-object v0, p0, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$2$1;->this$2:Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$2;

    iget-object v0, v0, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$2;->val$call:Lcom/google/glass/phone/PhoneCall;

    invoke-interface {p1, v0}, Lcom/google/glass/phone/IPhoneCallListener;->onIncomingCallInitiated(Lcom/google/glass/phone/PhoneCall;)V

    .line 251
    return-void
.end method
