.class public Ljavassist/bytecode/ConstantAttribute;
.super Ljavassist/bytecode/AttributeInfo;
.source "ConstantAttribute.java"


# static fields
.field public static final tag:Ljava/lang/String; = "ConstantValue"


# direct methods
.method public constructor <init>(Ljavassist/bytecode/ConstPool;I)V
    .locals 3
    .param p1, "cp"    # Ljavassist/bytecode/ConstPool;
    .param p2, "index"    # I

    .line 46
    const-string v0, "ConstantValue"

    invoke-direct {p0, p1, v0}, Ljavassist/bytecode/AttributeInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;)V

    .line 47
    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 48
    .local v0, "bvalue":[B
    ushr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 49
    int-to-byte v1, p2

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 50
    invoke-virtual {p0, v0}, Ljavassist/bytecode/ConstantAttribute;->set([B)V

    .line 51
    return-void
.end method

.method constructor <init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V
    .locals 0
    .param p1, "cp"    # Ljavassist/bytecode/ConstPool;
    .param p2, "n"    # I
    .param p3, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2, p3}, Ljavassist/bytecode/AttributeInfo;-><init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V

    .line 36
    return-void
.end method


# virtual methods
.method public copy(Ljavassist/bytecode/ConstPool;Ljava/util/Map;)Ljavassist/bytecode/AttributeInfo;
    .locals 2
    .param p1, "newCp"    # Ljavassist/bytecode/ConstPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavassist/bytecode/ConstPool;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljavassist/bytecode/AttributeInfo;"
        }
    .end annotation

    .line 70
    .local p2, "classnames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljavassist/bytecode/ConstantAttribute;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v0

    invoke-virtual {p0}, Ljavassist/bytecode/ConstantAttribute;->getConstantValue()I

    move-result v1

    invoke-virtual {v0, v1, p1, p2}, Ljavassist/bytecode/ConstPool;->copy(ILjavassist/bytecode/ConstPool;Ljava/util/Map;)I

    move-result v0

    .line 72
    .local v0, "index":I
    new-instance v1, Ljavassist/bytecode/ConstantAttribute;

    invoke-direct {v1, p1, v0}, Ljavassist/bytecode/ConstantAttribute;-><init>(Ljavassist/bytecode/ConstPool;I)V

    return-object v1
.end method

.method public getConstantValue()I
    .locals 2

    .line 57
    invoke-virtual {p0}, Ljavassist/bytecode/ConstantAttribute;->get()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v0

    return v0
.end method
