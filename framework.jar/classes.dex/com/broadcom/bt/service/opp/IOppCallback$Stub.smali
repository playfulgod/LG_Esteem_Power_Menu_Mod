.class public abstract Lcom/broadcom/bt/service/opp/IOppCallback$Stub;
.super Landroid/os/Binder;
.source "IOppCallback.java"


# interfaces
.implements Lcom/broadcom/bt/service/opp/IOppCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/opp/IOppCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/opp/IOppCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.broadcom.bt.service.opp.IOppCallback"

.field static final TRANSACTION_onOpOwnerVcardNotSet:I = 0xc

.field static final TRANSACTION_onOpcClose:I = 0x6

.field static final TRANSACTION_onOpcEnable:I = 0x1

.field static final TRANSACTION_onOpcObjectPushed:I = 0x5

.field static final TRANSACTION_onOpcObjectReceived:I = 0x4

.field static final TRANSACTION_onOpcOpen:I = 0x2

.field static final TRANSACTION_onOpcProgress:I = 0x3

.field static final TRANSACTION_onOpsAccessRequest:I = 0xa

.field static final TRANSACTION_onOpsClose:I = 0xb

.field static final TRANSACTION_onOpsObjectReceived:I = 0x8

.field static final TRANSACTION_onOpsOpen:I = 0x9

.field static final TRANSACTION_onOpsProgress:I = 0x7



# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string v0, "com.broadcom.bt.service.opp.IOppCallback"

    invoke-virtual {p0, p0, v0}, Lcom/broadcom/bt/service/opp/IOppCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/opp/IOppCallback;
    .registers 3
    .parameter "obj"

    .prologue
    .line 29
    if-nez p0, :cond_4

    .line 30
    const/4 v1, 0x0

    .line 36
    :goto_3
    return-object v1

    .line 32
    :cond_4
    const-string v1, "com.broadcom.bt.service.opp.IOppCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/broadcom/bt/service/opp/IOppCallback;

    if-eqz v1, :cond_14

    .line 34
    check-cast v0, Lcom/broadcom/bt/service/opp/IOppCallback;

    .end local v0       #iin:Landroid/os/IInterface;,
    move-object v1, v0

    goto :goto_3

    .line 36
    .restart local v0       #iin:Landroid/os/IInterface;,
    :cond_14
    new-instance v1, Lcom/broadcom/bt/service/opp/IOppCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/broadcom/bt/service/opp/IOppCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 40
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 14
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
    const/4 v7, 0x1

    const-string v8, "com.broadcom.bt.service.opp.IOppCallback"

    .line 44
    sparse-switch p1, :sswitch_data_fe

    .line 172
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_a
    return v0

    .line 48
    :sswitch_b
    const-string v0, "com.broadcom.bt.service.opp.IOppCallback"

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v7

    .line 49
    goto :goto_a

    .line 53
    :sswitch_12
    const-string v0, "com.broadcom.bt.service.opp.IOppCallback"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Lcom/broadcom/bt/service/opp/IOppCallback$Stub;->onOpcEnable()V

    .line 55
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 56
    goto :goto_a

    .line 60
    :sswitch_1f
    const-string v0, "com.broadcom.bt.service.opp.IOppCallback"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lcom/broadcom/bt/service/opp/IOppCallback$Stub;->onOpcOpen()V

    .line 62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 63
    goto :goto_a

    .line 67
    :sswitch_2c
    const-string v0, "com.broadcom.bt.service.opp.IOppCallback"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 71
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 72
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/broadcom/bt/service/opp/IOppCallback$Stub;->onOpcProgress(II)V

    .line 73
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 74
    goto :goto_a

    .line 78
    .end local v1       #_arg0:I,
    .end local v2       #_arg1:I,
    :sswitch_41
    const-string v0, "com.broadcom.bt.service.opp.IOppCallback"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 82
    .restart local v1       #_arg0:I,
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 83
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/broadcom/bt/service/opp/IOppCallback$Stub;->onOpcObjectReceived(ILjava/lang/String;)V

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 85
    goto :goto_a

    .line 89
    .end local v1       #_arg0:I,
    .end local v2       #_arg1:Ljava/lang/String;,
    :sswitch_56
    const-string v0, "com.broadcom.bt.service.opp.IOppCallback"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 93
    .restart local v1       #_arg0:I,
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 94
    .restart local v2       #_arg1:Ljava/lang/String;,
    invoke-virtual {p0, v1, v2}, Lcom/broadcom/bt/service/opp/IOppCallback$Stub;->onOpcObjectPushed(ILjava/lang/String;)V

    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 96
    goto :goto_a

    .line 100
    .end local v1       #_arg0:I,
    .end local v2       #_arg1:Ljava/lang/String;,
    :sswitch_6b
    const-string v0, "com.broadcom.bt.service.opp.IOppCallback"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 103
    .restart local v1       #_arg0:I,
    invoke-virtual {p0, v1}, Lcom/broadcom/bt/service/opp/IOppCallback$Stub;->onOpcClose(I)V

    .line 104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 105
    goto :goto_a

    .line 109
    .end local v1       #_arg0:I,
    :sswitch_7c
    const-string v0, "com.broadcom.bt.service.opp.IOppCallback"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 113
    .restart local v1       #_arg0:I,
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 114
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/broadcom/bt/service/opp/IOppCallback$Stub;->onOpsProgress(II)V

    .line 115
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 116
    goto/16 :goto_a

    .line 120
    .end local v1       #_arg0:I,
    .end local v2       #_arg1:I,
    :sswitch_92
    const-string v0, "com.broadcom.bt.service.opp.IOppCallback"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 124
    .restart local v1       #_arg0:I,
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 125
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/broadcom/bt/service/opp/IOppCallback$Stub;->onOpsObjectReceived(ILjava/lang/String;)V

    .line 126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 127
    goto/16 :goto_a

    .line 131
    .end local v1       #_arg0:I,
    .end local v2       #_arg1:Ljava/lang/String;,
    :sswitch_a8
    const-string v0, "com.broadcom.bt.service.opp.IOppCallback"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Lcom/broadcom/bt/service/opp/IOppCallback$Stub;->onOpsOpen()V

    .line 133
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 134
    goto/16 :goto_a

    .line 138
    :sswitch_b6
    const-string v0, "com.broadcom.bt.service.opp.IOppCallback"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 144
    .restart local v2       #_arg1:Ljava/lang/String;,
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 146
    .local v3, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 148
    .local v4, _arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 150
    .local v5, _arg4:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, _arg5:I
    move-object v0, p0

    .line 151
    invoke-virtual/range {v0 .. v6}, Lcom/broadcom/bt/service/opp/IOppCallback$Stub;->onOpsAccessRequest(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;I)V

    .line 152
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 153
    goto/16 :goto_a

    .line 157
    .end local v1       #_arg0:Ljava/lang/String;,
    .end local v2       #_arg1:Ljava/lang/String;,
    .end local v3       #_arg2:I,
    .end local v4       #_arg3:I,
    .end local v5       #_arg4:Ljava/lang/String;,
    .end local v6       #_arg5:I,
    :sswitch_dd
    const-string v0, "com.broadcom.bt.service.opp.IOppCallback"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0}, Lcom/broadcom/bt/service/opp/IOppCallback$Stub;->onOpsClose()V

    .line 159
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 160
    goto/16 :goto_a

    .line 164
    :sswitch_eb
    const-string v0, "com.broadcom.bt.service.opp.IOppCallback"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 167
    .restart local v1       #_arg0:Ljava/lang/String;,
    invoke-virtual {p0, v1}, Lcom/broadcom/bt/service/opp/IOppCallback$Stub;->onOpOwnerVcardNotSet(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 169
    goto/16 :goto_a

    .line 44
    nop

    :sswitch_data_fe
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_1f
        0x3 -> :sswitch_2c
        0x4 -> :sswitch_41
        0x5 -> :sswitch_56
        0x6 -> :sswitch_6b
        0x7 -> :sswitch_7c
        0x8 -> :sswitch_92
        0x9 -> :sswitch_a8
        0xa -> :sswitch_b6
        0xb -> :sswitch_dd
        0xc -> :sswitch_eb
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
