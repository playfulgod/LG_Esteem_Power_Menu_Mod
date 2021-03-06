.class public final Landroid/location/Geocoder;
.super Ljava/lang/Object;
.source "Geocoder.java"



# static fields
.field private static final TAG:Ljava/lang/String; = "Geocoder"



# instance fields
.field private mParams:Landroid/location/GeocoderParams;

.field private mService:Landroid/location/ILocationManager;



# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 95
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Locale;)V
    .registers 6
    .parameter "context"
    .parameter "locale"

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    if-nez p2, :cond_d

    .line 81
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "locale == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 83
    :cond_d
    new-instance v1, Landroid/location/GeocoderParams;

    invoke-direct {v1, p1, p2}, Landroid/location/GeocoderParams;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    iput-object v1, p0, Landroid/location/Geocoder;->mParams:Landroid/location/GeocoderParams;

    .line 84
    const-string v1, "location"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 85
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/location/ILocationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationManager;

    move-result-object v1

    iput-object v1, p0, Landroid/location/Geocoder;->mService:Landroid/location/ILocationManager;

    .line 86
    return-void
.end method

.method public static isPresent()Z
    .registers 5

    .prologue
    .line 60
    const-string v3, "location"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 61
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/location/ILocationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationManager;

    move-result-object v2

    .line 63
    .local v2, lm:Landroid/location/ILocationManager;
    :try_start_a
    invoke-interface {v2}, Landroid/location/ILocationManager;->geocoderIsPresent()Z
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_f

    move-result v3

    .line 66
    :goto_e
    return v3

    .line 64
    :catch_f
    move-exception v1

    .line 65
    .local v1, e:Landroid/os/RemoteException;
    const-string v3, "Geocoder"

    const-string v4, "isPresent: got RemoteException"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 66
    const/4 v3, 0x0

    goto :goto_e
.end method


