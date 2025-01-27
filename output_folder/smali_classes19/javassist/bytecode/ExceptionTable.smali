.class public Ljavassist/bytecode/ExceptionTable;
.super Ljava/lang/Object;
.source "ExceptionTable.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private constPool:Ljavassist/bytecode/ConstPool;

.field private entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljavassist/bytecode/ExceptionTableEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavassist/bytecode/ConstPool;)V
    .locals 1
    .param p1, "cp"    # Ljavassist/bytecode/ConstPool;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Ljavassist/bytecode/ExceptionTable;->constPool:Ljavassist/bytecode/ConstPool;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljavassist/bytecode/ExceptionTable;->entries:Ljava/util/List;

    .line 55
    return-void
.end method

.method constructor <init>(Ljavassist/bytecode/ConstPool;Ljava/io/DataInputStream;)V
    .locals 8
    .param p1, "cp"    # Ljavassist/bytecode/ConstPool;
    .param p2, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Ljavassist/bytecode/ExceptionTable;->constPool:Ljavassist/bytecode/ConstPool;

    .line 59
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    .line 60
    .local v0, "length":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 61
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljavassist/bytecode/ExceptionTableEntry;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 62
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v3

    .line 63
    .local v3, "start":I
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v4

    .line 64
    .local v4, "end":I
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v5

    .line 65
    .local v5, "handle":I
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v6

    .line 66
    .local v6, "type":I
    new-instance v7, Ljavassist/bytecode/ExceptionTableEntry;

    invoke-direct {v7, v3, v4, v5, v6}, Ljavassist/bytecode/ExceptionTableEntry;-><init>(IIII)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    .end local v3    # "start":I
    .end local v4    # "end":I
    .end local v5    # "handle":I
    .end local v6    # "type":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 69
    .end local v2    # "i":I
    :cond_0
    iput-object v1, p0, Ljavassist/bytecode/ExceptionTable;->entries:Ljava/util/List;

    .line 70
    return-void
.end method

.method private static shiftPc(IIIZ)I
    .locals 0
    .param p0, "pc"    # I
    .param p1, "where"    # I
    .param p2, "gapLength"    # I
    .param p3, "exclusive"    # Z

    .line 253
    if-gt p0, p1, :cond_0

    if-eqz p3, :cond_1

    if-ne p0, p1, :cond_1

    .line 254
    :cond_0
    add-int/2addr p0, p2

    .line 256
    :cond_1
    return p0
.end method


# virtual methods
.method public add(IIII)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "handler"    # I
    .param p4, "type"    # I

    .line 210
    if-ge p1, p2, :cond_0

    .line 211
    iget-object v0, p0, Ljavassist/bytecode/ExceptionTable;->entries:Ljava/util/List;

    new-instance v1, Ljavassist/bytecode/ExceptionTableEntry;

    invoke-direct {v1, p1, p2, p3, p4}, Ljavassist/bytecode/ExceptionTableEntry;-><init>(IIII)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    :cond_0
    return-void
.end method

.method public add(IIIII)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "handler"    # I
    .param p5, "type"    # I

    .line 196
    if-ge p2, p3, :cond_0

    .line 197
    iget-object v0, p0, Ljavassist/bytecode/ExceptionTable;->entries:Ljava/util/List;

    new-instance v1, Ljavassist/bytecode/ExceptionTableEntry;

    invoke-direct {v1, p2, p3, p4, p5}, Ljavassist/bytecode/ExceptionTableEntry;-><init>(IIII)V

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 199
    :cond_0
    return-void
.end method

.method public add(ILjavassist/bytecode/ExceptionTable;I)V
    .locals 9
    .param p1, "index"    # I
    .param p2, "table"    # Ljavassist/bytecode/ExceptionTable;
    .param p3, "offset"    # I

    .line 178
    invoke-virtual {p2}, Ljavassist/bytecode/ExceptionTable;->size()I

    move-result v0

    .line 179
    .local v0, "len":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 180
    iget-object v1, p2, Ljavassist/bytecode/ExceptionTable;->entries:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavassist/bytecode/ExceptionTableEntry;

    .line 181
    .local v1, "e":Ljavassist/bytecode/ExceptionTableEntry;
    iget v2, v1, Ljavassist/bytecode/ExceptionTableEntry;->startPc:I

    add-int v5, v2, p3

    iget v2, v1, Ljavassist/bytecode/ExceptionTableEntry;->endPc:I

    add-int v6, v2, p3

    iget v2, v1, Ljavassist/bytecode/ExceptionTableEntry;->handlerPc:I

    add-int v7, v2, p3

    iget v8, v1, Ljavassist/bytecode/ExceptionTableEntry;->catchType:I

    move-object v3, p0

    move v4, p1

    invoke-virtual/range {v3 .. v8}, Ljavassist/bytecode/ExceptionTable;->add(IIIII)V

    .line 183
    .end local v1    # "e":Ljavassist/bytecode/ExceptionTableEntry;
    goto :goto_0

    .line 184
    :cond_0
    return-void
