.class Landroid/bluetooth/IBluetoothA2dp$Stub$Proxy;
.super Ljava/lang/Object;
.source "IBluetoothA2dp.java"


# interfaces
.implements Landroid/bluetooth/IBluetoothA2dp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothA2dp$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;



# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .parameter "remote"

    .prologue
    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    iput-object p1, p0, Landroid/bluetooth/IBluetoothA2dp$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 246
    return-void
.end method


# virtual methods
.method public allowIncomingConnect(Landroid/bluetooth/BluetoothDevice;Z)Z
    .registers 11
    .parameter "device"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 512
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 513
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 516
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_a
    const-string v3, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 517
    if-eqz p1, :cond_38

    .line 518
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 519
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/bluetooth/BluetoothDevice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 524
    :goto_19
    if-eqz p2, :cond_45

    move v3, v7

    :goto_1c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 525
    iget-object v3, p0, Landroid/bluetooth/IBluetoothA2dp$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xc

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 526
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 527
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_2d
    .catchall {:try_start_a .. :try_end_2d} :catchall_3d

    move-result v3

    if-eqz v3, :cond_47

    move v2, v7

    .line 530
    .local v2, _result:Z
    :goto_31
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 531
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 533
    return v2

    .line 522
    .end local v2       #_result:Z,
    :cond_38
    const/4 v3, 0x0

    :try_start_39
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_3d

    goto :goto_19

    .line 530
    :catchall_3d
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 531
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    :cond_45
    move v3, v6

    .line 524
    goto :goto_1c

    :cond_47
    move v2, v6

    .line 527
    goto :goto_31
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 249
    iget-object v0, p0, Landroid/bluetooth/IBluetoothA2dp$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public connectSink(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 10
    .parameter "device"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 257
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 258
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 261
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_a
    const-string v3, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 262
    if-eqz p1, :cond_31

    .line 263
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 264
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/bluetooth/BluetoothDevice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 269
    :goto_19
    iget-object v3, p0, Landroid/bluetooth/IBluetoothA2dp$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 270
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 271
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_26
    .catchall {:try_start_a .. :try_end_26} :catchall_36

    move-result v3

    if-eqz v3, :cond_3e

    move v2, v7

    .line 274
    .local v2, _result:Z
    :goto_2a
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 275
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 277
    return v2

    .line 267
    .end local v2       #_result:Z,
    :cond_31
    const/4 v3, 0x0

    :try_start_32
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_36

    goto :goto_19

    .line 274
    :catchall_36
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 275
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    :cond_3e
    move v2, v6

    .line 271
    goto :goto_2a
.end method

.method public connectSinkInternal(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 10
    .parameter "device"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 464
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 465
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 468
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_a
    const-string v3, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 469
    if-eqz p1, :cond_32

    .line 470
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 471
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/bluetooth/BluetoothDevice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 476
    :goto_19
    iget-object v3, p0, Landroid/bluetooth/IBluetoothA2dp$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 477
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 478
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_27
    .catchall {:try_start_a .. :try_end_27} :catchall_37

    move-result v3

    if-eqz v3, :cond_3f

    move v2, v7

    .line 481
    .local v2, _result:Z
    :goto_2b
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 482
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 484
    return v2

    .line 474
    .end local v2       #_result:Z,
    :cond_32
    const/4 v3, 0x0

    :try_start_33
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_37

    goto :goto_19

    .line 481
    :catchall_37
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 482
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    :cond_3f
    move v2, v6

    .line 478
    goto :goto_2b
.end method

.method public disconnectSink(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 10
    .parameter "device"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 281
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 282
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 285
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_a
    const-string v3, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 286
    if-eqz p1, :cond_31

    .line 287
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 288
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/bluetooth/BluetoothDevice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 293
    :goto_19
    iget-object v3, p0, Landroid/bluetooth/IBluetoothA2dp$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 294
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 295
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_26
    .catchall {:try_start_a .. :try_end_26} :catchall_36

    move-result v3

    if-eqz v3, :cond_3e

    move v2, v7

    .line 298
    .local v2, _result:Z
    :goto_2a
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 299
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 301
    return v2

    .line 291
    .end local v2       #_result:Z,
    :cond_31
    const/4 v3, 0x0

    :try_start_32
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_36

    goto :goto_19

    .line 298
    :catchall_36
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 299
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    :cond_3e
    move v2, v6

    .line 295
    goto :goto_2a
.end method

.method public disconnectSinkInternal(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 10
    .parameter "device"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 488
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 489
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 492
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_a
    const-string v3, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 493
    if-eqz p1, :cond_32

    .line 494
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 495
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/bluetooth/BluetoothDevice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 500
    :goto_19
    iget-object v3, p0, Landroid/bluetooth/IBluetoothA2dp$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xb

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 501
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 502
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_27
    .catchall {:try_start_a .. :try_end_27} :catchall_37

    move-result v3

    if-eqz v3, :cond_3f

    move v2, v7

    .line 505
    .local v2, _result:Z
    :goto_2b
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 506
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 508
    return v2

    .line 498
    .end local v2       #_result:Z,
    :cond_32
    const/4 v3, 0x0

    :try_start_33
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_37

    goto :goto_19

    .line 505
    :catchall_37
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 506
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    :cond_3f
    move v2, v6

    .line 502
    goto :goto_2b
.end method

.method public getConnectedSinks()[Landroid/bluetooth/BluetoothDevice;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 353
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 354
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 357
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_8
    const-string v3, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 358
    iget-object v3, p0, Landroid/bluetooth/IBluetoothA2dp$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 359
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 360
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/bluetooth/BluetoothDevice;
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_26

    .line 363
    .local v2, _result:[Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 364
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 366
    return-object v2

    .line 363
    .end local v2       #_result:[Landroid/bluetooth/BluetoothDevice;,
    :catchall_26
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 364
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 253
    const-string v0, "android.bluetooth.IBluetoothA2dp"

    return-object v0
.end method

.method public getNonDisconnectedSinks()[Landroid/bluetooth/BluetoothDevice;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 372
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 373
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 376
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_8
    const-string v3, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 377
    iget-object v3, p0, Landroid/bluetooth/IBluetoothA2dp$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 378
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 379
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/bluetooth/BluetoothDevice;
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_26

    .line 382
    .local v2, _result:[Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 383
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 385
    return-object v2

    .line 382
    .end local v2       #_result:[Landroid/bluetooth/BluetoothDevice;,
    :catchall_26
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 383
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getSinkPriority(Landroid/bluetooth/BluetoothDevice;)I
    .registers 8
    .parameter "device"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 440
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 441
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 444
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_8
    const-string v3, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 445
    if-eqz p1, :cond_2d

    .line 446
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 447
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/bluetooth/BluetoothDevice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 452
    :goto_17
    iget-object v3, p0, Landroid/bluetooth/IBluetoothA2dp$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x9

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 453
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 454
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_32

    move-result v2

    .line 457
    .local v2, _result:I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 458
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 460
    return v2

    .line 450
    .end local v2       #_result:I,
    :cond_2d
    const/4 v3, 0x0

    :try_start_2e
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_32

    goto :goto_17

    .line 457
    :catchall_32
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 458
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getSinkState(Landroid/bluetooth/BluetoothDevice;)I
    .registers 8
    .parameter "device"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 391
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 392
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 395
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_8
    const-string v3, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 396
    if-eqz p1, :cond_2c

    .line 397
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 398
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/bluetooth/BluetoothDevice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 403
    :goto_17
    iget-object v3, p0, Landroid/bluetooth/IBluetoothA2dp$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 404
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 405
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_31

    move-result v2

    .line 408
    .local v2, _result:I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 409
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 411
    return v2

    .line 401
    .end local v2       #_result:I,
    :cond_2c
    const/4 v3, 0x0

    :try_start_2d
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_31

    goto :goto_17

    .line 408
    :catchall_31
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 409
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public isSuspended()Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 554
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 555
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 558
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_9
    const-string v3, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 559
    iget-object v3, p0, Landroid/bluetooth/IBluetoothA2dp$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xe

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 560
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 561
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_2a

    move-result v3

    if-eqz v3, :cond_28

    const/4 v3, 0x1

    move v2, v3

    .line 564
    .local v2, _result:Z
    :goto_21
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 565
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 567
    return v2

    .end local v2       #_result:Z,
    :cond_28
    move v2, v6

    .line 561
    goto :goto_21

    .line 564
    :catchall_2a
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 565
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public resumeSink(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 10
    .parameter "device"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 329
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 330
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 333
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_a
    const-string v3, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 334
    if-eqz p1, :cond_31

    .line 335
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 336
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/bluetooth/BluetoothDevice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 341
    :goto_19
    iget-object v3, p0, Landroid/bluetooth/IBluetoothA2dp$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 342
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 343
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_26
    .catchall {:try_start_a .. :try_end_26} :catchall_36

    move-result v3

    if-eqz v3, :cond_3e

    move v2, v7

    .line 346
    .local v2, _result:Z
    :goto_2a
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 347
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 349
    return v2

    .line 339
    .end local v2       #_result:Z,
    :cond_31
    const/4 v3, 0x0

    :try_start_32
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_36

    goto :goto_19

    .line 346
    :catchall_36
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 347
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    :cond_3e
    move v2, v6

    .line 343
    goto :goto_2a
.end method

.method public setSinkPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .registers 11
    .parameter "device"
    .parameter "priority"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 415
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 416
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 419
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_a
    const-string v3, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 420
    if-eqz p1, :cond_35

    .line 421
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 422
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/bluetooth/BluetoothDevice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 427
    :goto_19
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 428
    iget-object v3, p0, Landroid/bluetooth/IBluetoothA2dp$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x8

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 429
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 430
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_2a
    .catchall {:try_start_a .. :try_end_2a} :catchall_3a

    move-result v3

    if-eqz v3, :cond_42

    move v2, v7

    .line 433
    .local v2, _result:Z
    :goto_2e
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 434
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 436
    return v2

    .line 425
    .end local v2       #_result:Z,
    :cond_35
    const/4 v3, 0x0

    :try_start_36
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_3a

    goto :goto_19

    .line 433
    :catchall_3a
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 434
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    :cond_42
    move v2, v6

    .line 430
    goto :goto_2e
.end method

.method public setSuspended(Z)V
    .registers 7
    .parameter "val"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 539
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 540
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 542
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_9
    const-string v2, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 543
    if-eqz p1, :cond_26

    const/4 v2, 0x1

    :goto_11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 544
    iget-object v2, p0, Landroid/bluetooth/IBluetoothA2dp$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 545
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_9 .. :try_end_1f} :catchall_28

    .line 548
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 549
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 551
    return-void

    :cond_26
    move v2, v3

    .line 543
    goto :goto_11

    .line 548
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 549
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public suspendSink(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 10
    .parameter "device"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 305
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 306
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 309
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_a
    const-string v3, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 310
    if-eqz p1, :cond_31

    .line 311
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 312
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/bluetooth/BluetoothDevice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 317
    :goto_19
    iget-object v3, p0, Landroid/bluetooth/IBluetoothA2dp$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 318
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 319
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_26
    .catchall {:try_start_a .. :try_end_26} :catchall_36

    move-result v3

    if-eqz v3, :cond_3e

    move v2, v7

    .line 322
    .local v2, _result:Z
    :goto_2a
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 323
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 325
    return v2

    .line 315
    .end local v2       #_result:Z,
    :cond_31
    const/4 v3, 0x0

    :try_start_32
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_36

    goto :goto_19

    .line 322
    :catchall_36
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 323
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    :cond_3e
    move v2, v6

    .line 319
    goto :goto_2a
.end method
