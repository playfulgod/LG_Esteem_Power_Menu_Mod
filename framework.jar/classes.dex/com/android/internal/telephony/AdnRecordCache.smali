.class public final Lcom/android/internal/telephony/AdnRecordCache;
.super Landroid/os/Handler;
.source "AdnRecordCache.java"


# interfaces
.implements Lcom/android/internal/telephony/IccConstants;


# static fields
.field static final EVENT_LOAD_ALL_ADN_LIKE_DONE:I = 0x1

.field static final EVENT_UPDATE_ADN_DONE:I = 0x2



# instance fields
.field adnLikeFiles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/AdnRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field adnLikeWaiters:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;>;"
        }
    .end annotation
.end field

.field private mFh:Lcom/android/internal/telephony/IccFileHandler;

.field private mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

.field userWriteResponse:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field



# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/IccFileHandler;)V
    .registers 4
    .parameter "fh"

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 40
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;

    .line 44
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeWaiters:Landroid/util/SparseArray;

    .line 48
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    .line 60
    iput-object p1, p0, Lcom/android/internal/telephony/AdnRecordCache;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    .line 61
    new-instance v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecordCache;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v0, v1, p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;-><init>(Lcom/android/internal/telephony/IccFileHandler;Lcom/android/internal/telephony/AdnRecordCache;)V

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    .line 62
    return-void
.end method

.method private clearUserWriters()V
    .registers 5

    .prologue
    .line 89
    iget-object v2, p0, Lcom/android/internal/telephony/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 90
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    if-ge v0, v1, :cond_19

    .line 91
    iget-object v2, p0, Lcom/android/internal/telephony/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    const-string v3, "AdnCace reset"

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 93
    :cond_19
    iget-object v2, p0, Lcom/android/internal/telephony/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 94
    return-void
.end method

.method private clearWaiters()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 79
    iget-object v4, p0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 80
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    if-ge v1, v2, :cond_24

    .line 81
    iget-object v4, p0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 82
    .local v3, waiters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Message;>;"
    new-instance v0, Landroid/os/AsyncResult;

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "AdnCache reset"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v6, v6, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 83
    .local v0, ar:Landroid/os/AsyncResult;
    invoke-direct {p0, v3, v0}, Lcom/android/internal/telephony/AdnRecordCache;->notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V

    .line 80
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 85
    .end local v0       #ar:Landroid/os/AsyncResult;,
    .end local v3       #waiters:Ljava/util/ArrayList;,, "Ljava/util/ArrayList<Landroid/os/Message;>;"
    :cond_24
    iget-object v4, p0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 86
    return-void
.end method

.method private notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V
    .registers 8
    .parameter
    .parameter "ar"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;",
            "Landroid/os/AsyncResult;",
            ")V"
        }
    .end annotation

    .prologue
    .line 292
    .local p1, waiters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Message;>;"
    if-nez p1, :cond_3

    .line 302
    :cond_2
    return-void

    .line 296
    :cond_3
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, s:I
    :goto_8
    if-ge v0, v1, :cond_2

    .line 297
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .line 299
    .local v2, waiter:Landroid/os/Message;
    iget-object v3, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v4, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 300
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 296
    add-int/lit8 v0, v0, 0x1

    goto :goto_8
.end method

.method private sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V
    .registers 5
    .parameter "response"
    .parameter "errString"

    .prologue
    .line 124
    if-eqz p1, :cond_10

    .line 125
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 126
    .local v0, e:Ljava/lang/Exception;
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 127
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 129
    .end local v0       #e:Ljava/lang/Exception;,
    :cond_10
    return-void
.end method


# virtual methods
.method extensionEfForEf(I)I
    .registers 3
    .parameter "efid"

    .prologue
    const/16 v0, 0x6f4a

    .line 112
    sparse-switch p1, :sswitch_data_12

    .line 119
    const/4 v0, -0x1

    :goto_6
    :sswitch_6
    return v0

    .line 113
    :sswitch_7
    const/16 v0, 0x6fc8

    goto :goto_6

    .line 115
    :sswitch_a
    const/16 v0, 0x6f4c

    goto :goto_6

    .line 116
    :sswitch_d
    const/16 v0, 0x6f4b

    goto :goto_6

    .line 118
    :sswitch_10
    const/4 v0, 0x0

    goto :goto_6

    .line 112
    :sswitch_data_12
    .sparse-switch
        0x4f30 -> :sswitch_10
        0x6f3a -> :sswitch_6
        0x6f3b -> :sswitch_d
        0x6f40 -> :sswitch_6
        0x6f49 -> :sswitch_a
        0x6fc7 -> :sswitch_7
    .end sparse-switch
