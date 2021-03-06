.class Landroid/net/http/ConnectionThread;
.super Ljava/lang/Thread;
.source "ConnectionThread.java"



# static fields
.field static final WAIT_TICK:I = 0x3e8

.field static final WAIT_TIMEOUT:I = 0x1388

.field static sRunning:Ljava/util/concurrent/atomic/AtomicInteger;



# instance fields
.field mConnection:Landroid/net/http/Connection;

.field private mConnectionManager:Landroid/net/http/RequestQueue$ConnectionManager;

.field private mContext:Landroid/content/Context;

.field private volatile mCurrentHost:Lorg/apache/http/HttpHost;

.field mCurrentThreadTime:J

.field private mId:I

.field private volatile mNewRequest:Landroid/net/http/Request;

.field private mRequestFeeder:Landroid/net/http/RequestFeeder;

.field private volatile mRunning:Z

.field mTotalThreadTime:J

.field private mWaiting:Z



# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Landroid/net/http/ConnectionThread;->sRunning:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;ILandroid/net/http/RequestQueue$ConnectionManager;Landroid/net/http/RequestFeeder;)V
    .registers 8
    .parameter "context"
    .parameter "id"
    .parameter "connectionManager"
    .parameter "requestFeeder"

    .prologue
    const/4 v2, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/http/ConnectionThread;->mRunning:Z

    .line 57
    iput-object p1, p0, Landroid/net/http/ConnectionThread;->mContext:Landroid/content/Context;

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/http/ConnectionThread;->setName(Ljava/lang/String;)V

    .line 59
    iput p2, p0, Landroid/net/http/ConnectionThread;->mId:I

    .line 60
    iput-object p3, p0, Landroid/net/http/ConnectionThread;->mConnectionManager:Landroid/net/http/RequestQueue$ConnectionManager;

    .line 61
    iput-object p4, p0, Landroid/net/http/ConnectionThread;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    .line 62
    iput-object v2, p0, Landroid/net/http/ConnectionThread;->mCurrentHost:Lorg/apache/http/HttpHost;

    .line 63
    iput-object v2, p0, Landroid/net/http/ConnectionThread;->mNewRequest:Landroid/net/http/Request;

    .line 64
    return-void
.end method


# virtual methods
.method public getCurrentHost()Lorg/apache/http/HttpHost;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Landroid/net/http/ConnectionThread;->mCurrentHost:Lorg/apache/http/HttpHost;

    return-object v0
.end method

