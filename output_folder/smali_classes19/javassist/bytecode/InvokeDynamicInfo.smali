.class Ljavassist/bytecode/InvokeDynamicInfo;
.super Ljavassist/bytecode/ConstInfo;
.source "ConstPool.java"


# static fields
.field static final tag:I = 0x12


# instance fields
.field bootstrap:I

.field nameAndType:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .param p1, "bootstrapMethod"    # I
    .param p2, "ntIndex"    # I
    .param p3, "index"    # I

    .line 2338
    invoke-direct {p0, p3}, Ljavassist/bytecode/ConstInfo;-><init>(I)V

    .line 2339
    iput p1, p0, Ljavassist/bytecode/InvokeDynamicInfo;->bootstrap:I

    .line 2340
    iput p2, p0, Ljavassist/bytecode/InvokeDynamicInfo;->nameAndType:I

    .line 2341
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

    .line 2346
    invoke-direct {p0, p2}, Ljavassist/bytecode/ConstInfo;-><init>(I)V

    .line 2347
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Ljavassist/bytecode/InvokeDynamicInfo;->bootstrap:I

    .line 2348
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Ljavassist/bytecode/InvokeDynamicInfo;->nameAndType:I

    .line 2349
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

    .line 2372
    .local p3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget v0, p0, Ljavassist/bytecode/InvokeDynamicInfo;->bootstrap:I

    iget v1, p0, Ljavassist/bytecode/InvokeDynamicInfo;->nameAndType:I

    .line 2373
    invoke-virtual {p1, v1}, Ljavassist/bytecode/ConstPool;->getItem(I)Ljavassist/bytecode/ConstInfo;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Ljavassist/bytecode/ConstInfo;->copy(Ljavassist/bytecode/ConstPool;Ljavassist/bytecode/ConstPool;Ljava/util/Map;)I

    move-result v1

    .line 2372
    invoke-virtual {p2, v0, v1}, Ljavassist/bytecode/ConstPool;->addInvokeDynamicInfo(II)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 2357
    instance-of v0, p1, Ljavassist/bytecode/InvokeDynamicInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2358
    move-object v0, p1

    check-cast v0, Ljavassist/bytecode/InvokeDynamicInfo;

    .line 2359
    .local v0, "iv":Ljavassist/bytecode/InvokeDynamicInfo;
    iget v2, v0, Ljavassist/bytecode/InvokeDynamicInfo;->bootstrap:I

    iget v3, p0, Ljavassist/bytecode/InvokeDynamicInfo;->bootstrap:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Ljavassist/bytecode/InvokeDynamicInfo;->nameAndType:I

    iget v3, p0, Ljavassist/bytecode/InvokeDynamicInfo;->nameAndType:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 2362
    .end local v0    # "iv":Ljavassist/bytecode/InvokeDynamicInfo;
    :cond_1
    return v1
.end method

.method public getTag()I
    .locals 1

    .line 2366
    const/16 v0, 0x12

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 2352
    iget v0, p0, Ljavassist/bytecode/InvokeDynamicInfo;->bootstrap:I

    shl-int/lit8 v0, v0, 0x10

    iget v1, p0, Ljavassist/bytecode/InvokeDynamicInfo;->nameAndType:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public print(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "out"    # Ljava/io/PrintWriter;

    .line 2386
    const-string v0, "InvokeDynamic #"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2387
    iget v0, p0, Ljavassist/bytecode/InvokeDynamicInfo;->bootstrap:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2388
    const-string v0, ", name&type #"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2389
    iget v0, p0, Ljavassist/bytecode/InvokeDynamicInfo;->nameAndType:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2390
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

    .line 2379
    const/16 v0, 0x12

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 2380
    iget v0, p0, Ljavassist/bytecode/InvokeDynamicInfo;->bootstrap:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 2381
    iget v0, p0, Ljavassist/bytecode/InvokeDynamicInfo;->nameAndType:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 2382
    return-void
.end method
