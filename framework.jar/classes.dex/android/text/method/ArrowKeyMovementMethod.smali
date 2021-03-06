.class public Landroid/text/method/ArrowKeyMovementMethod;
.super Ljava/lang/Object;
.source "ArrowKeyMovementMethod.java"


# interfaces
.implements Landroid/text/method/MovementMethod;


# static fields
.field private static final LAST_TAP_DOWN:Ljava/lang/Object;

.field private static sInstance:Landroid/text/method/ArrowKeyMovementMethod;



# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 291
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/text/method/ArrowKeyMovementMethod;->LAST_TAP_DOWN:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private down(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 8
    .parameter "widget"
    .parameter "buffer"

    .prologue
    const/4 v4, 0x1

    .line 64
    invoke-direct {p0, p2}, Landroid/text/method/ArrowKeyMovementMethod;->isCap(Landroid/text/Spannable;)Z

    move-result v1

    .line 65
    .local v1, cap:Z
    invoke-direct {p0, p2}, Landroid/text/method/ArrowKeyMovementMethod;->isAlt(Landroid/text/Spannable;)Z

    move-result v0

    .line 66
    .local v0, alt:Z
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 68
    .local v2, layout:Landroid/text/Layout;
    if-eqz v1, :cond_1f

    .line 69
    if-eqz v0, :cond_1a

    .line 70
    invoke-interface {p2}, Landroid/text/Spannable;->length()I

    move-result v3

    invoke-static {p2, v3}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    move v3, v4

    .line 80
    :goto_19
    return v3

    .line 73
    :cond_1a
    invoke-static {p2, v2}, Landroid/text/Selection;->extendDown(Landroid/text/Spannable;Landroid/text/Layout;)Z

    move-result v3

    goto :goto_19

    .line 76
    :cond_1f
    if-eqz v0, :cond_2a

    .line 77
    invoke-interface {p2}, Landroid/text/Spannable;->length()I

    move-result v3

    invoke-static {p2, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    move v3, v4

    .line 78
    goto :goto_19

    .line 80
    :cond_2a
    invoke-static {p2, v2}, Landroid/text/Selection;->moveDown(Landroid/text/Spannable;Landroid/text/Layout;)Z

    move-result v3

    goto :goto_19
.end method

.method private executeDown(Landroid/widget/TextView;Landroid/text/Spannable;I)Z
    .registers 6
    .parameter "widget"
    .parameter "buffer"
    .parameter "keyCode"

    .prologue
    .line 136
    const/4 v0, 0x0

    .line 138
    .local v0, handled:Z
    packed-switch p3, :pswitch_data_36

    .line 162
    :cond_4
    :goto_4
    if-eqz v0, :cond_c

    .line 163
    invoke-static {p2}, Landroid/text/method/MetaKeyKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    .line 164
    invoke-static {p2}, Landroid/text/method/MetaKeyKeyListener;->resetLockedMeta(Landroid/text/Spannable;)V

    .line 167
    :cond_c
    return v0

    .line 140
    :pswitch_d
    invoke-direct {p0, p1, p2}, Landroid/text/method/ArrowKeyMovementMethod;->up(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 141
    goto :goto_4

    .line 144
    :pswitch_13
    invoke-direct {p0, p1, p2}, Landroid/text/method/ArrowKeyMovementMethod;->down(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 145
    goto :goto_4

    .line 148
    :pswitch_19
    invoke-direct {p0, p1, p2}, Landroid/text/method/ArrowKeyMovementMethod;->left(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 149
    goto :goto_4

    .line 152
    :pswitch_1f
    invoke-direct {p0, p1, p2}, Landroid/text/method/ArrowKeyMovementMethod;->right(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 153
    goto :goto_4

    .line 156
    :pswitch_25
    const/high16 v1, 0x1

    invoke-static {p2, v1}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Landroid/widget/TextView;->showContextMenu()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 158
    const/4 v0, 0x1

    goto :goto_4

    .line 138
    nop

    :pswitch_data_36
    .packed-switch 0x13
        :pswitch_d
        :pswitch_13
        :pswitch_19
        :pswitch_1f
        :pswitch_25
    .end packed-switch
.end method

.method public static getInstance()Landroid/text/method/MovementMethod;
    .registers 1

    .prologue
    .line 283
    sget-object v0, Landroid/text/method/ArrowKeyMovementMethod;->sInstance:Landroid/text/method/ArrowKeyMovementMethod;

    if-nez v0, :cond_b

    .line 284
    new-instance v0, Landroid/text/method/ArrowKeyMovementMethod;

    invoke-direct {v0}, Landroid/text/method/ArrowKeyMovementMethod;-><init>()V

    sput-object v0, Landroid/text/method/ArrowKeyMovementMethod;->sInstance:Landroid/text/method/ArrowKeyMovementMethod;

    .line 287
    :cond_b
    sget-object v0, Landroid/text/method/ArrowKeyMovementMethod;->sInstance:Landroid/text/method/ArrowKeyMovementMethod;

    return-object v0
.end method

.method private isAlt(Landroid/text/Spannable;)Z
    .registers 4
    .parameter "buffer"

    .prologue
    const/4 v1, 0x1

    .line 38
    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-ne v0, v1, :cond_a

    move v0, v1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private isCap(Landroid/text/Spannable;)Z
    .registers 4
    .parameter "buffer"

    .prologue
    const/4 v1, 0x1

    .line 33
    invoke-static {p1, v1}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-eq v0, v1, :cond_f

    const/high16 v0, 0x1

    invoke-static {p1, v0}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-eqz v0, :cond_11

    :cond_f
    move v0, v1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private left(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 7
    .parameter "widget"
    .parameter "buffer"

    .prologue
    .line 86
    invoke-direct {p0, p2}, Landroid/text/method/ArrowKeyMovementMethod;->isCap(Landroid/text/Spannable;)Z

    move-result v1

    .line 87
    .local v1, cap:Z
    invoke-direct {p0, p2}, Landroid/text/method/ArrowKeyMovementMethod;->isAlt(Landroid/text/Spannable;)Z

    move-result v0

    .line 88
    .local v0, alt:Z
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 90
    .local v2, layout:Landroid/text/Layout;
    if-eqz v1, :cond_1a

    .line 91
    if-eqz v0, :cond_15

    .line 92
    invoke-static {p2, v2}, Landroid/text/Selection;->extendToLeftEdge(Landroid/text/Spannable;Landroid/text/Layout;)Z

    move-result v3

    .line 100
    :goto_14
    return v3

    .line 94
    :cond_15
    invoke-static {p2, v2}, Landroid/text/Selection;->extendLeft(Landroid/text/Spannable;Landroid/text/Layout;)Z

    move-result v3

    goto :goto_14

    .line 97
    :cond_1a
    if-eqz v0, :cond_21

    .line 98
    invoke-static {p2, v2}, Landroid/text/Selection;->moveToLeftEdge(Landroid/text/Spannable;Landroid/text/Layout;)Z

    move-result v3

    goto :goto_14

    .line 100
    :cond_21
    invoke-static {p2, v2}, Landroid/text/Selection;->moveLeft(Landroid/text/Spannable;Landroid/text/Layout;)Z

    move-result v3

    goto :goto_14
.end method

.method private right(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 7
    .parameter "widget"
    .parameter "buffer"

    .prologue
    .line 106
    invoke-direct {p0, p2}, Landroid/text/method/ArrowKeyMovementMethod;->isCap(Landroid/text/Spannable;)Z

    move-result v1

    .line 107
    .local v1, cap:Z
    invoke-direct {p0, p2}, Landroid/text/method/ArrowKeyMovementMethod;->isAlt(Landroid/text/Spannable;)Z

    move-result v0

    .line 108
    .local v0, alt:Z
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 110
    .local v2, layout:Landroid/text/Layout;
    if-eqz v1, :cond_1a

    .line 111
    if-eqz v0, :cond_15

    .line 112
    invoke-static {p2, v2}, Landroid/text/Selection;->extendToRightEdge(Landroid/text/Spannable;Landroid/text/Layout;)Z

    move-result v3

    .line 120
    :goto_14
    return v3

    .line 114
    :cond_15
    invoke-static {p2, v2}, Landroid/text/Selection;->extendRight(Landroid/text/Spannable;Landroid/text/Layout;)Z

    move-result v3

    goto :goto_14

    .line 117
    :cond_1a
    if-eqz v0, :cond_21

    .line 118
    invoke-static {p2, v2}, Landroid/text/Selection;->moveToRightEdge(Landroid/text/Spannable;Landroid/text/Layout;)Z

    move-result v3

    goto :goto_14

    .line 120
    :cond_21
    invoke-static {p2, v2}, Landroid/text/Selection;->moveRight(Landroid/text/Spannable;Landroid/text/Layout;)Z

    move-result v3

    goto :goto_14
.end method

.method private up(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 8
    .parameter "widget"
    .parameter "buffer"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 42
    invoke-direct {p0, p2}, Landroid/text/method/ArrowKeyMovementMethod;->isCap(Landroid/text/Spannable;)Z

    move-result v1

    .line 43
    .local v1, cap:Z
    invoke-direct {p0, p2}, Landroid/text/method/ArrowKeyMovementMethod;->isAlt(Landroid/text/Spannable;)Z

    move-result v0

    .line 44
    .local v0, alt:Z
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 46
    .local v2, layout:Landroid/text/Layout;
    if-eqz v1, :cond_1c

    .line 47
    if-eqz v0, :cond_17

    .line 48
    invoke-static {p2, v3}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    move v3, v4

    .line 58
    :goto_16
    return v3

    .line 51
    :cond_17
    invoke-static {p2, v2}, Landroid/text/Selection;->extendUp(Landroid/text/Spannable;Landroid/text/Layout;)Z

    move-result v3

    goto :goto_16

    .line 54
    :cond_1c
    if-eqz v0, :cond_23

    .line 55
    invoke-static {p2, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    move v3, v4

    .line 56
    goto :goto_16

    .line 58
    :cond_23
    invoke-static {p2, v2}, Landroid/text/Selection;->moveUp(Landroid/text/Spannable;Landroid/text/Layout;)Z

    move-result v3

    goto :goto_16
.end method


# virtual methods
.method public canSelectArbitrarily()Z
    .registers 2

    .prologue
    .line 264
    const/4 v0, 0x1

    return v0
.end method

.method public initialize(Landroid/widget/TextView;Landroid/text/Spannable;)V
    .registers 4
    .parameter "widget"
    .parameter "text"

    .prologue
    .line 268
    const/4 v0, 0x0

    invoke-static {p2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 269
    return-void
.end method

.method public onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "widget"
    .parameter "buffer"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 126
    invoke-direct {p0, p1, p2, p3}, Landroid/text/method/ArrowKeyMovementMethod;->executeDown(Landroid/widget/TextView;Landroid/text/Spannable;I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 127
    invoke-static {p2}, Landroid/text/method/MetaKeyKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    .line 128
    invoke-static {p2}, Landroid/text/method/MetaKeyKeyListener;->resetLockedMeta(Landroid/text/Spannable;)V

    .line 129
    const/4 v0, 0x1

    .line 132
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public onKeyOther(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/KeyEvent;)Z
    .registers 9
    .parameter "view"
    .parameter "text"
    .parameter "event"

    .prologue
    .line 175
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 176
    .local v0, code:I
    if-eqz v0, :cond_1e

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1e

    .line 177
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    .line 178
    .local v2, repeat:I
    const/4 v1, 0x0

    .line 179
    .local v1, handled:Z
    :goto_12
    add-int/lit8 v2, v2, -0x1

    if-lez v2, :cond_1c

    .line 180
    invoke-direct {p0, p1, p2, v0}, Landroid/text/method/ArrowKeyMovementMethod;->executeDown(Landroid/widget/TextView;Landroid/text/Spannable;I)Z

    move-result v3

    or-int/2addr v1, v3

    goto :goto_12

    :cond_1c
    move v3, v1

    .line 184
    .end local v1       #handled:Z,
    .end local v2       #repeat:I,
    :goto_1d
    return v3

    :cond_1e
    const/4 v3, 0x0

    goto :goto_1d
.end method

.method public onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "widget"
    .parameter "buffer"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 171
    const/4 v0, 0x0

    return v0
.end method

.method public onTakeFocus(Landroid/widget/TextView;Landroid/text/Spannable;I)V
    .registers 5
    .parameter "view"
    .parameter "text"
    .parameter "dir"

    .prologue
    .line 272
    and-int/lit16 v0, p3, 0x82

    if-eqz v0, :cond_12

    .line 273
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-nez v0, :cond_11

    .line 275
    invoke-interface {p2}, Landroid/text/Spannable;->length()I

    move-result v0

    invoke-static {p2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 280
    :cond_11
    :goto_11
    return-void

    .line 278
    :cond_12
    invoke-interface {p2}, Landroid/text/Spannable;->length()I

    move-result v0

    invoke-static {p2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto :goto_11
.end method

.method public onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .registers 12
    .parameter "widget"
    .parameter "buffer"
    .parameter "event"

    .prologue
    const/4 v7, 0x1

    .line 192
    const/4 v2, -0x1

    .local v2, initialScrollX:I
    const/4 v3, -0x1

    .line 193
    .local v3, initialScrollY:I
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v5, v7, :cond_11

    .line 194
    invoke-static {p1, p2}, Landroid/text/method/Touch;->getInitialScrollX(Landroid/widget/TextView;Landroid/text/Spannable;)I

    move-result v2

    .line 195
    invoke-static {p1, p2}, Landroid/text/method/Touch;->getInitialScrollY(Landroid/widget/TextView;Landroid/text/Spannable;)I

    move-result v3

    .line 198
    :cond_11
    invoke-static {p1, p2, p3}, Landroid/text/method/Touch;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v1

    .line 200
    .local v1, handled:Z
    invoke-virtual {p1}, Landroid/widget/TextView;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_49

    invoke-virtual {p1}, Landroid/widget/TextView;->didTouchFocusSelect()Z

    move-result v5

    if-nez v5, :cond_49

    .line 201
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_4b

    .line 202
    invoke-direct {p0, p2}, Landroid/text/method/ArrowKeyMovementMethod;->isCap(Landroid/text/Spannable;)Z

    move-result v0

    .line 203
    .local v0, cap:Z
    if-eqz v0, :cond_49

    .line 204
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/widget/TextView;->getOffset(II)I

    move-result v4

    .line 206
    .local v4, offset:I
    sget-object v5, Landroid/text/method/ArrowKeyMovementMethod;->LAST_TAP_DOWN:Ljava/lang/Object;

    const/16 v6, 0x22

    invoke-interface {p2, v5, v4, v4, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 212
    invoke-virtual {p1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v5, v7}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .end local v0       #cap:Z,
    .end local v4       #offset:I,
    :cond_49
    move v5, v1

    .line 260
    :goto_4a
    return v5

    .line 214
    :cond_4b
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_70

    .line 215
    invoke-direct {p0, p2}, Landroid/text/method/ArrowKeyMovementMethod;->isCap(Landroid/text/Spannable;)Z

    move-result v0

    .line 217
    .restart local v0       #cap:Z,
    if-eqz v0, :cond_49

    if-eqz v1, :cond_49

    .line 224
    invoke-virtual {p1}, Landroid/widget/TextView;->cancelLongPress()V

    .line 229
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/widget/TextView;->getOffset(II)I

    move-result v4

    .line 231
    .restart local v4       #offset:I,
    invoke-static {p2, v4}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    move v5, v7

    .line 232
    goto :goto_4a

    .line 234
    .end local v0       #cap:Z,
    .end local v4       #offset:I,
    :cond_70
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v5, v7, :cond_49

    .line 239
    if-ltz v3, :cond_7e

    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v5

    if-ne v3, v5, :cond_86

    :cond_7e
    if-ltz v2, :cond_8b

    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v5

    if-eq v2, v5, :cond_8b

    .line 241
    :cond_86
    invoke-virtual {p1}, Landroid/widget/TextView;->moveCursorToVisibleOffset()Z

    move v5, v7

    .line 242
    goto :goto_4a

    .line 245
    :cond_8b
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/widget/TextView;->getOffset(II)I

    move-result v4

    .line 246
    .restart local v4       #offset:I,
    invoke-direct {p0, p2}, Landroid/text/method/ArrowKeyMovementMethod;->isCap(Landroid/text/Spannable;)Z

    move-result v5

    if-eqz v5, :cond_af

    .line 247
    sget-object v5, Landroid/text/method/ArrowKeyMovementMethod;->LAST_TAP_DOWN:Ljava/lang/Object;

    invoke-interface {p2, v5}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 248
    invoke-static {p2, v4}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    .line 253
    :goto_a7
    invoke-static {p2}, Landroid/text/method/MetaKeyKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    .line 254
    invoke-static {p2}, Landroid/text/method/MetaKeyKeyListener;->resetLockedMeta(Landroid/text/Spannable;)V

    move v5, v7

    .line 256
    goto :goto_4a

    .line 250
    :cond_af
    invoke-static {p2, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto :goto_a7
.end method

.method public onTrackballEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "widget"
    .parameter "text"
    .parameter "event"

    .prologue
    .line 188
    const/4 v0, 0x0

    return v0
.end method
