.class public Ljavassist/bytecode/analysis/MultiArrayType;
.super Ljavassist/bytecode/analysis/Type;
.source "MultiArrayType.java"


# instance fields
.field private component:Ljavassist/bytecode/analysis/MultiType;

.field private dims:I


# direct methods
.method public constructor <init>(Ljavassist/bytecode/analysis/MultiType;I)V
    .locals 1
    .param p1, "component"    # Ljavassist/bytecode/analysis/MultiType;
    .param p2, "dims"    # I

    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljavassist/bytecode/analysis/Type;-><init>(Ljavassist/CtClass;)V

    .line 33
    iput-object p1, p0, Ljavassist/bytecode/analysis/MultiArrayType;->component:Ljavassist/bytecode/analysis/MultiType;

    .line 34
    iput p2, p0, Ljavassist/bytecode/analysis/MultiArrayType;->dims:I

    .line 35
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 134
    instance-of v0, p1, Ljavassist/bytecode/analysis/MultiArrayType;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 135
    return v1

    .line 136
    :cond_0
    move-object v0, p1

    check-cast v0, Ljavassist/bytecode/analysis/MultiArrayType;

    .line 138
    .local v0, "multi":Ljavassist/bytecode/analysis/MultiArrayType;
    iget-object v2, p0, Ljavassist/bytecode/analysis/MultiArrayType;->component:Ljavassist/bytecode/analysis/MultiType;

    iget-object v3, v0, Ljavassist/bytecode/analysis/MultiArrayType;->component:Ljavassist/bytecode/analysis/MultiType;

    invoke-virtual {v2, v3}, Ljavassist/bytecode/analysis/MultiType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Ljavassist/bytecode/analysis/MultiArrayType;->dims:I

    iget v3, v0, Ljavassist/bytecode/analysis/MultiArrayType;->dims:I

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getComponent()Ljavassist/bytecode/analysis/Type;
    .locals 4

    .line 68
    iget v0, p0, Ljavassist/bytecode/analysis/MultiArrayType;->dims:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ljavassist/bytecode/analysis/MultiArrayType;->component:Ljavassist/bytecode/analysis/MultiType;

    goto :goto_0

    :cond_0
    new-instance v2, Ljavassist/bytecode/analysis/MultiArrayType;

    iget-object v3, p0, Ljavassist/bytecode/analysis/MultiArrayType;->component:Ljavassist/bytecode/analysis/MultiType;

    sub-int/2addr v0, v1

    invoke-direct {v2, v3, v0}, Ljavassist/bytecode/analysis/MultiArrayType;-><init>(Ljavassist/bytecode/analysis/MultiType;I)V

    move-object v0, v2

    :goto_0
    return-object v0
.end method

.method public getCtClass()Ljavassist/CtClass;
    .locals 5

    .line 39
    iget-object v0, p0, Ljavassist/bytecode/analysis/MultiArrayType;->component:Ljavassist/bytecode/analysis/MultiType;

    invoke-virtual {v0}, Ljavassist/bytecode/analysis/MultiType;->getCtClass()Ljavassist/CtClass;

    move-result-object v0

    .line 40
    .local v0, "clazz":Ljavassist/CtClass;
    if-nez v0, :cond_0

    .line 41
    const/4 v1, 0x0

    return-object v1

    .line 43
    :cond_0
    invoke-virtual {v0}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object v1

    .line 44
    .local v1, "pool":Ljavassist/ClassPool;
    if-nez v1, :cond_1

    .line 45
    invoke-static {}, Ljavassist/ClassPool;->getDefault()Ljavassist/ClassPool;

    move-result-object v1

    .line 47
    :cond_1
    invoke-virtual {v0}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Ljavassist/bytecode/analysis/MultiArrayType;->dims:I

    invoke-virtual {p0, v2, v3}, Ljavassist/bytecode/analysis/MultiArrayType;->arrayName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 50
    .local v2, "name":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v1, v2}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v3
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 51
    :catch_0
    move-exception v3

    .line 52
    .local v3, "e":Ljavassist/NotFoundException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public getDimensions()I
    .locals 1

    .line 63
    iget v0, p0, Ljavassist/bytecode/analysis/MultiArrayType;->dims:I

    return v0
.end method

.method public getSize()I
    .locals 1

    .line 73
    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 129
    iget-object v0, p0, Ljavassist/bytecode/analysis/MultiArrayType;->component:Ljavassist/bytecode/analysis/MultiType;

    invoke-virtual {v0}, Ljavassist/bytecode/analysis/MultiType;->hashCode()I

    move-result v0

    iget v1, p0, Ljavassist/bytecode/analysis/MultiArrayType;->dims:I

    add-int/2addr v0, v1

    return v0
.end method

.method public isArray()Z
    .locals 1

    .line 78
    const/4 v0, 0x1

    return v0
.end method

