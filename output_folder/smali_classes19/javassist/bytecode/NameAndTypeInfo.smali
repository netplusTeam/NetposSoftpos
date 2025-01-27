.class Ljavassist/bytecode/NameAndTypeInfo;
.super Ljavassist/bytecode/ConstInfo;
.source "ConstPool.java"


# static fields
.field static final tag:I = 0xc


# instance fields
.field memberName:I

.field typeDescriptor:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .param p1, "name"    # I
    .param p2, "type"    # I
    .param p3, "index"    # I

    .line 1642
    invoke-direct {p0, p3}, Ljavassist/bytecode/ConstInfo;-><init>(I)V

    .line 1643
    iput p1, p0, Ljavassist/bytecode/NameAndTypeInfo;->memberName:I

    .line 1644
    iput p2, p0, Ljavassist/bytecode/NameAndTypeInfo;->typeDescriptor:I

    .line 1645
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

    .line 1649
    invoke-direct {p0, p2}, Ljavassist/bytecode/ConstInfo;-><init>(I)V

    .line 1650
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Ljavassist/bytecode/NameAndTypeInfo;->memberName:I

    .line 1651
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Ljavassist/bytecode/NameAndTypeInfo;->typeDescriptor:I

    .line 1652
    return-void
.end method


# virtual methods
.method public copy(Ljavassist/bytecode/ConstPool;Ljavassist/bytecode/ConstPool;Ljava/util/Map;)I
    .locals 4
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

    .line 1706
    .local p3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget v0, p0, Ljavassist/bytecode/NameAndTypeInfo;->memberName:I

    invoke-virtual {p1, v0}, Ljavassist/bytecode/ConstPool;->getUtf8Info(I)Ljava/lang/String;

    move-result-object v0

    .line 1707
    .local v0, "mname":Ljava/lang/String;
    iget v1, p0, Ljavassist/bytecode/NameAndTypeInfo;->typeDescriptor:I

    invoke-virtual {p1, v1}, Ljavassist/bytecode/ConstPool;->getUtf8Info(I)Ljava/lang/String;

    move-result-object v1

    .line 1708
    .local v1, "tdesc":Ljava/lang/String;
    invoke-static {v1, p3}, Ljavassist/bytecode/Descriptor;->rename(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 1709
    invoke-virtual {p2, v0}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result v2

    .line 1710
    invoke-virtual {p2, v1}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result v3

    .line 1709
    invoke-virtual {p2, v2, v3}, Ljavassist/bytecode/ConstPool;->addNameAndTypeInfo(II)I

    move-result v2

    return v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1660
    instance-of v0, p1, Ljavassist/bytecode/NameAndTypeInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1661
    move-object v0, p1

    check-cast v0, Ljavassist/bytecode/NameAndTypeInfo;

    .line 1662
    .local v0, "nti":Ljavassist/bytecode/NameAndTypeInfo;
    iget v2, v0, Ljavassist/bytecode/NameAndTypeInfo;->memberName:I

    iget v3, p0, Ljavassist/bytecode/NameAndTypeInfo;->memberName:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Ljavassist/bytecode/NameAndTypeInfo;->typeDescriptor:I

    iget v3, p0, Ljavassist/bytecode/NameAndTypeInfo;->typeDescriptor:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 1665
    .end local v0    # "nti":Ljavassist/bytecode/NameAndTypeInfo;
    :cond_1
    return v1
.end method

.method public getTag()I
    .locals 1

    .line 1669
    const/16 v0, 0xc

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1655
    iget v0, p0, Ljavassist/bytecode/NameAndTypeInfo;->memberName:I

    shl-int/lit8 v0, v0, 0x10

    iget v1, p0, Ljavassist/bytecode/NameAndTypeInfo;->typeDescriptor:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public print(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "out"    # Ljava/io/PrintWriter;

    .line 1722
    const-string v0, "NameAndType #"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1723
    iget v0, p0, Ljavassist/bytecode/NameAndTypeInfo;->memberName:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1724
    const-string v0, ", type #"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1725
    iget v0, p0, Ljavassist/bytecode/NameAndTypeInfo;->typeDescriptor:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1726
    return-void
.end method

.method public renameClass(Ljavassist/bytecode/ConstPool;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .param p1, "cp"    # Ljavassist/bytecode/ConstPool;
    .param p2, "oldName"    # Ljava/lang/String;
    .param p3, "newName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavassist/bytecode/ConstPool;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljavassist/bytecode/ConstInfo;",
            "Ljavassist/bytecode/ConstInfo;",
            ">;)V"
        }
    .end annotation

    .line 1675
    .local p4, "cache":Ljava/util/Map;, "Ljava/util/Map<Ljavassist/bytecode/ConstInfo;Ljavassist/bytecode/ConstInfo;>;"
    iget v0, p0, Ljavassist/bytecode/NameAndTypeInfo;->typeDescriptor:I

    invoke-virtual {p1, v0}, Ljavassist/bytecode/ConstPool;->getUtf8Info(I)Ljava/lang/String;

    move-result-object v0

    .line 1676
    .local v0, "type":Ljava/lang/String;
    invoke-static {v0, p2, p3}, Ljavassist/bytecode/Descriptor;->rename(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1677
    .local v1, "type2":Ljava/lang/String;
    if-eq v0, v1, :cond_1

    .line 1678
    if-nez p4, :cond_0

    .line 1679
    invoke-virtual {p1, v1}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Ljavassist/bytecode/NameAndTypeInfo;->typeDescriptor:I

    goto :goto_0

    .line 1681
    :cond_0
    invoke-interface {p4, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1682
    invoke-virtual {p1, v1}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Ljavassist/bytecode/NameAndTypeInfo;->typeDescriptor:I

    .line 1683
    invoke-interface {p4, p0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1685
    :cond_1
    :goto_0
    return-void
.end method

.method public renameClass(Ljavassist/bytecode/ConstPool;Ljava/util/Map;Ljava/util/Map;)V
    .locals 3
    .param p1, "cp"    # Ljavassist/bytecode/ConstPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavassist/bytecode/ConstPool;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljavassist/bytecode/ConstInfo;",
            "Ljavassist/bytecode/ConstInfo;",
            ">;)V"
        }
    .end annotation

    .line 1691
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "cache":Ljava/util/Map;, "Ljava/util/Map<Ljavassist/bytecode/ConstInfo;Ljavassist/bytecode/ConstInfo;>;"
    iget v0, p0, Ljavassist/bytecode/NameAndTypeInfo;->typeDescriptor:I

    invoke-virtual {p1, v0}, Ljavassist/bytecode/ConstPool;->getUtf8Info(I)Ljava/lang/String;

    move-result-object v0

    .line 1692
    .local v0, "type":Ljava/lang/String;
    invoke-static {v0, p2}, Ljavassist/bytecode/Descriptor;->rename(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 1693
    .local v1, "type2":Ljava/lang/String;
    if-eq v0, v1, :cond_1

    .line 1694
    if-nez p3, :cond_0

    .line 1695
    invoke-virtual {p1, v1}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Ljavassist/bytecode/NameAndTypeInfo;->typeDescriptor:I

    goto :goto_0

    .line 1697
    :cond_0
    invoke-interface {p3, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1698
    invoke-virtual {p1, v1}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Ljavassist/bytecode/NameAndTypeInfo;->typeDescriptor:I

    .line 1699
    invoke-interface {p3, p0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1701
    :cond_1
    :goto_0
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

    .line 1715
    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1716
    iget v0, p0, Ljavassist/bytecode/NameAndTypeInfo;->memberName:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1717
    iget v0, p0, Ljavassist/bytecode/NameAndTypeInfo;->typeDescriptor:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1718
    return-void
.end method