.end method

.method public catchType(I)I
    .locals 1
    .param p1, "nth"    # I

    .line 157
    iget-object v0, p0, Ljavassist/bytecode/ExceptionTable;->entries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/ExceptionTableEntry;

    iget v0, v0, Ljavassist/bytecode/ExceptionTableEntry;->catchType:I

    return v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 79
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/ExceptionTable;

    .line 80
    .local v0, "r":Ljavassist/bytecode/ExceptionTable;
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Ljavassist/bytecode/ExceptionTable;->entries:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Ljavassist/bytecode/ExceptionTable;->entries:Ljava/util/List;

    .line 81
    return-object v0
.end method

.method public copy(Ljavassist/bytecode/ConstPool;Ljava/util/Map;)Ljavassist/bytecode/ExceptionTable;
    .locals 8
    .param p1, "newCp"    # Ljavassist/bytecode/ConstPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavassist/bytecode/ConstPool;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljavassist/bytecode/ExceptionTable;"
        }
    .end annotation

    .line 233
    .local p2, "classnames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljavassist/bytecode/ExceptionTable;

    invoke-direct {v0, p1}, Ljavassist/bytecode/ExceptionTable;-><init>(Ljavassist/bytecode/ConstPool;)V

    .line 234
    .local v0, "et":Ljavassist/bytecode/ExceptionTable;
    iget-object v1, p0, Ljavassist/bytecode/ExceptionTable;->constPool:Ljavassist/bytecode/ConstPool;

    .line 235
    .local v1, "srcCp":Ljavassist/bytecode/ConstPool;
    iget-object v2, p0, Ljavassist/bytecode/ExceptionTable;->entries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavassist/bytecode/ExceptionTableEntry;

    .line 236
    .local v3, "e":Ljavassist/bytecode/ExceptionTableEntry;
    iget v4, v3, Ljavassist/bytecode/ExceptionTableEntry;->catchType:I

    invoke-virtual {v1, v4, p1, p2}, Ljavassist/bytecode/ConstPool;->copy(ILjavassist/bytecode/ConstPool;Ljava/util/Map;)I

    move-result v4

    .line 237
    .local v4, "type":I
    iget v5, v3, Ljavassist/bytecode/ExceptionTableEntry;->startPc:I

    iget v6, v3, Ljavassist/bytecode/ExceptionTableEntry;->endPc:I

    iget v7, v3, Ljavassist/bytecode/ExceptionTableEntry;->handlerPc:I

    invoke-virtual {v0, v5, v6, v7, v4}, Ljavassist/bytecode/ExceptionTable;->add(IIII)V

    .line 238
    .end local v3    # "e":Ljavassist/bytecode/ExceptionTableEntry;
    .end local v4    # "type":I
    goto :goto_0

    .line 240
    :cond_0
    return-object v0
.end method

.method public endPc(I)I
    .locals 1
    .param p1, "nth"    # I

    .line 117
    iget-object v0, p0, Ljavassist/bytecode/ExceptionTable;->entries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/ExceptionTableEntry;

    iget v0, v0, Ljavassist/bytecode/ExceptionTableEntry;->endPc:I

    return v0
.end method

.method public handlerPc(I)I
    .locals 1
    .param p1, "nth"    # I

    .line 136
    iget-object v0, p0, Ljavassist/bytecode/ExceptionTable;->entries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/ExceptionTableEntry;

    iget v0, v0, Ljavassist/bytecode/ExceptionTableEntry;->handlerPc:I

    return v0
.end method

.method public remove(I)V
    .locals 1
    .param p1, "index"    # I

    .line 220
    iget-object v0, p0, Ljavassist/bytecode/ExceptionTable;->entries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 221
    return-void
.end method

.method public setCatchType(II)V
    .locals 1
    .param p1, "nth"    # I
    .param p2, "value"    # I

    .line 167
    iget-object v0, p0, Ljavassist/bytecode/ExceptionTable;->entries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/ExceptionTableEntry;

    iput p2, v0, Ljavassist/bytecode/ExceptionTableEntry;->catchType:I

    .line 168
    return-void
