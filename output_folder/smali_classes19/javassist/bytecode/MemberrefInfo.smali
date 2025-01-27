.class abstract Ljavassist/bytecode/MemberrefInfo;
.super Ljavassist/bytecode/ConstInfo;
.source "ConstPool.java"


# instance fields
.field classIndex:I

.field nameAndTypeIndex:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .param p1, "cindex"    # I
    .param p2, "ntindex"    # I
    .param p3, "thisIndex"    # I

    .line 1736
    invoke-direct {p0, p3}, Ljavassist/bytecode/ConstInfo;-><init>(I)V

    .line 1737
    iput p1, p0, Ljavassist/bytecode/MemberrefInfo;->classIndex:I

    .line 1738
    iput p2, p0, Ljavassist/bytecode/MemberrefInfo;->nameAndTypeIndex:I

    .line 1739
    return-void
.end method

.method public constructor <init>(Ljava/io/DataInputStream;I)V
    .locals 1
    .param p1, "in"    # Ljava/io/DataInputStream;
    .param p2, "thisIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1744
    invoke-direct {p0, p2}, Ljavassist/bytecode/ConstInfo;-><init>(I)V

    .line 1745
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Ljavassist/bytecode/MemberrefInfo;->classIndex:I

    .line 1746
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Ljavassist/bytecode/MemberrefInfo;->nameAndTypeIndex:I

    .line 1747
    return-void
.end method


# virtual methods
.method public copy(Ljavassist/bytecode/ConstPool;Ljavassist/bytecode/ConstPool;Ljava/util/Map;)I
    .locals 3
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

    .line 1766
    .local p3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget v0, p0, Ljavassist/bytecode/MemberrefInfo;->classIndex:I

    invoke-virtual {p1, v0}, Ljavassist/bytecode/ConstPool;->getItem(I)Ljavassist/bytecode/ConstInfo;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljavassist/bytecode/ConstInfo;->copy(Ljavassist/bytecode/ConstPool;Ljavassist/bytecode/ConstPool;Ljava/util/Map;)I

    move-result v0

    .line 1767
    .local v0, "classIndex2":I
    iget v1, p0, Ljavassist/bytecode/MemberrefInfo;->nameAndTypeIndex:I

    invoke-virtual {p1, v1}, Ljavassist/bytecode/ConstPool;->getItem(I)Ljavassist/bytecode/ConstInfo;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Ljavassist/bytecode/ConstInfo;->copy(Ljavassist/bytecode/ConstPool;Ljavassist/bytecode/ConstPool;Ljava/util/Map;)I

    move-result v1

    .line 1768
    .local v1, "ntIndex2":I
    invoke-virtual {p0, p2, v0, v1}, Ljavassist/bytecode/MemberrefInfo;->copy2(Ljavassist/bytecode/ConstPool;II)I

    move-result v2

    return v2
.end method

.method protected abstract copy2(Ljavassist/bytecode/ConstPool;II)I
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1754
    instance-of v0, p1, Ljavassist/bytecode/MemberrefInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1755
    move-object v0, p1

    check-cast v0, Ljavassist/bytecode/MemberrefInfo;

    .line 1756
    .local v0, "mri":Ljavassist/bytecode/MemberrefInfo;
    iget v2, v0, Ljavassist/bytecode/MemberrefInfo;->classIndex:I

    iget v3, p0, Ljavassist/bytecode/MemberrefInfo;->classIndex:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Ljavassist/bytecode/MemberrefInfo;->nameAndTypeIndex:I

    iget v3, p0, Ljavassist/bytecode/MemberrefInfo;->nameAndTypeIndex:I

    if-ne v2, v3, :cond_0

    .line 1758
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 1756
    :goto_0
    return v1

    .line 1760
    .end local v0    # "mri":Ljavassist/bytecode/MemberrefInfo;
    :cond_1
    return v1
.end method

.method public abstract getTagName()Ljava/lang/String;
.end method

.method public hashCode()I
    .locals 2

    .line 1750
    iget v0, p0, Ljavassist/bytecode/MemberrefInfo;->classIndex:I

    shl-int/lit8 v0, v0, 0x10

    iget v1, p0, Ljavassist/bytecode/MemberrefInfo;->nameAndTypeIndex:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public print(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "out"    # Ljava/io/PrintWriter;

    .line 1784
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavassist/bytecode/MemberrefInfo;->getTagName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1785
    iget v0, p0, Ljavassist/bytecode/MemberrefInfo;->classIndex:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1786
    const-string v0, ", name&type #"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1787
    iget v0, p0, Ljavassist/bytecode/MemberrefInfo;->nameAndTypeIndex:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1788
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

    .line 1776
    invoke-virtual {p0}, Ljavassist/bytecode/MemberrefInfo;->getTag()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1777
    iget v0, p0, Ljavassist/bytecode/MemberrefInfo;->classIndex:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1778
    iget v0, p0, Ljavassist/bytecode/MemberrefInfo;->nameAndTypeIndex:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1779
    return-void
.end method
