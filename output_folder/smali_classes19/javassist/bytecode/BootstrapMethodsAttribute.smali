.class public Ljavassist/bytecode/BootstrapMethodsAttribute;
.super Ljavassist/bytecode/AttributeInfo;
.source "BootstrapMethodsAttribute.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavassist/bytecode/BootstrapMethodsAttribute$BootstrapMethod;
    }
.end annotation


# static fields
.field public static final tag:Ljava/lang/String; = "BootstrapMethods"


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

    .line 43
    invoke-direct {p0, p1, p2, p3}, Ljavassist/bytecode/AttributeInfo;-><init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljavassist/bytecode/ConstPool;[Ljavassist/bytecode/BootstrapMethodsAttribute$BootstrapMethod;)V
    .locals 7
    .param p1, "cp"    # Ljavassist/bytecode/ConstPool;
    .param p2, "methods"    # [Ljavassist/bytecode/BootstrapMethodsAttribute$BootstrapMethod;

    .line 53
    const-string v0, "BootstrapMethods"

    invoke-direct {p0, p1, v0}, Ljavassist/bytecode/AttributeInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;)V

    .line 54
    const/4 v0, 0x2

    .line 55
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 56
    aget-object v2, p2, v1

    iget-object v2, v2, Ljavassist/bytecode/BootstrapMethodsAttribute$BootstrapMethod;->arguments:[I

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x4

    add-int/2addr v0, v2

    .line 55
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 58
    .end local v1    # "i":I
    :cond_0
    new-array v1, v0, [B

    .line 59
    .local v1, "data":[B
    array-length v2, p2

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    .line 60
    const/4 v2, 0x2

    .line 61
    .local v2, "pos":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v4, p2

    if-ge v3, v4, :cond_2

    .line 62
    aget-object v4, p2, v3

    iget v4, v4, Ljavassist/bytecode/BootstrapMethodsAttribute$BootstrapMethod;->methodRef:I

    invoke-static {v4, v1, v2}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    .line 63
    aget-object v4, p2, v3

    iget-object v4, v4, Ljavassist/bytecode/BootstrapMethodsAttribute$BootstrapMethod;->arguments:[I

    array-length v4, v4

    add-int/lit8 v5, v2, 0x2

    invoke-static {v4, v1, v5}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    .line 64
    aget-object v4, p2, v3

    iget-object v4, v4, Ljavassist/bytecode/BootstrapMethodsAttribute$BootstrapMethod;->arguments:[I

    .line 65
    .local v4, "args":[I
    add-int/lit8 v2, v2, 0x4

    .line 66
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_2
    array-length v6, v4

    if-ge v5, v6, :cond_1

    .line 67
    aget v6, v4, v5

    invoke-static {v6, v1, v2}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    .line 68
    add-int/lit8 v2, v2, 0x2

    .line 66
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 61
    .end local v4    # "args":[I
    .end local v5    # "k":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 72
    .end local v3    # "i":I
    :cond_2
    invoke-virtual {p0, v1}, Ljavassist/bytecode/BootstrapMethodsAttribute;->set([B)V

    .line 73
    return-void
.end method


# virtual methods
.method public copy(Ljavassist/bytecode/ConstPool;Ljava/util/Map;)Ljavassist/bytecode/AttributeInfo;
    .locals 7
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

    .line 113
    .local p2, "classnames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljavassist/bytecode/BootstrapMethodsAttribute;->getMethods()[Ljavassist/bytecode/BootstrapMethodsAttribute$BootstrapMethod;

    move-result-object v0

    .line 114
    .local v0, "methods":[Ljavassist/bytecode/BootstrapMethodsAttribute$BootstrapMethod;
    invoke-virtual {p0}, Ljavassist/bytecode/BootstrapMethodsAttribute;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v1

    .line 115
    .local v1, "thisCp":Ljavassist/bytecode/ConstPool;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 116
    aget-object v3, v0, v2

    .line 117
    .local v3, "m":Ljavassist/bytecode/BootstrapMethodsAttribute$BootstrapMethod;
    iget v4, v3, Ljavassist/bytecode/BootstrapMethodsAttribute$BootstrapMethod;->methodRef:I

    invoke-virtual {v1, v4, p1, p2}, Ljavassist/bytecode/ConstPool;->copy(ILjavassist/bytecode/ConstPool;Ljava/util/Map;)I

    move-result v4

    iput v4, v3, Ljavassist/bytecode/BootstrapMethodsAttribute$BootstrapMethod;->methodRef:I

    .line 118
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_1
    iget-object v5, v3, Ljavassist/bytecode/BootstrapMethodsAttribute$BootstrapMethod;->arguments:[I

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 119
    iget-object v5, v3, Ljavassist/bytecode/BootstrapMethodsAttribute$BootstrapMethod;->arguments:[I

    iget-object v6, v3, Ljavassist/bytecode/BootstrapMethodsAttribute$BootstrapMethod;->arguments:[I

    aget v6, v6, v4

    invoke-virtual {v1, v6, p1, p2}, Ljavassist/bytecode/ConstPool;->copy(ILjavassist/bytecode/ConstPool;Ljava/util/Map;)I

    move-result v6

    aput v6, v5, v4

    .line 118
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 115
    .end local v3    # "m":Ljavassist/bytecode/BootstrapMethodsAttribute$BootstrapMethod;
    .end local v4    # "k":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 122
    .end local v2    # "i":I
    :cond_1
    new-instance v2, Ljavassist/bytecode/BootstrapMethodsAttribute;

    invoke-direct {v2, p1, v0}, Ljavassist/bytecode/BootstrapMethodsAttribute;-><init>(Ljavassist/bytecode/ConstPool;[Ljavassist/bytecode/BootstrapMethodsAttribute$BootstrapMethod;)V

    return-object v2
.end method

.method public getMethods()[Ljavassist/bytecode/BootstrapMethodsAttribute$BootstrapMethod;
    .locals 10

    .line 83
    invoke-virtual {p0}, Ljavassist/bytecode/BootstrapMethodsAttribute;->get()[B

    move-result-object v0

    .line 84
    .local v0, "data":[B
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v1

    .line 85
    .local v1, "num":I
    new-array v2, v1, [Ljavassist/bytecode/BootstrapMethodsAttribute$BootstrapMethod;

    .line 86
    .local v2, "methods":[Ljavassist/bytecode/BootstrapMethodsAttribute$BootstrapMethod;
    const/4 v3, 0x2

    .line 87
    .local v3, "pos":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_1

    .line 88
    invoke-static {v0, v3}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v5

    .line 89
    .local v5, "ref":I
    add-int/lit8 v6, v3, 0x2

    invoke-static {v0, v6}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v6

    .line 90
    .local v6, "len":I
    new-array v7, v6, [I

    .line 91
    .local v7, "args":[I
    add-int/lit8 v3, v3, 0x4

    .line 92
    const/4 v8, 0x0

    .local v8, "k":I
    :goto_1
    if-ge v8, v6, :cond_0

    .line 93
    invoke-static {v0, v3}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v9

    aput v9, v7, v8

    .line 94
    add-int/lit8 v3, v3, 0x2

    .line 92
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 97
    .end local v8    # "k":I
    :cond_0
    new-instance v8, Ljavassist/bytecode/BootstrapMethodsAttribute$BootstrapMethod;

    invoke-direct {v8, v5, v7}, Ljavassist/bytecode/BootstrapMethodsAttribute$BootstrapMethod;-><init>(I[I)V

    aput-object v8, v2, v4

    .line 87
    .end local v5    # "ref":I
    .end local v6    # "len":I
    .end local v7    # "args":[I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 100
    .end local v4    # "i":I
    :cond_1
    return-object v2
.end method
