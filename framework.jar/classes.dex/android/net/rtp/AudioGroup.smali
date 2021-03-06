.class public Landroid/net/rtp/AudioGroup;
.super Ljava/lang/Object;
.source "AudioGroup.java"



# static fields
.field public static final MODE_ECHO_SUPPRESSION:I = 0x3

.field public static final MODE_MUTED:I = 0x1

.field public static final MODE_NORMAL:I = 0x2

.field public static final MODE_ON_HOLD:I



# instance fields
.field private mMode:I

.field private mNative:I

.field private final mStreams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/net/rtp/AudioStream;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field



# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 86
    const-string/jumbo v0, "rtp_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/rtp/AudioGroup;->mMode:I

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/rtp/AudioGroup;->mStreams:Ljava/util/Map;

    .line 94
    return-void
.end method

.method private native add(IILjava/lang/String;ILjava/lang/String;I)V
.end method

.method private native remove(I)V
.end method


# virtual methods
.method declared-synchronized add(Landroid/net/rtp/AudioStream;Landroid/net/rtp/AudioCodec;I)V
    .registers 12
    .parameter "stream"
    .parameter "codec"
    .parameter "dtmfType"

    .prologue
    .line 117
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/net/rtp/AudioGroup;->mStreams:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_51

    move-result v0

    if-nez v0, :cond_47

    .line 119
    :try_start_9
    invoke-virtual {p1}, Landroid/net/rtp/AudioStream;->dup()I

    move-result v2

    .line 120
    .local v2, socket:I
    const-string v0, "%d %s %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p2, Landroid/net/rtp/AudioCodec;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x1

    iget-object v4, p2, Landroid/net/rtp/AudioCodec;->rtpmap:Ljava/lang/String;

    aput-object v4, v1, v3

    const/4 v3, 0x2

    iget-object v4, p2, Landroid/net/rtp/AudioCodec;->fmtp:Ljava/lang/String;

    aput-object v4, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 122
    .local v5, codecSpec:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/rtp/AudioStream;->getMode()I

    move-result v1

    invoke-virtual {p1}, Landroid/net/rtp/AudioStream;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/rtp/AudioStream;->getRemotePort()I

    move-result v4

    move-object v0, p0

    move v6, p3

    invoke-direct/range {v0 .. v6}, Landroid/net/rtp/AudioGroup;->add(IILjava/lang/String;ILjava/lang/String;I)V

    .line 125
    iget-object v0, p0, Landroid/net/rtp/AudioGroup;->mStreams:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_47
    .catchall {:try_start_9 .. :try_end_47} :catchall_51
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_47} :catch_49

    .line 130
    .end local v2       #socket:I,
    .end local v5       #codecSpec:Ljava/lang/String;,
    :cond_47
    monitor-exit p0

    return-void

    .line 126
    :catch_49
    move-exception v0

    move-object v7, v0

    .line 127
    .local v7, e:Ljava/lang/NullPointerException;
    :try_start_4b
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_51
    .catchall {:try_start_4b .. :try_end_51} :catchall_51

    .line 117
    .end local v7       #e:Ljava/lang/NullPointerException;,
    :catchall_51
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clear()V
    .registers 2

    .prologue
    .line 153
    monitor-enter p0

    const/4 v0, -0x1

    :try_start_2
    invoke-direct {p0, v0}, Landroid/net/rtp/AudioGroup;->remove(I)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 154
    monitor-exit p0

    return-void

    .line 153
    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 158
    invoke-virtual {p0}, Landroid/net/rtp/AudioGroup;->clear()V

    .line 159
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 160
    return-void
.end method

.method public getMode()I
    .registers 2

    .prologue
    .line 100
    iget v0, p0, Landroid/net/rtp/AudioGroup;->mMode:I

    return v0
.end method

.method declared-synchronized remove(Landroid/net/rtp/AudioStream;)V
    .registers 4
    .parameter "stream"

    .prologue
    .line 135
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Landroid/net/rtp/AudioGroup;->mStreams:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 136
    .local v0, socket:Ljava/lang/Integer;
    if-eqz v0, :cond_12

    .line 137
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/net/rtp/AudioGroup;->remove(I)V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 139
    :cond_12
    monitor-exit p0

    return-void

    .line 135
    .end local v0       #socket:Ljava/lang/Integer;,
    :catchall_14
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public synchronized native declared-synchronized sendDtmf(I)V
.end method

.method public synchronized native declared-synchronized setMode(I)V
.end method