.method public requestStop()V
    .registers 3

    .prologue
    .line 67
    iget-object v0, p0, Landroid/net/http/ConnectionThread;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    monitor-enter v0

    .line 68
    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Landroid/net/http/ConnectionThread;->mRunning:Z

    .line 69
    iget-object v1, p0, Landroid/net/http/ConnectionThread;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 70
    monitor-exit v0

    .line 71
    return-void

    .line 70
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public run()V
    .registers 12

    .prologue
    const/4 v4, 0x1

    const-wide/16 v9, 0x0

    const/4 v8, 0x0

    .line 86
    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 94
    iput-wide v9, p0, Landroid/net/http/ConnectionThread;->mCurrentThreadTime:J

    .line 95
    iput-wide v9, p0, Landroid/net/http/ConnectionThread;->mTotalThreadTime:J

    .line 96
    sget-object v4, Landroid/net/http/ConnectionThread;->sRunning:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 98
    :cond_10
    :goto_10
    iget-boolean v4, p0, Landroid/net/http/ConnectionThread;->mRunning:Z

    if-eqz v4, :cond_c7

    .line 99
    iget-wide v4, p0, Landroid/net/http/ConnectionThread;->mCurrentThreadTime:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_22

    .line 100
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/net/http/ConnectionThread;->mCurrentThreadTime:J

    .line 106
    :cond_22
    iget-object v4, p0, Landroid/net/http/ConnectionThread;->mNewRequest:Landroid/net/http/Request;

    if-eqz v4, :cond_5c

    .line 107
    iget-object v0, p0, Landroid/net/http/ConnectionThread;->mNewRequest:Landroid/net/http/Request;

    .line 108
    .local v0, request:Landroid/net/http/Request;
    iput-object v8, p0, Landroid/net/http/ConnectionThread;->mNewRequest:Landroid/net/http/Request;

    .line 113
    :goto_2a
    if-nez v0, :cond_63

    .line 114
    iget-object v4, p0, Landroid/net/http/ConnectionThread;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    monitor-enter v4

    .line 116
    const/4 v5, 0x1

    :try_start_30
    iput-boolean v5, p0, Landroid/net/http/ConnectionThread;->mWaiting:Z

    .line 117
    sget-object v5, Landroid/net/http/ConnectionThread;->sRunning:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 118
    iget-object v1, p0, Landroid/net/http/ConnectionThread;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    check-cast v1, Landroid/net/http/RequestQueue;

    .line 119
    .local v1, rq:Landroid/net/http/RequestQueue;
    invoke-virtual {v1}, Landroid/net/http/RequestQueue;->checkPageFinished()V
    :try_end_3e
    .catchall {:try_start_30 .. :try_end_3e} :catchall_59

    .line 121
    :try_start_3e
    iget-object v5, p0, Landroid/net/http/ConnectionThread;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_43
    .catchall {:try_start_3e .. :try_end_43} :catchall_59
    .catch Ljava/lang/InterruptedException; {:try_start_3e .. :try_end_43} :catch_cd

    .line 124
    :goto_43
    const/4 v5, 0x0

    :try_start_44
    iput-boolean v5, p0, Landroid/net/http/ConnectionThread;->mWaiting:Z

    .line 125
    sget-object v5, Landroid/net/http/ConnectionThread;->sRunning:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 126
    iget-wide v5, p0, Landroid/net/http/ConnectionThread;->mCurrentThreadTime:J

    cmp-long v5, v5, v9

    if-eqz v5, :cond_57

    .line 127
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/net/http/ConnectionThread;->mCurrentThreadTime:J

    .line 131
    :cond_57
    monitor-exit v4

    goto :goto_10

    .end local v1       #rq:Landroid/net/http/RequestQueue;,
    :catchall_59
    move-exception v5

    monitor-exit v4
    :try_end_5b
    .catchall {:try_start_44 .. :try_end_5b} :catchall_59

    throw v5

    .line 110
    .end local v0       #request:Landroid/net/http/Request;,
    :cond_5c
    iget-object v4, p0, Landroid/net/http/ConnectionThread;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    invoke-interface {v4}, Landroid/net/http/RequestFeeder;->getRequest()Landroid/net/http/Request;

    move-result-object v0

    .restart local v0       #request:Landroid/net/http/Request;,
    goto :goto_2a

    .line 137
    :cond_63
    iget-object v4, v0, Landroid/net/http/Request;->mHost:Lorg/apache/http/HttpHost;

    iput-object v4, p0, Landroid/net/http/ConnectionThread;->mCurrentHost:Lorg/apache/http/HttpHost;

    .line 138
    monitor-enter p0

    .line 139
    :try_start_68
    iget-object v4, p0, Landroid/net/http/ConnectionThread;->mConnectionManager:Landroid/net/http/RequestQueue$ConnectionManager;

    iget-object v5, p0, Landroid/net/http/ConnectionThread;->mContext:Landroid/content/Context;

    iget-object v6, v0, Landroid/net/http/Request;->mHost:Lorg/apache/http/HttpHost;

    invoke-interface {v4, v5, v6}, Landroid/net/http/RequestQueue$ConnectionManager;->getConnection(Landroid/content/Context;Lorg/apache/http/HttpHost;)Landroid/net/http/Connection;

    move-result-object v4

    iput-object v4, p0, Landroid/net/http/ConnectionThread;->mConnection:Landroid/net/http/Connection;

    .line 140
    iget-object v4, p0, Landroid/net/http/ConnectionThread;->mConnection:Landroid/net/http/Connection;

    invoke-virtual {v4, p0}, Landroid/net/http/Connection;->setConnectionThread(Landroid/net/http/ConnectionThread;)V

    .line 141
    monitor-exit p0
    :try_end_7a
    .catchall {:try_start_68 .. :try_end_7a} :catchall_bb

    .line 142
    iget-object v4, p0, Landroid/net/http/ConnectionThread;->mConnection:Landroid/net/http/Connection;

    invoke-virtual {v4, v0}, Landroid/net/http/Connection;->processRequests(Landroid/net/http/Request;)V

    .line 143
    iget-object v4, p0, Landroid/net/http/ConnectionThread;->mConnection:Landroid/net/http/Connection;

    invoke-virtual {v4}, Landroid/net/http/Connection;->getCanPersist()Z

    move-result v4

    if-eqz v4, :cond_be

    .line 144
    iget-object v4, p0, Landroid/net/http/ConnectionThread;->mConnectionManager:Landroid/net/http/RequestQueue$ConnectionManager;

    iget-object v5, p0, Landroid/net/http/ConnectionThread;->mConnection:Landroid/net/http/Connection;

    invoke-interface {v4, v5}, Landroid/net/http/RequestQueue$ConnectionManager;->recycleConnection(Landroid/net/http/Connection;)Z

    move-result v4

    if-nez v4, :cond_96

    .line 145
    iget-object v4, p0, Landroid/net/http/ConnectionThread;->mConnection:Landroid/net/http/Connection;

    invoke-virtual {v4}, Landroid/net/http/Connection;->closeConnection()V

    .line 150
    :cond_96
    :goto_96
    monitor-enter p0

    .line 151
    :try_start_97
    iget-object v4, p0, Landroid/net/http/ConnectionThread;->mConnection:Landroid/net/http/Connection;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/net/http/Connection;->setConnectionThread(Landroid/net/http/ConnectionThread;)V

    .line 152
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/net/http/ConnectionThread;->mConnection:Landroid/net/http/Connection;

    .line 153
    monitor-exit p0
    :try_end_a1
    .catchall {:try_start_97 .. :try_end_a1} :catchall_c4

    .line 155
    iput-object v8, p0, Landroid/net/http/ConnectionThread;->mCurrentHost:Lorg/apache/http/HttpHost;

    .line 157
    iget-wide v4, p0, Landroid/net/http/ConnectionThread;->mCurrentThreadTime:J

    cmp-long v4, v4, v9

    if-lez v4, :cond_10

    .line 158
    iget-wide v2, p0, Landroid/net/http/ConnectionThread;->mCurrentThreadTime:J

    .line 159
    .local v2, start:J
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/net/http/ConnectionThread;->mCurrentThreadTime:J

    .line 160
    iget-wide v4, p0, Landroid/net/http/ConnectionThread;->mTotalThreadTime:J

    iget-wide v6, p0, Landroid/net/http/ConnectionThread;->mCurrentThreadTime:J

    sub-long/2addr v6, v2

    add-long/2addr v4, v6

    iput-wide v4, p0, Landroid/net/http/ConnectionThread;->mTotalThreadTime:J

    goto/16 :goto_10

    .line 141
    .end local v2       #start:J,
    :catchall_bb
    move-exception v4

    :try_start_bc
    monitor-exit p0
    :try_end_bd
    .catchall {:try_start_bc .. :try_end_bd} :catchall_bb

    throw v4

    .line 148
    :cond_be
    iget-object v4, p0, Landroid/net/http/ConnectionThread;->mConnection:Landroid/net/http/Connection;

    invoke-virtual {v4}, Landroid/net/http/Connection;->closeConnection()V

    goto :goto_96

    .line 153
    :catchall_c4
    move-exception v4

    :try_start_c5
    monitor-exit p0
    :try_end_c6
    .catchall {:try_start_c5 .. :try_end_c6} :catchall_c4

    throw v4

    .line 165
    .end local v0       #request:Landroid/net/http/Request;,
    :cond_c7
    sget-object v4, Landroid/net/http/ConnectionThread;->sRunning:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 166
    return-void

    .line 122
    .restart local v0       #request:Landroid/net/http/Request;,
    .restart local v1       #rq:Landroid/net/http/RequestQueue;,
    :catch_cd
    move-exception v5

    goto/16 :goto_43
