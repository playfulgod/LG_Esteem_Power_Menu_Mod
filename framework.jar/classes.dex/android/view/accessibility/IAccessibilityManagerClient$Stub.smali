.class public abstract Landroid/view/accessibility/IAccessibilityManagerClient$Stub;
.super Landroid/os/Binder;
.source "IAccessibilityManagerClient.java"


# interfaces
.implements Landroid/view/accessibility/IAccessibilityManagerClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/IAccessibilityManagerClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/accessibility/IAccessibilityManagerClient$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.view.accessibility.IAccessibilityManagerClient"

.field static final TRANSACTION_setEnabled:I = 0x1



# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string v0, "android.view.accessibility.IAccessibilityManagerClient"

    invoke-virtual {p0, p0, v0}, Landroid/view/accessibility/IAccessibilityManagerClient$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManagerClient;
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
    const-string v1, "android.view.accessibility.IAccessibilityManagerClient"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/view/accessibility/IAccessibilityManagerClient;

    if-eqz v1, :cond_14

    .line 34
    check-cast v0, Landroid/view/accessibility/IAccessibilityManagerClient;

    .end local v0       #iin:Landroid/os/IInterface;,
    move-object v1, v0

    goto :goto_3

    .line 36
    .restart local v0       #iin:Landroid/os/IInterface;,
    :cond_14
    new-instance v1, Landroid/view/accessibility/IAccessibilityManagerClient$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/accessibility/IAccessibilityManagerClient$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 9
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
    const/4 v2, 0x1

    const-string v3, "android.view.accessibility.IAccessibilityManagerClient"

    .line 44
    sparse-switch p1, :sswitch_data_26

    .line 60
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_a
    return v1

    .line 48
    :sswitch_b
    const-string v1, "android.view.accessibility.IAccessibilityManagerClient"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v1, v2

    .line 49
    goto :goto_a

    .line 53
    :sswitch_12
    const-string v1, "android.view.accessibility.IAccessibilityManagerClient"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_23

    move v0, v2

    .line 56
    .local v0, _arg0:Z
    :goto_1e
    invoke-virtual {p0, v0}, Landroid/view/accessibility/IAccessibilityManagerClient$Stub;->setEnabled(Z)V

    move v1, v2

    .line 57
    goto :goto_a

    .line 55
    .end local v0       #_arg0:Z,
    :cond_23
    const/4 v1, 0x0

    move v0, v1

    goto :goto_1e

    .line 44
    :sswitch_data_26
    .sparse-switch
        0x1 -> :sswitch_12
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
