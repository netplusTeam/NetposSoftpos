.class public Ljavassist/compiler/AccessorMaker;
.super Ljava/lang/Object;
.source "AccessorMaker.java"


# static fields
.field static final lastParamType:Ljava/lang/String; = "javassist.runtime.Inner"


# instance fields
.field private accessors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private clazz:Ljavassist/CtClass;

.field private uniqueNumber:I


# direct methods
.method public constructor <init>(Ljavassist/CtClass;)V
    .locals 1
    .param p1, "c"    # Ljavassist/CtClass;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Ljavassist/compiler/AccessorMaker;->clazz:Ljavassist/CtClass;

    .line 49
    const/4 v0, 0x1

    iput v0, p0, Ljavassist/compiler/AccessorMaker;->uniqueNumber:I

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljavassist/compiler/AccessorMaker;->accessors:Ljava/util/Map;

    .line 51
    return-void
.end method

.method private findAccessorName(Ljavassist/bytecode/ClassFile;)Ljava/lang/String;
    .locals 3
    .param p1, "cf"    # Ljavassist/bytecode/ClassFile;

    .line 269
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "access$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljavassist/compiler/AccessorMaker;->uniqueNumber:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavassist/compiler/AccessorMaker;->uniqueNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 270
    .local v0, "accName":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljavassist/bytecode/ClassFile;->getMethod(Ljava/lang/String;)Ljavassist/bytecode/MethodInfo;

    move-result-object v1

    if-nez v1, :cond_0

    .line 271
    return-object v0

    .line 270
    :cond_0
    goto :goto_0
.end method


