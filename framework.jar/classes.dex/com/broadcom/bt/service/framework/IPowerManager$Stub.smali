.class public abstract Lcom/broadcom/bt/service/framework/IPowerManager$Stub;
.super Landroid/os/Binder;
.source "IPowerManager.java"


# interfaces
.implements Lcom/broadcom/bt/service/framework/IPowerManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/framework/IPowerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/framework/IPowerManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.broadcom.bt.service.framework.IPowerManager"

.field static final TRANSACTION_disableBt:I = 0x4

.field static final TRANSACTION_disableFm:I = 0x3

.field static final TRANSACTION_enableBt:I = 0x2

.field static final TRANSACTION_enableFm:I = 0x1

.field static final TRANSACTION_isBtEnabled:I = 0x6

.field static final TRANSACTION_isfmEnabled:I = 0x5



# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "com.broadcom.bt.service.framework.IPowerManager"

    invoke-virtual {p0, p0, v0}, Lcom/broadcom/bt/service/framework/IPowerManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/framework/IPowerManager;
    .registers 3
    .parameter "obj"

    .prologue
    .line 27
    if-nez p0, :cond_4

    .line 28
    const/4 v1, 0x0

    .line 34
    :goto_3
    return-object v1

    .line 30
    :cond_4
    const-string v1, "com.broadcom.bt.service.framework.IPowerManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/broadcom/bt/service/framework/IPowerManager;

    if-eqz v1, :cond_14

    .line 32
    check-cast v0, Lcom/broadcom/bt/service/framework/IPowerManager;

    .end local v0       #iin:Landroid/os/IInterface;,
    move-object v1, v0

    goto :goto_3

    .line 34
    .restart local v0       #iin:Landroid/os/IInterface;,
    :cond_14
    new-instance v1, Lcom/broadcom/bt/service/framework/IPowerManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/broadcom/bt/service/framework/IPowerManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const-string v3, "com.broadcom.bt.service.framework.IPowerManager"

    .line 42
    sparse-switch p1, :sswitch_data_98

    .line 98
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_b
    return v1

    .line 46
    :sswitch_c
    const-string v1, "com.broadcom.bt.service.framework.IPowerManager"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v1, v2

    .line 47
    goto :goto_b

    .line 51
    :sswitch_13
    const-string v1, "com.broadcom.bt.service.framework.IPowerManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Lcom/broadcom/bt/service/framework/IPowerManager$Stub;->enableFm()Z

    move-result v0

    .line 53
    .local v0, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    if-eqz v0, :cond_27

    move v1, v2

    :goto_22
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    move v1, v2

    .line 55
    goto :goto_b

    :cond_27
    move v1, v4

    .line 54
    goto :goto_22

    .line 59
    .end local v0       #_result:Z,
    :sswitch_29
    const-string v1, "com.broadcom.bt.service.framework.IPowerManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lcom/broadcom/bt/service/framework/IPowerManager$Stub;->enableBt()Z

    move-result v0

    .line 61
    .restart local v0       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    if-eqz v0, :cond_3d

    move v1, v2

    :goto_38
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    move v1, v2

    .line 63
    goto :goto_b

    :cond_3d
    move v1, v4

    .line 62
    goto :goto_38

    .line 67
    .end local v0       #_result:Z,
    :sswitch_3f
    const-string v1, "com.broadcom.bt.service.framework.IPowerManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lcom/broadcom/bt/service/framework/IPowerManager$Stub;->disableFm()Z

    move-result v0

    .line 69
    .restart local v0       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    if-eqz v0, :cond_53

    move v1, v2

    :goto_4e
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    move v1, v2

    .line 71
    goto :goto_b

    :cond_53
    move v1, v4

    .line 70
    goto :goto_4e

    .line 75
    .end local v0       #_result:Z,
    :sswitch_55
    const-string v1, "com.broadcom.bt.service.framework.IPowerManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/broadcom/bt/service/framework/IPowerManager$Stub;->disableBt()Z

    move-result v0

    .line 77
    .restart local v0       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    if-eqz v0, :cond_69

    move v1, v2

    :goto_64
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    move v1, v2

    .line 79
    goto :goto_b

    :cond_69
    move v1, v4

    .line 78
    goto :goto_64

    .line 83
    .end local v0       #_result:Z,
    :sswitch_6b
    const-string v1, "com.broadcom.bt.service.framework.IPowerManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lcom/broadcom/bt/service/framework/IPowerManager$Stub;->isfmEnabled()Z

    move-result v0

    .line 85
    .restart local v0       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    if-eqz v0, :cond_7f

    move v1, v2

    :goto_7a
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    move v1, v2

    .line 87
    goto :goto_b

    :cond_7f
    move v1, v4

    .line 86
    goto :goto_7a

    .line 91
    .end local v0       #_result:Z,
    :sswitch_81
    const-string v1, "com.broadcom.bt.service.framework.IPowerManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lcom/broadcom/bt/service/framework/IPowerManager$Stub;->isBtEnabled()Z

    move-result v0

    .line 93
    .restart local v0       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    if-eqz v0, :cond_96

    move v1, v2

    :goto_90
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    move v1, v2

    .line 95
    goto/16 :goto_b

    :cond_96
    move v1, v4

    .line 94
    goto :goto_90

    .line 42
    :sswitch_data_98
    .sparse-switch
        0x1 -> :sswitch_13
        0x2 -> :sswitch_29
        0x3 -> :sswitch_3f
        0x4 -> :sswitch_55
        0x5 -> :sswitch_6b
        0x6 -> :sswitch_81
        0x5f4e5446 -> :sswitch_c
    .end sparse-switch
.end method
