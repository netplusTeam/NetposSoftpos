.class public Ljavassist/CtNewMethod;
.super Ljava/lang/Object;
.source "CtNewMethod.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static abstractMethod(Ljavassist/CtClass;Ljava/lang/String;[Ljavassist/CtClass;[Ljavassist/CtClass;Ljavassist/CtClass;)Ljavassist/CtMethod;
    .locals 1
    .param p0, "returnType"    # Ljavassist/CtClass;
    .param p1, "mname"    # Ljava/lang/String;
    .param p2, "parameters"    # [Ljavassist/CtClass;
    .param p3, "exceptions"    # [Ljavassist/CtClass;
    .param p4, "declaring"    # Ljavassist/CtClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 213
    new-instance v0, Ljavassist/CtMethod;

    invoke-direct {v0, p0, p1, p2, p4}, Ljavassist/CtMethod;-><init>(Ljavassist/CtClass;Ljava/lang/String;[Ljavassist/CtClass;Ljavassist/CtClass;)V

    .line 214
    .local v0, "cm":Ljavassist/CtMethod;
    invoke-virtual {v0, p3}, Ljavassist/CtMethod;->setExceptionTypes([Ljavassist/CtClass;)V

    .line 215
    return-object v0
.end method

.method public static copy(Ljavassist/CtMethod;Ljava/lang/String;Ljavassist/CtClass;Ljavassist/ClassMap;)Ljavassist/CtMethod;
    .locals 1
    .param p0, "src"    # Ljavassist/CtMethod;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "declaring"    # Ljavassist/CtClass;
    .param p3, "map"    # Ljavassist/ClassMap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 190
    new-instance v0, Ljavassist/CtMethod;

    invoke-direct {v0, p0, p2, p3}, Ljavassist/CtMethod;-><init>(Ljavassist/CtMethod;Ljavassist/CtClass;Ljavassist/ClassMap;)V

    .line 191
    .local v0, "cm":Ljavassist/CtMethod;
    invoke-virtual {v0, p1}, Ljavassist/CtMethod;->setName(Ljava/lang/String;)V

    .line 192
    return-object v0
.end method

.method public static copy(Ljavassist/CtMethod;Ljavassist/CtClass;Ljavassist/ClassMap;)Ljavassist/CtMethod;
    .locals 1
    .param p0, "src"    # Ljavassist/CtMethod;
    .param p1, "declaring"    # Ljavassist/CtClass;
    .param p2, "map"    # Ljavassist/ClassMap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 168
    new-instance v0, Ljavassist/CtMethod;

    invoke-direct {v0, p0, p1, p2}, Ljavassist/CtMethod;-><init>(Ljavassist/CtMethod;Ljavassist/CtClass;Ljavassist/ClassMap;)V

    return-object v0
.end method

.method public static delegator(Ljavassist/CtMethod;Ljavassist/CtClass;)Ljavassist/CtMethod;
    .locals 2
    .param p0, "delegate"    # Ljavassist/CtMethod;
    .param p1, "declaring"    # Ljavassist/CtClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 331
    :try_start_0
    invoke-static {p0, p1}, Ljavassist/CtNewMethod;->delegator0(Ljavassist/CtMethod;Ljavassist/CtClass;)Ljavassist/CtMethod;

    move-result-object v0
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 333
    :catch_0
    move-exception v0

    .line 334
    .local v0, "e":Ljavassist/NotFoundException;
    new-instance v1, Ljavassist/CannotCompileException;

    invoke-direct {v1, v0}, Ljavassist/CannotCompileException;-><init>(Ljavassist/NotFoundException;)V

    throw v1
.end method

.method private static delegator0(Ljavassist/CtMethod;Ljavassist/CtClass;)Ljavassist/CtMethod;
    .locals 13
    .param p0, "delegate"    # Ljavassist/CtMethod;
    .param p1, "declaring"    # Ljavassist/CtClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;,
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 341
    invoke-virtual {p0}, Ljavassist/CtMethod;->getMethodInfo2()Ljavassist/bytecode/MethodInfo;

    move-result-object v0

    .line 342
    .local v0, "deleInfo":Ljavassist/bytecode/MethodInfo;
    invoke-virtual {v0}, Ljavassist/bytecode/MethodInfo;->getName()Ljava/lang/String;

    move-result-object v1

    .line 343
    .local v1, "methodName":Ljava/lang/String;
    invoke-virtual {v0}, Ljavassist/bytecode/MethodInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v2

    .line 344
    .local v2, "desc":Ljava/lang/String;
    invoke-virtual {p1}, Ljavassist/CtClass;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v3

    invoke-virtual {v3}, Ljavassist/bytecode/ClassFile;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v3

    .line 345
    .local v3, "cp":Ljavassist/bytecode/ConstPool;
    new-instance v4, Ljavassist/bytecode/MethodInfo;

    invoke-direct {v4, v3, v1, v2}, Ljavassist/bytecode/MethodInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    .local v4, "minfo":Ljavassist/bytecode/MethodInfo;
    invoke-virtual {v0}, Ljavassist/bytecode/MethodInfo;->getAccessFlags()I

    move-result v5

    invoke-virtual {v4, v5}, Ljavassist/bytecode/MethodInfo;->setAccessFlags(I)V

    .line 348
    invoke-virtual {v0}, Ljavassist/bytecode/MethodInfo;->getExceptionsAttribute()Ljavassist/bytecode/ExceptionsAttribute;

    move-result-object v5

    .line 349
    .local v5, "eattr":Ljavassist/bytecode/ExceptionsAttribute;
    if-eqz v5, :cond_0

    .line 350
    const/4 v6, 0x0

    .line 351
    invoke-virtual {v5, v3, v6}, Ljavassist/bytecode/ExceptionsAttribute;->copy(Ljavassist/bytecode/ConstPool;Ljava/util/Map;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v6

    check-cast v6, Ljavassist/bytecode/ExceptionsAttribute;

    .line 350
    invoke-virtual {v4, v6}, Ljavassist/bytecode/MethodInfo;->setExceptionsAttribute(Ljavassist/bytecode/ExceptionsAttribute;)V

    .line 353
    :cond_0
    new-instance v6, Ljavassist/bytecode/Bytecode;

    const/4 v7, 0x0

    invoke-direct {v6, v3, v7, v7}, Ljavassist/bytecode/Bytecode;-><init>(Ljavassist/bytecode/ConstPool;II)V

    .line 354
    .local v6, "code":Ljavassist/bytecode/Bytecode;
    invoke-virtual {p0}, Ljavassist/CtMethod;->getModifiers()I

    move-result v8

    invoke-static {v8}, Ljavassist/Modifier;->isStatic(I)Z

    move-result v8

    .line 355
    .local v8, "isStatic":Z
    invoke-virtual {p0}, Ljavassist/CtMethod;->getDeclaringClass()Ljavassist/CtClass;

    move-result-object v9

    .line 356
    .local v9, "deleClass":Ljavassist/CtClass;
    invoke-virtual {p0}, Ljavassist/CtMethod;->getParameterTypes()[Ljavassist/CtClass;

    move-result-object v10

    .line 358
    .local v10, "params":[Ljavassist/CtClass;
    const/4 v11, 0x1

    if-eqz v8, :cond_1

    .line 359
    invoke-virtual {v6, v10, v7}, Ljavassist/bytecode/Bytecode;->addLoadParameters([Ljavassist/CtClass;I)I

    move-result v7

    .line 360
    .local v7, "s":I
    invoke-virtual {v6, v9, v1, v2}, Ljavassist/bytecode/Bytecode;->addInvokestatic(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 363
    .end local v7    # "s":I
    :cond_1
    invoke-virtual {v6, v7, v9}, Ljavassist/bytecode/Bytecode;->addLoad(ILjavassist/CtClass;)I

    .line 364
    invoke-virtual {v6, v10, v11}, Ljavassist/bytecode/Bytecode;->addLoadParameters([Ljavassist/CtClass;I)I

    move-result v7

    .line 365
    .restart local v7    # "s":I
    invoke-virtual {v6, v9, v1, v2}, Ljavassist/bytecode/Bytecode;->addInvokespecial(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    :goto_0
    invoke-virtual {p0}, Ljavassist/CtMethod;->getReturnType()Ljavassist/CtClass;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljavassist/bytecode/Bytecode;->addReturn(Ljavassist/CtClass;)V

    .line 369
    add-int/2addr v7, v11

    invoke-virtual {v6, v7}, Ljavassist/bytecode/Bytecode;->setMaxLocals(I)V

    .line 370
    const/4 v11, 0x2

    if-ge v7, v11, :cond_2

    goto :goto_1

    :cond_2
    move v11, v7

    :goto_1
    invoke-virtual {v6, v11}, Ljavassist/bytecode/Bytecode;->setMaxStack(I)V

    .line 371
    invoke-virtual {v6}, Ljavassist/bytecode/Bytecode;->toCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljavassist/bytecode/MethodInfo;->setCodeAttribute(Ljavassist/bytecode/CodeAttribute;)V

    .line 373
    new-instance v11, Ljavassist/CtMethod;

    invoke-direct {v11, v4, p1}, Ljavassist/CtMethod;-><init>(Ljavassist/bytecode/MethodInfo;Ljavassist/CtClass;)V

    return-object v11
.end method

.method public static getter(Ljava/lang/String;Ljavassist/CtField;)Ljavassist/CtMethod;
    .locals 8
    .param p0, "methodName"    # Ljava/lang/String;
    .param p1, "field"    # Ljavassist/CtField;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 230
    invoke-virtual {p1}, Ljavassist/CtField;->getFieldInfo2()Ljavassist/bytecode/FieldInfo;

    move-result-object v0

    .line 231
    .local v0, "finfo":Ljavassist/bytecode/FieldInfo;
    invoke-virtual {v0}, Ljavassist/bytecode/FieldInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v1

    .line 232
    .local v1, "fieldType":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 233
    .local v2, "desc":Ljava/lang/String;
    invoke-virtual {v0}, Ljavassist/bytecode/FieldInfo;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v3

    .line 234
    .local v3, "cp":Ljavassist/bytecode/ConstPool;
    new-instance v4, Ljavassist/bytecode/MethodInfo;

    invoke-direct {v4, v3, p0, v2}, Ljavassist/bytecode/MethodInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    .local v4, "minfo":Ljavassist/bytecode/MethodInfo;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljavassist/bytecode/MethodInfo;->setAccessFlags(I)V

    .line 237
    new-instance v6, Ljavassist/bytecode/Bytecode;

    const/4 v7, 0x2

    invoke-direct {v6, v3, v7, v5}, Ljavassist/bytecode/Bytecode;-><init>(Ljavassist/bytecode/ConstPool;II)V

    move-object v5, v6

    .line 239
    .local v5, "code":Ljavassist/bytecode/Bytecode;
    :try_start_0
    invoke-virtual {v0}, Ljavassist/bytecode/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v6

    .line 240
    .local v6, "fieldName":Ljava/lang/String;
    invoke-virtual {v0}, Ljavassist/bytecode/FieldInfo;->getAccessFlags()I

    move-result v7

    and-int/lit8 v7, v7, 0x8

    if-nez v7, :cond_0

    .line 241
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljavassist/bytecode/Bytecode;->addAload(I)V

    .line 242
    sget-object v7, Ljavassist/bytecode/Bytecode;->THIS:Ljavassist/CtClass;

    invoke-virtual {v5, v7, v6, v1}, Ljavassist/bytecode/Bytecode;->addGetfield(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 245
    :cond_0
    sget-object v7, Ljavassist/bytecode/Bytecode;->THIS:Ljavassist/CtClass;

    invoke-virtual {v5, v7, v6, v1}, Ljavassist/bytecode/Bytecode;->addGetstatic(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :goto_0
    invoke-virtual {p1}, Ljavassist/CtField;->getType()Ljavassist/CtClass;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljavassist/bytecode/Bytecode;->addReturn(Ljavassist/CtClass;)V
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    .end local v6    # "fieldName":Ljava/lang/String;
    nop

    .line 253
    invoke-virtual {v5}, Ljavassist/bytecode/Bytecode;->toCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljavassist/bytecode/MethodInfo;->setCodeAttribute(Ljavassist/bytecode/CodeAttribute;)V

    .line 254
    invoke-virtual {p1}, Ljavassist/CtField;->getDeclaringClass()Ljavassist/CtClass;

    move-result-object v6

    .line 256
    .local v6, "cc":Ljavassist/CtClass;
    new-instance v7, Ljavassist/CtMethod;

    invoke-direct {v7, v4, v6}, Ljavassist/CtMethod;-><init>(Ljavassist/bytecode/MethodInfo;Ljavassist/CtClass;)V

    return-object v7

    .line 249
    .end local v6    # "cc":Ljavassist/CtClass;
    :catch_0
    move-exception v6

    .line 250
    .local v6, "e":Ljavassist/NotFoundException;
    new-instance v7, Ljavassist/CannotCompileException;

    invoke-direct {v7, v6}, Ljavassist/CannotCompileException;-><init>(Ljavassist/NotFoundException;)V

    throw v7
.end method

.method public static make(ILjavassist/CtClass;Ljava/lang/String;[Ljavassist/CtClass;[Ljavassist/CtClass;Ljava/lang/String;Ljavassist/CtClass;)Ljavassist/CtMethod;
    .locals 2
    .param p0, "modifiers"    # I
    .param p1, "returnType"    # Ljavassist/CtClass;
    .param p2, "mname"    # Ljava/lang/String;
    .param p3, "parameters"    # [Ljavassist/CtClass;
    .param p4, "exceptions"    # [Ljavassist/CtClass;
    .param p5, "body"    # Ljava/lang/String;
    .param p6, "declaring"    # Ljavassist/CtClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 139
    :try_start_0
    new-instance v0, Ljavassist/CtMethod;

    invoke-direct {v0, p1, p2, p3, p6}, Ljavassist/CtMethod;-><init>(Ljavassist/CtClass;Ljava/lang/String;[Ljavassist/CtClass;Ljavassist/CtClass;)V

    .line 141
    .local v0, "cm":Ljavassist/CtMethod;
    invoke-virtual {v0, p0}, Ljavassist/CtMethod;->setModifiers(I)V

    .line 142
    invoke-virtual {v0, p4}, Ljavassist/CtMethod;->setExceptionTypes([Ljavassist/CtClass;)V

    .line 143
    invoke-virtual {v0, p5}, Ljavassist/CtMethod;->setBody(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    return-object v0

    .line 146
    .end local v0    # "cm":Ljavassist/CtMethod;
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Ljavassist/NotFoundException;
    new-instance v1, Ljavassist/CannotCompileException;

    invoke-direct {v1, v0}, Ljavassist/CannotCompileException;-><init>(Ljavassist/NotFoundException;)V

    throw v1
.end method

.method public static make(Ljava/lang/String;Ljavassist/CtClass;)Ljavassist/CtMethod;
    .locals 1
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "declaring"    # Ljavassist/CtClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 50
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Ljavassist/CtNewMethod;->make(Ljava/lang/String;Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)Ljavassist/CtMethod;

    move-result-object v0

    return-object v0
.end method

.method public static make(Ljava/lang/String;Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)Ljavassist/CtMethod;
    .locals 3
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "declaring"    # Ljavassist/CtClass;
    .param p2, "delegateObj"    # Ljava/lang/String;
    .param p3, "delegateMethod"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 74
    new-instance v0, Ljavassist/compiler/Javac;

    invoke-direct {v0, p1}, Ljavassist/compiler/Javac;-><init>(Ljavassist/CtClass;)V

    .line 76
    .local v0, "compiler":Ljavassist/compiler/Javac;
    if-eqz p3, :cond_0

    .line 77
    :try_start_0
    invoke-virtual {v0, p2, p3}, Ljavassist/compiler/Javac;->recordProceed(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_0
    invoke-virtual {v0, p0}, Ljavassist/compiler/Javac;->compile(Ljava/lang/String;)Ljavassist/CtMember;

    move-result-object v1

    .line 80
    .local v1, "obj":Ljavassist/CtMember;
    instance-of v2, v1, Ljavassist/CtMethod;

    if-eqz v2, :cond_1

    .line 81
    move-object v2, v1

    check-cast v2, Ljavassist/CtMethod;
    :try_end_0
    .catch Ljavassist/compiler/CompileError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 85
    .end local v1    # "obj":Ljavassist/CtMember;
    :cond_1
    nop

    .line 87
    new-instance v1, Ljavassist/CannotCompileException;

    const-string v2, "not a method"

    invoke-direct {v1, v2}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 83
    :catch_0
    move-exception v1

    .line 84
    .local v1, "e":Ljavassist/compiler/CompileError;
    new-instance v2, Ljavassist/CannotCompileException;

    invoke-direct {v2, v1}, Ljavassist/CannotCompileException;-><init>(Ljavassist/compiler/CompileError;)V

    throw v2
.end method

.method public static make(Ljavassist/CtClass;Ljava/lang/String;[Ljavassist/CtClass;[Ljavassist/CtClass;Ljava/lang/String;Ljavassist/CtClass;)Ljavassist/CtMethod;
    .locals 7
    .param p0, "returnType"    # Ljavassist/CtClass;
    .param p1, "mname"    # Ljava/lang/String;
    .param p2, "parameters"    # [Ljavassist/CtClass;
    .param p3, "exceptions"    # [Ljavassist/CtClass;
    .param p4, "body"    # Ljava/lang/String;
    .param p5, "declaring"    # Ljavassist/CtClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 111
    const/4 v0, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Ljavassist/CtNewMethod;->make(ILjavassist/CtClass;Ljava/lang/String;[Ljavassist/CtClass;[Ljavassist/CtClass;Ljava/lang/String;Ljavassist/CtClass;)Ljavassist/CtMethod;

    move-result-object v0

    return-object v0
.end method

.method public static setter(Ljava/lang/String;Ljavassist/CtField;)Ljavassist/CtMethod;
    .locals 9
    .param p0, "methodName"    # Ljava/lang/String;
    .param p1, "field"    # Ljavassist/CtField;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 273
    invoke-virtual {p1}, Ljavassist/CtField;->getFieldInfo2()Ljavassist/bytecode/FieldInfo;

    move-result-object v0

    .line 274
    .local v0, "finfo":Ljavassist/bytecode/FieldInfo;
    invoke-virtual {v0}, Ljavassist/bytecode/FieldInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v1

    .line 275
    .local v1, "fieldType":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")V"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 276
    .local v2, "desc":Ljava/lang/String;
    invoke-virtual {v0}, Ljavassist/bytecode/FieldInfo;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v3

    .line 277
    .local v3, "cp":Ljavassist/bytecode/ConstPool;
    new-instance v4, Ljavassist/bytecode/MethodInfo;

    invoke-direct {v4, v3, p0, v2}, Ljavassist/bytecode/MethodInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    .local v4, "minfo":Ljavassist/bytecode/MethodInfo;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljavassist/bytecode/MethodInfo;->setAccessFlags(I)V

    .line 280
    new-instance v6, Ljavassist/bytecode/Bytecode;

    const/4 v7, 0x3

    invoke-direct {v6, v3, v7, v7}, Ljavassist/bytecode/Bytecode;-><init>(Ljavassist/bytecode/ConstPool;II)V

    .line 282
    .local v6, "code":Ljavassist/bytecode/Bytecode;
    :try_start_0
    invoke-virtual {v0}, Ljavassist/bytecode/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v7

    .line 283
    .local v7, "fieldName":Ljava/lang/String;
    invoke-virtual {v0}, Ljavassist/bytecode/FieldInfo;->getAccessFlags()I

    move-result v8

    and-int/lit8 v8, v8, 0x8

    if-nez v8, :cond_0

    .line 284
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Ljavassist/bytecode/Bytecode;->addAload(I)V

    .line 285
    invoke-virtual {p1}, Ljavassist/CtField;->getType()Ljavassist/CtClass;

    move-result-object v8

    invoke-virtual {v6, v5, v8}, Ljavassist/bytecode/Bytecode;->addLoad(ILjavassist/CtClass;)I

    .line 286
    sget-object v5, Ljavassist/bytecode/Bytecode;->THIS:Ljavassist/CtClass;

    invoke-virtual {v6, v5, v7, v1}, Ljavassist/bytecode/Bytecode;->addPutfield(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 289
    :cond_0
    invoke-virtual {p1}, Ljavassist/CtField;->getType()Ljavassist/CtClass;

    move-result-object v8

    invoke-virtual {v6, v5, v8}, Ljavassist/bytecode/Bytecode;->addLoad(ILjavassist/CtClass;)I

    .line 290
    sget-object v5, Ljavassist/bytecode/Bytecode;->THIS:Ljavassist/CtClass;

    invoke-virtual {v6, v5, v7, v1}, Ljavassist/bytecode/Bytecode;->addPutstatic(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    :goto_0
    const/4 v5, 0x0

    invoke-virtual {v6, v5}, Ljavassist/bytecode/Bytecode;->addReturn(Ljavassist/CtClass;)V
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    .end local v7    # "fieldName":Ljava/lang/String;
    nop

    .line 299
    invoke-virtual {v6}, Ljavassist/bytecode/Bytecode;->toCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavassist/bytecode/MethodInfo;->setCodeAttribute(Ljavassist/bytecode/CodeAttribute;)V

    .line 300
    invoke-virtual {p1}, Ljavassist/CtField;->getDeclaringClass()Ljavassist/CtClass;

    move-result-object v5

    .line 302
    .local v5, "cc":Ljavassist/CtClass;
    new-instance v7, Ljavassist/CtMethod;

    invoke-direct {v7, v4, v5}, Ljavassist/CtMethod;-><init>(Ljavassist/bytecode/MethodInfo;Ljavassist/CtClass;)V

    return-object v7

    .line 295
    .end local v5    # "cc":Ljavassist/CtClass;
    :catch_0
    move-exception v5

    .line 296
    .local v5, "e":Ljavassist/NotFoundException;
    new-instance v7, Ljavassist/CannotCompileException;

    invoke-direct {v7, v5}, Ljavassist/CannotCompileException;-><init>(Ljavassist/NotFoundException;)V

    throw v7
.end method

.method public static wrapped(Ljavassist/CtClass;Ljava/lang/String;[Ljavassist/CtClass;[Ljavassist/CtClass;Ljavassist/CtMethod;Ljavassist/CtMethod$ConstParameter;Ljavassist/CtClass;)Ljavassist/CtMethod;
    .locals 1
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

    .line 480
    invoke-static/range {p0 .. p6}, Ljavassist/CtNewWrappedMethod;->wrapped(Ljavassist/CtClass;Ljava/lang/String;[Ljavassist/CtClass;[Ljavassist/CtClass;Ljavassist/CtMethod;Ljavassist/CtMethod$ConstParameter;Ljavassist/CtClass;)Ljavassist/CtMethod;

    move-result-object v0

    return-object v0
.end method
