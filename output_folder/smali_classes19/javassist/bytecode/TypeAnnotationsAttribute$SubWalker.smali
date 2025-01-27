.class Ljavassist/bytecode/TypeAnnotationsAttribute$SubWalker;
.super Ljava/lang/Object;
.source "TypeAnnotationsAttribute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/TypeAnnotationsAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SubWalker"
.end annotation


# instance fields
.field info:[B


# direct methods
.method constructor <init>([B)V
    .locals 0
    .param p1, "attrInfo"    # [B

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput-object p1, p0, Ljavassist/bytecode/TypeAnnotationsAttribute$SubWalker;->info:[B

    .line 129
    return-void
.end method


# virtual methods
.method catchTarget(II)V
    .locals 0
    .param p1, "pos"    # I
    .param p2, "exceptionTableIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 219
    return-void
.end method

.method emptyTarget(II)V
    .locals 0
    .param p1, "pos"    # I
    .param p2, "targetType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 198
    return-void
.end method

.method formalParameterTarget(II)V
    .locals 0
    .param p1, "pos"    # I
    .param p2, "formalParameterIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 200
    return-void
.end method

.method localvarTarget(III)I
    .locals 10
    .param p1, "pos"    # I
    .param p2, "targetType"    # I
    .param p3, "tableLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 205
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 206
    iget-object v1, p0, Ljavassist/bytecode/TypeAnnotationsAttribute$SubWalker;->info:[B

    invoke-static {v1, p1}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v7

    .line 207
    .local v7, "start":I
    iget-object v1, p0, Ljavassist/bytecode/TypeAnnotationsAttribute$SubWalker;->info:[B

    add-int/lit8 v2, p1, 0x2

    invoke-static {v1, v2}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v8

    .line 208
    .local v8, "length":I
    iget-object v1, p0, Ljavassist/bytecode/TypeAnnotationsAttribute$SubWalker;->info:[B

    add-int/lit8 v2, p1, 0x4

    invoke-static {v1, v2}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v9

    .line 209
    .local v9, "index":I
    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, v7

    move v5, v8

    move v6, v9

    invoke-virtual/range {v1 .. v6}, Ljavassist/bytecode/TypeAnnotationsAttribute$SubWalker;->localvarTarget(IIIII)V

    .line 210
    nop

    .end local v7    # "start":I
    .end local v8    # "length":I
    .end local v9    # "index":I
    add-int/lit8 p1, p1, 0x6

    .line 205
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 213
    .end local v0    # "i":I
    :cond_0
    return p1
.end method

.method localvarTarget(IIIII)V
    .locals 0
    .param p1, "pos"    # I
    .param p2, "targetType"    # I
    .param p3, "startPc"    # I
    .param p4, "length"    # I
    .param p5, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 217
    return-void
.end method

.method offsetTarget(III)V
    .locals 0
    .param p1, "pos"    # I
    .param p2, "targetType"    # I
    .param p3, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 221
    return-void
.end method

.method supertypeTarget(II)V
    .locals 0
    .param p1, "pos"    # I
    .param p2, "superTypeIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 193
    return-void
.end method

.method final targetInfo(II)I
    .locals 3
    .param p1, "pos"    # I
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 132
    sparse-switch p2, :sswitch_data_0

    .line 186
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid target type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :sswitch_0
    iget-object v0, p0, Ljavassist/bytecode/TypeAnnotationsAttribute$SubWalker;->info:[B

    invoke-static {v0, p1}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v0

    .line 182
    .local v0, "offset":I
    iget-object v1, p0, Ljavassist/bytecode/TypeAnnotationsAttribute$SubWalker;->info:[B

    add-int/lit8 v2, p1, 0x2

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    .line 183
    .local v1, "index":I
    invoke-virtual {p0, p1, p2, v0, v1}, Ljavassist/bytecode/TypeAnnotationsAttribute$SubWalker;->typeArgumentTarget(IIII)V

    .line 184
    add-int/lit8 v2, p1, 0x3

    return v2

    .line 173
    .end local v0    # "offset":I
    .end local v1    # "index":I
    :sswitch_1
    iget-object v0, p0, Ljavassist/bytecode/TypeAnnotationsAttribute$SubWalker;->info:[B

    invoke-static {v0, p1}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v0

    .line 174
    .restart local v0    # "offset":I
    invoke-virtual {p0, p1, p2, v0}, Ljavassist/bytecode/TypeAnnotationsAttribute$SubWalker;->offsetTarget(III)V

    .line 175
    add-int/lit8 v1, p1, 0x2

    return v1

    .line 166
    .end local v0    # "offset":I
    :sswitch_2
    iget-object v0, p0, Ljavassist/bytecode/TypeAnnotationsAttribute$SubWalker;->info:[B

    invoke-static {v0, p1}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v0

    .line 167
    .local v0, "index":I
    invoke-virtual {p0, p1, v0}, Ljavassist/bytecode/TypeAnnotationsAttribute$SubWalker;->catchTarget(II)V

    .line 168
    add-int/lit8 v1, p1, 0x2

    return v1

    .line 163
    .end local v0    # "index":I
    :sswitch_3
    iget-object v0, p0, Ljavassist/bytecode/TypeAnnotationsAttribute$SubWalker;->info:[B

    invoke-static {v0, p1}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v0

    .line 164
    .local v0, "len":I
    add-int/lit8 v1, p1, 0x2

    invoke-virtual {p0, v1, p2, v0}, Ljavassist/bytecode/TypeAnnotationsAttribute$SubWalker;->localvarTarget(III)I

    move-result v1

    return v1

    .line 158
    .end local v0    # "len":I
    :sswitch_4
    iget-object v0, p0, Ljavassist/bytecode/TypeAnnotationsAttribute$SubWalker;->info:[B

    invoke-static {v0, p1}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v0

    .line 159
    .local v0, "index":I
    invoke-virtual {p0, p1, v0}, Ljavassist/bytecode/TypeAnnotationsAttribute$SubWalker;->throwsTarget(II)V

    .line 160
    add-int/lit8 v1, p1, 0x2

    return v1

    .line 154
    .end local v0    # "index":I
    :sswitch_5
    iget-object v0, p0, Ljavassist/bytecode/TypeAnnotationsAttribute$SubWalker;->info:[B

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    .line 155
    .restart local v0    # "index":I
    invoke-virtual {p0, p1, v0}, Ljavassist/bytecode/TypeAnnotationsAttribute$SubWalker;->formalParameterTarget(II)V

    .line 156
    add-int/lit8 v1, p1, 0x1

    return v1

    .line 151
    .end local v0    # "index":I
    :sswitch_6
    invoke-virtual {p0, p1, p2}, Ljavassist/bytecode/TypeAnnotationsAttribute$SubWalker;->emptyTarget(II)V

    .line 152
    return p1

    .line 144
    :sswitch_7
    iget-object v0, p0, Ljavassist/bytecode/TypeAnnotationsAttribute$SubWalker;->info:[B

    aget-byte v1, v0, p1

    and-int/lit16 v1, v1, 0xff

    .line 145
    .local v1, "param":I
    add-int/lit8 v2, p1, 0x1

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    .line 146
    .local v0, "bound":I
    invoke-virtual {p0, p1, p2, v1, v0}, Ljavassist/bytecode/TypeAnnotationsAttribute$SubWalker;->typeParameterBoundTarget(IIII)V

    .line 147
    add-int/lit8 v2, p1, 0x2

    return v2

    .line 139
    .end local v0    # "bound":I
    .end local v1    # "param":I
    :sswitch_8
    iget-object v0, p0, Ljavassist/bytecode/TypeAnnotationsAttribute$SubWalker;->info:[B

    invoke-static {v0, p1}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v0

    .line 140
    .local v0, "index":I
    invoke-virtual {p0, p1, v0}, Ljavassist/bytecode/TypeAnnotationsAttribute$SubWalker;->supertypeTarget(II)V

    .line 141
    add-int/lit8 v1, p1, 0x2

    return v1

    .line 135
    .end local v0    # "index":I
    :sswitch_9
    iget-object v0, p0, Ljavassist/bytecode/TypeAnnotationsAttribute$SubWalker;->info:[B

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    .line 136
    .restart local v0    # "index":I
    invoke-virtual {p0, p1, p2, v0}, Ljavassist/bytecode/TypeAnnotationsAttribute$SubWalker;->typeParameterTarget(III)V

    .line 137
    add-int/lit8 v1, p1, 0x1

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_9
        0x1 -> :sswitch_9
        0x10 -> :sswitch_8
        0x11 -> :sswitch_7
        0x12 -> :sswitch_7
        0x13 -> :sswitch_6
        0x14 -> :sswitch_6
        0x15 -> :sswitch_6
        0x16 -> :sswitch_5
        0x17 -> :sswitch_4
        0x40 -> :sswitch_3
        0x41 -> :sswitch_3
        0x42 -> :sswitch_2
        0x43 -> :sswitch_1
        0x44 -> :sswitch_1
        0x45 -> :sswitch_1
        0x46 -> :sswitch_1
        0x47 -> :sswitch_0
        0x48 -> :sswitch_0
        0x49 -> :sswitch_0
        0x4a -> :sswitch_0
        0x4b -> :sswitch_0
    .end sparse-switch
.end method

.method throwsTarget(II)V
    .locals 0
    .param p1, "pos"    # I
    .param p2, "throwsTypeIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 202
    return-void
.end method

.method typeArgumentTarget(IIII)V
    .locals 0
    .param p1, "pos"    # I
    .param p2, "targetType"    # I
    .param p3, "offset"    # I
    .param p4, "typeArgumentIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 224
    return-void
.end method

.method typeParameterBoundTarget(IIII)V
    .locals 0
    .param p1, "pos"    # I
    .param p2, "targetType"    # I
    .param p3, "typeParameterIndex"    # I
    .param p4, "boundIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 196
    return-void
.end method

.method typeParameterTarget(III)V
    .locals 0
    .param p1, "pos"    # I
    .param p2, "targetType"    # I
    .param p3, "typeParameterIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 191
    return-void
.end method

.method final typePath(I)I
    .locals 2
    .param p1, "pos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 227
    iget-object v0, p0, Ljavassist/bytecode/TypeAnnotationsAttribute$SubWalker;->info:[B

    add-int/lit8 v1, p1, 0x1

    .end local p1    # "pos":I
    .local v1, "pos":I
    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    .line 228
    .local p1, "len":I
    invoke-virtual {p0, v1, p1}, Ljavassist/bytecode/TypeAnnotationsAttribute$SubWalker;->typePath(II)I

    move-result v0

    return v0
.end method

.method typePath(II)I
    .locals 4
    .param p1, "pos"    # I
    .param p2, "pathLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 232
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 233
    iget-object v1, p0, Ljavassist/bytecode/TypeAnnotationsAttribute$SubWalker;->info:[B

    aget-byte v2, v1, p1

    and-int/lit16 v2, v2, 0xff

    .line 234
    .local v2, "kind":I
    add-int/lit8 v3, p1, 0x1

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    .line 235
    .local v1, "index":I
    invoke-virtual {p0, p1, v2, v1}, Ljavassist/bytecode/TypeAnnotationsAttribute$SubWalker;->typePath(III)V

    .line 236
    nop

    .end local v1    # "index":I
    .end local v2    # "kind":I
    add-int/lit8 p1, p1, 0x2

    .line 232
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 239
    .end local v0    # "i":I
    :cond_0
    return p1
.end method

.method typePath(III)V
    .locals 0
    .param p1, "pos"    # I
    .param p2, "typePathKind"    # I
    .param p3, "typeArgumentIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 242
    return-void
.end method