.method public isAssignableFrom(Ljavassist/bytecode/analysis/Type;)Z
    .locals 2
    .param p1, "type"    # Ljavassist/bytecode/analysis/Type;

    .line 83
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isAssignableTo(Ljavassist/bytecode/analysis/Type;)Z
    .locals 6
    .param p1, "type"    # Ljavassist/bytecode/analysis/Type;

    .line 92
    invoke-virtual {p1}, Ljavassist/bytecode/analysis/Type;->getCtClass()Ljavassist/CtClass;

    move-result-object v0

    sget-object v1, Ljavassist/bytecode/analysis/Type;->OBJECT:Ljavassist/bytecode/analysis/Type;

    invoke-virtual {v1}, Ljavassist/bytecode/analysis/Type;->getCtClass()Ljavassist/CtClass;

    move-result-object v1

    invoke-static {v0, v1}, Ljavassist/bytecode/analysis/MultiArrayType;->eq(Ljavassist/CtClass;Ljavassist/CtClass;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 93
    return v1

    .line 95
    :cond_0
    invoke-virtual {p1}, Ljavassist/bytecode/analysis/Type;->getCtClass()Ljavassist/CtClass;

    move-result-object v0

    sget-object v2, Ljavassist/bytecode/analysis/Type;->CLONEABLE:Ljavassist/bytecode/analysis/Type;

    invoke-virtual {v2}, Ljavassist/bytecode/analysis/Type;->getCtClass()Ljavassist/CtClass;

    move-result-object v2

    invoke-static {v0, v2}, Ljavassist/bytecode/analysis/MultiArrayType;->eq(Ljavassist/CtClass;Ljavassist/CtClass;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    return v1

    .line 98
    :cond_1
    invoke-virtual {p1}, Ljavassist/bytecode/analysis/Type;->getCtClass()Ljavassist/CtClass;

    move-result-object v0

    sget-object v2, Ljavassist/bytecode/analysis/Type;->SERIALIZABLE:Ljavassist/bytecode/analysis/Type;

    invoke-virtual {v2}, Ljavassist/bytecode/analysis/Type;->getCtClass()Ljavassist/CtClass;

    move-result-object v2

    invoke-static {v0, v2}, Ljavassist/bytecode/analysis/MultiArrayType;->eq(Ljavassist/CtClass;Ljavassist/CtClass;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 99
    return v1

    .line 101
    :cond_2
    invoke-virtual {p1}, Ljavassist/bytecode/analysis/Type;->isArray()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 102
    return v2

    .line 104
    :cond_3
    invoke-virtual {p0, p1}, Ljavassist/bytecode/analysis/MultiArrayType;->getRootComponent(Ljavassist/bytecode/analysis/Type;)Ljavassist/bytecode/analysis/Type;

    move-result-object v0

    .line 105
    .local v0, "typeRoot":Ljavassist/bytecode/analysis/Type;
    invoke-virtual {p1}, Ljavassist/bytecode/analysis/Type;->getDimensions()I

    move-result v3

    .line 107
    .local v3, "typeDims":I
    iget v4, p0, Ljavassist/bytecode/analysis/MultiArrayType;->dims:I

    if-le v3, v4, :cond_4

    .line 108
    return v2

    .line 110
    :cond_4
    if-ge v3, v4, :cond_8

    .line 111
    invoke-virtual {v0}, Ljavassist/bytecode/analysis/Type;->getCtClass()Ljavassist/CtClass;

    move-result-object v4

    sget-object v5, Ljavassist/bytecode/analysis/Type;->OBJECT:Ljavassist/bytecode/analysis/Type;

    invoke-virtual {v5}, Ljavassist/bytecode/analysis/Type;->getCtClass()Ljavassist/CtClass;

    move-result-object v5

    invoke-static {v4, v5}, Ljavassist/bytecode/analysis/MultiArrayType;->eq(Ljavassist/CtClass;Ljavassist/CtClass;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 112
    return v1

    .line 114
    :cond_5
    invoke-virtual {v0}, Ljavassist/bytecode/analysis/Type;->getCtClass()Ljavassist/CtClass;

    move-result-object v4

    sget-object v5, Ljavassist/bytecode/analysis/Type;->CLONEABLE:Ljavassist/bytecode/analysis/Type;

    invoke-virtual {v5}, Ljavassist/bytecode/analysis/Type;->getCtClass()Ljavassist/CtClass;

    move-result-object v5

    invoke-static {v4, v5}, Ljavassist/bytecode/analysis/MultiArrayType;->eq(Ljavassist/CtClass;Ljavassist/CtClass;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 115
    return v1

    .line 117
    :cond_6
    invoke-virtual {v0}, Ljavassist/bytecode/analysis/Type;->getCtClass()Ljavassist/CtClass;

    move-result-object v4

    sget-object v5, Ljavassist/bytecode/analysis/Type;->SERIALIZABLE:Ljavassist/bytecode/analysis/Type;

    invoke-virtual {v5}, Ljavassist/bytecode/analysis/Type;->getCtClass()Ljavassist/CtClass;

    move-result-object v5

    invoke-static {v4, v5}, Ljavassist/bytecode/analysis/MultiArrayType;->eq(Ljavassist/CtClass;Ljavassist/CtClass;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 118
    return v1

    .line 120
    :cond_7
    return v2

    .line 123
    :cond_8
    iget-object v1, p0, Ljavassist/bytecode/analysis/MultiArrayType;->component:Ljavassist/bytecode/analysis/MultiType;

    invoke-virtual {v1, v0}, Ljavassist/bytecode/analysis/MultiType;->isAssignableTo(Ljavassist/bytecode/analysis/Type;)Z

    move-result v1

    return v1
.end method

.method public isReference()Z
    .locals 1

    .line 88
    const/4 v0, 0x1

    return v0
.end method

.method popChanged()Z
    .locals 1

    .line 58
    iget-object v0, p0, Ljavassist/bytecode/analysis/MultiArrayType;->component:Ljavassist/bytecode/analysis/MultiType;

    invoke-virtual {v0}, Ljavassist/bytecode/analysis/MultiType;->popChanged()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 144
    iget-object v0, p0, Ljavassist/bytecode/analysis/MultiArrayType;->component:Ljavassist/bytecode/analysis/MultiType;

    invoke-virtual {v0}, Ljavassist/bytecode/analysis/MultiType;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Ljavassist/bytecode/analysis/MultiArrayType;->dims:I

    invoke-virtual {p0, v0, v1}, Ljavassist/bytecode/analysis/MultiArrayType;->arrayName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
