.class public Landroid/app/QueuedWork;
.super Ljava/lang/Object;
.source "QueuedWork.java"



# static fields
.field private static final sPendingWorkFinishers:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static sSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;



# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Landroid/app/QueuedWork;->sPendingWorkFinishers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 41
    const/4 v0, 0x0

    sput-object v0, Landroid/app/QueuedWork;->sSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(Ljava/lang/Runnable;)V
    .registers 2
    .parameter "finisher"

    .prologue
    .line 70
    sget-object v0, Landroid/app/QueuedWork;->sPendingWorkFinishers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 71
    return-void
.end method

.method public static remove(Ljava/lang/Runnable;)V
    .registers 2
    .parameter "finisher"

    .prologue
    .line 74
    sget-object v0, Landroid/app/QueuedWork;->sPendingWorkFinishers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    .line 75
    return-void
.end method

.method public static singleThreadExecutor()Ljava/util/concurrent/ExecutorService;
    .registers 2

    .prologue
    .line 48
    const-class v0, Landroid/app/QueuedWork;

    monitor-enter v0

    .line 49
    :try_start_3
    sget-object v1, Landroid/app/QueuedWork;->sSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_d

    .line 51
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    sput-object v1, Landroid/app/QueuedWork;->sSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 53
    :cond_d
    sget-object v1, Landroid/app/QueuedWork;->sSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    monitor-exit v0

    return-object v1

    .line 54
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public static waitToFinish()V
    .registers 2

    .prologue
    .line 87
    :goto_0
    sget-object v1, Landroid/app/QueuedWork;->sPendingWorkFinishers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .local v0, toFinish:Ljava/lang/Runnable;
    if-eqz v0, :cond_e

    .line 88
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 90
    :cond_e
    return-void
.end method
