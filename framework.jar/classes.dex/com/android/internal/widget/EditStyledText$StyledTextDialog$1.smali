.class Lcom/android/internal/widget/EditStyledText$StyledTextDialog$1;
.super Ljava/lang/Object;
.source "EditStyledText.java"


# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/EditStyledText$StyledTextDialog;->onShowForegroundColorAlertDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/widget/EditStyledText$StyledTextDialog;



# direct methods
.method constructor <init>(Lcom/android/internal/widget/EditStyledText$StyledTextDialog;)V
    .registers 2
    .parameter

    .prologue
    .line 1372
    iput-object p1, p0, Lcom/android/internal/widget/EditStyledText$StyledTextDialog$1;->this$1:Lcom/android/internal/widget/EditStyledText$StyledTextDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1374
    const-string v1, "EETVM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mBuilder.onclick:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    iget-object v1, p0, Lcom/android/internal/widget/EditStyledText$StyledTextDialog$1;->this$1:Lcom/android/internal/widget/EditStyledText$StyledTextDialog;

    iget-object v1, v1, Lcom/android/internal/widget/EditStyledText$StyledTextDialog;->mColorInts:[Ljava/lang/CharSequence;

    aget-object v1, v1, p2

    check-cast v1, Ljava/lang/String;

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    const/high16 v2, 0x100

    sub-int v0, v1, v2

    .line 1377
    .local v0, color:I
    iget-object v1, p0, Lcom/android/internal/widget/EditStyledText$StyledTextDialog$1;->this$1:Lcom/android/internal/widget/EditStyledText$StyledTextDialog;

    iget-object v1, v1, Lcom/android/internal/widget/EditStyledText$StyledTextDialog;->mEST:Lcom/android/internal/widget/EditStyledText;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/EditStyledText;->setItemColor(I)V

    .line 1378
    return-void
.end method