# virtual methods
.method public getFromLocation(DDI)Ljava/util/List;
    .registers 16
    .parameter "latitude"
    .parameter "longitude"
    .parameter "maxResults"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDI)",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    const-wide v0, -0x3fa9800000000000L

    cmpg-double v0, p1, v0

    if-ltz v0, :cond_12

    const-wide v0, 0x4056800000000000L

    cmpl-double v0, p1, v0

    if-lez v0, :cond_2b

    .line 126
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "latitude == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_2b
    const-wide v0, -0x3f99800000000000L

    cmpg-double v0, p3, v0

    if-ltz v0, :cond_3d

    const-wide v0, 0x4066800000000000L

    cmpl-double v0, p3, v0

    if-lez v0, :cond_56

    .line 129
    :cond_3d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "longitude == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_56
    :try_start_56
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .local v7, results:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    iget-object v0, p0, Landroid/location/Geocoder;->mService:Landroid/location/ILocationManager;

    iget-object v6, p0, Landroid/location/Geocoder;->mParams:Landroid/location/GeocoderParams;

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-interface/range {v0 .. v7}, Landroid/location/ILocationManager;->getFromLocation(DDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;

    move-result-object v9

    .line 135
    .local v9, ex:Ljava/lang/String;
    if-eqz v9, :cond_79

    .line 136
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6e
    .catch Landroid/os/RemoteException; {:try_start_56 .. :try_end_6e} :catch_6e

    .line 140
    .end local v7       #results:Ljava/util/List;,, "Ljava/util/List<Landroid/location/Address;>;"
    .end local v9       #ex:Ljava/lang/String;,
    :catch_6e
    move-exception v0

    move-object v8, v0

    .line 141
    .local v8, e:Landroid/os/RemoteException;
    const-string v0, "Geocoder"

    const-string v1, "getFromLocation: got RemoteException"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 142
    const/4 v0, 0x0

    .end local v8       #e:Landroid/os/RemoteException;,
    :goto_78
    return-object v0

    .restart local v7       #results:Ljava/util/List;,, "Ljava/util/List<Landroid/location/Address;>;"
    .restart local v9       #ex:Ljava/lang/String;,
    :cond_79
    move-object v0, v7

    .line 138
    goto :goto_78
.end method

.method public getFromLocationName(Ljava/lang/String;I)Ljava/util/List;
    .registers 18
    .parameter "locationName"
    .parameter "maxResults"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 170
    if-nez p1, :cond_a

    .line 171
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "locationName == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_a
    :try_start_a
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .local v12, results:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    iget-object v0, p0, Landroid/location/Geocoder;->mService:Landroid/location/ILocationManager;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    iget-object v11, p0, Landroid/location/Geocoder;->mParams:Landroid/location/GeocoderParams;

    move-object/from16 v1, p1

    move/from16 v10, p2

    invoke-interface/range {v0 .. v12}, Landroid/location/ILocationManager;->getFromLocationName(Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;

    move-result-object v14

    .line 177
    .local v14, ex:Ljava/lang/String;
    if-eqz v14, :cond_36

    .line 178
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_2b} :catch_2b

    .line 182
    .end local v12       #results:Ljava/util/List;,, "Ljava/util/List<Landroid/location/Address;>;"
    .end local v14       #ex:Ljava/lang/String;,
    :catch_2b
    move-exception v0

    move-object v13, v0

    .line 183
    .local v13, e:Landroid/os/RemoteException;
    const-string v0, "Geocoder"

    const-string v1, "getFromLocationName: got RemoteException"

    invoke-static {v0, v1, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 184
    const/4 v0, 0x0

    .end local v13       #e:Landroid/os/RemoteException;,
    :goto_35
    return-object v0

    .restart local v12       #results:Ljava/util/List;,, "Ljava/util/List<Landroid/location/Address;>;"
    .restart local v14       #ex:Ljava/lang/String;,
    :cond_36
    move-object v0, v12

    .line 180
    goto :goto_35
.end method

.method public getFromLocationName(Ljava/lang/String;IDDDD)Ljava/util/List;
    .registers 29
    .parameter "locationName"
    .parameter "maxResults"
    .parameter "lowerLeftLatitude"
    .parameter "lowerLeftLongitude"
    .parameter "upperRightLatitude"
    .parameter "upperRightLongitude"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IDDDD)",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 226
    if-nez p1, :cond_a

    .line 227
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "locationName == null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 229
    :cond_a
    const-wide v3, -0x3fa9800000000000L

    cmpg-double v3, p3, v3

    if-ltz v3, :cond_1c

    const-wide v3, 0x4056800000000000L

    cmpl-double v3, p3, v3

    if-lez v3, :cond_38

    .line 230
    :cond_1c
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lowerLeftLatitude == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 233
    :cond_38
    const-wide v3, -0x3f99800000000000L

    cmpg-double v3, p5, v3

    if-ltz v3, :cond_4a

    const-wide v3, 0x4066800000000000L

    cmpl-double v3, p5, v3

    if-lez v3, :cond_66

    .line 234
    :cond_4a
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lowerLeftLongitude == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 237
    :cond_66
    const-wide v3, -0x3fa9800000000000L

    cmpg-double v3, p7, v3

    if-ltz v3, :cond_78

    const-wide v3, 0x4056800000000000L

    cmpl-double v3, p7, v3

    if-lez v3, :cond_95

    .line 238
    :cond_78
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "upperRightLatitude == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-wide/from16 v1, p7

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 241
    :cond_95
    const-wide v3, -0x3f99800000000000L

    cmpg-double v3, p9, v3

    if-ltz v3, :cond_a7

    const-wide v3, 0x4066800000000000L

    cmpl-double v3, p9, v3

    if-lez v3, :cond_c4

    .line 242
    :cond_a7
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "upperRightLongitude == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-wide/from16 v1, p9

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 246
    :cond_c4
    :try_start_c4
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 247
    .local v15, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/location/Address;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/location/Geocoder;->mService:Landroid/location/ILocationManager;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/location/Geocoder;->mParams:Landroid/location/GeocoderParams;

    move-object v14, v0

    move-object/from16 v4, p1

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    move-wide/from16 v11, p9

    move/from16 v13, p2

    invoke-interface/range {v3 .. v15}, Landroid/location/ILocationManager;->getFromLocationName(Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;

    move-result-object v17

    .line 250
    .local v17, ex:Ljava/lang/String;
    if-eqz v17, :cond_fe

    .line 251
    new-instance v3, Ljava/io/IOException;

    move-object v0, v3

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_ee
    .catch Landroid/os/RemoteException; {:try_start_c4 .. :try_end_ee} :catch_ee

    .line 255
    .end local v15       #result:Ljava/util/ArrayList;,, "Ljava/util/ArrayList<Landroid/location/Address;>;"
    .end local v17       #ex:Ljava/lang/String;,
    :catch_ee
    move-exception v3

    move-object/from16 v16, v3

    .line 256
    .local v16, e:Landroid/os/RemoteException;
    const-string v3, "Geocoder"

    const-string v4, "getFromLocationName: got RemoteException"

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 257
    const/4 v3, 0x0

    .end local v16       #e:Landroid/os/RemoteException;,
    :goto_fd
    return-object v3

    .restart local v15       #result:Ljava/util/ArrayList;,, "Ljava/util/ArrayList<Landroid/location/Address;>;"
    .restart local v17       #ex:Ljava/lang/String;,
    :cond_fe
    move-object v3, v15

    .line 253
    goto :goto_fd
.end method
