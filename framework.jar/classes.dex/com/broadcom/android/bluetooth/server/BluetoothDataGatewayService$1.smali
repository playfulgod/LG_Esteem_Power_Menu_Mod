.class Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothDataGatewayService.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService;-><init>(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService;



# direct methods
.method constructor <init>(Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService;)V
    .registers 2
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService$1;->this$0:Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const-string v4, "BluetoothDataGatewayService"

    .line 153
    const-string v2, "BluetoothDataGatewayService"

    const-string v2, "#### DataGateway Service Received message  ####"

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 156
    const-string v2, "android.bluetooth.adapter.extra.STATE"

    const/high16 v3, -0x8000

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 157
    .local v1, state:I
    const/16 v2, 0xc

    if-ne v1, v2, :cond_2d

    .line 158
    const-string v2, "BluetoothDataGatewayService"

    const-string v2, "#### Enable Data Gateway Server ####"

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v2, p0, Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService$1;->this$0:Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService;

    invoke-virtual {v2}, Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService;->dataGatewayEnable()V

    .line 163
    .end local v1       #state:I,
    :cond_2d
    return-void
.end method
