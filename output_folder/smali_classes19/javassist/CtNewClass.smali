.class Ljavassist/CtNewClass;
.super Ljavassist/CtClassType;
.source "CtNewClass.java"


# instance fields
.field protected hasConstructor:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Ljavassist/ClassPool;ZLjavassist/CtClass;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "cp"    # Ljavassist/ClassPool;
    .param p3, "isInterface"    # Z
    .param p4, "superclass"    # Ljavassist/CtClass;

    .line 31
    invoke-direct {p0, p1, p2}, Ljavassist/CtClassType;-><init>(Ljava/lang/String;Ljavassist/ClassPool;)V

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavassist/CtNewClass;->wasChanged:Z

    .line 34
    if-nez p3, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {p4}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v1

    .local v1, "superName":Ljava/lang/String;
    goto :goto_1

    .line 35
    .end local v1    # "superName":Ljava/lang/String;
    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 39
    .restart local v1    # "superName":Ljava/lang/String;
    :goto_1
    new-instance v2, Ljavassist/bytecode/ClassFile;

    invoke-direct {v2, p3, p1, v1}, Ljavassist/bytecode/ClassFile;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Ljavassist/CtNewClass;->classfile:Ljavassist/bytecode/ClassFile;

    .line 40
    if-eqz p3, :cond_2

    if-eqz p4, :cond_2

    .line 41
    iget-object v2, p0, Ljavassist/CtNewClass;->classfile:Ljavassist/bytecode/ClassFile;

    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p4}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    invoke-virtual {v2, v0}, Ljavassist/bytecode/ClassFile;->setInterfaces([Ljava/lang/String;)V

    .line 43
    :cond_2
    invoke-virtual {p0}, Ljavassist/CtNewClass;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljavassist/Modifier;->setPublic(I)I

    move-result v0

    invoke-virtual {p0, v0}, Ljavassist/CtNewClass;->setModifiers(I)V

    .line 44
    iput-boolean p3, p0, Ljavassist/CtNewClass;->hasConstructor:Z

    .line 45
    return-void
.end method

.method private isInheritable(ILjavassist/CtClass;)Z
    .locals 4
    .param p1, "mod"    # I
    .param p2, "superclazz"    # Ljavassist/CtClass;

    .line 116
    invoke-static {p1}, Ljavassist/Modifier;->isPrivate(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 117
    return v1

    .line 119
    :cond_0
    invoke-static {p1}, Ljavassist/Modifier;->isPackage(I)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 120
    invoke-virtual {p0}, Ljavassist/CtNewClass;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, "pname":Ljava/lang/String;
    invoke-virtual {p2}, Ljavassist/CtClass;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 122
    .local v3, "pname2":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 123
    if-nez v3, :cond_1

    move v1, v2

    :cond_1
    return v1

    .line 124
    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 127
    .end local v0    # "pname":Ljava/lang/String;
    .end local v3    # "pname2":Ljava/lang/String;
    :cond_3
    return v2
.end method


# virtual methods
.method public addConstructor(Ljavassist/CtConstructor;)V
    .locals 1
    .param p1, "c"    # Ljavassist/CtConstructor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavassist/CtNewClass;->hasConstructor:Z

    .line 60
    invoke-super {p0, p1}, Ljavassist/CtClassType;->addConstructor(Ljavassist/CtConstructor;)V

    .line 61
    return-void
.end method

.method protected extendToString(Ljava/lang/StringBuffer;)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .line 49
    iget-boolean v0, p0, Ljavassist/CtNewClass;->hasConstructor:Z

    if-eqz v0, :cond_0

    .line 50
    const-string v0, "hasConstructor "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 52
    :cond_0
    invoke-super {p0, p1}, Ljavassist/CtClassType;->extendToString(Ljava/lang/StringBuffer;)V

    .line 53
    return-void
.end method

.method public inheritAllConstructors()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;,
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 92
    invoke-virtual {p0}, Ljavassist/CtNewClass;->getSuperclass()Ljavassist/CtClass;

    move-result-object v0

    .line 93
    .local v0, "superclazz":Ljavassist/CtClass;
    invoke-virtual {v0}, Ljavassist/CtClass;->getDeclaredConstructors()[Ljavassist/CtConstructor;

    move-result-object v1

    .line 95
    .local v1, "cs":[Ljavassist/CtConstructor;
    const/4 v2, 0x0

    .line 96
    .local v2, "n":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 97
    aget-object v4, v1, v3

    .line 98
    .local v4, "c":Ljavassist/CtConstructor;
    invoke-virtual {v4}, Ljavassist/CtConstructor;->getModifiers()I

    move-result v5

    .line 99
    .local v5, "mod":I
    invoke-direct {p0, v5, v0}, Ljavassist/CtNewClass;->isInheritable(ILjavassist/CtClass;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 100
    nop

    .line 101
    invoke-virtual {v4}, Ljavassist/CtConstructor;->getParameterTypes()[Ljavassist/CtClass;

    move-result-object v6

    .line 102
    invoke-virtual {v4}, Ljavassist/CtConstructor;->getExceptionTypes()[Ljavassist/CtClass;

    move-result-object v7

    .line 101
    invoke-static {v6, v7, p0}, Ljavassist/CtNewConstructor;->make([Ljavassist/CtClass;[Ljavassist/CtClass;Ljavassist/CtClass;)Ljavassist/CtConstructor;

    move-result-object v6

    .line 103
    .local v6, "cons":Ljavassist/CtConstructor;
    and-int/lit8 v7, v5, 0x7

    invoke-virtual {v6, v7}, Ljavassist/CtConstructor;->setModifiers(I)V

    .line 104
    invoke-virtual {p0, v6}, Ljavassist/CtNewClass;->addConstructor(Ljavassist/CtConstructor;)V

    .line 105
    add-int/lit8 v2, v2, 0x1

    .line 96
    .end local v4    # "c":Ljavassist/CtConstructor;
    .end local v5    # "mod":I
    .end local v6    # "cons":Ljavassist/CtConstructor;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 109
    .end local v3    # "i":I
    :cond_1
    const/4 v3, 0x1

    if-lt v2, v3, :cond_2

    .line 113
    return-void

    .line 110
    :cond_2
    new-instance v3, Ljavassist/CannotCompileException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "no inheritable constructor in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 111
    invoke-virtual {v0}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public toBytecode(Ljava/io/DataOutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    iget-boolean v0, p0, Ljavassist/CtNewClass;->hasConstructor:Z

    if-nez v0, :cond_0

    .line 69
    :try_start_0
    invoke-virtual {p0}, Ljavassist/CtNewClass;->inheritAllConstructors()V

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavassist/CtNewClass;->hasConstructor:Z
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    goto :goto_0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljavassist/NotFoundException;
    new-instance v1, Ljavassist/CannotCompileException;

    invoke-direct {v1, v0}, Ljavassist/CannotCompileException;-><init>(Ljavassist/NotFoundException;)V

    throw v1

    .line 76
    .end local v0    # "e":Ljavassist/NotFoundException;
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Ljavassist/CtClassType;->toBytecode(Ljava/io/DataOutputStream;)V

    .line 77
    return-void
.end method
