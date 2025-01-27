.class public Ljavassist/bytecode/MethodParametersAttribute;
.super Ljavassist/bytecode/AttributeInfo;
.source "MethodParametersAttribute.java"


# static fields
.field public static final tag:Ljava/lang/String; = "MethodParameters"


# direct methods
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

    .line 19
    invoke-direct {p0, p1, p2, p3}, Ljavassist/bytecode/AttributeInfo;-><init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Ljavassist/bytecode/ConstPool;[Ljava/lang/String;[I)V
    .locals 4
    .param p1, "cp"    # Ljavassist/bytecode/ConstPool;
    .param p2, "names"    # [Ljava/lang/String;
    .param p3, "flags"    # [I

    .line 31
    const-string v0, "MethodParameters"

    invoke-direct {p0, p1, v0}, Ljavassist/bytecode/AttributeInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;)V

    .line 32
    array-length v0, p2

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    .line 33
    .local v0, "data":[B
    array-length v1, p2

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 34
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 35
    aget-object v2, p2, v1

    invoke-virtual {p1, v2}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result v2

    mul-int/lit8 v3, v1, 0x4

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v0, v3}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    .line 36
    aget v2, p3, v1

    mul-int/lit8 v3, v1, 0x4

    add-int/lit8 v3, v3, 0x3

    invoke-static {v2, v0, v3}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    .line 34
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 39
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0, v0}, Ljavassist/bytecode/MethodParametersAttribute;->set([B)V

    .line 40
    return-void
.end method


# virtual methods
.method public accessFlags(I)I
    .locals 2
    .param p1, "i"    # I

    .line 66
    iget-object v0, p0, Ljavassist/bytecode/MethodParametersAttribute;->info:[B

    mul-int/lit8 v1, p1, 0x4

    add-int/lit8 v1, v1, 0x3

    invoke-static {v0, v1}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v0

    return v0
.end method

.method public copy(Ljavassist/bytecode/ConstPool;Ljava/util/Map;)Ljavassist/bytecode/AttributeInfo;
    .locals 6
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

    .line 77
    .local p2, "classnames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljavassist/bytecode/MethodParametersAttribute;->size()I

    move-result v0

    .line 78
    .local v0, "s":I
    invoke-virtual {p0}, Ljavassist/bytecode/MethodParametersAttribute;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v1

    .line 79
    .local v1, "cp":Ljavassist/bytecode/ConstPool;
    new-array v2, v0, [Ljava/lang/String;

    .line 80
    .local v2, "names":[Ljava/lang/String;
    new-array v3, v0, [I

    .line 81
    .local v3, "flags":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_0

    .line 82
    invoke-virtual {p0, v4}, Ljavassist/bytecode/MethodParametersAttribute;->name(I)I

    move-result v5

    invoke-virtual {v1, v5}, Ljavassist/bytecode/ConstPool;->getUtf8Info(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    .line 83
    invoke-virtual {p0, v4}, Ljavassist/bytecode/MethodParametersAttribute;->accessFlags(I)I

    move-result v5

    aput v5, v3, v4

    .line 81
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 86
    .end local v4    # "i":I
    :cond_0
    new-instance v4, Ljavassist/bytecode/MethodParametersAttribute;

    invoke-direct {v4, p1, v2, v3}, Ljavassist/bytecode/MethodParametersAttribute;-><init>(Ljavassist/bytecode/ConstPool;[Ljava/lang/String;[I)V

    return-object v4
.end method

.method public name(I)I
    .locals 2
    .param p1, "i"    # I

    .line 56
    iget-object v0, p0, Ljavassist/bytecode/MethodParametersAttribute;->info:[B

    mul-int/lit8 v1, p1, 0x4

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v0

    return v0
.end method

.method public size()I
    .locals 2

    .line 47
    iget-object v0, p0, Ljavassist/bytecode/MethodParametersAttribute;->info:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method
