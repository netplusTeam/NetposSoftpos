.class Ljavassist/bytecode/IntegerInfo;
.super Ljavassist/bytecode/ConstInfo;
.source "ConstPool.java"


# static fields
.field static final tag:I = 0x3


# instance fields
.field value:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "v"    # I
    .param p2, "index"    # I

    .line 1934
    invoke-direct {p0, p2}, Ljavassist/bytecode/ConstInfo;-><init>(I)V

    .line 1935
    iput p1, p0, Ljavassist/bytecode/IntegerInfo;->value:I

    .line 1936
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

    .line 1940
    invoke-direct {p0, p2}, Ljavassist/bytecode/ConstInfo;-><init>(I)V

    .line 1941
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Ljavassist/bytecode/IntegerInfo;->value:I

    .line 1942
    return-void
.end method


# virtual methods
.method public copy(Ljavassist/bytecode/ConstPool;Ljavassist/bytecode/ConstPool;Ljava/util/Map;)I
    .locals 1
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

    .line 1959
    .local p3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget v0, p0, Ljavassist/bytecode/IntegerInfo;->value:I

    invoke-virtual {p2, v0}, Ljavassist/bytecode/ConstPool;->addIntegerInfo(I)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1950
    instance-of v0, p1, Ljavassist/bytecode/IntegerInfo;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljavassist/bytecode/IntegerInfo;

    iget v0, v0, Ljavassist/bytecode/IntegerInfo;->value:I

    iget v1, p0, Ljavassist/bytecode/IntegerInfo;->value:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getTag()I
    .locals 1

    .line 1954
    const/4 v0, 0x3

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1945
    iget v0, p0, Ljavassist/bytecode/IntegerInfo;->value:I

    return v0
.end method

.method public print(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "out"    # Ljava/io/PrintWriter;

    .line 1972
    const-string v0, "Integer "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1973
    iget v0, p0, Ljavassist/bytecode/IntegerInfo;->value:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1974
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

    .line 1965
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1966
    iget v0, p0, Ljavassist/bytecode/IntegerInfo;->value:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1967
    return-void
.end method
