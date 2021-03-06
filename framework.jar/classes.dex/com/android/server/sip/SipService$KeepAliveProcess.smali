.class Lcom/android/server/sip/SipService$KeepAliveProcess;
.super Ljava/lang/Object;
.source "SipService.java"


# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sip/SipService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeepAliveProcess"
.end annotation


# static fields
.field private static final INTERVAL:I = 0xa

.field private static final TAG:Ljava/lang/String; = "\\KEEPALIVE/"



# instance fields
.field private mRunning:Z

.field private mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

.field final synthetic this$0:Lcom/android/server/sip/SipService;



# direct methods
.method public constructor <init>(Lcom/android/server/sip/SipService;Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V
    .registers 4
    .parameter
    .parameter "session"

    .prologue
    .line 698
    iput-object p1, p0, Lcom/android/server/sip/SipService$KeepAliveProcess;->this$0:Lcom/android/server/sip/SipService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 696
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/sip/SipService$KeepAliveProcess;->mRunning:Z

    .line 699
    iput-object p2, p0, Lcom/android/server/sip/SipService$KeepAliveProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    .line 700
    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 710
    iget-object v2, p0, Lcom/android/server/sip/SipService$KeepAliveProcess;->this$0:Lcom/android/server/sip/SipService;

    monitor-enter v2

    .line 711
    :try_start_3
    iget-boolean v3, p0, Lcom/android/server/sip/SipService$KeepAliveProcess;->mRunning:Z

    if-nez v3, :cond_9

    monitor-exit v2

    .line 728
    :goto_8
    return-void

    .line 715
    :cond_9
    iget-object v3, p0, Lcom/android/server/sip/SipService$KeepAliveProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v3}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->duplicate()Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_2c

    move-result-object v0

    .line 717
    .local v0, session:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    :try_start_f
    invoke-virtual {v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->sendKeepAlive()V

    .line 718
    invoke-virtual {v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->isReRegisterRequired()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 721
    iget-object v3, p0, Lcom/android/server/sip/SipService$KeepAliveProcess;->this$0:Lcom/android/server/sip/SipService;

    invoke-static {v3}, Lcom/android/server/sip/SipService;->access$700(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeLock;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/sip/SipService$KeepAliveProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v3, v4}, Lcom/android/server/sip/SipWakeLock;->acquire(Ljava/lang/Object;)V

    .line 722
    iget-object v3, p0, Lcom/android/server/sip/SipService$KeepAliveProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    const/16 v4, 0xe10

    invoke-virtual {v3, v4}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->register(I)V
    :try_end_2a
    .catchall {:try_start_f .. :try_end_2a} :catchall_2c
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_2a} :catch_2f

    .line 727
    :cond_2a
    :goto_2a
    :try_start_2a
    monitor-exit v2

    goto :goto_8

    .end local v0       #session:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;,
    :catchall_2c
    move-exception v3

    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_2a .. :try_end_2e} :catchall_2c

    throw v3

    .line 724
    .restart local v0       #session:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;,
    :catch_2f
    move-exception v3

    move-object v1, v3

    .line 725
    .local v1, t:Ljava/lang/Throwable;
    :try_start_31
    const-string v3, "\\KEEPALIVE/"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "keepalive error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_49
    .catchall {:try_start_31 .. :try_end_49} :catchall_2c

    goto :goto_2a
.end method

.method public start()V
    .registers 3

    .prologue
    .line 703
    iget-boolean v0, p0, Lcom/android/server/sip/SipService$KeepAliveProcess;->mRunning:Z

    if-eqz v0, :cond_5

    .line 706
    :goto_4
    return-void

    .line 704
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/sip/SipService$KeepAliveProcess;->mRunning:Z

    .line 705
    iget-object v0, p0, Lcom/android/server/sip/SipService$KeepAliveProcess;->this$0:Lcom/android/server/sip/SipService;

    invoke-static {v0}, Lcom/android/server/sip/SipService;->access$1200(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipService$WakeupTimer;

    move-result-object v0

    const/16 v1, 0x2710

    invoke-virtual {v0, v1, p0}, Lcom/android/server/sip/SipService$WakeupTimer;->set(ILjava/lang/Runnable;)V

    goto :goto_4
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 733
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/sip/SipService$KeepAliveProcess;->mRunning:Z

    .line 734
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/sip/SipService$KeepAliveProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    .line 735
    iget-object v0, p0, Lcom/android/server/sip/SipService$KeepAliveProcess;->this$0:Lcom/android/server/sip/SipService;

    invoke-static {v0}, Lcom/android/server/sip/SipService;->access$1200(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipService$WakeupTimer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/sip/SipService$WakeupTimer;->cancel(Ljava/lang/Runnable;)V

    .line 736
    return-void
.end method