.end method

.method public getRecordsIfLoaded(I)Ljava/util/ArrayList;
    .registers 3
    .parameter "efid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/AdnRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0       
    check-cast p0, Ljava/util/ArrayList;

    return-object p0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 11
    .parameter "msg"

    .prologue
    .line 311
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_64

    .line 344
    :goto_5
    return-void

    .line 314
    :pswitch_6
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 315
    .local v2, ar:Landroid/os/AsyncResult;
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 318
    .local v3, efid:I
    iget-object v7, p0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 319
    .local v6, waiters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Message;>;"
    iget-object v7, p0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->delete(I)V

    .line 321
    iget-object v7, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v7, :cond_26

    .line 322
    iget-object v8, p0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;

    iget-object v7, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v8, v3, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 324
    :cond_26
    invoke-direct {p0, v6, v2}, Lcom/android/internal/telephony/AdnRecordCache;->notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V

    goto :goto_5

    .line 327
    .end local v2       #ar:Landroid/os/AsyncResult;,
    .end local v3       #efid:I,
    .end local v6       #waiters:Ljava/util/ArrayList;,, "Ljava/util/ArrayList<Landroid/os/Message;>;"
    :pswitch_2a
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 328
    .restart local v2       #ar:Landroid/os/AsyncResult;,
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 329
    .restart local v3       #efid:I,
    iget v4, p1, Landroid/os/Message;->arg2:I

    .line 330
    .local v4, index:I
    iget-object v7, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/telephony/AdnRecord;

    move-object v0, v7

    check-cast v0, Lcom/android/internal/telephony/AdnRecord;

    move-object v1, v0

    .line 332
    .local v1, adn:Lcom/android/internal/telephony/AdnRecord;
    iget-object v7, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v7, :cond_4c

    .line 333
    iget-object v7, p0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    const/4 v8, 0x1

    sub-int v8, v4, v8

    invoke-virtual {v7, v8, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 336
    :cond_4c
    iget-object v7, p0, Lcom/android/internal/telephony/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Message;

    .line 337
    .local v5, response:Landroid/os/Message;
    iget-object v7, p0, Lcom/android/internal/telephony/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->delete(I)V

    .line 339
    const/4 v7, 0x0

    iget-object v8, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v5, v7, v8}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 340
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto :goto_5

    .line 311
    nop

    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_6
        :pswitch_2a
    .end packed-switch
.end method

.method public requestLoadAllAdnLike(IILandroid/os/Message;)V
    .registers 10
    .parameter "efid"
    .parameter "extensionEf"
    .parameter "response"

    .prologue
    .line 235
    const/16 v2, 0x4f30

    if-ne p1, v2, :cond_18

    .line 236
    iget-object v2, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loadEfFilesFromUsim()Ljava/util/ArrayList;

    move-result-object v0

    .line 242
    .local v0, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AdnRecord;>;"
    :goto_a
    if-eqz v0, :cond_1d

    .line 243
    if-eqz p3, :cond_17

    .line 244
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iput-object v0, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 245
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 285
    :cond_17
    :goto_17
    return-void

    .line 238
    .end local v0       #result:Ljava/util/ArrayList;,, "Ljava/util/ArrayList<Lcom/android/internal/telephony/AdnRecord;>;"
    :cond_18
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/AdnRecordCache;->getRecordsIfLoaded(I)Ljava/util/ArrayList;

    move-result-object v0

    .restart local v0       #result:Ljava/util/ArrayList;,, "Ljava/util/ArrayList<Lcom/android/internal/telephony/AdnRecord;>;"
    goto :goto_a

    .line 253
    :cond_1d
    iget-object v2, p0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 255
    .local v1, waiters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Message;>;"
    if-eqz v1, :cond_2b

    .line 259
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 265
    :cond_2b
    new-instance v1, Ljava/util/ArrayList;

    .end local v1       #waiters:Ljava/util/ArrayList;,, "Ljava/util/ArrayList<Landroid/os/Message;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 266
    .restart local v1       #waiters:Ljava/util/ArrayList;,, "Ljava/util/ArrayList<Landroid/os/Message;>;"
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    iget-object v2, p0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 271
    if-gez p2, :cond_5e

    .line 274
    if-eqz p3, :cond_17

    .line 275
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EF is not known ADN-like EF:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 277
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_17

    .line 283
    :cond_5e
    new-instance v2, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v3, p0, Lcom/android/internal/telephony/AdnRecordCache;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v3, p1, v4}, Lcom/android/internal/telephony/AdnRecordCache;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, p1, p2, v3}, Lcom/android/internal/telephony/AdnRecordLoader;->loadAllFromEF(IILandroid/os/Message;)V

    goto :goto_17
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 71
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->reset()V

    .line 73
    invoke-direct {p0}, Lcom/android/internal/telephony/AdnRecordCache;->clearWaiters()V

    .line 74
    invoke-direct {p0}, Lcom/android/internal/telephony/AdnRecordCache;->clearUserWriters()V

    .line 76
    return-void
