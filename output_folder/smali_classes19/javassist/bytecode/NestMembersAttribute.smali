.class public Ljavassist/bytecode/NestMembersAttribute;
.super Ljavassist/bytecode/AttributeInfo;
.source "NestMembersAttribute.java"


# static fields
.field public static final tag:Ljava/lang/String; = "NestMembers"


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

    .line 36
    invoke-direct {p0, p1, p2, p3}, Ljavassist/bytecode/AttributeInfo;-><init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V

    .line 37
    return-void
.end method

.method private constructor <init>(Ljavassist/bytecode/ConstPool;[B)V
    .locals 1
    .param p1, "cp"    # Ljavassist/bytecode/ConstPool;
    .param p2, "info"    # [B

    .line 40
    const-string v0, "NestMembers"

    invoke-direct {p0, p1, v0, p2}, Ljavassist/bytecode/AttributeInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;[B)V

    .line 41
    return-void
.end method


# virtual methods
.method public copy(Ljavassist/bytecode/ConstPool;Ljava/util/Map;)Ljavassist/bytecode/AttributeInfo;
    .locals 8
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

    .line 53
    .local p2, "classnames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljavassist/bytecode/NestMembersAttribute;->get()[B

    move-result-object v0

    .line 54
    .local v0, "src":[B
    array-length v1, v0

    new-array v1, v1, [B

    .line 55
    .local v1, "dest":[B
    invoke-virtual {p0}, Ljavassist/bytecode/NestMembersAttribute;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v2

    .line 57
    .local v2, "cp":Ljavassist/bytecode/ConstPool;
    const/4 v3, 0x0

    invoke-static {v0, v3}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v4

    .line 58
    .local v4, "n":I
    invoke-static {v4, v1, v3}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    .line 60
    const/4 v3, 0x0

    .local v3, "i":I
    const/4 v5, 0x2

    .local v5, "j":I
    :goto_0
    if-ge v3, v4, :cond_0

    .line 61
    invoke-static {v0, v5}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v6

    .line 62
    .local v6, "index":I
    invoke-virtual {v2, v6, p1, p2}, Ljavassist/bytecode/ConstPool;->copy(ILjavassist/bytecode/ConstPool;Ljava/util/Map;)I

    move-result v7

    .line 63
    .local v7, "newIndex":I
    invoke-static {v7, v1, v5}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    .line 60
    .end local v6    # "index":I
    .end local v7    # "newIndex":I
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v5, v5, 0x2

    goto :goto_0

    .line 66
    .end local v3    # "i":I
    .end local v5    # "j":I
    :cond_0
    new-instance v3, Ljavassist/bytecode/NestMembersAttribute;

    invoke-direct {v3, p1, v1}, Ljavassist/bytecode/NestMembersAttribute;-><init>(Ljavassist/bytecode/ConstPool;[B)V

    return-object v3
.end method

.method public memberClass(I)I
    .locals 2
    .param p1, "index"    # I

    .line 86
    iget-object v0, p0, Ljavassist/bytecode/NestMembersAttribute;->info:[B

    mul-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v0

    return v0
.end method

.method public numberOfClasses()I
    .locals 2

    .line 74
    iget-object v0, p0, Ljavassist/bytecode/NestMembersAttribute;->info:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v0

    return v0
.end method
