.class Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView$3;
.super Ljava/lang/Object;
.source "BluetoothSettingsItemView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->dispatchSetSelected(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;


# direct methods
.method constructor <init>(Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;

    .prologue
    .line 365
    iput-object p1, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView$3;->this$0:Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView$3;->this$0:Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;

    invoke-static {v0}, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->access$300(Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;)Lcom/google/glass/util/BluetoothHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/util/BluetoothHelper;->makeBluetoothDiscoverable()V

    .line 370
    return-void
.end method