.end method

.method public updateAdnByIndex(ILcom/android/internal/telephony/AdnRecord;ILjava/lang/String;Landroid/os/Message;)V
    .registers 14
    .parameter "efid"
    .parameter "adn"
    .parameter "recordIndex"
    .parameter "pin2"
    .parameter "response"

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/AdnRecordCache;->extensionEfForEf(I)I

    move-result v3

    .line 145
    .local v3, extensionEF:I
    if-gez v3, :cond_1d

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EF is not known ADN-like EF:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p5, v0}, Lcom/android/internal/telephony/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 161
    :goto_1c
    return-void

    .line 150
    :cond_1d
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Message;

    .line 151
    .local v7, pendingResponse:Landroid/os/Message;
    if-eqz v7, :cond_3e

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Have pending update for EF:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p5, v0}, Lcom/android/internal/telephony/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_1c

    .line 156
    :cond_3e
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 158
    new-instance v0, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecordCache;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    const/4 v1, 0x2

    invoke-virtual {p0, v1, p1, p3, p2}, Lcom/android/internal/telephony/AdnRecordCache;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    move-object v1, p2

    move v2, p1

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    goto :goto_1c
.end method

.method public updateAdnBySearch(ILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;Ljava/lang/String;Landroid/os/Message;)V
    .registers 22
    .parameter "efid"
    .parameter "oldAdn"
    .parameter "newAdn"
    .parameter "pin2"
    .parameter "response"

    .prologue
    .line 181
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/AdnRecordCache;->extensionEfForEf(I)I

    move-result v8

    .line 183
    .local v8, extensionEF:I
    if-gez v8, :cond_25

    .line 184
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF is not known ADN-like EF:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 223
    :goto_24
    return-void

    .line 189
    :cond_25
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/AdnRecordCache;->getRecordsIfLoaded(I)Ljava/util/ArrayList;

    move-result-object v14

    .line 191
    .local v14, oldAdnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AdnRecord;>;"
    if-nez v14, :cond_4a

    .line 192
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Adn list not exist for EF:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_24

    .line 196
    :cond_4a
    const/4 v9, -0x1

    .line 197
    .local v9, index:I
    const/4 v12, 0x1

    .line 198
    .local v12, count:I
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/AdnRecord;>;"
    :goto_50
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_66

    .line 199
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/AdnRecord;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/AdnRecord;->isEqual(Lcom/android/internal/telephony/AdnRecord;)Z

    move-result v5

    if-eqz v5, :cond_88

    .line 200
    move v9, v12

    .line 206
    :cond_66
    const/4 v5, -0x1

    if-ne v9, v5, :cond_8b

    .line 207
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Adn record don\'t exist for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_24

    .line 203
    :cond_88
    add-int/lit8 v12, v12, 0x1

    goto :goto_50

    .line 211
    :cond_8b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/Message;

    .line 213
    .local v15, pendingResponse:Landroid/os/Message;
    if-eqz v15, :cond_bb

    .line 214
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Have pending update for EF:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_24

    .line 218
    :cond_bb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, p1

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 220
    new-instance v5, Lcom/android/internal/telephony/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecordCache;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    const/4 v6, 0x2

    move-object/from16 v0, p0

    move v1, v6

    move/from16 v2, p1

    move v3, v9

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/AdnRecordCache;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    move-object/from16 v6, p3

    move/from16 v7, p1

    move-object/from16 v10, p4

    invoke-virtual/range {v5 .. v11}, Lcom/android/internal/telephony/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_24
.end method
