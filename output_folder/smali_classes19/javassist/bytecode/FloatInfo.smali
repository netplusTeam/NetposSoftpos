.class Ljavassist/bytecode/FloatInfo;
.super Ljavassist/bytecode/ConstInfo;
.source "ConstPool.java"


# static fields
.field static final tag:I = 0x4


# instance fields
.field value:F


# direct methods
.method public constructor <init>(FI)V
    .locals 0
    .param p1, "f"    # F
    .param p2, "index"    # I

    .line 1984
    invoke-direct {p0, p2}, Ljavassist/bytecode/ConstInfo;-><init>(I)V

    .line 1985
    iput p1, p0, Ljavassist/bytecode/FloatInfo;->value:F

    .line 1986
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

    .line 1990
    invoke-direct {p0, p2}, Ljavassist/bytecode/ConstInfo;-><init>(I)V

    .line 1991
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Ljavassist/bytecode/FloatInfo;->value:F

    .line 1992
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

    .line 2009
    .local p3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget v0, p0, Ljavassist/bytecode/FloatInfo;->value:F

    invoke-virtual {p2, v0}, Ljavassist/bytecode/ConstPool;->addFloatInfo(F)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 2000
    instance-of v0, p1, Ljavassist/bytecode/FloatInfo;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljavassist/bytecode/FloatInfo;

    iget v0, v0, Ljavassist/bytecode/FloatInfo;->value:F

    iget v1, p0, Ljavassist/bytecode/FloatInfo;->value:F

    cmpl-float v0, v0, v1

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

    .line 2004
    const/4 v0, 0x4

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1995
    iget v0, p0, Ljavassist/bytecode/FloatInfo;->value:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    return v0
.end method

.method public print(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "out"    # Ljava/io/PrintWriter;

    .line 2022
    const-string v0, "Float "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2023
    iget v0, p0, Ljavassist/bytecode/FloatInfo;->value:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 2024
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

    .line 2015
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 2016
    iget v0, p0, Ljavassist/bytecode/FloatInfo;->value:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 2017
    return-void
.end method
