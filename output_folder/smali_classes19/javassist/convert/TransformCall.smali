.class public Ljavassist/convert/TransformCall;
.super Ljavassist/convert/Transformer;
.source "TransformCall.java"


# instance fields
.field protected classname:Ljava/lang/String;

.field protected constPool:Ljavassist/bytecode/ConstPool;

.field protected methodDescriptor:Ljava/lang/String;

.field protected methodname:Ljava/lang/String;

.field protected newClassname:Ljava/lang/String;

.field protected newIndex:I

.field protected newMethodIsPrivate:Z

.field protected newMethodname:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljavassist/convert/Transformer;Ljava/lang/String;Ljavassist/CtMethod;)V
    .locals 1
    .param p1, "next"    # Ljavassist/convert/Transformer;
    .param p2, "oldMethodName"    # Ljava/lang/String;
    .param p3, "substMethod"    # Ljavassist/CtMethod;

    .line 48
    invoke-direct {p0, p1}, Ljavassist/convert/Transformer;-><init>(Ljavassist/convert/Transformer;)V

    .line 49
    iput-object p2, p0, Ljavassist/convert/TransformCall;->methodname:Ljava/lang/String;

    .line 50
    invoke-virtual {p3}, Ljavassist/CtMethod;->getMethodInfo2()Ljavassist/bytecode/MethodInfo;

    move-result-object v0

    invoke-virtual {v0}, Ljavassist/bytecode/MethodInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavassist/convert/TransformCall;->methodDescriptor:Ljava/lang/String;

    .line 51
    invoke-virtual {p3}, Ljavassist/CtMethod;->getDeclaringClass()Ljavassist/CtClass;

    move-result-object v0

    invoke-virtual {v0}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavassist/convert/TransformCall;->newClassname:Ljava/lang/String;

    iput-object v0, p0, Ljavassist/convert/TransformCall;->classname:Ljava/lang/String;

    .line 52
    invoke-virtual {p3}, Ljavassist/CtMethod;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavassist/convert/TransformCall;->newMethodname:Ljava/lang/String;

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Ljavassist/convert/TransformCall;->constPool:Ljavassist/bytecode/ConstPool;

    .line 54
    invoke-virtual {p3}, Ljavassist/CtMethod;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljavassist/Modifier;->isPrivate(I)Z

    move-result v0

    iput-boolean v0, p0, Ljavassist/convert/TransformCall;->newMethodIsPrivate:Z

    .line 55
    return-void
.end method

.method public constructor <init>(Ljavassist/convert/Transformer;Ljavassist/CtMethod;Ljavassist/CtMethod;)V
    .locals 1
    .param p1, "next"    # Ljavassist/convert/Transformer;
    .param p2, "origMethod"    # Ljavassist/CtMethod;
    .param p3, "substMethod"    # Ljavassist/CtMethod;

    .line 41
    invoke-virtual {p2}, Ljavassist/CtMethod;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Ljavassist/convert/TransformCall;-><init>(Ljavassist/convert/Transformer;Ljava/lang/String;Ljavassist/CtMethod;)V

    .line 42
    invoke-virtual {p2}, Ljavassist/CtMethod;->getDeclaringClass()Ljavassist/CtClass;

    move-result-object v0

    invoke-virtual {v0}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavassist/convert/TransformCall;->classname:Ljava/lang/String;

    .line 43
    return-void
.end method

.method private matchClass(Ljava/lang/String;Ljavassist/ClassPool;)Z
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "pool"    # Ljavassist/ClassPool;

    .line 90
    iget-object v0, p0, Ljavassist/convert/TransformCall;->classname:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 91
    return v1

    .line 94
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p2, p1}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v2

    .line 95
    .local v2, "clazz":Ljavassist/CtClass;
    iget-object v3, p0, Ljavassist/convert/TransformCall;->classname:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v3

    .line 96
    .local v3, "declClazz":Ljavassist/CtClass;
    invoke-virtual {v2, v3}, Ljavassist/CtClass;->subtypeOf(Ljavassist/CtClass;)Z

    move-result v4
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v4, :cond_1

    .line 98
    :try_start_1
    iget-object v0, p0, Ljavassist/convert/TransformCall;->methodname:Ljava/lang/String;

    iget-object v4, p0, Ljavassist/convert/TransformCall;->methodDescriptor:Ljava/lang/String;

    invoke-virtual {v2, v0, v4}, Ljavassist/CtClass;->getMethod(Ljava/lang/String;Ljava/lang/String;)Ljavassist/CtMethod;

    move-result-object v0

    .line 99
    .local v0, "m":Ljavassist/CtMethod;
    invoke-virtual {v0}, Ljavassist/CtMethod;->getDeclaringClass()Ljavassist/CtClass;

    move-result-object v4

    invoke-virtual {v4}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Ljavassist/convert/TransformCall;->classname:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1
    .catch Ljavassist/NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    return v1

    .line 101
    .end local v0    # "m":Ljavassist/CtMethod;
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljavassist/NotFoundException;
    return v1

    .line 108
    .end local v0    # "e":Ljavassist/NotFoundException;
    .end local v2    # "clazz":Ljavassist/CtClass;
    .end local v3    # "declClazz":Ljavassist/CtClass;
    :cond_1
    nop

    .line 110
    return v0

    .line 106
    :catch_1
    move-exception v1

    .line 107
    .local v1, "e":Ljavassist/NotFoundException;
    return v0
.end method


