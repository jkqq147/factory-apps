.class Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$1$1;
.super Ljava/lang/Object;
.source "PhoneCallService.java"

# interfaces
.implements Lcom/google/glass/phone/PhoneCallService$PhoneCallListenerOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$1;


# direct methods
.method constructor <init>(Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$1;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$1$1;->this$2:Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$1;

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
    .line 204
    check-cast p1, Lcom/google/glass/phone/IPhoneCallListener;

    invoke-virtual {p0, p1}, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$1$1;->doOperation(Lcom/google/glass/phone/IPhoneCallListener;)V

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
    .line 207
    iget-object v0, p0, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$1$1;->this$2:Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$1;

    iget-object v0, v0, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$1;->val$call:Lcom/google/glass/phone/PhoneCall;

    invoke-interface {p1, v0}, Lcom/google/glass/phone/IPhoneCallListener;->onOutgoingCallInitiated(Lcom/google/glass/phone/PhoneCall;)V

    .line 208
    return-void
.end method
