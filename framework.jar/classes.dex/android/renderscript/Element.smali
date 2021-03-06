.class public Landroid/renderscript/Element;
.super Landroid/renderscript/BaseObj;
.source "Element.java"



# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/Element$Builder;,
        Landroid/renderscript/Element$DataKind;,
        Landroid/renderscript/Element$DataType;
    }
.end annotation


# instance fields
.field mElementNames:[Ljava/lang/String;

.field mElements:[Landroid/renderscript/Element;

.field mKind:Landroid/renderscript/Element$DataKind;

.field mNormalized:Z

.field mSize:I

.field mType:Landroid/renderscript/Element$DataType;

.field mVectorSize:I



# direct methods
.method constructor <init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;ZI)V
    .registers 8
    .parameter "rs"
    .parameter "dt"
    .parameter "dk"
    .parameter "norm"
    .parameter "size"

    .prologue
    .line 234
    invoke-direct {p0, p1}, Landroid/renderscript/BaseObj;-><init>(Landroid/renderscript/RenderScript;)V

    .line 235
    iget v0, p2, Landroid/renderscript/Element$DataType;->mSize:I

    mul-int/2addr v0, p5

    iput v0, p0, Landroid/renderscript/Element;->mSize:I

    .line 236
    iput-object p2, p0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    .line 237
    iput-object p3, p0, Landroid/renderscript/Element;->mKind:Landroid/renderscript/Element$DataKind;

    .line 238
    iput-boolean p4, p0, Landroid/renderscript/Element;->mNormalized:Z

    .line 239
    iput p5, p0, Landroid/renderscript/Element;->mVectorSize:I

    .line 240
    iget v0, p2, Landroid/renderscript/Element$DataType;->mID:I

    iget v1, p3, Landroid/renderscript/Element$DataKind;->mID:I

    invoke-virtual {p1, v0, v1, p4, p5}, Landroid/renderscript/RenderScript;->nElementCreate(IIZI)I

    move-result v0

    iput v0, p0, Landroid/renderscript/BaseObj;->mID:I

    .line 241
    return-void
.end method

.method constructor <init>(Landroid/renderscript/RenderScript;[Landroid/renderscript/Element;[Ljava/lang/String;)V
    .registers 8
    .parameter "rs"
    .parameter "e"
    .parameter "n"

    .prologue
    .line 221
    invoke-direct {p0, p1}, Landroid/renderscript/BaseObj;-><init>(Landroid/renderscript/RenderScript;)V

    .line 222
    const/4 v2, 0x0

    iput v2, p0, Landroid/renderscript/Element;->mSize:I

    .line 223
    iput-object p2, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    .line 224
    iput-object p3, p0, Landroid/renderscript/Element;->mElementNames:[Ljava/lang/String;

    .line 225
    iget-object v2, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    array-length v2, v2

    new-array v1, v2, [I

    .line 226
    .local v1, ids:[I
    const/4 v0, 0x0

    .local v0, ct:I
    :goto_10
    iget-object v2, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    array-length v2, v2

    if-ge v0, v2, :cond_2b

    .line 227
    iget v2, p0, Landroid/renderscript/Element;->mSize:I

    iget-object v3, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    aget-object v3, v3, v0

    iget v3, v3, Landroid/renderscript/Element;->mSize:I

    add-int/2addr v2, v3

    iput v2, p0, Landroid/renderscript/Element;->mSize:I

    .line 228
    iget-object v2, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    aget-object v2, v2, v0

    iget v2, v2, Landroid/renderscript/BaseObj;->mID:I

    aput v2, v1, v0

    .line 226
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 230
    :cond_2b
    iget-object v2, p0, Landroid/renderscript/Element;->mElementNames:[Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/renderscript/RenderScript;->nElementCreate2([I[Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Landroid/renderscript/BaseObj;->mID:I

    .line 231
    return-void
.end method

.method public static ATTRIB_COLOR_F32_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 4
    .parameter "rs"

    .prologue
    .line 214
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_COLOR_F32_4:Landroid/renderscript/Element;

    if-nez v0, :cond_f

    .line 215
    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataKind;->COLOR:Landroid/renderscript/Element$DataKind;

    const/4 v2, 0x4

    invoke-static {p0, v0, v1, v2}, Landroid/renderscript/Element;->createAttrib(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_COLOR_F32_4:Landroid/renderscript/Element;

    .line 217
    :cond_f
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_COLOR_F32_4:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static ATTRIB_COLOR_U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 4
    .parameter "rs"

    .prologue
    .line 207
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_COLOR_U8_4:Landroid/renderscript/Element;

    if-nez v0, :cond_f

    .line 208
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataKind;->COLOR:Landroid/renderscript/Element$DataKind;

    const/4 v2, 0x4

    invoke-static {p0, v0, v1, v2}, Landroid/renderscript/Element;->createAttrib(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_COLOR_U8_4:Landroid/renderscript/Element;

    .line 210
    :cond_f
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_COLOR_U8_4:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static ATTRIB_NORMAL_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 4
    .parameter "rs"

    .prologue
    .line 200
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_NORMAL_3:Landroid/renderscript/Element;

    if-nez v0, :cond_f

    .line 201
    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataKind;->NORMAL:Landroid/renderscript/Element$DataKind;

    const/4 v2, 0x3

    invoke-static {p0, v0, v1, v2}, Landroid/renderscript/Element;->createAttrib(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_NORMAL_3:Landroid/renderscript/Element;

    .line 203
    :cond_f
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_NORMAL_3:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static ATTRIB_POSITION_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 4
    .parameter "rs"

    .prologue
    .line 179
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_POSITION_2:Landroid/renderscript/Element;

    if-nez v0, :cond_f

    .line 180
    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataKind;->POSITION:Landroid/renderscript/Element$DataKind;

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2}, Landroid/renderscript/Element;->createAttrib(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_POSITION_2:Landroid/renderscript/Element;

    .line 182
    :cond_f
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_POSITION_2:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static ATTRIB_POSITION_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 4
    .parameter "rs"

    .prologue
    .line 186
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_POSITION_3:Landroid/renderscript/Element;

    if-nez v0, :cond_f

    .line 187
    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataKind;->POSITION:Landroid/renderscript/Element$DataKind;

    const/4 v2, 0x3

    invoke-static {p0, v0, v1, v2}, Landroid/renderscript/Element;->createAttrib(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_POSITION_3:Landroid/renderscript/Element;

    .line 189
    :cond_f
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_POSITION_3:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static ATTRIB_TEXTURE_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 4
    .parameter "rs"

    .prologue
    .line 193
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_TEXTURE_2:Landroid/renderscript/Element;

    if-nez v0, :cond_f

    .line 194
    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataKind;->TEXTURE:Landroid/renderscript/Element$DataKind;

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2}, Landroid/renderscript/Element;->createAttrib(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_TEXTURE_2:Landroid/renderscript/Element;

    .line 196
    :cond_f
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_TEXTURE_2:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static A_8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3
    .parameter "rs"

    .prologue
    .line 130
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_A_8:Landroid/renderscript/Element;

    if-nez v0, :cond_e

    .line 131
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataKind;->PIXEL_A:Landroid/renderscript/Element$DataKind;

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createPixel(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_A_8:Landroid/renderscript/Element;

    .line 133
    :cond_e
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_A_8:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static INDEX_16(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 2
    .parameter "rs"

    .prologue
    .line 172
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_INDEX_16:Landroid/renderscript/Element;

    if-nez v0, :cond_a

    .line 173
    invoke-static {p0}, Landroid/renderscript/Element;->createIndex(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_INDEX_16:Landroid/renderscript/Element;

    .line 175
    :cond_a
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_INDEX_16:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static RGBA_4444(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3
    .parameter "rs"

    .prologue
    .line 158
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGBA_4444:Landroid/renderscript/Element;

    if-nez v0, :cond_e

    .line 159
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_4_4_4_4:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/renderscript/Element$DataKind;

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createPixel(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGBA_4444:Landroid/renderscript/Element;

    .line 161
    :cond_e
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGBA_4444:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static RGBA_5551(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3
    .parameter "rs"

    .prologue
    .line 151
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGBA_5551:Landroid/renderscript/Element;

    if-nez v0, :cond_e

    .line 152
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_5_5_5_1:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/renderscript/Element$DataKind;

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createPixel(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGBA_5551:Landroid/renderscript/Element;

    .line 154
    :cond_e
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGBA_5551:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static RGBA_8888(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3
    .parameter "rs"

    .prologue
    .line 165
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGBA_8888:Landroid/renderscript/Element;

    if-nez v0, :cond_e

    .line 166
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/renderscript/Element$DataKind;

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createPixel(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGBA_8888:Landroid/renderscript/Element;

    .line 168
    :cond_e
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGBA_8888:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static RGB_565(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3
    .parameter "rs"

    .prologue
    .line 137
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGB_565:Landroid/renderscript/Element;

    if-nez v0, :cond_e

    .line 138
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_5_6_5:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataKind;->PIXEL_RGB:Landroid/renderscript/Element$DataKind;

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createPixel(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGB_565:Landroid/renderscript/Element;

    .line 140
    :cond_e
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGB_565:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static RGB_888(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3
    .parameter "rs"

    .prologue
    .line 144
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGB_888:Landroid/renderscript/Element;

    if-nez v0, :cond_e

    .line 145
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataKind;->PIXEL_RGB:Landroid/renderscript/Element$DataKind;

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createPixel(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGB_888:Landroid/renderscript/Element;

    .line 147
    :cond_e
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGB_888:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static USER_F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 2
    .parameter "rs"

    .prologue
    .line 123
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USER_F32:Landroid/renderscript/Element;

    if-nez v0, :cond_c

    .line 124
    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USER_F32:Landroid/renderscript/Element;

    .line 126
    :cond_c
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USER_F32:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static USER_I32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 2
    .parameter "rs"

    .prologue
    .line 116
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USER_I32:Landroid/renderscript/Element;

    if-nez v0, :cond_c

    .line 117
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USER_I32:Landroid/renderscript/Element;

    .line 119
    :cond_c
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USER_I32:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static USER_I8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 2
    .parameter "rs"

    .prologue
    .line 102
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USER_I8:Landroid/renderscript/Element;

    if-nez v0, :cond_c

    .line 103
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USER_I8:Landroid/renderscript/Element;

    .line 105
    :cond_c
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USER_I8:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static USER_U32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 2
    .parameter "rs"

    .prologue
    .line 109
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USER_U32:Landroid/renderscript/Element;

    if-nez v0, :cond_c

    .line 110
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_32:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USER_U32:Landroid/renderscript/Element;

    .line 112
    :cond_c
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USER_U32:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static USER_U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 2
    .parameter "rs"

    .prologue
    .line 95
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USER_U8:Landroid/renderscript/Element;

    if-nez v0, :cond_c

    .line 96
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USER_U8:Landroid/renderscript/Element;

    .line 98
    :cond_c
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USER_U8:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static createAttrib(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;I)Landroid/renderscript/Element;
    .registers 10
    .parameter "rs"
    .parameter "dt"
    .parameter "dk"
    .parameter "size"

    .prologue
    const/4 v5, 0x3

    const/4 v3, 0x4

    const/4 v1, 0x1

    const-string v2, "Bad combo"

    .line 287
    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    if-eq p1, v0, :cond_29

    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    if-eq p1, v0, :cond_29

    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_16:Landroid/renderscript/Element$DataType;

    if-eq p1, v0, :cond_29

    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_32:Landroid/renderscript/Element$DataType;

    if-eq p1, v0, :cond_29

    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    if-eq p1, v0, :cond_29

    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    if-eq p1, v0, :cond_29

    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    if-eq p1, v0, :cond_29

    .line 294
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported DataType"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 297
    :cond_29
    sget-object v0, Landroid/renderscript/Element$DataKind;->COLOR:Landroid/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_49

    sget-object v0, Landroid/renderscript/Element$DataKind;->POSITION:Landroid/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_49

    sget-object v0, Landroid/renderscript/Element$DataKind;->TEXTURE:Landroid/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_49

    sget-object v0, Landroid/renderscript/Element$DataKind;->NORMAL:Landroid/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_49

    sget-object v0, Landroid/renderscript/Element$DataKind;->POINT_SIZE:Landroid/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_49

    sget-object v0, Landroid/renderscript/Element$DataKind;->USER:Landroid/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_49

    .line 303
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported DataKind"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 306
    :cond_49
    sget-object v0, Landroid/renderscript/Element$DataKind;->COLOR:Landroid/renderscript/Element$DataKind;

    if-ne p2, v0, :cond_61

    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    if-eq p1, v0, :cond_55

    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    if-ne p1, v0, :cond_59

    :cond_55
    if-lt p3, v5, :cond_59

    if-le p3, v3, :cond_61

    .line 309
    :cond_59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad combo"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 311
    :cond_61
    sget-object v0, Landroid/renderscript/Element$DataKind;->POSITION:Landroid/renderscript/Element$DataKind;

    if-ne p2, v0, :cond_71

    if-lt p3, v1, :cond_69

    if-le p3, v3, :cond_71

    .line 312
    :cond_69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad combo"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 314
    :cond_71
    sget-object v0, Landroid/renderscript/Element$DataKind;->TEXTURE:Landroid/renderscript/Element$DataKind;

    if-ne p2, v0, :cond_85

    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    if-ne p1, v0, :cond_7d

    if-lt p3, v1, :cond_7d

    if-le p3, v3, :cond_85

    .line 316
    :cond_7d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad combo"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 318
    :cond_85
    sget-object v0, Landroid/renderscript/Element$DataKind;->NORMAL:Landroid/renderscript/Element$DataKind;

    if-ne p2, v0, :cond_97

    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    if-ne p1, v0, :cond_8f

    if-eq p3, v5, :cond_97

    .line 320
    :cond_8f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad combo"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 322
    :cond_97
    sget-object v0, Landroid/renderscript/Element$DataKind;->POINT_SIZE:Landroid/renderscript/Element$DataKind;

    if-ne p2, v0, :cond_a9

    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    if-ne p1, v0, :cond_a1

    if-eq p3, v1, :cond_a9

    .line 324
    :cond_a1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad combo"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 327
    :cond_a9
    const/4 v4, 0x0

    .line 328
    .local v4, norm:Z
    sget-object v0, Landroid/renderscript/Element$DataKind;->COLOR:Landroid/renderscript/Element$DataKind;

    if-ne p2, v0, :cond_b3

    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    if-ne p1, v0, :cond_b3

    .line 329
    const/4 v4, 0x1

    .line 332
    :cond_b3
    new-instance v0, Landroid/renderscript/Element;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Element;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;ZI)V

    return-object v0
.end method

.method public static createFromClass(Landroid/renderscript/RenderScript;Ljava/lang/Class;)Landroid/renderscript/Element;
    .registers 11
    .parameter "rs"
    .parameter "c"

    .prologue
    .line 248
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 249
    invoke-virtual {p1}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    .line 250
    .local v4, fields:[Ljava/lang/reflect/Field;
    new-instance v1, Landroid/renderscript/Element$Builder;

    invoke-direct {v1, p0}, Landroid/renderscript/Element$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 252
    .local v1, b:Landroid/renderscript/Element$Builder;
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/reflect/Field;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_f
    if-ge v5, v6, :cond_69

    aget-object v2, v0, v5

    .line 253
    .local v2, f:Ljava/lang/reflect/Field;
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    .line 254
    .local v3, fc:Ljava/lang/Class;
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v3, v7, :cond_2b

    .line 255
    sget-object v7, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v7}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)V

    .line 252
    :goto_28
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    .line 256
    :cond_2b
    sget-object v7, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v3, v7, :cond_3d

    .line 257
    sget-object v7, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v7}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)V

    goto :goto_28

    .line 258
    :cond_3d
    sget-object v7, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v3, v7, :cond_4f

    .line 259
    sget-object v7, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v7}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)V

    goto :goto_28

    .line 260
    :cond_4f
    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v3, v7, :cond_61

    .line 261
    sget-object v7, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v7}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)V

    goto :goto_28

    .line 263
    :cond_61
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Unkown field type"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 266
    .end local v2       #f:Ljava/lang/reflect/Field;,
    .end local v3       #fc:Ljava/lang/Class;,
    :cond_69
    invoke-virtual {v1}, Landroid/renderscript/Element$Builder;->create()Landroid/renderscript/Element;

    move-result-object v7

    return-object v7
.end method

.method public static createIndex(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 7
    .parameter "rs"

    .prologue
    .line 283
    new-instance v0, Landroid/renderscript/Element;

    sget-object v2, Landroid/renderscript/Element$DataType;->UNSIGNED_16:Landroid/renderscript/Element$DataType;

    sget-object v3, Landroid/renderscript/Element$DataKind;->INDEX:Landroid/renderscript/Element$DataKind;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Element;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;ZI)V

    return-object v0
.end method

.method public static createPixel(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;)Landroid/renderscript/Element;
    .registers 9
    .parameter "rs"
    .parameter "dt"
    .parameter "dk"

    .prologue
    const-string v2, "Bad kind and type combo"

    .line 336
    sget-object v0, Landroid/renderscript/Element$DataKind;->PIXEL_L:Landroid/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_1e

    sget-object v0, Landroid/renderscript/Element$DataKind;->PIXEL_A:Landroid/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_1e

    sget-object v0, Landroid/renderscript/Element$DataKind;->PIXEL_LA:Landroid/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_1e

    sget-object v0, Landroid/renderscript/Element$DataKind;->PIXEL_RGB:Landroid/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_1e

    sget-object v0, Landroid/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_1e

    .line 341
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported DataKind"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 343
    :cond_1e
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    if-eq p1, v0, :cond_36

    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_5_6_5:Landroid/renderscript/Element$DataType;

    if-eq p1, v0, :cond_36

    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_4_4_4_4:Landroid/renderscript/Element$DataType;

    if-eq p1, v0, :cond_36

    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_5_5_5_1:Landroid/renderscript/Element$DataType;

    if-eq p1, v0, :cond_36

    .line 347
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported DataType"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 349
    :cond_36
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_5_6_5:Landroid/renderscript/Element$DataType;

    if-ne p1, v0, :cond_46

    sget-object v0, Landroid/renderscript/Element$DataKind;->PIXEL_RGB:Landroid/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_46

    .line 350
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad kind and type combo"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 352
    :cond_46
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_5_5_5_1:Landroid/renderscript/Element$DataType;

    if-ne p1, v0, :cond_56

    sget-object v0, Landroid/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_56

    .line 353
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad kind and type combo"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 355
    :cond_56
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_4_4_4_4:Landroid/renderscript/Element$DataType;

    if-ne p1, v0, :cond_66

    sget-object v0, Landroid/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_66

    .line 356
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad kind and type combo"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 359
    :cond_66
    const/4 v5, 0x1

    .line 360
    .local v5, size:I
    sget-object v0, Landroid/renderscript/Element$DataKind;->PIXEL_LA:Landroid/renderscript/Element$DataKind;

    if-ne p2, v0, :cond_6c

    .line 361
    const/4 v5, 0x2

    .line 363
    :cond_6c
    sget-object v0, Landroid/renderscript/Element$DataKind;->PIXEL_RGB:Landroid/renderscript/Element$DataKind;

    if-ne p2, v0, :cond_71

    .line 364
    const/4 v5, 0x3

    .line 366
    :cond_71
    sget-object v0, Landroid/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/renderscript/Element$DataKind;

    if-ne p2, v0, :cond_76

    .line 367
    const/4 v5, 0x4

    .line 370
    :cond_76
    new-instance v0, Landroid/renderscript/Element;

    const/4 v4, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Element;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;ZI)V

    return-object v0
.end method

.method public static createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;
    .registers 8
    .parameter "rs"
    .parameter "dt"

    .prologue
    .line 272
    new-instance v0, Landroid/renderscript/Element;

    sget-object v3, Landroid/renderscript/Element$DataKind;->USER:Landroid/renderscript/Element$DataKind;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Element;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;ZI)V

    return-object v0
.end method

.method public static createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;
    .registers 9
    .parameter "rs"
    .parameter "dt"
    .parameter "size"

    .prologue
    .line 276
    const/4 v0, 0x2

    if-lt p2, v0, :cond_6

    const/4 v0, 0x4

    if-le p2, v0, :cond_e

    .line 277
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 279
    :cond_e
    new-instance v0, Landroid/renderscript/Element;

    sget-object v3, Landroid/renderscript/Element$DataKind;->USER:Landroid/renderscript/Element$DataKind;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Element;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;ZI)V

    return-object v0
.end method

.method static initPredefined(Landroid/renderscript/RenderScript;)V
    .registers 9
    .parameter "rs"

    .prologue
    const/4 v6, 0x4

    const/4 v7, 0x1

    .line 411
    sget-object v4, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    iget v4, v4, Landroid/renderscript/Element$DataType;->mID:I

    sget-object v5, Landroid/renderscript/Element$DataKind;->PIXEL_A:Landroid/renderscript/Element$DataKind;

    iget v5, v5, Landroid/renderscript/Element$DataKind;->mID:I

    invoke-virtual {p0, v4, v5, v7, v7}, Landroid/renderscript/RenderScript;->nElementCreate(IIZI)I

    move-result v0

    .line 413
    .local v0, a8:I
    sget-object v4, Landroid/renderscript/Element$DataType;->UNSIGNED_4_4_4_4:Landroid/renderscript/Element$DataType;

    iget v4, v4, Landroid/renderscript/Element$DataType;->mID:I

    sget-object v5, Landroid/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/renderscript/Element$DataKind;

    iget v5, v5, Landroid/renderscript/Element$DataKind;->mID:I

    invoke-virtual {p0, v4, v5, v7, v6}, Landroid/renderscript/RenderScript;->nElementCreate(IIZI)I

    move-result v2

    .line 415
    .local v2, rgba4444:I
    sget-object v4, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    iget v4, v4, Landroid/renderscript/Element$DataType;->mID:I

    sget-object v5, Landroid/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/renderscript/Element$DataKind;

    iget v5, v5, Landroid/renderscript/Element$DataKind;->mID:I

    invoke-virtual {p0, v4, v5, v7, v6}, Landroid/renderscript/RenderScript;->nElementCreate(IIZI)I

    move-result v3

    .line 417
    .local v3, rgba8888:I
    sget-object v4, Landroid/renderscript/Element$DataType;->UNSIGNED_5_6_5:Landroid/renderscript/Element$DataType;

    iget v4, v4, Landroid/renderscript/Element$DataType;->mID:I

    sget-object v5, Landroid/renderscript/Element$DataKind;->PIXEL_RGB:Landroid/renderscript/Element$DataKind;

    iget v5, v5, Landroid/renderscript/Element$DataKind;->mID:I

    const/4 v6, 0x3

    invoke-virtual {p0, v4, v5, v7, v6}, Landroid/renderscript/RenderScript;->nElementCreate(IIZI)I

    move-result v1

    .line 419
    .local v1, rgb565:I
    invoke-virtual {p0, v0, v2, v3, v1}, Landroid/renderscript/RenderScript;->nInitElements(IIII)V

    .line 420
    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 244
    invoke-super {p0}, Landroid/renderscript/BaseObj;->destroy()V

    .line 245
    return-void
.end method

.method public bridge synthetic getID()I
    .registers 2

    .prologue
    .line 25
    invoke-super {p0}, Landroid/renderscript/BaseObj;->getID()I

    move-result v0

    return v0
.end method

.method getSizeBytes()I
    .registers 2

    .prologue
    .line 35
    iget v0, p0, Landroid/renderscript/Element;->mSize:I

    return v0
.end method

.method public bridge synthetic setName(Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 25
    invoke-super {p0, p1}, Landroid/renderscript/BaseObj;->setName(Ljava/lang/String;)V

    return-void
.end method
