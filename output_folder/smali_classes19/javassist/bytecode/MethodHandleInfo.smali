.class Ljavassist/bytecode/MethodHandleInfo;
.super Ljavassist/bytecode/ConstInfo;
.source "ConstPool.java"


# static fields
.field static final tag:I = 0xf


# instance fields
.field refIndex:I

.field refKind:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .param p1, "kind"    # I
    .param p2, "referenceIndex"    # I
    .param p3, "index"    # I

    .line 2190
    invoke-direct {p0, p3}, Ljavassist/bytecode/ConstInfo;-><init>(I)V

    .line 2191
    iput p1, p0, Ljavassist/bytecode/MethodHandleInfo;->refKind:I

    .line 2192
    iput p2, p0, Ljavassist/bytecode/MethodHandleInfo;->refIndex:I

    .line 2193
    return-void
.end method

.method public constructor <init>(Ljava/io/DataInputStream;I)V
    .locals 1
    .param p1, "in"    # Ljava/io/DataInputStream;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2198
    invoke-direct {p0, p2}, Ljavassist/bytecode/ConstInfo;-><init>(I)V

    .line 2199
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    iput v0, p0, Ljavassist/bytecode/MethodHandleInfo;->refKind:I

    .line 2200
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Ljavassist/bytecode/MethodHandleInfo;->refIndex:I

    .line 2201
    return-void
.end method


# virtual methods
.method public copy(Ljavassist/bytecode/ConstPool;Ljavassist/bytecode/ConstPool;Ljava/util/Map;)I
    .locals 2
    .param p1, "src"    # Ljavassist/bytecode/ConstPool;
    .param p2, "dest"    # Ljavassist/bytecode/ConstPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavassist/bytecode/ConstPool;",
            "Ljavassist/bytecode/ConstPool;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 2223
    .local p3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget v0, p0, Ljavassist/bytecode/MethodHandleInfo;->refKind:I

    iget v1, p0, Ljavassist/bytecode/MethodHandleInfo;->refIndex:I

    .line 2224
    invoke-virtual {p1, v1}, Ljavassist/bytecode/ConstPool;->getItem(I)Ljavassist/bytecode/ConstInfo;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Ljavassist/bytecode/ConstInfo;->copy(Ljavassist/bytecode/ConstPool;Ljavassist/bytecode/ConstPool;Ljava/util/Map;)I

    move-result v1

    .line 2223
    invoke-virtual {p2, v0, v1}, Ljavassist/bytecode/ConstPool;->addMethodHandleInfo(II)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 2209
    instance-of v0, p1, Ljavassist/bytecode/MethodHandleInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2210
    move-object v0, p1

    check-cast v0, Ljavassist/bytecode/MethodHandleInfo;

    .line 2211
    .local v0, "mh":Ljavassist/bytecode/MethodHandleInfo;
    iget v2, v0, Ljavassist/bytecode/MethodHandleInfo;->refKind:I

    iget v3, p0, Ljavassist/bytecode/MethodHandleInfo;->refKind:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Ljavassist/bytecode/MethodHandleInfo;->refIndex:I

    iget v3, p0, Ljavassist/bytecode/MethodHandleInfo;->refIndex:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 2213
    .end local v0    # "mh":Ljavassist/bytecode/MethodHandleInfo;
    :cond_1
    return v1
.end method

.method public getTag()I
    .locals 1

    .line 2217
    const/16 v0, 0xf

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 2204
    iget v0, p0, Ljavassist/bytecode/MethodHandleInfo;->refKind:I

    shl-int/lit8 v0, v0, 0x10

    iget v1, p0, Ljavassist/bytecode/MethodHandleInfo;->refIndex:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public print(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "out"    # Ljava/io/PrintWriter;

    .line 2237
    const-string v0, "MethodHandle #"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2238
    iget v0, p0, Ljavassist/bytecode/MethodHandleInfo;->refKind:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2239
    const-string v0, ", index #"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2240
    iget v0, p0, Ljavassist/bytecode/MethodHandleInfo;->refIndex:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2241
    return-void
.end method

.method public write(Ljava/io/DataOutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2230
    const/16 v0, 0xf

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 2231
    iget v0, p0, Ljavassist/bytecode/MethodHandleInfo;->refKind:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 2232
    iget v0, p0, Ljavassist/bytecode/MethodHandleInfo;->refIndex:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 2233
    return-void
.end method
