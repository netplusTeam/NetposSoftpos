.class public Ljavassist/bytecode/ExceptionsAttribute;
.super Ljavassist/bytecode/AttributeInfo;
.source "ExceptionsAttribute.java"


# static fields
.field public static final tag:Ljava/lang/String; = "Exceptions"


# direct methods
.method public constructor <init>(Ljavassist/bytecode/ConstPool;)V
    .locals 3
    .param p1, "cp"    # Ljavassist/bytecode/ConstPool;

    .line 56
    const-string v0, "Exceptions"

    invoke-direct {p0, p1, v0}, Ljavassist/bytecode/AttributeInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;)V

    .line 57
    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 58
    .local v0, "data":[B
    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-byte v2, v0, v1

    aput-byte v2, v0, v2

    .line 59
    iput-object v0, p0, Ljavassist/bytecode/ExceptionsAttribute;->info:[B

    .line 60
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

.method private constructor <init>(Ljavassist/bytecode/ConstPool;Ljavassist/bytecode/ExceptionsAttribute;Ljava/util/Map;)V
    .locals 1
    .param p1, "cp"    # Ljavassist/bytecode/ConstPool;
    .param p2, "src"    # Ljavassist/bytecode/ExceptionsAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavassist/bytecode/ConstPool;",
            "Ljavassist/bytecode/ExceptionsAttribute;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 46
    .local p3, "classnames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "Exceptions"

    invoke-direct {p0, p1, v0}, Ljavassist/bytecode/AttributeInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0, p2, p3}, Ljavassist/bytecode/ExceptionsAttribute;->copyFrom(Ljavassist/bytecode/ExceptionsAttribute;Ljava/util/Map;)V

    .line 48
    return-void
.end method

.method private copyFrom(Ljavassist/bytecode/ExceptionsAttribute;Ljava/util/Map;)V
    .locals 8
    .param p1, "srcAttr"    # Ljavassist/bytecode/ExceptionsAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavassist/bytecode/ExceptionsAttribute;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 84
    .local p2, "classnames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p1, Ljavassist/bytecode/ExceptionsAttribute;->constPool:Ljavassist/bytecode/ConstPool;

    .line 85
    .local v0, "srcCp":Ljavassist/bytecode/ConstPool;
    iget-object v1, p0, Ljavassist/bytecode/ExceptionsAttribute;->constPool:Ljavassist/bytecode/ConstPool;

    .line 86
    .local v1, "destCp":Ljavassist/bytecode/ConstPool;
    iget-object v2, p1, Ljavassist/bytecode/ExceptionsAttribute;->info:[B

    .line 87
    .local v2, "src":[B
    array-length v3, v2

    .line 88
    .local v3, "num":I
    new-array v4, v3, [B

    .line 89
    .local v4, "dest":[B
    const/4 v5, 0x0

    aget-byte v6, v2, v5

    aput-byte v6, v4, v5

    .line 90
    const/4 v5, 0x1

    aget-byte v6, v2, v5

    aput-byte v6, v4, v5

    .line 91
    const/4 v5, 0x2

    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_0

    .line 92
    invoke-static {v2, v5}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v6

    .line 93
    .local v6, "index":I
    invoke-virtual {v0, v6, v1, p2}, Ljavassist/bytecode/ConstPool;->copy(ILjavassist/bytecode/ConstPool;Ljava/util/Map;)I

    move-result v7

    invoke-static {v7, v4, v5}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    .line 91
    .end local v6    # "index":I
    add-int/lit8 v5, v5, 0x2

    goto :goto_0

    .line 97
    .end local v5    # "i":I
    :cond_0
    iput-object v4, p0, Ljavassist/bytecode/ExceptionsAttribute;->info:[B

    .line 98
    return-void
.end method


# virtual methods
.method public copy(Ljavassist/bytecode/ConstPool;Ljava/util/Map;)Ljavassist/bytecode/AttributeInfo;
    .locals 1
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

    .line 72
    .local p2, "classnames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljavassist/bytecode/ExceptionsAttribute;

    invoke-direct {v0, p1, p0, p2}, Ljavassist/bytecode/ExceptionsAttribute;-><init>(Ljavassist/bytecode/ConstPool;Ljavassist/bytecode/ExceptionsAttribute;Ljava/util/Map;)V

    return-object v0
.end method

.method public getException(I)I
    .locals 4
    .param p1, "nth"    # I

    .line 172
    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, 0x2

    .line 173
    .local v0, "index":I
    iget-object v1, p0, Ljavassist/bytecode/ExceptionsAttribute;->info:[B

    aget-byte v1, v1, v0

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    iget-object v2, p0, Ljavassist/bytecode/ExceptionsAttribute;->info:[B

    add-int/lit8 v3, v0, 0x1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    return v1
.end method

.method public getExceptionIndexes()[I
    .locals 8

    .line 104
    iget-object v0, p0, Ljavassist/bytecode/ExceptionsAttribute;->info:[B

    .line 105
    .local v0, "blist":[B
    array-length v1, v0

    .line 106
    .local v1, "n":I
    const/4 v2, 0x2

    if-gt v1, v2, :cond_0

    .line 107
    const/4 v2, 0x0

    return-object v2

    .line 109
    :cond_0
    div-int/lit8 v2, v1, 0x2

    add-int/lit8 v2, v2, -0x1

    new-array v2, v2, [I

    .line 110
    .local v2, "elist":[I
    const/4 v3, 0x0

    .line 111
    .local v3, "k":I
    const/4 v4, 0x2

    .local v4, "j":I
    :goto_0
    if-ge v4, v1, :cond_1

    .line 112
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "k":I
    .local v5, "k":I
    aget-byte v6, v0, v4

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    add-int/lit8 v7, v4, 0x1

    aget-byte v7, v0, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v6, v7

    aput v6, v2, v3

    .line 111
    add-int/lit8 v4, v4, 0x2

    move v3, v5

    goto :goto_0

    .line 114
    .end local v4    # "j":I
    .end local v5    # "k":I
    .restart local v3    # "k":I
    :cond_1
    return-object v2
.end method

.method public getExceptions()[Ljava/lang/String;
    .locals 8

    .line 121
    iget-object v0, p0, Ljavassist/bytecode/ExceptionsAttribute;->info:[B

    .line 122
    .local v0, "blist":[B
    array-length v1, v0

    .line 123
    .local v1, "n":I
    const/4 v2, 0x2

    if-gt v1, v2, :cond_0

    .line 124
    const/4 v2, 0x0

    return-object v2

    .line 126
    :cond_0
    div-int/lit8 v2, v1, 0x2

    add-int/lit8 v2, v2, -0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 127
    .local v2, "elist":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 128
    .local v3, "k":I
    const/4 v4, 0x2

    .local v4, "j":I
    :goto_0
    if-ge v4, v1, :cond_1

    .line 129
    aget-byte v5, v0, v4

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v6, v4, 0x1

    aget-byte v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v5, v6

    .line 130
    .local v5, "index":I
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "k":I
    .local v6, "k":I
    iget-object v7, p0, Ljavassist/bytecode/ExceptionsAttribute;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v7, v5}, Ljavassist/bytecode/ConstPool;->getClassInfo(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v3

    .line 128
    .end local v5    # "index":I
    add-int/lit8 v4, v4, 0x2

    move v3, v6

    goto :goto_0

    .line 133
    .end local v4    # "j":I
    .end local v6    # "k":I
    .restart local v3    # "k":I
    :cond_1
    return-object v2
.end method

.method public setExceptionIndexes([I)V
    .locals 5
    .param p1, "elist"    # [I

    .line 140
    array-length v0, p1

    .line 141
    .local v0, "n":I
    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    .line 142
    .local v1, "blist":[B
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    .line 143
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 144
    aget v3, p1, v2

    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x2

    invoke-static {v3, v1, v4}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    .line 143
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 146
    .end local v2    # "i":I
    :cond_0
    iput-object v1, p0, Ljavassist/bytecode/ExceptionsAttribute;->info:[B

    .line 147
    return-void
.end method

.method public setExceptions([Ljava/lang/String;)V
    .locals 5
    .param p1, "elist"    # [Ljava/lang/String;

    .line 153
    array-length v0, p1

    .line 154
    .local v0, "n":I
    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    .line 155
    .local v1, "blist":[B
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    .line 156
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 157
    iget-object v3, p0, Ljavassist/bytecode/ExceptionsAttribute;->constPool:Ljavassist/bytecode/ConstPool;

    aget-object v4, p1, v2

    invoke-virtual {v3, v4}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljava/lang/String;)I

    move-result v3

    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x2

    invoke-static {v3, v1, v4}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    .line 156
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 160
    .end local v2    # "i":I
    :cond_0
    iput-object v1, p0, Ljavassist/bytecode/ExceptionsAttribute;->info:[B

    .line 161
    return-void
.end method

.method public tableLength()I
    .locals 1

    .line 166
    iget-object v0, p0, Ljavassist/bytecode/ExceptionsAttribute;->info:[B

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x1

    return v0
.end method
