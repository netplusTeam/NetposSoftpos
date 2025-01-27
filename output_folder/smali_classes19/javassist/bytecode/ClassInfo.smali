.class Ljavassist/bytecode/ClassInfo;
.super Ljavassist/bytecode/ConstInfo;
.source "ConstPool.java"


# static fields
.field static final tag:I = 0x7


# instance fields
.field name:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "className"    # I
    .param p2, "index"    # I

    .line 1526
    invoke-direct {p0, p2}, Ljavassist/bytecode/ConstInfo;-><init>(I)V

    .line 1527
    iput p1, p0, Ljavassist/bytecode/ClassInfo;->name:I

    .line 1528
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

    .line 1532
    invoke-direct {p0, p2}, Ljavassist/bytecode/ConstInfo;-><init>(I)V

    .line 1533
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Ljavassist/bytecode/ClassInfo;->name:I

    .line 1534
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

    .line 1609
    .local p3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget v0, p0, Ljavassist/bytecode/ClassInfo;->name:I

    invoke-virtual {p1, v0}, Ljavassist/bytecode/ConstPool;->getUtf8Info(I)Ljava/lang/String;

    move-result-object v0

    .line 1610
    .local v0, "classname":Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 1611
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1612
    .local v1, "newname":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1613
    move-object v0, v1

    .line 1616
    .end local v1    # "newname":Ljava/lang/String;
    :cond_0
    invoke-virtual {p2, v0}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1542
    instance-of v0, p1, Ljavassist/bytecode/ClassInfo;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljavassist/bytecode/ClassInfo;

    iget v0, v0, Ljavassist/bytecode/ClassInfo;->name:I

    iget v1, p0, Ljavassist/bytecode/ClassInfo;->name:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getClassName(Ljavassist/bytecode/ConstPool;)Ljava/lang/String;
    .locals 1
    .param p1, "cp"    # Ljavassist/bytecode/ConstPool;

    .line 1551
    iget v0, p0, Ljavassist/bytecode/ClassInfo;->name:I

    invoke-virtual {p1, v0}, Ljavassist/bytecode/ConstPool;->getUtf8Info(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTag()I
    .locals 1

    .line 1546
    const/4 v0, 0x7

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1537
    iget v0, p0, Ljavassist/bytecode/ClassInfo;->name:I

    return v0
.end method

.method public print(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "out"    # Ljava/io/PrintWriter;

    .line 1629
    const-string v0, "Class #"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1630
    iget v0, p0, Ljavassist/bytecode/ClassInfo;->name:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1631
    return-void
.end method

.method public renameClass(Ljavassist/bytecode/ConstPool;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
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

    .line 1558
    .local p4, "cache":Ljava/util/Map;, "Ljava/util/Map<Ljavassist/bytecode/ConstInfo;Ljavassist/bytecode/ConstInfo;>;"
    iget v0, p0, Ljavassist/bytecode/ClassInfo;->name:I

    invoke-virtual {p1, v0}, Ljavassist/bytecode/ConstPool;->getUtf8Info(I)Ljava/lang/String;

    move-result-object v0

    .line 1559
    .local v0, "nameStr":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1560
    .local v1, "newNameStr":Ljava/lang/String;
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1561
    move-object v1, p3

    goto :goto_0

    .line 1562
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5b

    if-ne v2, v3, :cond_1

    .line 1563
    invoke-static {v0, p2, p3}, Ljavassist/bytecode/Descriptor;->rename(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1564
    .local v2, "s":Ljava/lang/String;
    if-eq v0, v2, :cond_1

    .line 1565
    move-object v1, v2

    .line 1568
    .end local v2    # "s":Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz v1, :cond_3

    .line 1569
    if-nez p4, :cond_2

    .line 1570
    invoke-virtual {p1, v1}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Ljavassist/bytecode/ClassInfo;->name:I

    goto :goto_1

    .line 1572
    :cond_2
    invoke-interface {p4, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1573
    invoke-virtual {p1, v1}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Ljavassist/bytecode/ClassInfo;->name:I

    .line 1574
    invoke-interface {p4, p0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1576
    :cond_3
    :goto_1
    return-void
.end method

.method public renameClass(Ljavassist/bytecode/ConstPool;Ljava/util/Map;Ljava/util/Map;)V
    .locals 4
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

    .line 1582
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "cache":Ljava/util/Map;, "Ljava/util/Map<Ljavassist/bytecode/ConstInfo;Ljavassist/bytecode/ConstInfo;>;"
    iget v0, p0, Ljavassist/bytecode/ClassInfo;->name:I

    invoke-virtual {p1, v0}, Ljavassist/bytecode/ConstPool;->getUtf8Info(I)Ljava/lang/String;

    move-result-object v0

    .line 1583
    .local v0, "oldName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1584
    .local v1, "newName":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5b

    if-ne v2, v3, :cond_1

    .line 1585
    invoke-static {v0, p2}, Ljavassist/bytecode/Descriptor;->rename(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 1586
    .local v2, "s":Ljava/lang/String;
    if-eq v0, v2, :cond_0

    .line 1587
    move-object v1, v2

    .line 1588
    .end local v2    # "s":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 1590
    :cond_1
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1591
    .restart local v2    # "s":Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1592
    move-object v1, v2

    .line 1595
    .end local v2    # "s":Ljava/lang/String;
    :cond_2
    :goto_0
    if-eqz v1, :cond_4

    .line 1596
    if-nez p3, :cond_3

    .line 1597
    invoke-virtual {p1, v1}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Ljavassist/bytecode/ClassInfo;->name:I

    goto :goto_1

    .line 1599
    :cond_3
    invoke-interface {p3, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1600
    invoke-virtual {p1, v1}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Ljavassist/bytecode/ClassInfo;->name:I

    .line 1601
    invoke-interface {p3, p0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1604
    :cond_4
    :goto_1
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

    .line 1622
    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1623
    iget v0, p0, Ljavassist/bytecode/ClassInfo;->name:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1624
    return-void
.end method
