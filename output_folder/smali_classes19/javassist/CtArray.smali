.class final Ljavassist/CtArray;
.super Ljavassist/CtClass;
.source "CtArray.java"


# instance fields
.field private interfaces:[Ljavassist/CtClass;

.field protected pool:Ljavassist/ClassPool;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljavassist/ClassPool;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "cp"    # Ljavassist/ClassPool;

    .line 29
    invoke-direct {p0, p1}, Ljavassist/CtClass;-><init>(Ljava/lang/String;)V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Ljavassist/CtArray;->interfaces:[Ljavassist/CtClass;

    .line 30
    iput-object p2, p0, Ljavassist/CtArray;->pool:Ljavassist/ClassPool;

    .line 31
    return-void
.end method


# virtual methods
.method public getClassPool()Ljavassist/ClassPool;
    .locals 1

    .line 36
    iget-object v0, p0, Ljavassist/CtArray;->pool:Ljavassist/ClassPool;

    return-object v0
.end method

.method public getComponentType()Ljavassist/CtClass;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 96
    invoke-virtual {p0}, Ljavassist/CtArray;->getName()Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Ljavassist/CtArray;->pool:Ljavassist/ClassPool;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v1

    return-object v1
.end method

.method public getConstructors()[Ljavassist/CtConstructor;
    .locals 2

    .line 128
    :try_start_0
    invoke-virtual {p0}, Ljavassist/CtArray;->getSuperclass()Ljavassist/CtClass;

    move-result-object v0

    invoke-virtual {v0}, Ljavassist/CtClass;->getConstructors()[Ljavassist/CtConstructor;

    move-result-object v0
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Ljavassist/NotFoundException;
    invoke-super {p0}, Ljavassist/CtClass;->getConstructors()[Ljavassist/CtConstructor;

    move-result-object v1

    return-object v1
.end method

.method public getInterfaces()[Ljavassist/CtClass;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 62
    iget-object v0, p0, Ljavassist/CtArray;->interfaces:[Ljavassist/CtClass;

    if-nez v0, :cond_0

    .line 63
    const-class v0, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    .line 66
    .local v0, "intfs":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v1, v0

    new-array v1, v1, [Ljavassist/CtClass;

    iput-object v1, p0, Ljavassist/CtArray;->interfaces:[Ljavassist/CtClass;

    .line 67
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 68
    iget-object v2, p0, Ljavassist/CtArray;->interfaces:[Ljavassist/CtClass;

    iget-object v3, p0, Ljavassist/CtArray;->pool:Ljavassist/ClassPool;

    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v3

    aput-object v3, v2, v1

    .line 67
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 71
    .end local v0    # "intfs":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v1    # "i":I
    :cond_0
    iget-object v0, p0, Ljavassist/CtArray;->interfaces:[Ljavassist/CtClass;

    return-object v0
.end method

.method public getMethod(Ljava/lang/String;Ljava/lang/String;)Ljavassist/CtMethod;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 121
    invoke-virtual {p0}, Ljavassist/CtArray;->getSuperclass()Ljavassist/CtClass;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljavassist/CtClass;->getMethod(Ljava/lang/String;Ljava/lang/String;)Ljavassist/CtMethod;

    move-result-object v0

    return-object v0
.end method

.method public getMethods()[Ljavassist/CtMethod;
    .locals 2

    .line 110
    :try_start_0
    invoke-virtual {p0}, Ljavassist/CtArray;->getSuperclass()Ljavassist/CtClass;

    move-result-object v0

    invoke-virtual {v0}, Ljavassist/CtClass;->getMethods()[Ljavassist/CtMethod;

    move-result-object v0
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljavassist/NotFoundException;
    invoke-super {p0}, Ljavassist/CtClass;->getMethods()[Ljavassist/CtMethod;

    move-result-object v1

    return-object v1
.end method

.method public getModifiers()I
    .locals 2

    .line 50
    const/16 v0, 0x10

    .line 52
    .local v0, "mod":I
    :try_start_0
    invoke-virtual {p0}, Ljavassist/CtArray;->getComponentType()Ljavassist/CtClass;

    move-result-object v1

    invoke-virtual {v1}, Ljavassist/CtClass;->getModifiers()I

    move-result v1
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    goto :goto_0

    .line 55
    :catch_0
    move-exception v1

    :goto_0
    nop

    .line 56
    return v0
.end method

.method public getSuperclass()Ljavassist/CtClass;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 103
    iget-object v0, p0, Ljavassist/CtArray;->pool:Ljavassist/ClassPool;

    const-string v1, "java.lang.Object"

    invoke-virtual {v0, v1}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v0

    return-object v0
.end method

.method public isArray()Z
    .locals 1

    .line 42
    const/4 v0, 0x1

    return v0
.end method

.method public subtypeOf(Ljavassist/CtClass;)Z
    .locals 5
    .param p1, "clazz"    # Ljavassist/CtClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 77
    invoke-super {p0, p1}, Ljavassist/CtClass;->subtypeOf(Ljavassist/CtClass;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 78
    return v1

    .line 80
    :cond_0
    invoke-virtual {p1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "cname":Ljava/lang/String;
    const-string v2, "java.lang.Object"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 82
    return v1

    .line 84
    :cond_1
    invoke-virtual {p0}, Ljavassist/CtArray;->getInterfaces()[Ljavassist/CtClass;

    move-result-object v2

    .line 85
    .local v2, "intfs":[Ljavassist/CtClass;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_3

    .line 86
    aget-object v4, v2, v3

    invoke-virtual {v4, p1}, Ljavassist/CtClass;->subtypeOf(Ljavassist/CtClass;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 87
    return v1

    .line 85
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 89
    .end local v3    # "i":I
    :cond_3
    invoke-virtual {p1}, Ljavassist/CtClass;->isArray()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 90
    invoke-virtual {p0}, Ljavassist/CtArray;->getComponentType()Ljavassist/CtClass;

    move-result-object v3

    invoke-virtual {p1}, Ljavassist/CtClass;->getComponentType()Ljavassist/CtClass;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavassist/CtClass;->subtypeOf(Ljavassist/CtClass;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    .line 89
    :goto_1
    return v1
.end method
