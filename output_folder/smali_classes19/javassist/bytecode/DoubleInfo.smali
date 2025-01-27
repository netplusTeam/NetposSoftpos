.class Ljavassist/bytecode/DoubleInfo;
.super Ljavassist/bytecode/ConstInfo;
.source "ConstPool.java"


# static fields
.field static final tag:I = 0x6


# instance fields
.field value:D


# direct methods
.method public constructor <init>(DI)V
    .locals 0
    .param p1, "d"    # D
    .param p3, "index"    # I

    .line 2083
    invoke-direct {p0, p3}, Ljavassist/bytecode/ConstInfo;-><init>(I)V

    .line 2084
    iput-wide p1, p0, Ljavassist/bytecode/DoubleInfo;->value:D

    .line 2085
    return-void
.end method

.method public constructor <init>(Ljava/io/DataInputStream;I)V
    .locals 2
    .param p1, "in"    # Ljava/io/DataInputStream;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2089
    invoke-direct {p0, p2}, Ljavassist/bytecode/ConstInfo;-><init>(I)V

    .line 2090
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Ljavassist/bytecode/DoubleInfo;->value:D

    .line 2091
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

    .line 2112
    .local p3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-wide v0, p0, Ljavassist/bytecode/DoubleInfo;->value:D

    invoke-virtual {p2, v0, v1}, Ljavassist/bytecode/ConstPool;->addDoubleInfo(D)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 2102
    instance-of v0, p1, Ljavassist/bytecode/DoubleInfo;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljavassist/bytecode/DoubleInfo;

    iget-wide v0, v0, Ljavassist/bytecode/DoubleInfo;->value:D

    iget-wide v2, p0, Ljavassist/bytecode/DoubleInfo;->value:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getTag()I
    .locals 1

    .line 2107
    const/4 v0, 0x6

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 2095
    iget-wide v0, p0, Ljavassist/bytecode/DoubleInfo;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 2096
    .local v0, "v":J
    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v2, v0

    long-to-int v2, v2

    return v2
.end method

.method public print(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "out"    # Ljava/io/PrintWriter;

    .line 2125
    const-string v0, "Double "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2126
    iget-wide v0, p0, Ljavassist/bytecode/DoubleInfo;->value:D

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(D)V

    .line 2127
    return-void
.end method

.method public write(Ljava/io/DataOutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2118
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 2119
    iget-wide v0, p0, Ljavassist/bytecode/DoubleInfo;->value:D

    invoke-virtual {p1, v0, v1}, Ljava/io/DataOutputStream;->writeDouble(D)V

    .line 2120
    return-void
.end method
