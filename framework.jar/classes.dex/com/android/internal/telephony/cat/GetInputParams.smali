.class Lcom/android/internal/telephony/cat/GetInputParams;
.super Lcom/android/internal/telephony/cat/CommandParams;
.source "CommandParams.java"



# instance fields
.field input:Lcom/android/internal/telephony/cat/Input;



# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/Input;)V
    .registers 4
    .parameter "cmdDet"
    .parameter "input"

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/GetInputParams;->input:Lcom/android/internal/telephony/cat/Input;

    .line 168
    iput-object p2, p0, Lcom/android/internal/telephony/cat/GetInputParams;->input:Lcom/android/internal/telephony/cat/Input;

    .line 169
    return-void
.end method


# virtual methods
.method setIcon(Landroid/graphics/Bitmap;)Z
    .registers 3
    .parameter "icon"

    .prologue
    .line 172
    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/android/internal/telephony/cat/GetInputParams;->input:Lcom/android/internal/telephony/cat/Input;

    if-eqz v0, :cond_a

    .line 173
    iget-object v0, p0, Lcom/android/internal/telephony/cat/GetInputParams;->input:Lcom/android/internal/telephony/cat/Input;

    iput-object p1, v0, Lcom/android/internal/telephony/cat/Input;->icon:Landroid/graphics/Bitmap;

    .line 175
    :cond_a
    const/4 v0, 0x1

    return v0
.end method
