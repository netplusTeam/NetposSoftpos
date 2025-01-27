.class public Ljavassist/bytecode/EnclosingMethodAttribute;
.super Ljavassist/bytecode/AttributeInfo;
.source "EnclosingMethodAttribute.java"


# static fields
.field public static final tag:Ljava/lang/String; = "EnclosingMethod"


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

    .line 35
    invoke-direct {p0, p1, p2, p3}, Ljavassist/bytecode/AttributeInfo;-><init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;)V
    .locals 5
    .param p1, "cp"    # Ljavassist/bytecode/ConstPool;
    .param p2, "className"    # Ljava/lang/String;

    .line 67
    const-string v0, "EnclosingMethod"

    invoke-direct {p0, p1, v0}, Ljavassist/bytecode/AttributeInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;)V

    .line 68
    invoke-virtual {p1, p2}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljava/lang/String;)I

    move-result v0

    .line 69
    .local v0, "ci":I
    const/4 v1, 0x0

    .line 70
    .local v1, "ni":I
    const/4 v2, 0x4

    new-array v2, v2, [B

    .line 71
    .local v2, "bvalue":[B
    ushr-int/lit8 v3, v0, 0x8

    int-to-byte v3, v3

    const/4 v4, 0x0

    aput-byte v3, v2, v4

    .line 72
    int-to-byte v3, v0

    const/4 v4, 0x1

    aput-byte v3, v2, v4

    .line 73
    ushr-int/lit8 v3, v1, 0x8

    int-to-byte v3, v3

    const/4 v4, 0x2

    aput-byte v3, v2, v4

    .line 74
    int-to-byte v3, v1

    const/4 v4, 0x3

    aput-byte v3, v2, v4

    .line 75
    invoke-virtual {p0, v2}, Ljavassist/bytecode/EnclosingMethodAttribute;->set([B)V

    .line 76
    return-void
.end method

.method public constructor <init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "cp"    # Ljavassist/bytecode/ConstPool;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "methodName"    # Ljava/lang/String;
    .param p4, "methodDesc"    # Ljava/lang/String;

    .line 48
    const-string v0, "EnclosingMethod"

    invoke-direct {p0, p1, v0}, Ljavassist/bytecode/AttributeInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p1, p2}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljava/lang/String;)I

    move-result v0

    .line 50
    .local v0, "ci":I
    invoke-virtual {p1, p3, p4}, Ljavassist/bytecode/ConstPool;->addNameAndTypeInfo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 51
    .local v1, "ni":I
    const/4 v2, 0x4

    new-array v2, v2, [B

    .line 52
    .local v2, "bvalue":[B
    ushr-int/lit8 v3, v0, 0x8

    int-to-byte v3, v3

    const/4 v4, 0x0

    aput-byte v3, v2, v4

    .line 53
    int-to-byte v3, v0

    const/4 v4, 0x1

    aput-byte v3, v2, v4

    .line 54
    ushr-int/lit8 v3, v1, 0x8

    int-to-byte v3, v3

    const/4 v4, 0x2

    aput-byte v3, v2, v4

    .line 55
    int-to-byte v3, v1

    const/4 v4, 0x3

    aput-byte v3, v2, v4

    .line 56
    invoke-virtual {p0, v2}, Ljavassist/bytecode/EnclosingMethodAttribute;->set([B)V

    .line 57
    return-void
.end method


# virtual methods
.method public classIndex()I
    .locals 2

    .line 82
    invoke-virtual {p0}, Ljavassist/bytecode/EnclosingMethodAttribute;->get()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v0

    return v0
.end method

.method public className()Ljava/lang/String;
    .locals 2

    .line 96
    invoke-virtual {p0}, Ljavassist/bytecode/EnclosingMethodAttribute;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v0

    invoke-virtual {p0}, Ljavassist/bytecode/EnclosingMethodAttribute;->classIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ConstPool;->getClassInfo(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public copy(Ljavassist/bytecode/ConstPool;Ljava/util/Map;)Ljavassist/bytecode/AttributeInfo;
    .locals 4
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

    .line 133
    .local p2, "classnames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljavassist/bytecode/EnclosingMethodAttribute;->methodIndex()I

    move-result v0

    if-nez v0, :cond_0

    .line 134
    new-instance v0, Ljavassist/bytecode/EnclosingMethodAttribute;

    invoke-virtual {p0}, Ljavassist/bytecode/EnclosingMethodAttribute;->className()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljavassist/bytecode/EnclosingMethodAttribute;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;)V

    return-object v0

    .line 135
    :cond_0
    new-instance v0, Ljavassist/bytecode/EnclosingMethodAttribute;

    invoke-virtual {p0}, Ljavassist/bytecode/EnclosingMethodAttribute;->className()Ljava/lang/String;

    move-result-object v1

    .line 136
    invoke-virtual {p0}, Ljavassist/bytecode/EnclosingMethodAttribute;->methodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljavassist/bytecode/EnclosingMethodAttribute;->methodDescriptor()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p1, v1, v2, v3}, Ljavassist/bytecode/EnclosingMethodAttribute;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    return-object v0
.end method

.method public methodDescriptor()Ljava/lang/String;
    .locals 4

    .line 117
    invoke-virtual {p0}, Ljavassist/bytecode/EnclosingMethodAttribute;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v0

    .line 118
    .local v0, "cp":Ljavassist/bytecode/ConstPool;
    invoke-virtual {p0}, Ljavassist/bytecode/EnclosingMethodAttribute;->methodIndex()I

    move-result v1

    .line 119
    .local v1, "mi":I
    invoke-virtual {v0, v1}, Ljavassist/bytecode/ConstPool;->getNameAndTypeDescriptor(I)I

    move-result v2

    .line 120
    .local v2, "ti":I
    invoke-virtual {v0, v2}, Ljavassist/bytecode/ConstPool;->getUtf8Info(I)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public methodIndex()I
    .locals 2

    .line 89
    invoke-virtual {p0}, Ljavassist/bytecode/EnclosingMethodAttribute;->get()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v0

    return v0
.end method

.method public methodName()Ljava/lang/String;
    .locals 4

    .line 105
    invoke-virtual {p0}, Ljavassist/bytecode/EnclosingMethodAttribute;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v0

    .line 106
    .local v0, "cp":Ljavassist/bytecode/ConstPool;
    invoke-virtual {p0}, Ljavassist/bytecode/EnclosingMethodAttribute;->methodIndex()I

    move-result v1

    .line 107
    .local v1, "mi":I
    if-nez v1, :cond_0

    .line 108
    const-string v2, "<clinit>"

    return-object v2

    .line 109
    :cond_0
    invoke-virtual {v0, v1}, Ljavassist/bytecode/ConstPool;->getNameAndTypeName(I)I

    move-result v2

    .line 110
    .local v2, "ni":I
    invoke-virtual {v0, v2}, Ljavassist/bytecode/ConstPool;->getUtf8Info(I)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
