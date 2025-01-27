.class public Ljavassist/bytecode/stackmap/TypeData$BasicType;
.super Ljavassist/bytecode/stackmap/TypeData;
.source "TypeData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/stackmap/TypeData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "BasicType"
.end annotation


# instance fields
.field private decodedName:C

.field private name:Ljava/lang/String;

.field private typeTag:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IC)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "tag"    # I
    .param p3, "decoded"    # C

    .line 129
    invoke-direct {p0}, Ljavassist/bytecode/stackmap/TypeData;-><init>()V

    .line 130
    iput-object p1, p0, Ljavassist/bytecode/stackmap/TypeData$BasicType;->name:Ljava/lang/String;

    .line 131
    iput p2, p0, Ljavassist/bytecode/stackmap/TypeData$BasicType;->typeTag:I

    .line 132
    iput-char p3, p0, Ljavassist/bytecode/stackmap/TypeData$BasicType;->decodedName:C

    .line 133
    return-void
.end method

.method static synthetic access$100(Ljavassist/bytecode/stackmap/TypeData$BasicType;)C
    .locals 1
    .param p0, "x0"    # Ljavassist/bytecode/stackmap/TypeData$BasicType;

    .line 124
    iget-char v0, p0, Ljavassist/bytecode/stackmap/TypeData$BasicType;->decodedName:C

    return v0
.end method


# virtual methods
.method public eq(Ljavassist/bytecode/stackmap/TypeData;)Z
    .locals 1
    .param p1, "d"    # Ljavassist/bytecode/stackmap/TypeData;

    .line 157
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getArrayType(I)Ljavassist/bytecode/stackmap/TypeData;
    .locals 3
    .param p1, "dim"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 176
    sget-object v0, Ljavassist/bytecode/stackmap/TypeTag;->TOP:Ljavassist/bytecode/stackmap/TypeData$BasicType;

    if-ne p0, v0, :cond_0

    .line 177
    return-object p0

    .line 178
    :cond_0
    if-ltz p1, :cond_3

    .line 180
    if-nez p1, :cond_1

    .line 181
    return-object p0

    .line 183
    :cond_1
    add-int/lit8 v0, p1, 0x1

    new-array v0, v0, [C

    .line 184
    .local v0, "name":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_2

    .line 185
    const/16 v2, 0x5b

    aput-char v2, v0, v1

    .line 184
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 187
    .end local v1    # "i":I
    :cond_2
    iget-char v1, p0, Ljavassist/bytecode/stackmap/TypeData$BasicType;->decodedName:C

    aput-char v1, v0, p1

    .line 188
    new-instance v1, Ljavassist/bytecode/stackmap/TypeData$ClassName;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v1, v2}, Ljavassist/bytecode/stackmap/TypeData$ClassName;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 179
    .end local v0    # "name":[C
    :cond_3
    new-instance v0, Ljavassist/NotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no element type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljavassist/bytecode/stackmap/TypeData$BasicType;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavassist/NotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDecodedName()C
    .locals 1

    .line 164
    iget-char v0, p0, Ljavassist/bytecode/stackmap/TypeData$BasicType;->decodedName:C

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 161
    iget-object v0, p0, Ljavassist/bytecode/stackmap/TypeData$BasicType;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeData(Ljavassist/bytecode/ConstPool;)I
    .locals 1
    .param p1, "cp"    # Ljavassist/bytecode/ConstPool;

    .line 138
    const/4 v0, 0x0

    return v0
.end method

.method public getTypeTag()I
    .locals 1

    .line 136
    iget v0, p0, Ljavassist/bytecode/stackmap/TypeData$BasicType;->typeTag:I

    return v0
.end method

.method public is2WordType()Z
    .locals 2

    .line 152
    iget v0, p0, Ljavassist/bytecode/stackmap/TypeData$BasicType;->typeTag:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isBasicType()Ljavassist/bytecode/stackmap/TypeData$BasicType;
    .locals 0

    .line 148
    return-object p0
.end method

.method public join()Ljavassist/bytecode/stackmap/TypeData;
    .locals 1

    .line 142
    sget-object v0, Ljavassist/bytecode/stackmap/TypeTag;->TOP:Ljavassist/bytecode/stackmap/TypeData$BasicType;

    if-ne p0, v0, :cond_0

    .line 143
    return-object p0

    .line 144
    :cond_0
    invoke-super {p0}, Ljavassist/bytecode/stackmap/TypeData;->join()Ljavassist/bytecode/stackmap/TypeData;

    move-result-object v0

    return-object v0
.end method

.method public setType(Ljava/lang/String;Ljavassist/ClassPool;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "cp"    # Ljavassist/ClassPool;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 168
    new-instance v0, Ljavassist/bytecode/BadBytecode;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "conflict: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljavassist/bytecode/stackmap/TypeData$BasicType;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavassist/bytecode/BadBytecode;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method toString2(Ljava/util/Set;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljavassist/bytecode/stackmap/TypeData;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 193
    .local p1, "set":Ljava/util/Set;, "Ljava/util/Set<Ljavassist/bytecode/stackmap/TypeData;>;"
    iget-object v0, p0, Ljavassist/bytecode/stackmap/TypeData$BasicType;->name:Ljava/lang/String;

    return-object v0
.end method
