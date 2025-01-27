.class Ljavassist/bytecode/StackMap$Copier;
.super Ljavassist/bytecode/StackMap$Walker;
.source "StackMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/StackMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Copier"
.end annotation


# instance fields
.field classnames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field dest:[B

.field destCp:Ljavassist/bytecode/ConstPool;

.field srcCp:Ljavassist/bytecode/ConstPool;


# direct methods
.method constructor <init>(Ljavassist/bytecode/StackMap;Ljavassist/bytecode/ConstPool;Ljava/util/Map;)V
    .locals 1
    .param p1, "map"    # Ljavassist/bytecode/StackMap;
    .param p2, "newCp"    # Ljavassist/bytecode/ConstPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavassist/bytecode/StackMap;",
            "Ljavassist/bytecode/ConstPool;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 228
    .local p3, "classnames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Ljavassist/bytecode/StackMap$Walker;-><init>(Ljavassist/bytecode/StackMap;)V

    .line 229
    invoke-virtual {p1}, Ljavassist/bytecode/StackMap;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v0

    iput-object v0, p0, Ljavassist/bytecode/StackMap$Copier;->srcCp:Ljavassist/bytecode/ConstPool;

    .line 230
    iget-object v0, p0, Ljavassist/bytecode/StackMap$Copier;->info:[B

    array-length v0, v0

    new-array v0, v0, [B

    iput-object v0, p0, Ljavassist/bytecode/StackMap$Copier;->dest:[B

    .line 231
    iput-object p2, p0, Ljavassist/bytecode/StackMap$Copier;->destCp:Ljavassist/bytecode/ConstPool;

    .line 232
    iput-object p3, p0, Ljavassist/bytecode/StackMap$Copier;->classnames:Ljava/util/Map;

    .line 233
    return-void
.end method


# virtual methods
.method public getStackMap()Ljavassist/bytecode/StackMap;
    .locals 3

    .line 272
    new-instance v0, Ljavassist/bytecode/StackMap;

    iget-object v1, p0, Ljavassist/bytecode/StackMap$Copier;->destCp:Ljavassist/bytecode/ConstPool;

    iget-object v2, p0, Ljavassist/bytecode/StackMap$Copier;->dest:[B

    invoke-direct {v0, v1, v2}, Ljavassist/bytecode/StackMap;-><init>(Ljavassist/bytecode/ConstPool;[B)V

    return-object v0
.end method

.method public locals(III)I
    .locals 2
    .param p1, "pos"    # I
    .param p2, "offset"    # I
    .param p3, "num"    # I

    .line 243
    iget-object v0, p0, Ljavassist/bytecode/StackMap$Copier;->dest:[B

    add-int/lit8 v1, p1, -0x4

    invoke-static {p2, v0, v1}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    .line 244
    invoke-super {p0, p1, p2, p3}, Ljavassist/bytecode/StackMap$Walker;->locals(III)I

    move-result v0

    return v0
.end method

.method public objectVariable(II)V
    .locals 3
    .param p1, "pos"    # I
    .param p2, "clazz"    # I

    .line 260
    iget-object v0, p0, Ljavassist/bytecode/StackMap$Copier;->dest:[B

    const/4 v1, 0x7

    aput-byte v1, v0, p1

    .line 261
    iget-object v0, p0, Ljavassist/bytecode/StackMap$Copier;->srcCp:Ljavassist/bytecode/ConstPool;

    iget-object v1, p0, Ljavassist/bytecode/StackMap$Copier;->destCp:Ljavassist/bytecode/ConstPool;

    iget-object v2, p0, Ljavassist/bytecode/StackMap$Copier;->classnames:Ljava/util/Map;

    invoke-virtual {v0, p2, v1, v2}, Ljavassist/bytecode/ConstPool;->copy(ILjavassist/bytecode/ConstPool;Ljava/util/Map;)I

    move-result v0

    .line 262
    .local v0, "newClazz":I
    iget-object v1, p0, Ljavassist/bytecode/StackMap$Copier;->dest:[B

    add-int/lit8 v2, p1, 0x1

    invoke-static {v0, v1, v2}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    .line 263
    return-void
.end method

.method public typeInfo(IB)V
    .locals 1
    .param p1, "pos"    # I
    .param p2, "tag"    # B

    .line 255
    iget-object v0, p0, Ljavassist/bytecode/StackMap$Copier;->dest:[B

    aput-byte p2, v0, p1

    .line 256
    return-void
.end method

.method public typeInfoArray(IIIZ)I
    .locals 2
    .param p1, "pos"    # I
    .param p2, "offset"    # I
    .param p3, "num"    # I
    .param p4, "isLocals"    # Z

    .line 249
    iget-object v0, p0, Ljavassist/bytecode/StackMap$Copier;->dest:[B

    add-int/lit8 v1, p1, -0x2

    invoke-static {p3, v0, v1}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    .line 250
    invoke-super {p0, p1, p2, p3, p4}, Ljavassist/bytecode/StackMap$Walker;->typeInfoArray(IIIZ)I

    move-result v0

    return v0
.end method

.method public uninitialized(II)V
    .locals 2
    .param p1, "pos"    # I
    .param p2, "offset"    # I

    .line 267
    iget-object v0, p0, Ljavassist/bytecode/StackMap$Copier;->dest:[B

    const/16 v1, 0x8

    aput-byte v1, v0, p1

    .line 268
    add-int/lit8 v1, p1, 0x1

    invoke-static {p2, v0, v1}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    .line 269
    return-void
.end method

.method public visit()V
    .locals 3

    .line 236
    iget-object v0, p0, Ljavassist/bytecode/StackMap$Copier;->info:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v0

    .line 237
    .local v0, "num":I
    iget-object v2, p0, Ljavassist/bytecode/StackMap$Copier;->dest:[B

    invoke-static {v0, v2, v1}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    .line 238
    invoke-super {p0}, Ljavassist/bytecode/StackMap$Walker;->visit()V

    .line 239
    return-void
.end method
