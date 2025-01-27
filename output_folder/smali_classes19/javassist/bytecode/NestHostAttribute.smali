.class public Ljavassist/bytecode/NestHostAttribute;
.super Ljavassist/bytecode/AttributeInfo;
.source "NestHostAttribute.java"


# static fields
.field public static final tag:Ljava/lang/String; = "NestHost"


# direct methods
.method private constructor <init>(Ljavassist/bytecode/ConstPool;I)V
    .locals 2
    .param p1, "cp"    # Ljavassist/bytecode/ConstPool;
    .param p2, "hostIndex"    # I

    .line 40
    const/4 v0, 0x2

    new-array v0, v0, [B

    const-string v1, "NestHost"

    invoke-direct {p0, p1, v1, v0}, Ljavassist/bytecode/AttributeInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;[B)V

    .line 41
    invoke-virtual {p0}, Ljavassist/bytecode/NestHostAttribute;->get()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    .line 42
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

    .line 36
    invoke-direct {p0, p1, p2, p3}, Ljavassist/bytecode/AttributeInfo;-><init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V

    .line 37
    return-void
.end method


# virtual methods
.method public copy(Ljavassist/bytecode/ConstPool;Ljava/util/Map;)Ljavassist/bytecode/AttributeInfo;
    .locals 3
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

    .line 54
    .local p2, "classnames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljavassist/bytecode/NestHostAttribute;->get()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v0

    .line 55
    .local v0, "hostIndex":I
    invoke-virtual {p0}, Ljavassist/bytecode/NestHostAttribute;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v1

    invoke-virtual {v1, v0, p1, p2}, Ljavassist/bytecode/ConstPool;->copy(ILjavassist/bytecode/ConstPool;Ljava/util/Map;)I

    move-result v1

    .line 56
    .local v1, "newHostIndex":I
    new-instance v2, Ljavassist/bytecode/NestHostAttribute;

    invoke-direct {v2, p1, v1}, Ljavassist/bytecode/NestHostAttribute;-><init>(Ljavassist/bytecode/ConstPool;I)V

    return-object v2
.end method

.method public hostClassIndex()I
    .locals 2

    .line 65
    iget-object v0, p0, Ljavassist/bytecode/NestHostAttribute;->info:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v0

    return v0
.end method
