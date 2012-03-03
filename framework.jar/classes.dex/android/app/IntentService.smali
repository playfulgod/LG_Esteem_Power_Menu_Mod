.class public abstract Landroid/app/IntentService;
.super Landroid/app/Service;
.source "IntentService.java"



# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IntentService$ServiceHandler;
    }
.end annotation


# instance fields
.field private mName:Ljava/lang/String;

.field private mRedelivery:Z

.field private volatile mServiceHandler:Landroid/app/IntentService$ServiceHandler;

.field private volatile mServiceLooper:Landroid/os/Looper;



# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "name"

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 71
    iput-object p1, p0, Landroid/app/IntentService;->mName:Ljava/lang/String;

    .line 72
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 129
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 4

    .prologue
    .line 100
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 101
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IntentService["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/IntentService;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 102
    .local v0, thread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 104
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Landroid/app/IntentService;->mServiceLooper:Landroid/os/Looper;

    .line 105
    new-instance v1, Landroid/app/IntentService$ServiceHandler;

    iget-object v2, p0, Landroid/app/IntentService;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Landroid/app/IntentService$ServiceHandler;-><init>(Landroid/app/IntentService;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/app/IntentService;->mServiceHandler:Landroid/app/IntentService$ServiceHandler;

    .line 106
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 124
    iget-object v0, p0, Landroid/app/IntentService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 125
    return-void
.end method

.method protected abstract onHandleIntent(Landroid/content/Intent;)V
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 5
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 110
    iget-object v1, p0, Landroid/app/IntentService;->mServiceHandler:Landroid/app/IntentService$ServiceHandler;

    invoke-virtual {v1}, Landroid/app/IntentService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 111
    .local v0, msg:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 112
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 113
    iget-object v1, p0, Landroid/app/IntentService;->mServiceHandler:Landroid/app/IntentService$ServiceHandler;

    invoke-virtual {v1, v0}, Landroid/app/IntentService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 114
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 5
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 118
    invoke-virtual {p0, p1, p3}, Landroid/app/IntentService;->onStart(Landroid/content/Intent;I)V

    .line 119
    iget-boolean v0, p0, Landroid/app/IntentService;->mRedelivery:Z

    if-eqz v0, :cond_9

    const/4 v0, 0x3

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x2

    goto :goto_8
.end method

.method public setIntentRedelivery(Z)V
    .registers 2
    .parameter "enabled"

    .prologue
    .line 91
    iput-boolean p1, p0, Landroid/app/IntentService;->mRedelivery:Z

    .line 92
    return-void
.end method