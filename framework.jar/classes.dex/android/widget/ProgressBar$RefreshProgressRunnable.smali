.class Landroid/widget/ProgressBar$RefreshProgressRunnable;
.super Ljava/lang/Object;
.source "ProgressBar.java"


# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RefreshProgressRunnable"
.end annotation


# instance fields
.field private mFromUser:Z

.field private mId:I

.field private mProgress:I

.field final synthetic this$0:Landroid/widget/ProgressBar;



# direct methods
.method constructor <init>(Landroid/widget/ProgressBar;IIZ)V
    .registers 5
    .parameter
    .parameter "id"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 470
    iput-object p1, p0, Landroid/widget/ProgressBar$RefreshProgressRunnable;->this$0:Landroid/widget/ProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 471
    iput p2, p0, Landroid/widget/ProgressBar$RefreshProgressRunnable;->mId:I

    .line 472
    iput p3, p0, Landroid/widget/ProgressBar$RefreshProgressRunnable;->mProgress:I

    .line 473
    iput-boolean p4, p0, Landroid/widget/ProgressBar$RefreshProgressRunnable;->mFromUser:Z

    .line 474
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 477
    iget-object v0, p0, Landroid/widget/ProgressBar$RefreshProgressRunnable;->this$0:Landroid/widget/ProgressBar;

    iget v1, p0, Landroid/widget/ProgressBar$RefreshProgressRunnable;->mId:I

    iget v2, p0, Landroid/widget/ProgressBar$RefreshProgressRunnable;->mProgress:I

    iget-boolean v3, p0, Landroid/widget/ProgressBar$RefreshProgressRunnable;->mFromUser:Z

    invoke-static {v0, v1, v2, v3}, Landroid/widget/ProgressBar;->access$000(Landroid/widget/ProgressBar;IIZ)V

    .line 479
    iget-object v0, p0, Landroid/widget/ProgressBar$RefreshProgressRunnable;->this$0:Landroid/widget/ProgressBar;

    invoke-static {v0, p0}, Landroid/widget/ProgressBar;->access$102(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar$RefreshProgressRunnable;)Landroid/widget/ProgressBar$RefreshProgressRunnable;

    .line 480
    return-void
.end method

.method public setup(IIZ)V
    .registers 4
    .parameter "id"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 483
    iput p1, p0, Landroid/widget/ProgressBar$RefreshProgressRunnable;->mId:I

    .line 484
    iput p2, p0, Landroid/widget/ProgressBar$RefreshProgressRunnable;->mProgress:I

    .line 485
    iput-boolean p3, p0, Landroid/widget/ProgressBar$RefreshProgressRunnable;->mFromUser:Z

    .line 486
    return-void
.end method