.end method

.method public setNewRequest(Landroid/net/http/Request;)V
    .registers 2
    .parameter "req"

    .prologue
    .line 78
    iput-object p1, p0, Landroid/net/http/ConnectionThread;->mNewRequest:Landroid/net/http/Request;

    .line 79
    return-void
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .registers 5

    .prologue
    const-string v2, " "

    .line 169
    monitor-enter p0

    :try_start_3
    iget-object v2, p0, Landroid/net/http/ConnectionThread;->mConnection:Landroid/net/http/Connection;

    if-nez v2, :cond_3d

    const-string v2, ""

    move-object v1, v2

    .line 170
    .local v1, con:Ljava/lang/String;
    :goto_a
    iget-boolean v2, p0, Landroid/net/http/ConnectionThread;->mWaiting:Z

    if-eqz v2, :cond_45

    const-string/jumbo v2, "w"

    move-object v0, v2

    .line 171
    .local v0, active:Ljava/lang/String;
    :goto_12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/net/http/ConnectionThread;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3a
    .catchall {:try_start_3 .. :try_end_3a} :catchall_49

    move-result-object v2

    monitor-exit p0

    return-object v2

    .line 169
    .end local v0       #active:Ljava/lang/String;,
    .end local v1       #con:Ljava/lang/String;,
    :cond_3d
    :try_start_3d
    iget-object v2, p0, Landroid/net/http/ConnectionThread;->mConnection:Landroid/net/http/Connection;

    invoke-virtual {v2}, Landroid/net/http/Connection;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    goto :goto_a

    .line 170
    .restart local v1       #con:Ljava/lang/String;,
    :cond_45
    const-string v2, "a"
    :try_end_47
    .catchall {:try_start_3d .. :try_end_47} :catchall_49

    move-object v0, v2

    goto :goto_12

    .line 169
    .end local v1       #con:Ljava/lang/String;,
    :catchall_49
    move-exception v2

    monitor-exit p0

    throw v2
.end method
