.class Landroid/net/FmcProvider$NotificationsThread;
.super Ljava/lang/Thread;
.source "FmcProvider.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/FmcProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationsThread"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/FmcProvider;



# direct methods
.method private constructor <init>(Landroid/net/FmcProvider;)V
    .registers 2
    .parameter

    .prologue
    .line 181
    iput-object p1, p0, Landroid/net/FmcProvider$NotificationsThread;->this$0:Landroid/net/FmcProvider;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/FmcProvider;Landroid/net/FmcProvider$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 181
    invoke-direct {p0, p1}, Landroid/net/FmcProvider$NotificationsThread;-><init>(Landroid/net/FmcProvider;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 183
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 185
    iget-object v0, p0, Landroid/net/FmcProvider$NotificationsThread;->this$0:Landroid/net/FmcProvider;

    new-instance v1, Landroid/net/FmcProvider$NotificationsThread$1;

    invoke-direct {v1, p0}, Landroid/net/FmcProvider$NotificationsThread$1;-><init>(Landroid/net/FmcProvider$NotificationsThread;)V

    invoke-static {v0, v1}, Landroid/net/FmcProvider;->access$202(Landroid/net/FmcProvider;Landroid/os/Handler;)Landroid/os/Handler;

    .line 205
    iget-object v0, p0, Landroid/net/FmcProvider$NotificationsThread;->this$0:Landroid/net/FmcProvider;

    invoke-static {v0}, Landroid/net/FmcProvider;->access$400(Landroid/net/FmcProvider;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 206
    iget-object v0, p0, Landroid/net/FmcProvider$NotificationsThread;->this$0:Landroid/net/FmcProvider;

    invoke-static {v0}, Landroid/net/FmcProvider;->access$500(Landroid/net/FmcProvider;)Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 207
    iget-object v0, p0, Landroid/net/FmcProvider$NotificationsThread;->this$0:Landroid/net/FmcProvider;

    invoke-static {v0}, Landroid/net/FmcProvider;->access$400(Landroid/net/FmcProvider;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 209
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 210
    return-void
.end method
