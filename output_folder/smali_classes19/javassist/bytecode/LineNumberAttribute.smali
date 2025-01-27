.class public Ljavassist/bytecode/LineNumberAttribute;
.super Ljavassist/bytecode/AttributeInfo;
.source "LineNumberAttribute.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavassist/bytecode/LineNumberAttribute$Pc;
    }
.end annotation


# static fields
.field public static final tag:Ljava/lang/String; = "LineNumberTable"


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

.method private constructor <init>(Ljavassist/bytecode/ConstPool;[B)V
    .locals 1
    .param p1, "cp"    # Ljavassist/bytecode/ConstPool;
    .param p2, "i"    # [B

    .line 39
    const-string v0, "LineNumberTable"

    invoke-direct {p0, p1, v0, p2}, Ljavassist/bytecode/AttributeInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;[B)V

    .line 40
    return-void
.end method


# virtual methods
.method public copy(Ljavassist/bytecode/ConstPool;Ljava/util/Map;)Ljavassist/bytecode/AttributeInfo;
    .locals 5
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

    .line 161
    .local p2, "classnames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Ljavassist/bytecode/LineNumberAttribute;->info:[B

    .line 162
    .local v0, "src":[B
    array-length v1, v0

    .line 163
    .local v1, "num":I
    new-array v2, v1, [B

    .line 164
    .local v2, "dest":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 165
    aget-byte v4, v0, v3

    aput-byte v4, v2, v3

    .line 164
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 167
    .end local v3    # "i":I
    :cond_0
    new-instance v3, Ljavassist/bytecode/LineNumberAttribute;

    invoke-direct {v3, p1, v2}, Ljavassist/bytecode/LineNumberAttribute;-><init>(Ljavassist/bytecode/ConstPool;[B)V

    .line 168
    .local v3, "attr":Ljavassist/bytecode/LineNumberAttribute;
    return-object v3
.end method

.method public lineNumber(I)I
    .locals 2
    .param p1, "i"    # I

    .line 69
    iget-object v0, p0, Ljavassist/bytecode/LineNumberAttribute;->info:[B

    mul-int/lit8 v1, p1, 0x4

    add-int/lit8 v1, v1, 0x4

    invoke-static {v0, v1}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v0

    return v0
.end method

.method shiftPc(IIZ)V
    .locals 6
    .param p1, "where"    # I
    .param p2, "gapLength"    # I
    .param p3, "exclusive"    # Z

    .line 175
    invoke-virtual {p0}, Ljavassist/bytecode/LineNumberAttribute;->tableLength()I

    move-result v0

    .line 176
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 177
    mul-int/lit8 v2, v1, 0x4

    add-int/lit8 v2, v2, 0x2

    .line 178
    .local v2, "pos":I
    iget-object v3, p0, Ljavassist/bytecode/LineNumberAttribute;->info:[B

    invoke-static {v3, v2}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v3

    .line 179
    .local v3, "pc":I
    if-gt v3, p1, :cond_0

    if-eqz p3, :cond_1

    if-ne v3, p1, :cond_1

    .line 180
    :cond_0
    add-int v4, v3, p2

    iget-object v5, p0, Ljavassist/bytecode/LineNumberAttribute;->info:[B

    invoke-static {v4, v5, v2}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    .line 176
    .end local v2    # "pos":I
    .end local v3    # "pc":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 182
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method public startPc(I)I
    .locals 2
    .param p1, "i"    # I

    .line 58
    iget-object v0, p0, Ljavassist/bytecode/LineNumberAttribute;->info:[B

    mul-int/lit8 v1, p1, 0x4

    add-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v0

    return v0
.end method

.method public tableLength()I
    .locals 2

    .line 47
    iget-object v0, p0, Ljavassist/bytecode/LineNumberAttribute;->info:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v0

    return v0
.end method

.method public toLineNumber(I)I
    .locals 3
    .param p1, "pc"    # I

    .line 78
    invoke-virtual {p0}, Ljavassist/bytecode/LineNumberAttribute;->tableLength()I

    move-result v0

    .line 79
    .local v0, "n":I
    const/4 v1, 0x0

    .line 80
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 81
    invoke-virtual {p0, v1}, Ljavassist/bytecode/LineNumberAttribute;->startPc(I)I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 82
    if-nez v1, :cond_1

    .line 83
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljavassist/bytecode/LineNumberAttribute;->lineNumber(I)I

    move-result v2

    return v2

    .line 80
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 87
    :cond_1
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p0, v2}, Ljavassist/bytecode/LineNumberAttribute;->lineNumber(I)I

    move-result v2

    return v2
.end method

.method public toNearPc(I)Ljavassist/bytecode/LineNumberAttribute$Pc;
    .locals 5
    .param p1, "line"    # I

    .line 130
    invoke-virtual {p0}, Ljavassist/bytecode/LineNumberAttribute;->tableLength()I

    move-result v0

    .line 131
    .local v0, "n":I
    const/4 v1, 0x0

    .line 132
    .local v1, "nearPc":I
    const/4 v2, 0x0

    .line 133
    .local v2, "distance":I
    if-lez v0, :cond_0

    .line 134
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljavassist/bytecode/LineNumberAttribute;->lineNumber(I)I

    move-result v4

    sub-int v2, v4, p1

    .line 135
    invoke-virtual {p0, v3}, Ljavassist/bytecode/LineNumberAttribute;->startPc(I)I

    move-result v1

    .line 138
    :cond_0
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_4

    .line 139
    invoke-virtual {p0, v3}, Ljavassist/bytecode/LineNumberAttribute;->lineNumber(I)I

    move-result v4

    sub-int/2addr v4, p1

    .line 140
    .local v4, "d":I
    if-gez v4, :cond_1

    if-gt v4, v2, :cond_2

    :cond_1
    if-ltz v4, :cond_3

    if-lt v4, v2, :cond_2

    if-gez v2, :cond_3

    .line 142
    :cond_2
    move v2, v4

    .line 143
    invoke-virtual {p0, v3}, Ljavassist/bytecode/LineNumberAttribute;->startPc(I)I

    move-result v1

    .line 138
    .end local v4    # "d":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 147
    .end local v3    # "i":I
    :cond_4
    new-instance v3, Ljavassist/bytecode/LineNumberAttribute$Pc;

    invoke-direct {v3}, Ljavassist/bytecode/LineNumberAttribute$Pc;-><init>()V

    .line 148
    .local v3, "res":Ljavassist/bytecode/LineNumberAttribute$Pc;
    iput v1, v3, Ljavassist/bytecode/LineNumberAttribute$Pc;->index:I

    .line 149
    add-int v4, p1, v2

    iput v4, v3, Ljavassist/bytecode/LineNumberAttribute$Pc;->line:I

    .line 150
    return-object v3
.end method

.method public toStartPc(I)I
    .locals 3
    .param p1, "line"    # I

    .line 98
    invoke-virtual {p0}, Ljavassist/bytecode/LineNumberAttribute;->tableLength()I

    move-result v0

    .line 99
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 100
    invoke-virtual {p0, v1}, Ljavassist/bytecode/LineNumberAttribute;->lineNumber(I)I

    move-result v2

    if-ne p1, v2, :cond_0

    .line 101
    invoke-virtual {p0, v1}, Ljavassist/bytecode/LineNumberAttribute;->startPc(I)I

    move-result v2

    return v2

    .line 99
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 103
    .end local v1    # "i":I
    :cond_1
    const/4 v1, -0x1

    return v1
.end method
