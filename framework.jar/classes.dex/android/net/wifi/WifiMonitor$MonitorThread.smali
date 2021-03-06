.class Landroid/net/wifi/WifiMonitor$MonitorThread;
.super Ljava/lang/Thread;
.source "WifiMonitor.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MonitorThread"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiMonitor;



# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiMonitor;)V
    .registers 3
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    .line 156
    const-string v0, "WifiMonitor"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method private connectToSupplicant()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 272
    const/4 v0, 0x0

    .line 275
    .local v0, connectTries:I
    :goto_2
    iget-object v2, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    invoke-static {v2}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiStateTracker;->connectToSupplicant()Z

    move-result v2

    if-eqz v2, :cond_10

    move v2, v3

    .line 286
    :goto_f
    return v2

    .line 279
    :cond_10
    add-int/lit8 v1, v0, 0x1

    .end local v0       #connectTries:I,
    .local v1, connectTries:I
    const/16 v2, 0xf

    if-ge v0, v2, :cond_1b

    .line 280
    invoke-static {v3}, Landroid/net/wifi/WifiMonitor;->access$300(I)V

    move v0, v1

    .end local v1       #connectTries:I,
    .restart local v0       #connectTries:I,
    goto :goto_2

    .line 286
    .end local v0       #connectTries:I,
    .restart local v1       #connectTries:I,
    :cond_1b
    const/4 v2, 0x0

    move v0, v1

    .end local v1       #connectTries:I,
    .restart local v0       #connectTries:I,
    goto :goto_f
.end method

.method private handleDriverEvent(Ljava/lang/String;)V
    .registers 3
    .parameter "state"

    .prologue
    .line 294
    if-nez p1, :cond_3

    .line 304
    :cond_2
    :goto_2
    return-void

    .line 297
    :cond_3
    const-string v0, "STOPPED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 298
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    invoke-static {v0}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateTracker;->notifyDriverStopped()V

    goto :goto_2

    .line 299
    :cond_15
    const-string v0, "STARTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 300
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    invoke-static {v0}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateTracker;->notifyDriverStarted()V

    goto :goto_2

    .line 301
    :cond_27
    const-string v0, "HANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 302
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    invoke-static {v0}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateTracker;->notifyDriverHung()V

    goto :goto_2
.end method

.method private handlePasswordKeyMayBeIncorrect()V
    .registers 2

    .prologue
    .line 290
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    invoke-static {v0}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateTracker;->notifyPasswordKeyMayBeIncorrect()V

    .line 291
    return-void
.end method

