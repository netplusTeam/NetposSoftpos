.class Ljavassist/CtNewWrappedMethod;
.super Ljava/lang/Object;
.source "CtNewWrappedMethod.java"


# static fields
.field private static final addedWrappedMethod:Ljava/lang/String; = "_added_m$"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addBodyMethod(Ljavassist/CtClassType;Ljavassist/bytecode/ClassFile;Ljavassist/CtMethod;)Ljava/lang/String;
    .locals 7
    .param p0, "clazz"    # Ljavassist/CtClassType;
    .param p1, "classfile"    # Ljavassist/bytecode/ClassFile;
    .param p2, "src"    # Ljavassist/CtMethod;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;,
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 148
    invoke-virtual {p0}, Ljavassist/CtClassType;->getHiddenMethods()Ljava/util/Map;

    move-result-object v0

    .line 149
    .local v0, "bodies":Ljava/util/Map;, "Ljava/util/Map<Ljavassist/CtMethod;Ljava/lang/String;>;"
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 150
    .local v1, "bodyname":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 152
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_added_m$"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljavassist/CtClassType;->getUniqueNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 153
    invoke-virtual {p1, v1}, Ljavassist/bytecode/ClassFile;->getMethod(Ljava/lang/String;)Ljavassist/bytecode/MethodInfo;

    move-result-object v2

    if-nez v2, :cond_0

    .line 154
    new-instance v2, Ljavassist/ClassMap;

    invoke-direct {v2}, Ljavassist/ClassMap;-><init>()V

    .line 155
    .local v2, "map":Ljavassist/ClassMap;
    invoke-virtual {p2}, Ljavassist/CtMethod;->getDeclaringClass()Ljavassist/CtClass;

    move-result-object v3

    invoke-virtual {v3}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljavassist/CtClassType;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljavassist/ClassMap;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 156
    new-instance v3, Ljavassist/bytecode/MethodInfo;

    invoke-virtual {p1}, Ljavassist/bytecode/ClassFile;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v4

    .line 157
    invoke-virtual {p2}, Ljavassist/CtMethod;->getMethodInfo2()Ljavassist/bytecode/MethodInfo;

    move-result-object v5

    invoke-direct {v3, v4, v1, v5, v2}, Ljavassist/bytecode/MethodInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;Ljavassist/bytecode/MethodInfo;Ljava/util/Map;)V

    .line 159
    .local v3, "body":Ljavassist/bytecode/MethodInfo;
    invoke-virtual {v3}, Ljavassist/bytecode/MethodInfo;->getAccessFlags()I

    move-result v4

    .line 160
    .local v4, "acc":I
    invoke-static {v4}, Ljavassist/bytecode/AccessFlag;->setPrivate(I)I

    move-result v5

    invoke-virtual {v3, v5}, Ljavassist/bytecode/MethodInfo;->setAccessFlags(I)V

    .line 161
    new-instance v5, Ljavassist/bytecode/SyntheticAttribute;

    invoke-virtual {p1}, Ljavassist/bytecode/ClassFile;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v6

    invoke-direct {v5, v6}, Ljavassist/bytecode/SyntheticAttribute;-><init>(Ljavassist/bytecode/ConstPool;)V

    invoke-virtual {v3, v5}, Ljavassist/bytecode/MethodInfo;->addAttribute(Ljavassist/bytecode/AttributeInfo;)V

    .line 163
    invoke-virtual {p1, v3}, Ljavassist/bytecode/ClassFile;->addMethod(Ljavassist/bytecode/MethodInfo;)V

    .line 164
    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    invoke-virtual {p0}, Ljavassist/CtClassType;->hasMemberCache()Ljavassist/CtMember$Cache;

    move-result-object v5

    .line 166
    .local v5, "cache":Ljavassist/CtMember$Cache;
    if-eqz v5, :cond_1

    .line 167
    new-instance v6, Ljavassist/CtMethod;

    invoke-direct {v6, v3, p0}, Ljavassist/CtMethod;-><init>(Ljavassist/bytecode/MethodInfo;Ljavassist/CtClass;)V

    invoke-virtual {v5, v6}, Ljavassist/CtMember$Cache;->addMethod(Ljavassist/CtMember;)V

    .line 170
    .end local v2    # "map":Ljavassist/ClassMap;
    .end local v3    # "body":Ljavassist/bytecode/MethodInfo;
    .end local v4    # "acc":I
    .end local v5    # "cache":Ljavassist/CtMember$Cache;
    :cond_1
    return-object v1
.end method

