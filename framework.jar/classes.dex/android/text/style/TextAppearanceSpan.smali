.class public Landroid/text/style/TextAppearanceSpan;
.super Landroid/text/style/MetricAffectingSpan;
.source "TextAppearanceSpan.java"


# interfaces
.implements Landroid/text/ParcelableSpan;


# instance fields
.field private final mStyle:I

.field private final mTextColor:Landroid/content/res/ColorStateList;

.field private final mTextColorLink:Landroid/content/res/ColorStateList;

.field private final mTextSize:I

.field private final mTypeface:Ljava/lang/String;



# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4
    .parameter "context"
    .parameter "appearance"

    .prologue
    .line 45
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;II)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .registers 9
    .parameter "context"
    .parameter "appearance"
    .parameter "colorList"

    .prologue
    const/4 v4, 0x0

    .line 57
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 60
    sget-object v3, Lcom/android/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 64
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 66
    .local v1, textColor:Landroid/content/res/ColorStateList;
    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Landroid/text/style/TextAppearanceSpan;->mTextColorLink:Landroid/content/res/ColorStateList;

    .line 68
    const/4 v3, -0x1

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Landroid/text/style/TextAppearanceSpan;->mTextSize:I

    .line 71
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroid/text/style/TextAppearanceSpan;->mStyle:I

    .line 72
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 74
    .local v2, tf:I
    packed-switch v2, :pswitch_data_58

    .line 88
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/text/style/TextAppearanceSpan;->mTypeface:Ljava/lang/String;

    .line 92
    :goto_2f
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 94
    if-ltz p3, :cond_44

    .line 95
    const v3, 0x1030005

    sget-object v4, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 98
    invoke-virtual {v0, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 99
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 102
    :cond_44
    iput-object v1, p0, Landroid/text/style/TextAppearanceSpan;->mTextColor:Landroid/content/res/ColorStateList;

    .line 103
    return-void

    .line 76
    :pswitch_47
    const-string/jumbo v3, "sans"

    iput-object v3, p0, Landroid/text/style/TextAppearanceSpan;->mTypeface:Ljava/lang/String;

    goto :goto_2f

    .line 80
    :pswitch_4d
    const-string/jumbo v3, "serif"

    iput-object v3, p0, Landroid/text/style/TextAppearanceSpan;->mTypeface:Ljava/lang/String;

    goto :goto_2f

    .line 84
    :pswitch_53
    const-string v3, "monospace"

    iput-object v3, p0, Landroid/text/style/TextAppearanceSpan;->mTypeface:Ljava/lang/String;

    goto :goto_2f

    .line 74
    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_47
        :pswitch_4d
        :pswitch_53
    .end packed-switch
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .parameter "src"

    .prologue
    const/4 v1, 0x0

    .line 118
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTypeface:Ljava/lang/String;

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/TextAppearanceSpan;->mStyle:I

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextSize:I

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_37

    .line 123
    sget-object v0, Landroid/content/res/ColorStateList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColor:Landroid/content/res/ColorStateList;

    .line 127
    :goto_26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3a

    .line 128
    sget-object v0, Landroid/content/res/ColorStateList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColorLink:Landroid/content/res/ColorStateList;

    .line 132
    :goto_36
    return-void

    .line 125
    :cond_37
    iput-object v1, p0, Landroid/text/style/TextAppearanceSpan;->mTextColor:Landroid/content/res/ColorStateList;

    goto :goto_26

    .line 130
    :cond_3a
    iput-object v1, p0, Landroid/text/style/TextAppearanceSpan;->mTextColorLink:Landroid/content/res/ColorStateList;

    goto :goto_36
.end method

.method public constructor <init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V
    .registers 6
    .parameter "family"
    .parameter "style"
    .parameter "size"
    .parameter "color"
    .parameter "linkColor"

    .prologue
    .line 110
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 111
    iput-object p1, p0, Landroid/text/style/TextAppearanceSpan;->mTypeface:Ljava/lang/String;

    .line 112
    iput p2, p0, Landroid/text/style/TextAppearanceSpan;->mStyle:I

    .line 113
    iput p3, p0, Landroid/text/style/TextAppearanceSpan;->mTextSize:I

    .line 114
    iput-object p4, p0, Landroid/text/style/TextAppearanceSpan;->mTextColor:Landroid/content/res/ColorStateList;

    .line 115
    iput-object p5, p0, Landroid/text/style/TextAppearanceSpan;->mTextColorLink:Landroid/content/res/ColorStateList;

    .line 116
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 139
    const/4 v0, 0x0

    return v0
.end method

.method public getFamily()Ljava/lang/String;
    .registers 2

    .prologue
    .line 165
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTypeface:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkTextColor()Landroid/content/res/ColorStateList;
    .registers 2

    .prologue
    .line 181
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColorLink:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getSpanTypeId()I
    .registers 2

    .prologue
    .line 135
    const/16 v0, 0x11

    return v0
.end method

.method public getTextColor()Landroid/content/res/ColorStateList;
    .registers 2

    .prologue
    .line 173
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTextSize()I
    .registers 2

    .prologue
    .line 189
    iget v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextSize:I

    return v0
.end method

.method public getTextStyle()I
    .registers 2

    .prologue
    .line 197
    iget v0, p0, Landroid/text/style/TextAppearanceSpan;->mStyle:I

    return v0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .registers 5
    .parameter "ds"

    .prologue
    const/4 v2, 0x0

    .line 202
    invoke-virtual {p0, p1}, Landroid/text/style/TextAppearanceSpan;->updateMeasureState(Landroid/text/TextPaint;)V

    .line 204
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_13

    .line 205
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColor:Landroid/content/res/ColorStateList;

    iget-object v1, p1, Landroid/text/TextPaint;->drawableState:[I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 208
    :cond_13
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColorLink:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_21

    .line 209
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColor:Landroid/content/res/ColorStateList;

    iget-object v1, p1, Landroid/text/TextPaint;->drawableState:[I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p1, Landroid/text/TextPaint;->linkColor:I

    .line 211
    :cond_21
    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .registers 6
    .parameter "ds"

    .prologue
    .line 215
    iget-object v3, p0, Landroid/text/style/TextAppearanceSpan;->mTypeface:Ljava/lang/String;

    if-nez v3, :cond_8

    iget v3, p0, Landroid/text/style/TextAppearanceSpan;->mStyle:I

    if-eqz v3, :cond_3c

    .line 216
    :cond_8
    invoke-virtual {p1}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    .line 217
    .local v2, tf:Landroid/graphics/Typeface;
    const/4 v1, 0x0

    .line 219
    .local v1, style:I
    if-eqz v2, :cond_13

    .line 220
    invoke-virtual {v2}, Landroid/graphics/Typeface;->getStyle()I

    move-result v1

    .line 223
    :cond_13
    iget v3, p0, Landroid/text/style/TextAppearanceSpan;->mStyle:I

    or-int/2addr v1, v3

    .line 225
    iget-object v3, p0, Landroid/text/style/TextAppearanceSpan;->mTypeface:Ljava/lang/String;

    if-eqz v3, :cond_47

    .line 226
    iget-object v3, p0, Landroid/text/style/TextAppearanceSpan;->mTypeface:Ljava/lang/String;

    invoke-static {v3, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    .line 233
    :goto_20
    invoke-virtual {v2}, Landroid/graphics/Typeface;->getStyle()I

    move-result v3

    xor-int/lit8 v3, v3, -0x1

    and-int v0, v1, v3

    .line 235
    .local v0, fake:I
    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_30

    .line 236
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 239
    :cond_30
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_39

    .line 240
    const/high16 v3, -0x4180

    invoke-virtual {p1, v3}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 243
    :cond_39
    invoke-virtual {p1, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 246
    .end local v0       #fake:I,
    .end local v1       #style:I,
    .end local v2       #tf:Landroid/graphics/Typeface;,
    :cond_3c
    iget v3, p0, Landroid/text/style/TextAppearanceSpan;->mTextSize:I

    if-lez v3, :cond_46

    .line 247
    iget v3, p0, Landroid/text/style/TextAppearanceSpan;->mTextSize:I

    int-to-float v3, v3

    invoke-virtual {p1, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 249
    :cond_46
    return-void

    .line 227
    .restart local v1       #style:I,
    .restart local v2       #tf:Landroid/graphics/Typeface;,
    :cond_47
    if-nez v2, :cond_4e

    .line 228
    invoke-static {v1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v2

    goto :goto_20

    .line 230
    :cond_4e
    invoke-static {v2, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v2

    goto :goto_20
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 143
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTypeface:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 144
    iget v0, p0, Landroid/text/style/TextAppearanceSpan;->mStyle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    iget v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2a

    .line 147
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/ColorStateList;->writeToParcel(Landroid/os/Parcel;I)V

    .line 152
    :goto_1d
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColorLink:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2e

    .line 153
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColorLink:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/ColorStateList;->writeToParcel(Landroid/os/Parcel;I)V

    .line 158
    :goto_29
    return-void

    .line 150
    :cond_2a
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1d

    .line 156
    :cond_2e
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_29
.end method