.method private handleSupplicantStateChange(Ljava/lang/String;)V
    .registers 20
    .parameter "dataString"

    .prologue
    .line 337
    const-string v15, " "

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 339
    .local v4, dataTokens:[Ljava/lang/String;
    const/4 v2, 0x0

    .line 340
    .local v2, BSSID:Ljava/lang/String;
    const/4 v9, -0x1

    .line 341
    .local v9, networkId:I
    const/4 v10, -0x1

    .line 342
    .local v10, newState:I
    move-object v3, v4

    .local v3, arr$:[Ljava/lang/String;
    array-length v7, v3

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_f
    if-ge v6, v7, :cond_73

    aget-object v13, v3, v6

    .line 343
    .local v13, token:Ljava/lang/String;
    const-string v15, "="

    invoke-virtual {v13, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 344
    .local v8, nameValue:[Ljava/lang/String;
    array-length v15, v8

    const/16 v16, 0x2

    move v0, v15

    move/from16 v1, v16

    if-eq v0, v1, :cond_24

    .line 342
    :cond_21
    :goto_21
    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    .line 348
    :cond_24
    const/4 v15, 0x0

    aget-object v15, v8, v15

    const-string v16, "BSSID"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_33

    .line 349
    const/4 v15, 0x1

    aget-object v2, v8, v15

    .line 350
    goto :goto_21

    .line 355
    :cond_33
    const/4 v15, 0x1

    :try_start_34
    aget-object v15, v8, v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_39
    .catch Ljava/lang/NumberFormatException; {:try_start_34 .. :try_end_39} :catch_47

    move-result v14

    .line 361
    .local v14, value:I
    const/4 v15, 0x0

    aget-object v15, v8, v15

    const-string v16, "id"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_65

    .line 362
    move v9, v14

    goto :goto_21

    .line 356
    .end local v14       #value:I,
    :catch_47
    move-exception v15

    move-object v5, v15

    .line 357
    .local v5, e:Ljava/lang/NumberFormatException;
    const-string v15, "WifiMonitor"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "STATE-CHANGE non-integer parameter: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    .line 363
    .end local v5       #e:Ljava/lang/NumberFormatException;,
    .restart local v14       #value:I,
    :cond_65
    const/4 v15, 0x0

    aget-object v15, v8, v15

    const-string/jumbo v16, "state"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_21

    .line 364
    move v10, v14

    goto :goto_21

    .line 368
    .end local v8       #nameValue:[Ljava/lang/String;,
    .end local v13       #token:Ljava/lang/String;,
    .end local v14       #value:I,
    :cond_73
    const/4 v15, -0x1

    if-ne v10, v15, :cond_77

    .line 381
    .end local v3       #arr$:[Ljava/lang/String;,
    :goto_76
    return-void

    .line 370
    .restart local v3       #arr$:[Ljava/lang/String;,
    :cond_77
    sget-object v11, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    .line 371
    .local v11, newSupplicantState:Landroid/net/wifi/SupplicantState;
    invoke-static {}, Landroid/net/wifi/SupplicantState;->values()[Landroid/net/wifi/SupplicantState;

    move-result-object v3

    .local v3, arr$:[Landroid/net/wifi/SupplicantState;
    array-length v7, v3

    const/4 v6, 0x0

    :goto_7f
    if-ge v6, v7, :cond_8a

    aget-object v12, v3, v6

    .line 372
    .local v12, state:Landroid/net/wifi/SupplicantState;
    invoke-virtual {v12}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v15

    if-ne v15, v10, :cond_b6

    .line 373
    move-object v11, v12

    .line 377
    .end local v12       #state:Landroid/net/wifi/SupplicantState;,
    :cond_8a
    sget-object v15, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    if-ne v11, v15, :cond_a9

    .line 378
    const-string v15, "WifiMonitor"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Invalid supplicant state: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :cond_a9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    move-object v15, v0

    invoke-static {v15}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v15

    invoke-virtual {v15, v9, v2, v11}, Landroid/net/wifi/WifiStateTracker;->notifyStateChange(ILjava/lang/String;Landroid/net/wifi/SupplicantState;)V

    goto :goto_76

    .line 371
    .restart local v12       #state:Landroid/net/wifi/SupplicantState;,
    :cond_b6
    add-int/lit8 v6, v6, 0x1

    goto :goto_7f
.end method


# virtual methods
.method handleEvent(ILjava/lang/String;)V
    .registers 5
    .parameter "event"
    .parameter "remainder"

    .prologue
    .line 313
    packed-switch p1, :pswitch_data_1e

    .line 329
    :goto_3
    :pswitch_3
    return-void

    .line 315
    :pswitch_4
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-static {v0, v1, p2}, Landroid/net/wifi/WifiMonitor;->access$400(Landroid/net/wifi/WifiMonitor;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    goto :goto_3

    .line 319
    :pswitch_c
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-static {v0, v1, p2}, Landroid/net/wifi/WifiMonitor;->access$400(Landroid/net/wifi/WifiMonitor;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    goto :goto_3

    .line 323
    :pswitch_14
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    invoke-static {v0}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateTracker;->notifyScanResultsAvailable()V

    goto :goto_3

    .line 313
    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_c
        :pswitch_4
        :pswitch_3
        :pswitch_14
    .end packed-switch
.end method

.method public run()V
    .registers 14

    .prologue
    const/4 v12, 0x7

    const/4 v11, 0x3

    const/4 v10, 0x0

    const/4 v8, -0x1

    const-string v9, "WifiMonitor"

    .line 161
    invoke-direct {p0}, Landroid/net/wifi/WifiMonitor$MonitorThread;->connectToSupplicant()Z

    move-result v6

    if-eqz v6, :cond_5c

    .line 164
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    invoke-static {v6}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiStateTracker;->notifySupplicantConnection()V

    .line 172
    :cond_15
    :goto_15
    invoke-static {}, Landroid/net/wifi/WifiNative;->waitForEvent()Ljava/lang/String;

    move-result-object v3

    .line 175
    .local v3, eventStr:Ljava/lang/String;
    const-string v6, "SCAN-RESULTS"

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v8, :cond_3f

    .line 176
    const-string v6, "WifiMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Event ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_3f
    const-string v6, "CTRL-EVENT-"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_66

    .line 179
    const-string v6, "WPA:"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_15

    const-string/jumbo v6, "pre-shared key may be incorrect"

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_15

    .line 181
    invoke-direct {p0}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handlePasswordKeyMayBeIncorrect()V

    goto :goto_15

    .line 166
    .end local v3       #eventStr:Ljava/lang/String;,
    :cond_5c
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    invoke-static {v6}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiStateTracker;->notifySupplicantLost()V

    .line 269
    :goto_65
    return-void

    .line 186
    .restart local v3       #eventStr:Ljava/lang/String;,
    :cond_66
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$100()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 187
    .local v2, eventName:Ljava/lang/String;
    const/16 v6, 0x20

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 188
    .local v5, nameEnd:I
    if-eq v5, v8, :cond_7a

    .line 189
    invoke-virtual {v2, v10, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 190
    :cond_7a
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_88

    .line 191
    const-string v6, "WifiMonitor"

    const-string v6, "Received wpa_supplicant event with empty event name"

    invoke-static {v9, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 198
    :cond_88
    const-string v6, "CONNECTED"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ac

    .line 199
    const/4 v0, 0x1

    .line 216
    .local v0, event:I
    :goto_91
    move-object v1, v3

    .line 217
    .local v1, eventData:Ljava/lang/String;
    if-eq v0, v12, :cond_97

    const/4 v6, 0x5

    if-ne v0, v6, :cond_eb

    .line 218
    :cond_97
    const-string v6, " "

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v1, v6, v7

    .line 231
    :cond_a0
    :goto_a0
    if-ne v0, v11, :cond_10b

    .line 232
    invoke-direct {p0, v1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleSupplicantStateChange(Ljava/lang/String;)V

    .line 267
    :goto_a5
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    invoke-static {v6, v10}, Landroid/net/wifi/WifiMonitor;->access$202(Landroid/net/wifi/WifiMonitor;I)I

    goto/16 :goto_15

    .line 200
    .end local v0       #event:I,
    .end local v1       #eventData:Ljava/lang/String;,
    :cond_ac
    const-string v6, "DISCONNECTED"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b6

    .line 201
    const/4 v0, 0x2

    .restart local v0       #event:I,
    goto :goto_91

    .line 202
    .end local v0       #event:I,
    :cond_b6
    const-string v6, "STATE-CHANGE"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c0

    .line 203
    const/4 v0, 0x3

    .restart local v0       #event:I,
    goto :goto_91

    .line 204
    .end local v0       #event:I,
    :cond_c0
    const-string v6, "SCAN-RESULTS"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ca

    .line 205
    const/4 v0, 0x4

    .restart local v0       #event:I,
    goto :goto_91

    .line 206
    .end local v0       #event:I,
    :cond_ca
    const-string v6, "LINK-SPEED"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d4

    .line 207
    const/4 v0, 0x5

    .restart local v0       #event:I,
    goto :goto_91

    .line 208
    .end local v0       #event:I,
    :cond_d4
    const-string v6, "TERMINATING"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_de

    .line 209
    const/4 v0, 0x6

    .restart local v0       #event:I,
    goto :goto_91

    .line 210
    .end local v0       #event:I,
    :cond_de
    const-string v6, "DRIVER-STATE"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e8

    .line 211
    const/4 v0, 0x7

    .restart local v0       #event:I,
    goto :goto_91

    .line 214
    .end local v0       #event:I,
    :cond_e8
    const/16 v0, 0x8

    .restart local v0       #event:I,
    goto :goto_91

    .line 219
    .restart local v1       #eventData:Ljava/lang/String;,
    :cond_eb
    if-ne v0, v11, :cond_fc

    .line 220
    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 221
    .local v4, ind:I
    if-eq v4, v8, :cond_a0

    .line 222
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_a0

    .line 225
    .end local v4       #ind:I,
    :cond_fc
    const-string v6, " - "

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 226
    .restart local v4       #ind:I,
    if-eq v4, v8, :cond_a0

    .line 227
    add-int/lit8 v6, v4, 0x3

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_a0

    .line 233
    .end local v4       #ind:I,
    :cond_10b
    if-ne v0, v12, :cond_111

    .line 234
    invoke-direct {p0, v1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleDriverEvent(Ljava/lang/String;)V

    goto :goto_a5

    .line 235
    :cond_111
    const/4 v6, 0x6

    if-ne v0, v6, :cond_14b

    .line 240
    const-string v6, "connection closed"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_125

    .line 242
    const-string v6, "WifiMonitor"

    const-string v6, "Monitor socket is closed, exiting thread"

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_65

    .line 251
    :cond_125
    const-string/jumbo v6, "recv error"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_140

    .line 252
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    invoke-static {v6}, Landroid/net/wifi/WifiMonitor;->access$204(Landroid/net/wifi/WifiMonitor;)I

    move-result v6

    const/16 v7, 0xa

    if-le v6, v7, :cond_15

    .line 254
    const-string v6, "WifiMonitor"

    const-string/jumbo v6, "too many recv errors, closing connection"

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_140
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    invoke-static {v6}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiStateTracker;->notifySupplicantLost()V

    goto/16 :goto_65

    .line 265
    :cond_14b
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleEvent(ILjava/lang/String;)V

    goto/16 :goto_a5
.end method