.method private static checkSignature(Ljavassist/CtMethod;Ljava/lang/String;)V
    .locals 3
    .param p0, "wrappedBody"    # Ljavassist/CtMethod;
    .param p1, "descriptor"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 136
    invoke-virtual {p0}, Ljavassist/CtMethod;->getMethodInfo2()Ljavassist/bytecode/MethodInfo;

    move-result-object v0

    invoke-virtual {v0}, Ljavassist/bytecode/MethodInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    return-void

    .line 137
    :cond_0
    new-instance v0, Ljavassist/CannotCompileException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wrapped method with a bad signature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 139
    invoke-virtual {p0}, Ljavassist/CtMethod;->getDeclaringClass()Ljavassist/CtClass;

    move-result-object v2

    invoke-virtual {v2}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 140
    invoke-virtual {p0}, Ljavassist/CtMethod;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static compileParameterList(Ljavassist/bytecode/Bytecode;[Ljavassist/CtClass;I)I
    .locals 1
    .param p0, "code"    # Ljavassist/bytecode/Bytecode;
    .param p1, "params"    # [Ljavassist/CtClass;
    .param p2, "regno"    # I

    .line 182
    invoke-static {p0, p1, p2}, Ljavassist/compiler/JvstCodeGen;->compileParameterList(Ljavassist/bytecode/Bytecode;[Ljavassist/CtClass;I)I

    move-result v0

    return v0
.end method

.method private static compileReturn(Ljavassist/bytecode/Bytecode;Ljavassist/CtClass;)V
    .locals 4
    .param p0, "code"    # Ljavassist/bytecode/Bytecode;
    .param p1, "type"    # Ljavassist/CtClass;

    .line 189
    invoke-virtual {p1}, Ljavassist/CtClass;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    move-object v0, p1

    check-cast v0, Ljavassist/CtPrimitiveType;

    .line 191
    .local v0, "pt":Ljavassist/CtPrimitiveType;
    sget-object v1, Ljavassist/CtClass;->voidType:Ljavassist/CtClass;

    if-eq v0, v1, :cond_0

    .line 192
    invoke-virtual {v0}, Ljavassist/CtPrimitiveType;->getWrapperName()Ljava/lang/String;

    move-result-object v1

    .line 193
    .local v1, "wrapper":Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljavassist/bytecode/Bytecode;->addCheckcast(Ljava/lang/String;)V

    .line 194
    invoke-virtual {v0}, Ljavassist/CtPrimitiveType;->getGetMethodName()Ljava/lang/String;

    move-result-object v2

    .line 195
    invoke-virtual {v0}, Ljavassist/CtPrimitiveType;->getGetMethodDescriptor()Ljava/lang/String;

    move-result-object v3

    .line 194
    invoke-virtual {p0, v1, v2, v3}, Ljavassist/bytecode/Bytecode;->addInvokevirtual(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    .end local v1    # "wrapper":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Ljavassist/CtPrimitiveType;->getReturnOp()I

    move-result v1

    invoke-virtual {p0, v1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 199
    .end local v0    # "pt":Ljavassist/CtPrimitiveType;
    goto :goto_0

    .line 201
    :cond_1
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addCheckcast(Ljavassist/CtClass;)V

    .line 202
    const/16 v0, 0xb0

    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 204
    :goto_0
    return-void
.end method

.method static makeBody(Ljavassist/CtClass;Ljavassist/bytecode/ClassFile;Ljavassist/CtMethod;[Ljavassist/CtClass;Ljavassist/CtClass;Ljavassist/CtMethod$ConstParameter;)Ljavassist/bytecode/Bytecode;
    .locals 11
    .param p0, "clazz"    # Ljavassist/CtClass;
    .param p1, "classfile"    # Ljavassist/bytecode/ClassFile;
    .param p2, "wrappedBody"    # Ljavassist/CtMethod;
    .param p3, "parameters"    # [Ljavassist/CtClass;
    .param p4, "returnType"    # Ljavassist/CtClass;
    .param p5, "cparam"    # Ljavassist/CtMethod$ConstParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 66
    invoke-virtual {p2}, Ljavassist/CtMethod;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljavassist/Modifier;->isStatic(I)Z

    move-result v0

    .line 67
    .local v0, "isStatic":Z
    new-instance v1, Ljavassist/bytecode/Bytecode;

    invoke-virtual {p1}, Ljavassist/bytecode/ClassFile;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v2

    const/4 v9, 0x0

    invoke-direct {v1, v2, v9, v9}, Ljavassist/bytecode/Bytecode;-><init>(Ljavassist/bytecode/ConstPool;II)V

    move-object v10, v1

    .line 68
    .local v10, "code":Ljavassist/bytecode/Bytecode;
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, v0

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object v8, v10

    invoke-static/range {v1 .. v8}, Ljavassist/CtNewWrappedMethod;->makeBody0(Ljavassist/CtClass;Ljavassist/bytecode/ClassFile;Ljavassist/CtMethod;Z[Ljavassist/CtClass;Ljavassist/CtClass;Ljavassist/CtMethod$ConstParameter;Ljavassist/bytecode/Bytecode;)I

    move-result v1

    .line 70
    .local v1, "stacksize":I
    invoke-virtual {v10, v1}, Ljavassist/bytecode/Bytecode;->setMaxStack(I)V

    .line 71
    move-object v2, p3

    invoke-virtual {v10, v0, p3, v9}, Ljavassist/bytecode/Bytecode;->setMaxLocals(Z[Ljavassist/CtClass;I)V

    .line 72
    return-object v10
.end method

.method protected static makeBody0(Ljavassist/CtClass;Ljavassist/bytecode/ClassFile;Ljavassist/CtMethod;Z[Ljavassist/CtClass;Ljavassist/CtClass;Ljavassist/CtMethod$ConstParameter;Ljavassist/bytecode/Bytecode;)I
    .locals 5
    .param p0, "clazz"    # Ljavassist/CtClass;
    .param p1, "classfile"    # Ljavassist/bytecode/ClassFile;
    .param p2, "wrappedBody"    # Ljavassist/CtMethod;
    .param p3, "isStatic"    # Z
    .param p4, "parameters"    # [Ljavassist/CtClass;
    .param p5, "returnType"    # Ljavassist/CtClass;
    .param p6, "cparam"    # Ljavassist/CtMethod$ConstParameter;
    .param p7, "code"    # Ljavassist/bytecode/Bytecode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 85
    instance-of v0, p0, Ljavassist/CtClassType;

    if-eqz v0, :cond_4

    .line 89
    if-nez p3, :cond_0

    .line 90
    const/4 v0, 0x0

    invoke-virtual {p7, v0}, Ljavassist/bytecode/Bytecode;->addAload(I)V

    .line 92
    :cond_0
    nop

    .line 93
    nop

    .line 92
    xor-int/lit8 v0, p3, 0x1

    invoke-static {p7, p4, v0}, Ljavassist/CtNewWrappedMethod;->compileParameterList(Ljavassist/bytecode/Bytecode;[Ljavassist/CtClass;I)I

    move-result v0

    .line 96
    .local v0, "stacksize":I
    if-nez p6, :cond_1

    .line 97
    const/4 v1, 0x0

    .line 98
    .local v1, "stacksize2":I
    invoke-static {}, Ljavassist/CtMethod$ConstParameter;->defaultDescriptor()Ljava/lang/String;

    move-result-object v2

    .local v2, "desc":Ljava/lang/String;
    goto :goto_0

    .line 101
    .end local v1    # "stacksize2":I
    .end local v2    # "desc":Ljava/lang/String;
    :cond_1
    invoke-virtual {p6, p7}, Ljavassist/CtMethod$ConstParameter;->compile(Ljavassist/bytecode/Bytecode;)I

    move-result v1

    .line 102
    .restart local v1    # "stacksize2":I
    invoke-virtual {p6}, Ljavassist/CtMethod$ConstParameter;->descriptor()Ljava/lang/String;

    move-result-object v2

    .line 105
    .restart local v2    # "desc":Ljava/lang/String;
    :goto_0
    invoke-static {p2, v2}, Ljavassist/CtNewWrappedMethod;->checkSignature(Ljavassist/CtMethod;Ljava/lang/String;)V

    .line 109
    :try_start_0
    move-object v3, p0

    check-cast v3, Ljavassist/CtClassType;

    invoke-static {v3, p1, p2}, Ljavassist/CtNewWrappedMethod;->addBodyMethod(Ljavassist/CtClassType;Ljavassist/bytecode/ClassFile;Ljavassist/CtMethod;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    .local v3, "bodyname":Ljava/lang/String;
    nop

    .line 119
    if-eqz p3, :cond_2

    .line 120
    sget-object v4, Ljavassist/bytecode/Bytecode;->THIS:Ljavassist/CtClass;

    invoke-virtual {p7, v4, v3, v2}, Ljavassist/bytecode/Bytecode;->addInvokestatic(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 122
    :cond_2
    sget-object v4, Ljavassist/bytecode/Bytecode;->THIS:Ljavassist/CtClass;

    invoke-virtual {p7, v4, v3, v2}, Ljavassist/bytecode/Bytecode;->addInvokespecial(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :goto_1
    invoke-static {p7, p5}, Ljavassist/CtNewWrappedMethod;->compileReturn(Ljavassist/bytecode/Bytecode;Ljavassist/CtClass;)V

    .line 126
    add-int/lit8 v4, v1, 0x2

    if-ge v0, v4, :cond_3

    .line 127
    add-int/lit8 v0, v1, 0x2

    .line 129
    :cond_3
    return v0

    .line 115
    .end local v3    # "bodyname":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 116
    .local v3, "e":Ljavassist/bytecode/BadBytecode;
    new-instance v4, Ljavassist/CannotCompileException;

    invoke-direct {v4, v3}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 86
    .end local v0    # "stacksize":I
    .end local v1    # "stacksize2":I
    .end local v2    # "desc":Ljava/lang/String;
    .end local v3    # "e":Ljavassist/bytecode/BadBytecode;
    :cond_4
    new-instance v0, Ljavassist/CannotCompileException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad declaring class"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 87
    invoke-virtual {p0}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static wrapped(Ljavassist/CtClass;Ljava/lang/String;[Ljavassist/CtClass;[Ljavassist/CtClass;Ljavassist/CtMethod;Ljavassist/CtMethod$ConstParameter;Ljavassist/CtClass;)Ljavassist/CtMethod;
    .locals 8
    .param p0, "returnType"    # Ljavassist/CtClass;
    .param p1, "mname"    # Ljava/lang/String;
    .param p2, "parameterTypes"    # [Ljavassist/CtClass;
    .param p3, "exceptionTypes"    # [Ljavassist/CtClass;
    .param p4, "body"    # Ljavassist/CtMethod;
    .param p5, "constParam"    # Ljavassist/CtMethod$ConstParameter;
    .param p6, "declaring"    # Ljavassist/CtClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 41
    new-instance v0, Ljavassist/CtMethod;

    invoke-direct {v0, p0, p1, p2, p6}, Ljavassist/CtMethod;-><init>(Ljavassist/CtClass;Ljava/lang/String;[Ljavassist/CtClass;Ljavassist/CtClass;)V

    .line 43
    .local v0, "mt":Ljavassist/CtMethod;
    invoke-virtual {p4}, Ljavassist/CtMethod;->getModifiers()I

    move-result v1

    invoke-virtual {v0, v1}, Ljavassist/CtMethod;->setModifiers(I)V

    .line 45
    :try_start_0
    invoke-virtual {v0, p3}, Ljavassist/CtMethod;->setExceptionTypes([Ljavassist/CtClass;)V
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    nop

    .line 51
    invoke-virtual {p6}, Ljavassist/CtClass;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v3

    move-object v2, p6

    move-object v4, p4

    move-object v5, p2

    move-object v6, p0

    move-object v7, p5

    invoke-static/range {v2 .. v7}, Ljavassist/CtNewWrappedMethod;->makeBody(Ljavassist/CtClass;Ljavassist/bytecode/ClassFile;Ljavassist/CtMethod;[Ljavassist/CtClass;Ljavassist/CtClass;Ljavassist/CtMethod$ConstParameter;)Ljavassist/bytecode/Bytecode;

    move-result-object v1

    .line 53
    .local v1, "code":Ljavassist/bytecode/Bytecode;
    invoke-virtual {v0}, Ljavassist/CtMethod;->getMethodInfo2()Ljavassist/bytecode/MethodInfo;

    move-result-object v2

    .line 54
    .local v2, "minfo":Ljavassist/bytecode/MethodInfo;
    invoke-virtual {v1}, Ljavassist/bytecode/Bytecode;->toCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavassist/bytecode/MethodInfo;->setCodeAttribute(Ljavassist/bytecode/CodeAttribute;)V

    .line 56
    return-object v0

    .line 47
    .end local v1    # "code":Ljavassist/bytecode/Bytecode;
    .end local v2    # "minfo":Ljavassist/bytecode/MethodInfo;
    :catch_0
    move-exception v1

    .line 48
    .local v1, "e":Ljavassist/NotFoundException;
    new-instance v2, Ljavassist/CannotCompileException;

    invoke-direct {v2, v1}, Ljavassist/CannotCompileException;-><init>(Ljavassist/NotFoundException;)V

    throw v2
.end method
