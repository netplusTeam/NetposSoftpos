.class public Ljavassist/bytecode/StackMap$Walker;
.super Ljava/lang/Object;
.source "StackMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/StackMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Walker"
.end annotation


# instance fields
.field info:[B


# direct methods
.method public constructor <init>(Ljavassist/bytecode/StackMap;)V
    .locals 1
    .param p1, "sm"    # Ljavassist/bytecode/StackMap;

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    invoke-virtual {p1}, Ljavassist/bytecode/StackMap;->get()[B

    move-result-object v0

    iput-object v0, p0, Ljavassist/bytecode/StackMap$Walker;->info:[B

    .line 134
    return-void
.end method


# virtual methods
.method public locals(III)I
    .locals 1
    .param p1, "pos"    # I
    .param p2, "offset"    # I
    .param p3, "num"    # I

    .line 156
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Ljavassist/bytecode/StackMap$Walker;->typeInfoArray(IIIZ)I

    move-result v0

    return v0
.end method

.method public objectVariable(II)V
    .locals 0
    .param p1, "pos"    # I
    .param p2, "clazz"    # I

    .line 213
    return-void
.end method

.method public stack(III)I
    .locals 1
    .param p1, "pos"    # I
    .param p2, "offset"    # I
    .param p3, "num"    # I

    .line 164
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Ljavassist/bytecode/StackMap$Walker;->typeInfoArray(IIIZ)I

    move-result v0

    return v0
.end method

.method public typeInfo(IB)V
    .locals 0
    .param p1, "pos"    # I
    .param p2, "tag"    # B

    .line 207
    return-void
.end method

.method public typeInfoArray(IIIZ)I
    .locals 1
    .param p1, "pos"    # I
    .param p2, "offset"    # I
    .param p3, "num"    # I
    .param p4, "isLocals"    # Z

    .line 176
    const/4 v0, 0x0

    .local v0, "k":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 177
    invoke-virtual {p0, v0, p1}, Ljavassist/bytecode/StackMap$Walker;->typeInfoArray2(II)I

    move-result p1

    .line 176
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 179
    .end local v0    # "k":I
    :cond_0
    return p1
.end method

.method typeInfoArray2(II)I
    .locals 3
    .param p1, "k"    # I
    .param p2, "pos"    # I

    .line 183
    iget-object v0, p0, Ljavassist/bytecode/StackMap$Walker;->info:[B

    aget-byte v1, v0, p2

    .line 184
    .local v1, "tag":B
    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    .line 185
    add-int/lit8 v2, p2, 0x1

    invoke-static {v0, v2}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v0

    .line 186
    .local v0, "clazz":I
    invoke-virtual {p0, p2, v0}, Ljavassist/bytecode/StackMap$Walker;->objectVariable(II)V

    .line 187
    nop

    .end local v0    # "clazz":I
    add-int/lit8 p2, p2, 0x3

    .line 188
    goto :goto_0

    .line 189
    :cond_0
    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    .line 190
    add-int/lit8 v2, p2, 0x1

    invoke-static {v0, v2}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v0

    .line 191
    .local v0, "offsetOfNew":I
    invoke-virtual {p0, p2, v0}, Ljavassist/bytecode/StackMap$Walker;->uninitialized(II)V

    .line 192
    nop

    .end local v0    # "offsetOfNew":I
    add-int/lit8 p2, p2, 0x3

    .line 193
    goto :goto_0

    .line 195
    :cond_1
    invoke-virtual {p0, p2, v1}, Ljavassist/bytecode/StackMap$Walker;->typeInfo(IB)V

    .line 196
    add-int/lit8 p2, p2, 0x1

    .line 199
    :goto_0
    return p2
.end method

.method public uninitialized(II)V
    .locals 0
    .param p1, "pos"    # I
    .param p2, "offset"    # I

    .line 219
    return-void
.end method

.method public visit()V
    .locals 7

    .line 140
    iget-object v0, p0, Ljavassist/bytecode/StackMap$Walker;->info:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v0

    .line 141
    .local v0, "num":I
    const/4 v1, 0x2

    .line 142
    .local v1, "pos":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 143
    iget-object v3, p0, Ljavassist/bytecode/StackMap$Walker;->info:[B

    invoke-static {v3, v1}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v3

    .line 144
    .local v3, "offset":I
    iget-object v4, p0, Ljavassist/bytecode/StackMap$Walker;->info:[B

    add-int/lit8 v5, v1, 0x2

    invoke-static {v4, v5}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v4

    .line 145
    .local v4, "numLoc":I
    add-int/lit8 v5, v1, 0x4

    invoke-virtual {p0, v5, v3, v4}, Ljavassist/bytecode/StackMap$Walker;->locals(III)I

    move-result v1

    .line 146
    iget-object v5, p0, Ljavassist/bytecode/StackMap$Walker;->info:[B

    invoke-static {v5, v1}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v5

    .line 147
    .local v5, "numStack":I
    add-int/lit8 v6, v1, 0x2

    invoke-virtual {p0, v6, v3, v5}, Ljavassist/bytecode/StackMap$Walker;->stack(III)I

    move-result v1

    .line 142
    .end local v3    # "offset":I
    .end local v4    # "numLoc":I
    .end local v5    # "numStack":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 149
    .end local v2    # "i":I
    :cond_0
    return-void
.end method
