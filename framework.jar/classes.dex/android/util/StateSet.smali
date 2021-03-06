.class public Landroid/util/StateSet;
.super Ljava/lang/Object;
.source "StateSet.java"



# static fields
.field public static final WILD_CARD:[I



# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 40
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Landroid/util/StateSet;->WILD_CARD:[I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dump([I)Ljava/lang/String;
    .registers 5
    .parameter "states"

    .prologue
    .line 152
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    .local v2, sb:Ljava/lang/StringBuilder;
    array-length v0, p0

    .line 155
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, v0, :cond_2f

    .line 157
    aget v3, p0, v1

    sparse-switch v3, :sswitch_data_34

    .line 155
    :goto_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 159
    :sswitch_11
    const-string v3, "W "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    .line 162
    :sswitch_17
    const-string v3, "P "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    .line 165
    :sswitch_1d
    const-string v3, "S "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    .line 168
    :sswitch_23
    const-string v3, "F "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    .line 171
    :sswitch_29
    const-string v3, "E "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    .line 176
    :cond_2f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 157
    :sswitch_data_34
    .sparse-switch
        0x101009c -> :sswitch_23
        0x101009d -> :sswitch_11
        0x101009e -> :sswitch_29
        0x10100a1 -> :sswitch_1d
        0x10100a7 -> :sswitch_17
    .end sparse-switch
.end method

.method public static isWildCard([I)Z
    .registers 3
    .parameter "stateSetOrSpec"

    .prologue
    const/4 v1, 0x0

    .line 48
    array-length v0, p0

    if-eqz v0, :cond_8

    aget v0, p0, v1

    if-nez v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    move v0, v1

    goto :goto_9
.end method

.method public static stateSetMatches([II)Z
    .registers 8
    .parameter "stateSpec"
    .parameter "state"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 119
    array-length v1, p0

    .line 120
    .local v1, stateSpecSize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    if-ge v0, v1, :cond_1a

    .line 121
    aget v2, p0, v0

    .line 122
    .local v2, stateSpecState:I
    if-nez v2, :cond_c

    move v3, v5

    .line 138
    .end local v2       #stateSpecState:I,
    :goto_b
    return v3

    .line 126
    .restart local v2       #stateSpecState:I,
    :cond_c
    if-lez v2, :cond_12

    .line 127
    if-eq p1, v2, :cond_17

    move v3, v4

    .line 128
    goto :goto_b

    .line 132
    :cond_12
    neg-int v3, v2

    if-ne p1, v3, :cond_17

    move v3, v4

    .line 134
    goto :goto_b

    .line 120
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .end local v2       #stateSpecState:I,
    :cond_1a
    move v3, v5

    .line 138
    goto :goto_b
.end method

.method public static stateSetMatches([I[I)Z
    .registers 13
    .parameter "stateSpec"
    .parameter "stateSet"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 59
    if-nez p1, :cond_10

    .line 60
    if-eqz p0, :cond_c

    invoke-static {p0}, Landroid/util/StateSet;->isWildCard([I)Z

    move-result v8

    if-eqz v8, :cond_e

    :cond_c
    move v8, v10

    .line 108
    :goto_d
    return v8

    :cond_e
    move v8, v9

    .line 60
    goto :goto_d

    .line 62
    :cond_10
    array-length v6, p0

    .line 63
    .local v6, stateSpecSize:I
    array-length v5, p1

    .line 64
    .local v5, stateSetSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_13
    if-ge v1, v6, :cond_40

    .line 65
    aget v7, p0, v1

    .line 66
    .local v7, stateSpecState:I
    if-nez v7, :cond_1b

    move v8, v10

    .line 68
    goto :goto_d

    .line 71
    :cond_1b
    if-lez v7, :cond_2a

    .line 72
    const/4 v3, 0x1

    .line 78
    .local v3, mustMatch:Z
    :goto_1e
    const/4 v0, 0x0

    .line 79
    .local v0, found:Z
    const/4 v2, 0x0

    .local v2, j:I
    :goto_20
    if-ge v2, v5, :cond_32

    .line 80
    aget v4, p1, v2

    .line 81
    .local v4, state:I
    if-nez v4, :cond_2d

    .line 83
    if-eqz v3, :cond_32

    move v8, v9

    .line 85
    goto :goto_d

    .line 75
    .end local v0       #found:Z,
    .end local v2       #j:I,
    .end local v3       #mustMatch:Z,
    .end local v4       #state:I,
    :cond_2a
    const/4 v3, 0x0

    .line 76
    .restart local v3       #mustMatch:Z,
    neg-int v7, v7

    goto :goto_1e

    .line 91
    .restart local v0       #found:Z,
    .restart local v2       #j:I,
    .restart local v4       #state:I,
    :cond_2d
    if-ne v4, v7, :cond_3a

    .line 92
    if-eqz v3, :cond_38

    .line 93
    const/4 v0, 0x1

    .line 102
    .end local v4       #state:I,
    :cond_32
    if-eqz v3, :cond_3d

    if-nez v0, :cond_3d

    move v8, v9

    .line 105
    goto :goto_d

    .restart local v4       #state:I,
    :cond_38
    move v8, v9

    .line 98
    goto :goto_d

    .line 79
    :cond_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 64
    .end local v4       #state:I,
    :cond_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .end local v0       #found:Z,
    .end local v2       #j:I,
    .end local v3       #mustMatch:Z,
    .end local v7       #stateSpecState:I,
    :cond_40
    move v8, v10

    .line 108
    goto :goto_d
.end method

.method public static trimStateSet([II)[I
    .registers 5
    .parameter "states"
    .parameter "newSize"

    .prologue
    const/4 v2, 0x0

    .line 142
    array-length v1, p0

    if-ne v1, p1, :cond_6

    move-object v1, p0

    .line 148
    :goto_5
    return-object v1

    .line 146
    :cond_6
    new-array v0, p1, [I

    .line 147
    .local v0, trimmedStates:[I
    invoke-static {p0, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v0

    .line 148
    goto :goto_5
.end method
