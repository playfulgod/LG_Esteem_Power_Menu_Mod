.class public final Landroid/speech/srec/UlawEncoderInputStream;
.super Ljava/io/InputStream;
.source "UlawEncoderInputStream.java"



# static fields
.field private static final MAX_ULAW:I = 0x2000

.field private static final SCALE_BITS:I = 0x10

.field private static final TAG:Ljava/lang/String; = "UlawEncoderInputStream"



# instance fields
.field private final mBuf:[B

.field private mBufCount:I

.field private mIn:Ljava/io/InputStream;

.field private mMax:I

.field private final mOneByte:[B



# direct methods
.method public constructor <init>(Ljava/io/InputStream;I)V
    .registers 5
    .parameter "in"
    .parameter "max"

    .prologue
    const/4 v1, 0x0

    .line 135
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 41
    iput v1, p0, Landroid/speech/srec/UlawEncoderInputStream;->mMax:I

    .line 43
    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/speech/srec/UlawEncoderInputStream;->mBuf:[B

    .line 44
    iput v1, p0, Landroid/speech/srec/UlawEncoderInputStream;->mBufCount:I

    .line 46
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/speech/srec/UlawEncoderInputStream;->mOneByte:[B

    .line 136
    iput-object p1, p0, Landroid/speech/srec/UlawEncoderInputStream;->mIn:Ljava/io/InputStream;

    .line 137
    iput p2, p0, Landroid/speech/srec/UlawEncoderInputStream;->mMax:I

    .line 138
    return-void
.end method

.method public static encode([BI[BIII)V
    .registers 9
    .parameter "pcmBuf"
    .parameter "pcmOffset"
    .parameter "ulawBuf"
    .parameter "ulawOffset"
    .parameter "length"
    .parameter "max"

    .prologue
    .line 76
    if-gtz p5, :cond_4

    const/16 p5, 0x2000

    .line 78
    :cond_4
    const/high16 v0, 0x2000

    div-int p5, v0, p5

    .line 80
    .local p5, coef:I
    const/4 v0, 0x0

    .local v0, i:I
    move v2, p3

    .end local p3       
    .local v2, ulawOffset:I
    move p3, p1

    .end local p1       
    .local p3, pcmOffset:I
    :goto_b
    if-ge v0, p4, :cond_101

    .line 81
    add-int/lit8 p1, p3, 0x1

    .end local p3       #pcmOffset:I,
    .restart local p1       
    aget-byte p3, p0, p3

    and-int/lit16 p3, p3, 0xff

    add-int/lit8 v1, p1, 0x1

    .end local p1       
    .local v1, pcmOffset:I
    aget-byte p1, p0, p1

    shl-int/lit8 p1, p1, 0x8

    add-int/2addr p1, p3

    .line 82
    .local p1, pcm:I
    mul-int/2addr p1, p5

    shr-int/lit8 p1, p1, 0x10

    .line 85
    if-ltz p1, :cond_99

    .line 86
    if-gtz p1, :cond_2e

    const/16 p1, 0xff

    .line 108
    .local p1, ulaw:I
    :goto_23
    add-int/lit8 p3, v2, 0x1

    .end local v2       #ulawOffset:I,
    .local p3, ulawOffset:I
    int-to-byte p1, p1

    aput-byte p1, p2, v2

    .line 80
    .end local p1       #ulaw:I,
    add-int/lit8 p1, v0, 0x1

    .end local v0       #i:I,
    .local p1, i:I
    move v0, p1

    .end local p1       #i:I,
    .restart local v0       #i:I,
    move v2, p3

    .end local p3       #ulawOffset:I,
    .restart local v2       #ulawOffset:I,
    move p3, v1

    .end local v1       #pcmOffset:I,
    .local p3, pcmOffset:I
    goto :goto_b

    .line 86
    .end local p3       #pcmOffset:I,
    .restart local v1       #pcmOffset:I,
    .local p1, pcm:I
    :cond_2e
    const/16 p3, 0x1e

    if-gt p1, p3, :cond_3b

    const/16 p3, 0x1e

    sub-int p1, p3, p1

    shr-int/lit8 p1, p1, 0x1

    add-int/lit16 p1, p1, 0xf0

    goto :goto_23

    :cond_3b
    const/16 p3, 0x5e

    if-gt p1, p3, :cond_48

    const/16 p3, 0x5e

    sub-int p1, p3, p1

    shr-int/lit8 p1, p1, 0x2

    add-int/lit16 p1, p1, 0xe0

    goto :goto_23

    :cond_48
    const/16 p3, 0xde

    if-gt p1, p3, :cond_55

    const/16 p3, 0xde

    sub-int p1, p3, p1

    shr-int/lit8 p1, p1, 0x3

    add-int/lit16 p1, p1, 0xd0

    goto :goto_23

    :cond_55
    const/16 p3, 0x1de

    if-gt p1, p3, :cond_62

    const/16 p3, 0x1de

    sub-int p1, p3, p1

    shr-int/lit8 p1, p1, 0x4

    add-int/lit16 p1, p1, 0xc0

    goto :goto_23

    :cond_62
    const/16 p3, 0x3de

    if-gt p1, p3, :cond_6f

    const/16 p3, 0x3de

    sub-int p1, p3, p1

    shr-int/lit8 p1, p1, 0x5

    add-int/lit16 p1, p1, 0xb0

    goto :goto_23

    :cond_6f
    const/16 p3, 0x7de

    if-gt p1, p3, :cond_7c

    const/16 p3, 0x7de

    sub-int p1, p3, p1

    shr-int/lit8 p1, p1, 0x6

    add-int/lit16 p1, p1, 0xa0

    goto :goto_23

    :cond_7c
    const/16 p3, 0xfde

    if-gt p1, p3, :cond_89

    const/16 p3, 0xfde

    sub-int p1, p3, p1

    shr-int/lit8 p1, p1, 0x7

    add-int/lit16 p1, p1, 0x90

    goto :goto_23

    :cond_89
    const/16 p3, 0x1fde

    if-gt p1, p3, :cond_96

    const/16 p3, 0x1fde

    sub-int p1, p3, p1

    shr-int/lit8 p1, p1, 0x8

    add-int/lit16 p1, p1, 0x80

    goto :goto_23

    :cond_96
    const/16 p1, 0x80

    goto :goto_23

    .line 97
    :cond_99
    const/4 p3, -0x1

    if-gt p3, p1, :cond_9f

    const/16 p1, 0x7f

    .local p1, ulaw:I
    :goto_9e
    goto :goto_23

    .local p1, pcm:I
    :cond_9f
    const/16 p3, -0x1f

    if-gt p3, p1, :cond_ab

    const/16 p3, -0x1f

    sub-int/2addr p1, p3

    shr-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x70

    goto :goto_9e

    :cond_ab
    const/16 p3, -0x5f

    if-gt p3, p1, :cond_b7

    const/16 p3, -0x5f

    sub-int/2addr p1, p3

    shr-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x60

    goto :goto_9e

    :cond_b7
    const/16 p3, -0xdf

    if-gt p3, p1, :cond_c3

    const/16 p3, -0xdf

    sub-int/2addr p1, p3

    shr-int/lit8 p1, p1, 0x3

    add-int/lit8 p1, p1, 0x50

    goto :goto_9e

    :cond_c3
    const/16 p3, -0x1df

    if-gt p3, p1, :cond_cf

    const/16 p3, -0x1df

    sub-int/2addr p1, p3

    shr-int/lit8 p1, p1, 0x4

    add-int/lit8 p1, p1, 0x40

    goto :goto_9e

    :cond_cf
    const/16 p3, -0x3df

    if-gt p3, p1, :cond_db

    const/16 p3, -0x3df

    sub-int/2addr p1, p3

    shr-int/lit8 p1, p1, 0x5

    add-int/lit8 p1, p1, 0x30

    goto :goto_9e

    :cond_db
    const/16 p3, -0x7df

    if-gt p3, p1, :cond_e7

    const/16 p3, -0x7df

    sub-int/2addr p1, p3

    shr-int/lit8 p1, p1, 0x6

    add-int/lit8 p1, p1, 0x20

    goto :goto_9e

    :cond_e7
    const/16 p3, -0xfdf

    if-gt p3, p1, :cond_f3

    const/16 p3, -0xfdf

    sub-int/2addr p1, p3

    shr-int/lit8 p1, p1, 0x7

    add-int/lit8 p1, p1, 0x10

    goto :goto_9e

    :cond_f3
    const/16 p3, -0x1fdf

    if-gt p3, p1, :cond_ff

    const/16 p3, -0x1fdf

    sub-int/2addr p1, p3

    shr-int/lit8 p1, p1, 0x8

    add-int/lit8 p1, p1, 0x0

    goto :goto_9e

    :cond_ff
    const/4 p1, 0x0

    goto :goto_9e

    .line 110
    .end local v1       #pcmOffset:I,
    .end local p1       #pcm:I,
    .restart local p3       #pcmOffset:I,
    :cond_101
    return-void
.end method

.method public static maxAbsPcm([BII)I
    .registers 9
    .parameter "pcmBuf"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 121
    const/4 v1, 0x0

    .line 122
    .local v1, max:I
    const/4 v0, 0x0

    .local v0, i:I
    move v2, p1

    .end local p1       
    .local v2, offset:I
    :goto_3
    if-ge v0, p2, :cond_1c

    .line 123
    add-int/lit8 p1, v2, 0x1

    .end local v2       #offset:I,
    .restart local p1       
    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v2, p1, 0x1

    .end local p1       
    .restart local v2       #offset:I,
    aget-byte v5, p0, p1

    shl-int/lit8 v5, v5, 0x8

    add-int v3, v4, v5

    .line 124
    .local v3, pcm:I
    if-gez v3, :cond_16

    neg-int v3, v3

    .line 125
    :cond_16
    if-le v3, v1, :cond_19

    move v1, v3

    .line 122
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 127
    .end local v3       #pcm:I,
    :cond_1c
    return v1
.end method


# virtual methods
.method public available()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 185
    iget-object v0, p0, Landroid/speech/srec/UlawEncoderInputStream;->mIn:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    iget v1, p0, Landroid/speech/srec/UlawEncoderInputStream;->mBufCount:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 176
    iget-object v1, p0, Landroid/speech/srec/UlawEncoderInputStream;->mIn:Ljava/io/InputStream;

    if-eqz v1, :cond_c

    .line 177
    iget-object v0, p0, Landroid/speech/srec/UlawEncoderInputStream;->mIn:Ljava/io/InputStream;

    .line 178
    .local v0, in:Ljava/io/InputStream;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/speech/srec/UlawEncoderInputStream;->mIn:Ljava/io/InputStream;

    .line 179
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 181
    .end local v0       #in:Ljava/io/InputStream;,
    :cond_c
    return-void
.end method

.method public read()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 169
    iget-object v1, p0, Landroid/speech/srec/UlawEncoderInputStream;->mOneByte:[B

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v4, v2}, Landroid/speech/srec/UlawEncoderInputStream;->read([BII)I

    move-result v0

    .line 170
    .local v0, n:I
    if-ne v0, v3, :cond_d

    move v1, v3

    .line 171
    :goto_c
    return v1

    :cond_d
    iget-object v1, p0, Landroid/speech/srec/UlawEncoderInputStream;->mOneByte:[B

    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    goto :goto_c
.end method

.method public read([B)I
    .registers 4
    .parameter "buf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 164
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Landroid/speech/srec/UlawEncoderInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 13
    .parameter "buf"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, -0x1

    .line 142
    iget-object v0, p0, Landroid/speech/srec/UlawEncoderInputStream;->mIn:Ljava/io/InputStream;

    if-nez v0, :cond_13

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    .local v4, n:I
    :cond_e
    iget v0, p0, Landroid/speech/srec/UlawEncoderInputStream;->mBufCount:I

    add-int/2addr v0, v4

    iput v0, p0, Landroid/speech/srec/UlawEncoderInputStream;->mBufCount:I

    .line 145
    .end local v4       #n:I,
    :cond_13
    iget v0, p0, Landroid/speech/srec/UlawEncoderInputStream;->mBufCount:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_32

    .line 146
    iget-object v0, p0, Landroid/speech/srec/UlawEncoderInputStream;->mIn:Ljava/io/InputStream;

    iget-object v1, p0, Landroid/speech/srec/UlawEncoderInputStream;->mBuf:[B

    iget v2, p0, Landroid/speech/srec/UlawEncoderInputStream;->mBufCount:I

    mul-int/lit8 v3, p3, 0x2

    iget-object v5, p0, Landroid/speech/srec/UlawEncoderInputStream;->mBuf:[B

    array-length v5, v5

    iget v7, p0, Landroid/speech/srec/UlawEncoderInputStream;->mBufCount:I

    sub-int/2addr v5, v7

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 147
    .restart local v4       #n:I,
    if-ne v4, v8, :cond_e

    move v0, v8

    .line 159
    :goto_31
    return v0

    .line 152
    .end local v4       #n:I,
    :cond_32
    iget v0, p0, Landroid/speech/srec/UlawEncoderInputStream;->mBufCount:I

    div-int/lit8 v0, v0, 0x2

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 153
    .restart local v4       #n:I,
    iget-object v0, p0, Landroid/speech/srec/UlawEncoderInputStream;->mBuf:[B

    const/4 v1, 0x0

    iget v5, p0, Landroid/speech/srec/UlawEncoderInputStream;->mMax:I

    move-object v2, p1

    move v3, p2

    invoke-static/range {v0 .. v5}, Landroid/speech/srec/UlawEncoderInputStream;->encode([BI[BIII)V

    .line 156
    iget v0, p0, Landroid/speech/srec/UlawEncoderInputStream;->mBufCount:I

    mul-int/lit8 v1, v4, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/speech/srec/UlawEncoderInputStream;->mBufCount:I

    .line 157
    const/4 v6, 0x0

    .local v6, i:I
    :goto_4c
    iget v0, p0, Landroid/speech/srec/UlawEncoderInputStream;->mBufCount:I

    if-ge v6, v0, :cond_5e

    iget-object v0, p0, Landroid/speech/srec/UlawEncoderInputStream;->mBuf:[B

    iget-object v1, p0, Landroid/speech/srec/UlawEncoderInputStream;->mBuf:[B

    mul-int/lit8 v2, v4, 0x2

    add-int/2addr v2, v6

    aget-byte v1, v1, v2

    aput-byte v1, v0, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_4c

    :cond_5e
    move v0, v4

    .line 159
    goto :goto_31
.end method