# virtual methods
.method public getConstructor(Ljavassist/CtClass;Ljava/lang/String;Ljavassist/bytecode/MethodInfo;)Ljava/lang/String;
    .locals 16
    .param p1, "c"    # Ljavassist/CtClass;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "orig"    # Ljavassist/bytecode/MethodInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 56
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const-string v0, "<init>"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<init>:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 57
    .local v3, "key":Ljava/lang/String;
    iget-object v4, v1, Ljavassist/compiler/AccessorMaker;->accessors:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 58
    .local v4, "consDesc":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 59
    return-object v4

    .line 61
    :cond_0
    const-string v5, "javassist.runtime.Inner"

    invoke-static {v5, v2}, Ljavassist/bytecode/Descriptor;->appendParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 62
    iget-object v5, v1, Ljavassist/compiler/AccessorMaker;->clazz:Ljavassist/CtClass;

    invoke-virtual {v5}, Ljavassist/CtClass;->getClassFile()Ljavassist/bytecode/ClassFile;

    move-result-object v5

    .line 64
    .local v5, "cf":Ljavassist/bytecode/ClassFile;
    :try_start_0
    invoke-virtual {v5}, Ljavassist/bytecode/ClassFile;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v6

    .line 65
    .local v6, "cp":Ljavassist/bytecode/ConstPool;
    iget-object v7, v1, Ljavassist/compiler/AccessorMaker;->clazz:Ljavassist/CtClass;

    invoke-virtual {v7}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object v7

    .line 66
    .local v7, "pool":Ljavassist/ClassPool;
    new-instance v8, Ljavassist/bytecode/MethodInfo;

    invoke-direct {v8, v6, v0, v4}, Ljavassist/bytecode/MethodInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .local v8, "minfo":Ljavassist/bytecode/MethodInfo;
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljavassist/bytecode/MethodInfo;->setAccessFlags(I)V

    .line 69
    new-instance v10, Ljavassist/bytecode/SyntheticAttribute;

    invoke-direct {v10, v6}, Ljavassist/bytecode/SyntheticAttribute;-><init>(Ljavassist/bytecode/ConstPool;)V

    invoke-virtual {v8, v10}, Ljavassist/bytecode/MethodInfo;->addAttribute(Ljavassist/bytecode/AttributeInfo;)V

    .line 70
    invoke-virtual/range {p3 .. p3}, Ljavassist/bytecode/MethodInfo;->getExceptionsAttribute()Ljavassist/bytecode/ExceptionsAttribute;

    move-result-object v10

    .line 71
    .local v10, "ea":Ljavassist/bytecode/ExceptionsAttribute;
    const/4 v11, 0x0

    if-eqz v10, :cond_1

    .line 72
    invoke-virtual {v10, v6, v11}, Ljavassist/bytecode/ExceptionsAttribute;->copy(Ljavassist/bytecode/ConstPool;Ljava/util/Map;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljavassist/bytecode/MethodInfo;->addAttribute(Ljavassist/bytecode/AttributeInfo;)V

    .line 74
    :cond_1
    invoke-static {v2, v7}, Ljavassist/bytecode/Descriptor;->getParameterTypes(Ljava/lang/String;Ljavassist/ClassPool;)[Ljavassist/CtClass;

    move-result-object v12

    .line 75
    .local v12, "params":[Ljavassist/CtClass;
    new-instance v13, Ljavassist/bytecode/Bytecode;

    invoke-direct {v13, v6}, Ljavassist/bytecode/Bytecode;-><init>(Ljavassist/bytecode/ConstPool;)V

    .line 76
    .local v13, "code":Ljavassist/bytecode/Bytecode;
    invoke-virtual {v13, v9}, Ljavassist/bytecode/Bytecode;->addAload(I)V

    .line 77
    const/4 v9, 0x1

    .line 78
    .local v9, "regno":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    array-length v15, v12

    if-ge v14, v15, :cond_2

    .line 79
    aget-object v15, v12, v14

    invoke-virtual {v13, v9, v15}, Ljavassist/bytecode/Bytecode;->addLoad(ILjavassist/CtClass;)I

    move-result v15

    add-int/2addr v9, v15

    .line 78
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 80
    .end local v14    # "i":I
    :cond_2
    add-int/lit8 v14, v9, 0x1

    invoke-virtual {v13, v14}, Ljavassist/bytecode/Bytecode;->setMaxLocals(I)V

    .line 81
    iget-object v14, v1, Ljavassist/compiler/AccessorMaker;->clazz:Ljavassist/CtClass;

    invoke-virtual {v13, v14, v0, v2}, Ljavassist/bytecode/Bytecode;->addInvokespecial(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-virtual {v13, v11}, Ljavassist/bytecode/Bytecode;->addReturn(Ljavassist/CtClass;)V

    .line 84
    invoke-virtual {v13}, Ljavassist/bytecode/Bytecode;->toCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljavassist/bytecode/MethodInfo;->setCodeAttribute(Ljavassist/bytecode/CodeAttribute;)V

    .line 85
    invoke-virtual {v5, v8}, Ljavassist/bytecode/ClassFile;->addMethod(Ljavassist/bytecode/MethodInfo;)V
    :try_end_0
    .catch Ljavassist/CannotCompileException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .end local v6    # "cp":Ljavassist/bytecode/ConstPool;
    .end local v7    # "pool":Ljavassist/ClassPool;
    .end local v8    # "minfo":Ljavassist/bytecode/MethodInfo;
    .end local v9    # "regno":I
    .end local v10    # "ea":Ljavassist/bytecode/ExceptionsAttribute;
    .end local v12    # "params":[Ljavassist/CtClass;
    .end local v13    # "code":Ljavassist/bytecode/Bytecode;
    nop

    .line 94
    iget-object v0, v1, Ljavassist/compiler/AccessorMaker;->accessors:Ljava/util/Map;

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    return-object v4

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljavassist/NotFoundException;
    new-instance v6, Ljavassist/compiler/CompileError;

    invoke-direct {v6, v0}, Ljavassist/compiler/CompileError;-><init>(Ljavassist/NotFoundException;)V

    throw v6

    .line 87
    .end local v0    # "e":Ljavassist/NotFoundException;
    :catch_1
    move-exception v0

    .line 88
    .local v0, "e":Ljavassist/CannotCompileException;
    new-instance v6, Ljavassist/compiler/CompileError;

    invoke-direct {v6, v0}, Ljavassist/compiler/CompileError;-><init>(Ljavassist/CannotCompileException;)V

    throw v6
.end method

.method public getFieldGetter(Ljavassist/bytecode/FieldInfo;Z)Ljavassist/bytecode/MethodInfo;
    .locals 12
    .param p1, "finfo"    # Ljavassist/bytecode/FieldInfo;
    .param p2, "is_static"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 166
    invoke-virtual {p1}, Ljavassist/bytecode/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "fieldName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":getter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 168
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Ljavassist/compiler/AccessorMaker;->accessors:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 169
    .local v2, "res":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 170
    move-object v3, v2

    check-cast v3, Ljavassist/bytecode/MethodInfo;

    return-object v3

    .line 172
    :cond_0
    iget-object v3, p0, Ljavassist/compiler/AccessorMaker;->clazz:Ljavassist/CtClass;

    invoke-virtual {v3}, Ljavassist/CtClass;->getClassFile()Ljavassist/bytecode/ClassFile;

    move-result-object v3

    .line 173
    .local v3, "cf":Ljavassist/bytecode/ClassFile;
    invoke-direct {p0, v3}, Ljavassist/compiler/AccessorMaker;->findAccessorName(Ljavassist/bytecode/ClassFile;)Ljava/lang/String;

    move-result-object v4

    .line 175
    .local v4, "accName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v3}, Ljavassist/bytecode/ClassFile;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v5

    .line 176
    .local v5, "cp":Ljavassist/bytecode/ConstPool;
    iget-object v6, p0, Ljavassist/compiler/AccessorMaker;->clazz:Ljavassist/CtClass;

    invoke-virtual {v6}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object v6

    .line 177
    .local v6, "pool":Ljavassist/ClassPool;
    invoke-virtual {p1}, Ljavassist/bytecode/FieldInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v7

    .line 179
    .local v7, "fieldType":Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 180
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "()"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .local v8, "accDesc":Ljava/lang/String;
    goto :goto_0

    .line 182
    .end local v8    # "accDesc":Ljava/lang/String;
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Ljavassist/compiler/AccessorMaker;->clazz:Ljavassist/CtClass;

    invoke-static {v9}, Ljavassist/bytecode/Descriptor;->of(Ljavassist/CtClass;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 184
    .restart local v8    # "accDesc":Ljava/lang/String;
    :goto_0
    new-instance v9, Ljavassist/bytecode/MethodInfo;

    invoke-direct {v9, v5, v4, v8}, Ljavassist/bytecode/MethodInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .local v9, "minfo":Ljavassist/bytecode/MethodInfo;
    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Ljavassist/bytecode/MethodInfo;->setAccessFlags(I)V

    .line 186
    new-instance v10, Ljavassist/bytecode/SyntheticAttribute;

    invoke-direct {v10, v5}, Ljavassist/bytecode/SyntheticAttribute;-><init>(Ljavassist/bytecode/ConstPool;)V

    invoke-virtual {v9, v10}, Ljavassist/bytecode/MethodInfo;->addAttribute(Ljavassist/bytecode/AttributeInfo;)V

    .line 187
    new-instance v10, Ljavassist/bytecode/Bytecode;

    invoke-direct {v10, v5}, Ljavassist/bytecode/Bytecode;-><init>(Ljavassist/bytecode/ConstPool;)V

    .line 188
    .local v10, "code":Ljavassist/bytecode/Bytecode;
    if-eqz p2, :cond_2

    .line 189
    sget-object v11, Ljavassist/bytecode/Bytecode;->THIS:Ljavassist/CtClass;

    invoke-virtual {v10, v11, v0, v7}, Ljavassist/bytecode/Bytecode;->addGetstatic(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 192
    :cond_2
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljavassist/bytecode/Bytecode;->addAload(I)V

    .line 193
    sget-object v11, Ljavassist/bytecode/Bytecode;->THIS:Ljavassist/CtClass;

    invoke-virtual {v10, v11, v0, v7}, Ljavassist/bytecode/Bytecode;->addGetfield(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Ljavassist/bytecode/Bytecode;->setMaxLocals(I)V

    .line 197
    :goto_1
    invoke-static {v7, v6}, Ljavassist/bytecode/Descriptor;->toCtClass(Ljava/lang/String;Ljavassist/ClassPool;)Ljavassist/CtClass;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljavassist/bytecode/Bytecode;->addReturn(Ljavassist/CtClass;)V

    .line 198
    invoke-virtual {v10}, Ljavassist/bytecode/Bytecode;->toCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljavassist/bytecode/MethodInfo;->setCodeAttribute(Ljavassist/bytecode/CodeAttribute;)V

    .line 199
    invoke-virtual {v3, v9}, Ljavassist/bytecode/ClassFile;->addMethod(Ljavassist/bytecode/MethodInfo;)V

    .line 200
    iget-object v11, p0, Ljavassist/compiler/AccessorMaker;->accessors:Ljava/util/Map;

    invoke-interface {v11, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljavassist/CannotCompileException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    return-object v9

    .line 206
    .end local v5    # "cp":Ljavassist/bytecode/ConstPool;
    .end local v6    # "pool":Ljavassist/ClassPool;
    .end local v7    # "fieldType":Ljava/lang/String;
    .end local v8    # "accDesc":Ljava/lang/String;
    .end local v9    # "minfo":Ljavassist/bytecode/MethodInfo;
    .end local v10    # "code":Ljavassist/bytecode/Bytecode;
    :catch_0
    move-exception v5

    .line 207
    .local v5, "e":Ljavassist/NotFoundException;
    new-instance v6, Ljavassist/compiler/CompileError;

    invoke-direct {v6, v5}, Ljavassist/compiler/CompileError;-><init>(Ljavassist/NotFoundException;)V

    throw v6

    .line 203
    .end local v5    # "e":Ljavassist/NotFoundException;
    :catch_1
    move-exception v5

    .line 204
    .local v5, "e":Ljavassist/CannotCompileException;
    new-instance v6, Ljavassist/compiler/CompileError;

    invoke-direct {v6, v5}, Ljavassist/compiler/CompileError;-><init>(Ljavassist/CannotCompileException;)V

    throw v6
.end method

.method public getFieldSetter(Ljavassist/bytecode/FieldInfo;Z)Ljavassist/bytecode/MethodInfo;
    .locals 13
    .param p1, "finfo"    # Ljavassist/bytecode/FieldInfo;
    .param p2, "is_static"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 217
    invoke-virtual {p1}, Ljavassist/bytecode/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, "fieldName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":setter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 219
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Ljavassist/compiler/AccessorMaker;->accessors:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 220
    .local v2, "res":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 221
    move-object v3, v2

    check-cast v3, Ljavassist/bytecode/MethodInfo;

    return-object v3

    .line 223
    :cond_0
    iget-object v3, p0, Ljavassist/compiler/AccessorMaker;->clazz:Ljavassist/CtClass;

    invoke-virtual {v3}, Ljavassist/CtClass;->getClassFile()Ljavassist/bytecode/ClassFile;

    move-result-object v3

    .line 224
    .local v3, "cf":Ljavassist/bytecode/ClassFile;
    invoke-direct {p0, v3}, Ljavassist/compiler/AccessorMaker;->findAccessorName(Ljavassist/bytecode/ClassFile;)Ljava/lang/String;

    move-result-object v4

    .line 226
    .local v4, "accName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v3}, Ljavassist/bytecode/ClassFile;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v5

    .line 227
    .local v5, "cp":Ljavassist/bytecode/ConstPool;
    iget-object v6, p0, Ljavassist/compiler/AccessorMaker;->clazz:Ljavassist/CtClass;

    invoke-virtual {v6}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object v6

    .line 228
    .local v6, "pool":Ljavassist/ClassPool;
    invoke-virtual {p1}, Ljavassist/bytecode/FieldInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Ljavassist/CannotCompileException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    .local v7, "fieldType":Ljava/lang/String;
    const-string v8, ")V"

    const-string v9, "("

    if-eqz p2, :cond_1

    .line 231
    :try_start_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .local v8, "accDesc":Ljava/lang/String;
    goto :goto_0

    .line 233
    .end local v8    # "accDesc":Ljava/lang/String;
    :cond_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Ljavassist/compiler/AccessorMaker;->clazz:Ljavassist/CtClass;

    invoke-static {v10}, Ljavassist/bytecode/Descriptor;->of(Ljavassist/CtClass;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 235
    .restart local v8    # "accDesc":Ljava/lang/String;
    :goto_0
    new-instance v9, Ljavassist/bytecode/MethodInfo;

    invoke-direct {v9, v5, v4, v8}, Ljavassist/bytecode/MethodInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    .local v9, "minfo":Ljavassist/bytecode/MethodInfo;
    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Ljavassist/bytecode/MethodInfo;->setAccessFlags(I)V

    .line 237
    new-instance v10, Ljavassist/bytecode/SyntheticAttribute;

    invoke-direct {v10, v5}, Ljavassist/bytecode/SyntheticAttribute;-><init>(Ljavassist/bytecode/ConstPool;)V

    invoke-virtual {v9, v10}, Ljavassist/bytecode/MethodInfo;->addAttribute(Ljavassist/bytecode/AttributeInfo;)V

    .line 238
    new-instance v10, Ljavassist/bytecode/Bytecode;

    invoke-direct {v10, v5}, Ljavassist/bytecode/Bytecode;-><init>(Ljavassist/bytecode/ConstPool;)V

    .line 240
    .local v10, "code":Ljavassist/bytecode/Bytecode;
    const/4 v11, 0x0

    if-eqz p2, :cond_2

    .line 241
    invoke-static {v7, v6}, Ljavassist/bytecode/Descriptor;->toCtClass(Ljava/lang/String;Ljavassist/ClassPool;)Ljavassist/CtClass;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljavassist/bytecode/Bytecode;->addLoad(ILjavassist/CtClass;)I

    move-result v11

    .line 242
    .local v11, "reg":I
    sget-object v12, Ljavassist/bytecode/Bytecode;->THIS:Ljavassist/CtClass;

    invoke-virtual {v10, v12, v0, v7}, Ljavassist/bytecode/Bytecode;->addPutstatic(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 245
    .end local v11    # "reg":I
    :cond_2
    invoke-virtual {v10, v11}, Ljavassist/bytecode/Bytecode;->addAload(I)V

    .line 246
    invoke-static {v7, v6}, Ljavassist/bytecode/Descriptor;->toCtClass(Ljava/lang/String;Ljavassist/ClassPool;)Ljavassist/CtClass;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v10, v12, v11}, Ljavassist/bytecode/Bytecode;->addLoad(ILjavassist/CtClass;)I

    move-result v11

    add-int/2addr v11, v12

    .line 248
    .restart local v11    # "reg":I
    sget-object v12, Ljavassist/bytecode/Bytecode;->THIS:Ljavassist/CtClass;

    invoke-virtual {v10, v12, v0, v7}, Ljavassist/bytecode/Bytecode;->addPutfield(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    :goto_1
    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Ljavassist/bytecode/Bytecode;->addReturn(Ljavassist/CtClass;)V

    .line 252
    invoke-virtual {v10, v11}, Ljavassist/bytecode/Bytecode;->setMaxLocals(I)V

    .line 253
    invoke-virtual {v10}, Ljavassist/bytecode/Bytecode;->toCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljavassist/bytecode/MethodInfo;->setCodeAttribute(Ljavassist/bytecode/CodeAttribute;)V

    .line 254
    invoke-virtual {v3, v9}, Ljavassist/bytecode/ClassFile;->addMethod(Ljavassist/bytecode/MethodInfo;)V

    .line 255
    iget-object v12, p0, Ljavassist/compiler/AccessorMaker;->accessors:Ljava/util/Map;

    invoke-interface {v12, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljavassist/CannotCompileException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavassist/NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 256
    return-object v9

    .line 261
    .end local v5    # "cp":Ljavassist/bytecode/ConstPool;
    .end local v6    # "pool":Ljavassist/ClassPool;
    .end local v7    # "fieldType":Ljava/lang/String;
    .end local v8    # "accDesc":Ljava/lang/String;
    .end local v9    # "minfo":Ljavassist/bytecode/MethodInfo;
    .end local v10    # "code":Ljavassist/bytecode/Bytecode;
    .end local v11    # "reg":I
    :catch_0
    move-exception v5

    .line 262
    .local v5, "e":Ljavassist/NotFoundException;
    new-instance v6, Ljavassist/compiler/CompileError;

    invoke-direct {v6, v5}, Ljavassist/compiler/CompileError;-><init>(Ljavassist/NotFoundException;)V

    throw v6

    .line 258
    .end local v5    # "e":Ljavassist/NotFoundException;
    :catch_1
    move-exception v5

    .line 259
    .local v5, "e":Ljavassist/CannotCompileException;
    new-instance v6, Ljavassist/compiler/CompileError;

    invoke-direct {v6, v5}, Ljavassist/compiler/CompileError;-><init>(Ljavassist/CannotCompileException;)V

    throw v6
.end method

.method public getMethodAccessor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljavassist/bytecode/MethodInfo;)Ljava/lang/String;
    .locals 16
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "accDesc"    # Ljava/lang/String;
    .param p4, "orig"    # Ljavassist/bytecode/MethodInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 115
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 116
    .local v5, "key":Ljava/lang/String;
    iget-object v0, v1, Ljavassist/compiler/AccessorMaker;->accessors:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 117
    .local v0, "accName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 118
    return-object v0

    .line 120
    :cond_0
    iget-object v6, v1, Ljavassist/compiler/AccessorMaker;->clazz:Ljavassist/CtClass;

    invoke-virtual {v6}, Ljavassist/CtClass;->getClassFile()Ljavassist/bytecode/ClassFile;

    move-result-object v6

    .line 121
    .local v6, "cf":Ljavassist/bytecode/ClassFile;
    invoke-direct {v1, v6}, Ljavassist/compiler/AccessorMaker;->findAccessorName(Ljavassist/bytecode/ClassFile;)Ljava/lang/String;

    move-result-object v7

    .line 123
    .end local v0    # "accName":Ljava/lang/String;
    .local v7, "accName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v6}, Ljavassist/bytecode/ClassFile;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v0

    .line 124
    .local v0, "cp":Ljavassist/bytecode/ConstPool;
    iget-object v8, v1, Ljavassist/compiler/AccessorMaker;->clazz:Ljavassist/CtClass;

    invoke-virtual {v8}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object v8

    .line 125
    .local v8, "pool":Ljavassist/ClassPool;
    new-instance v9, Ljavassist/bytecode/MethodInfo;

    invoke-direct {v9, v0, v7, v4}, Ljavassist/bytecode/MethodInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .local v9, "minfo":Ljavassist/bytecode/MethodInfo;
    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Ljavassist/bytecode/MethodInfo;->setAccessFlags(I)V

    .line 128
    new-instance v10, Ljavassist/bytecode/SyntheticAttribute;

    invoke-direct {v10, v0}, Ljavassist/bytecode/SyntheticAttribute;-><init>(Ljavassist/bytecode/ConstPool;)V

    invoke-virtual {v9, v10}, Ljavassist/bytecode/MethodInfo;->addAttribute(Ljavassist/bytecode/AttributeInfo;)V

    .line 129
    invoke-virtual/range {p4 .. p4}, Ljavassist/bytecode/MethodInfo;->getExceptionsAttribute()Ljavassist/bytecode/ExceptionsAttribute;

    move-result-object v10

    .line 130
    .local v10, "ea":Ljavassist/bytecode/ExceptionsAttribute;
    if-eqz v10, :cond_1

    .line 131
    const/4 v11, 0x0

    invoke-virtual {v10, v0, v11}, Ljavassist/bytecode/ExceptionsAttribute;->copy(Ljavassist/bytecode/ConstPool;Ljava/util/Map;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljavassist/bytecode/MethodInfo;->addAttribute(Ljavassist/bytecode/AttributeInfo;)V

    .line 133
    :cond_1
    invoke-static {v4, v8}, Ljavassist/bytecode/Descriptor;->getParameterTypes(Ljava/lang/String;Ljavassist/ClassPool;)[Ljavassist/CtClass;

    move-result-object v11

    .line 134
    .local v11, "params":[Ljavassist/CtClass;
    const/4 v12, 0x0

    .line 135
    .local v12, "regno":I
    new-instance v13, Ljavassist/bytecode/Bytecode;

    invoke-direct {v13, v0}, Ljavassist/bytecode/Bytecode;-><init>(Ljavassist/bytecode/ConstPool;)V

    .line 136
    .local v13, "code":Ljavassist/bytecode/Bytecode;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    array-length v15, v11

    if-ge v14, v15, :cond_2

    .line 137
    aget-object v15, v11, v14

    invoke-virtual {v13, v12, v15}, Ljavassist/bytecode/Bytecode;->addLoad(ILjavassist/CtClass;)I

    move-result v15

    add-int/2addr v12, v15

    .line 136
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 139
    .end local v14    # "i":I
    :cond_2
    invoke-virtual {v13, v12}, Ljavassist/bytecode/Bytecode;->setMaxLocals(I)V

    .line 140
    if-ne v3, v4, :cond_3

    .line 141
    iget-object v14, v1, Ljavassist/compiler/AccessorMaker;->clazz:Ljavassist/CtClass;

    invoke-virtual {v13, v14, v2, v3}, Ljavassist/bytecode/Bytecode;->addInvokestatic(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 143
    :cond_3
    iget-object v14, v1, Ljavassist/compiler/AccessorMaker;->clazz:Ljavassist/CtClass;

    invoke-virtual {v13, v14, v2, v3}, Ljavassist/bytecode/Bytecode;->addInvokevirtual(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :goto_1
    invoke-static {v3, v8}, Ljavassist/bytecode/Descriptor;->getReturnType(Ljava/lang/String;Ljavassist/ClassPool;)Ljavassist/CtClass;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljavassist/bytecode/Bytecode;->addReturn(Ljavassist/CtClass;)V

    .line 146
    invoke-virtual {v13}, Ljavassist/bytecode/Bytecode;->toCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljavassist/bytecode/MethodInfo;->setCodeAttribute(Ljavassist/bytecode/CodeAttribute;)V

    .line 147
    invoke-virtual {v6, v9}, Ljavassist/bytecode/ClassFile;->addMethod(Ljavassist/bytecode/MethodInfo;)V
    :try_end_0
    .catch Ljavassist/CannotCompileException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    .end local v0    # "cp":Ljavassist/bytecode/ConstPool;
    .end local v8    # "pool":Ljavassist/ClassPool;
    .end local v9    # "minfo":Ljavassist/bytecode/MethodInfo;
    .end local v10    # "ea":Ljavassist/bytecode/ExceptionsAttribute;
    .end local v11    # "params":[Ljavassist/CtClass;
    .end local v12    # "regno":I
    .end local v13    # "code":Ljavassist/bytecode/Bytecode;
    nop

    .line 156
    iget-object v0, v1, Ljavassist/compiler/AccessorMaker;->accessors:Ljava/util/Map;

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    return-object v7

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Ljavassist/NotFoundException;
    new-instance v8, Ljavassist/compiler/CompileError;

    invoke-direct {v8, v0}, Ljavassist/compiler/CompileError;-><init>(Ljavassist/NotFoundException;)V

    throw v8

    .line 149
    .end local v0    # "e":Ljavassist/NotFoundException;
    :catch_1
    move-exception v0

    .line 150
    .local v0, "e":Ljavassist/CannotCompileException;
    new-instance v8, Ljavassist/compiler/CompileError;

    invoke-direct {v8, v0}, Ljavassist/compiler/CompileError;-><init>(Ljavassist/CannotCompileException;)V

    throw v8
.end method