.end method

.method public setEndPc(II)V
    .locals 1
    .param p1, "nth"    # I
    .param p2, "value"    # I

    .line 127
    iget-object v0, p0, Ljavassist/bytecode/ExceptionTable;->entries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/ExceptionTableEntry;

    iput p2, v0, Ljavassist/bytecode/ExceptionTableEntry;->endPc:I

    .line 128
    return-void
.end method

.method public setHandlerPc(II)V
    .locals 1
    .param p1, "nth"    # I
    .param p2, "value"    # I

    .line 146
    iget-object v0, p0, Ljavassist/bytecode/ExceptionTable;->entries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/ExceptionTableEntry;

    iput p2, v0, Ljavassist/bytecode/ExceptionTableEntry;->handlerPc:I

    .line 147
    return-void
.end method

.method public setStartPc(II)V
    .locals 1
    .param p1, "nth"    # I
    .param p2, "value"    # I

    .line 108
    iget-object v0, p0, Ljavassist/bytecode/ExceptionTable;->entries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/ExceptionTableEntry;

    iput p2, v0, Ljavassist/bytecode/ExceptionTableEntry;->startPc:I

    .line 109
    return-void
.end method

.method shiftPc(IIZ)V
    .locals 3
    .param p1, "where"    # I
    .param p2, "gapLength"    # I
    .param p3, "exclusive"    # Z

    .line 244
    iget-object v0, p0, Ljavassist/bytecode/ExceptionTable;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavassist/bytecode/ExceptionTableEntry;

    .line 245
    .local v1, "e":Ljavassist/bytecode/ExceptionTableEntry;
    iget v2, v1, Ljavassist/bytecode/ExceptionTableEntry;->startPc:I

    invoke-static {v2, p1, p2, p3}, Ljavassist/bytecode/ExceptionTable;->shiftPc(IIIZ)I

    move-result v2

    iput v2, v1, Ljavassist/bytecode/ExceptionTableEntry;->startPc:I

    .line 246
    iget v2, v1, Ljavassist/bytecode/ExceptionTableEntry;->endPc:I

    invoke-static {v2, p1, p2, p3}, Ljavassist/bytecode/ExceptionTable;->shiftPc(IIIZ)I

    move-result v2

    iput v2, v1, Ljavassist/bytecode/ExceptionTableEntry;->endPc:I

    .line 247
    iget v2, v1, Ljavassist/bytecode/ExceptionTableEntry;->handlerPc:I

    invoke-static {v2, p1, p2, p3}, Ljavassist/bytecode/ExceptionTable;->shiftPc(IIIZ)I

    move-result v2

    iput v2, v1, Ljavassist/bytecode/ExceptionTableEntry;->handlerPc:I

    .line 248
    .end local v1    # "e":Ljavassist/bytecode/ExceptionTableEntry;
    goto :goto_0

    .line 249
    :cond_0
    return-void
.end method

.method public size()I
    .locals 1

    .line 89
    iget-object v0, p0, Ljavassist/bytecode/ExceptionTable;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public startPc(I)I
    .locals 1
    .param p1, "nth"    # I

    .line 98
    iget-object v0, p0, Ljavassist/bytecode/ExceptionTable;->entries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/ExceptionTableEntry;

    iget v0, v0, Ljavassist/bytecode/ExceptionTableEntry;->startPc:I

    return v0
.end method

.method write(Ljava/io/DataOutputStream;)V
    .locals 3
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 260
    invoke-virtual {p0}, Ljavassist/bytecode/ExceptionTable;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 261
    iget-object v0, p0, Ljavassist/bytecode/ExceptionTable;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavassist/bytecode/ExceptionTableEntry;

    .line 262
    .local v1, "e":Ljavassist/bytecode/ExceptionTableEntry;
    iget v2, v1, Ljavassist/bytecode/ExceptionTableEntry;->startPc:I

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 263
    iget v2, v1, Ljavassist/bytecode/ExceptionTableEntry;->endPc:I

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 264
    iget v2, v1, Ljavassist/bytecode/ExceptionTableEntry;->handlerPc:I

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 265
    iget v2, v1, Ljavassist/bytecode/ExceptionTableEntry;->catchType:I

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 266
    .end local v1    # "e":Ljavassist/bytecode/ExceptionTableEntry;
    goto :goto_0

    .line 267
    :cond_0
    return-void
.end method