# virtual methods
.method public initialize(Ljavassist/bytecode/ConstPool;Ljavassist/bytecode/CodeAttribute;)V
    .locals 1
    .param p1, "cp"    # Ljavassist/bytecode/ConstPool;
    .param p2, "attr"    # Ljavassist/bytecode/CodeAttribute;

    .line 59
    iget-object v0, p0, Ljavassist/convert/TransformCall;->constPool:Ljavassist/bytecode/ConstPool;

    if-eq v0, p1, :cond_0

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Ljavassist/convert/TransformCall;->newIndex:I

    .line 61
    :cond_0
    return-void
.end method

.method protected match(IILjavassist/bytecode/CodeIterator;ILjavassist/bytecode/ConstPool;)I
    .locals 3
    .param p1, "c"    # I
    .param p2, "pos"    # I
    .param p3, "iterator"    # Ljavassist/bytecode/CodeIterator;
    .param p4, "typedesc"    # I
    .param p5, "cp"    # Ljavassist/bytecode/ConstPool;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 116
    iget v0, p0, Ljavassist/convert/TransformCall;->newIndex:I

    if-nez v0, :cond_2

    .line 117
    iget-object v0, p0, Ljavassist/convert/TransformCall;->newMethodname:Ljava/lang/String;

    invoke-virtual {p5, v0}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p5, v0, p4}, Ljavassist/bytecode/ConstPool;->addNameAndTypeInfo(II)I

    move-result v0

    .line 119
    .local v0, "nt":I
    iget-object v1, p0, Ljavassist/convert/TransformCall;->newClassname:Ljava/lang/String;

    invoke-virtual {p5, v1}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljava/lang/String;)I

    move-result v1

    .line 120
    .local v1, "ci":I
    const/16 v2, 0xb9

    if-ne p1, v2, :cond_0

    .line 121
    invoke-virtual {p5, v1, v0}, Ljavassist/bytecode/ConstPool;->addInterfaceMethodrefInfo(II)I

    move-result v2

    iput v2, p0, Ljavassist/convert/TransformCall;->newIndex:I

    goto :goto_0

    .line 123
    :cond_0
    iget-boolean v2, p0, Ljavassist/convert/TransformCall;->newMethodIsPrivate:Z

    if-eqz v2, :cond_1

    const/16 v2, 0xb6

    if-ne p1, v2, :cond_1

    .line 124
    const/16 v2, 0xb7

    invoke-virtual {p3, v2, p2}, Ljavassist/bytecode/CodeIterator;->writeByte(II)V

    .line 126
    :cond_1
    invoke-virtual {p5, v1, v0}, Ljavassist/bytecode/ConstPool;->addMethodrefInfo(II)I

    move-result v2

    iput v2, p0, Ljavassist/convert/TransformCall;->newIndex:I

    .line 129
    :goto_0
    iput-object p5, p0, Ljavassist/convert/TransformCall;->constPool:Ljavassist/bytecode/ConstPool;

    .line 132
    .end local v0    # "nt":I
    .end local v1    # "ci":I
    :cond_2
    iget v0, p0, Ljavassist/convert/TransformCall;->newIndex:I

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p3, v0, v1}, Ljavassist/bytecode/CodeIterator;->write16bit(II)V

    .line 133
    return p2
.end method

.method public transform(Ljavassist/CtClass;ILjavassist/bytecode/CodeIterator;Ljavassist/bytecode/ConstPool;)I
    .locals 10
    .param p1, "clazz"    # Ljavassist/CtClass;
    .param p2, "pos"    # I
    .param p3, "iterator"    # Ljavassist/bytecode/CodeIterator;
    .param p4, "cp"    # Ljavassist/bytecode/ConstPool;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 74
    invoke-virtual {p3, p2}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result v6

    .line 75
    .local v6, "c":I
    const/16 v0, 0xb9

    if-eq v6, v0, :cond_0

    const/16 v0, 0xb7

    if-eq v6, v0, :cond_0

    const/16 v0, 0xb8

    if-eq v6, v0, :cond_0

    const/16 v0, 0xb6

    if-ne v6, v0, :cond_1

    .line 77
    :cond_0
    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p3, v0}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result v7

    .line 78
    .local v7, "index":I
    iget-object v0, p0, Ljavassist/convert/TransformCall;->methodname:Ljava/lang/String;

    iget-object v1, p0, Ljavassist/convert/TransformCall;->methodDescriptor:Ljava/lang/String;

    invoke-virtual {p4, v0, v1, v7}, Ljavassist/bytecode/ConstPool;->eqMember(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 79
    .local v8, "cname":Ljava/lang/String;
    if-eqz v8, :cond_1

    invoke-virtual {p1}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object v0

    invoke-direct {p0, v8, v0}, Ljavassist/convert/TransformCall;->matchClass(Ljava/lang/String;Ljavassist/ClassPool;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    invoke-virtual {p4, v7}, Ljavassist/bytecode/ConstPool;->getMemberNameAndType(I)I

    move-result v9

    .line 81
    .local v9, "ntinfo":I
    nop

    .line 82
    invoke-virtual {p4, v9}, Ljavassist/bytecode/ConstPool;->getNameAndTypeDescriptor(I)I

    move-result v4

    .line 81
    move-object v0, p0

    move v1, v6

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Ljavassist/convert/TransformCall;->match(IILjavassist/bytecode/CodeIterator;ILjavassist/bytecode/ConstPool;)I

    move-result p2

    .line 86
    .end local v7    # "index":I
    .end local v8    # "cname":Ljava/lang/String;
    .end local v9    # "ntinfo":I
    :cond_1
    return p2
.end method
