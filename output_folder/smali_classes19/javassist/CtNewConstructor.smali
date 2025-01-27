.class public Ljavassist/CtNewConstructor;
.super Ljava/lang/Object;
.source "CtNewConstructor.java"


# static fields
.field public static final PASS_ARRAY:I = 0x1

.field public static final PASS_NONE:I = 0x0

.field public static final PASS_PARAMS:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copy(Ljavassist/CtConstructor;Ljavassist/CtClass;Ljavassist/ClassMap;)Ljavassist/CtConstructor;
    .locals 1
    .param p0, "c"    # Ljavassist/CtConstructor;
    .param p1, "declaring"    # Ljavassist/CtClass;
    .param p2, "map"    # Ljavassist/ClassMap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 128
    new-instance v0, Ljavassist/CtConstructor;

    invoke-direct {v0, p0, p1, p2}, Ljavassist/CtConstructor;-><init>(Ljavassist/CtConstructor;Ljavassist/CtClass;Ljavassist/ClassMap;)V

    return-object v0
.end method

.method public static defaultConstructor(Ljavassist/CtClass;)Ljavassist/CtConstructor;
    .locals 6
    .param p0, "declaring"    # Ljavassist/CtClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 140
    new-instance v0, Ljavassist/CtConstructor;

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, [Ljavassist/CtClass;

    invoke-direct {v0, v1, p0}, Ljavassist/CtConstructor;-><init>([Ljavassist/CtClass;Ljavassist/CtClass;)V

    .line 142
    .local v0, "cons":Ljavassist/CtConstructor;
    invoke-virtual {p0}, Ljavassist/CtClass;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v1

    invoke-virtual {v1}, Ljavassist/bytecode/ClassFile;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v1

    .line 143
    .local v1, "cp":Ljavassist/bytecode/ConstPool;
    new-instance v2, Ljavassist/bytecode/Bytecode;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3, v3}, Ljavassist/bytecode/Bytecode;-><init>(Ljavassist/bytecode/ConstPool;II)V

    .line 144
    .local v2, "code":Ljavassist/bytecode/Bytecode;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljavassist/bytecode/Bytecode;->addAload(I)V

    .line 146
    :try_start_0
    invoke-virtual {p0}, Ljavassist/CtClass;->getSuperclass()Ljavassist/CtClass;

    move-result-object v3

    const-string v4, "<init>"

    const-string v5, "()V"

    invoke-virtual {v2, v3, v4, v5}, Ljavassist/bytecode/Bytecode;->addInvokespecial(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    nop

    .line 153
    const/16 v3, 0xb1

    invoke-virtual {v2, v3}, Ljavassist/bytecode/Bytecode;->add(I)V

    .line 156
    invoke-virtual {v0}, Ljavassist/CtConstructor;->getMethodInfo2()Ljavassist/bytecode/MethodInfo;

    move-result-object v3

    invoke-virtual {v2}, Ljavassist/bytecode/Bytecode;->toCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavassist/bytecode/MethodInfo;->setCodeAttribute(Ljavassist/bytecode/CodeAttribute;)V

    .line 157
    return-object v0

    .line 149
    :catch_0
    move-exception v3

    .line 150
    .local v3, "e":Ljavassist/NotFoundException;
    new-instance v4, Ljavassist/CannotCompileException;

    invoke-direct {v4, v3}, Ljavassist/CannotCompileException;-><init>(Ljavassist/NotFoundException;)V

    throw v4
.end method

.method public static make(Ljava/lang/String;Ljavassist/CtClass;)Ljavassist/CtConstructor;
    .locals 3
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "declaring"    # Ljavassist/CtClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 69
    new-instance v0, Ljavassist/compiler/Javac;

    invoke-direct {v0, p1}, Ljavassist/compiler/Javac;-><init>(Ljavassist/CtClass;)V

    .line 71
    .local v0, "compiler":Ljavassist/compiler/Javac;
    :try_start_0
    invoke-virtual {v0, p0}, Ljavassist/compiler/Javac;->compile(Ljava/lang/String;)Ljavassist/CtMember;

    move-result-object v1

    .line 72
    .local v1, "obj":Ljavassist/CtMember;
    instance-of v2, v1, Ljavassist/CtConstructor;

    if-eqz v2, :cond_0

    .line 74
    move-object v2, v1

    check-cast v2, Ljavassist/CtConstructor;
    :try_end_0
    .catch Ljavassist/compiler/CompileError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 79
    .end local v1    # "obj":Ljavassist/CtMember;
    :cond_0
    nop

    .line 81
    new-instance v1, Ljavassist/CannotCompileException;

    const-string v2, "not a constructor"

    invoke-direct {v1, v2}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 77
    :catch_0
    move-exception v1

    .line 78
    .local v1, "e":Ljavassist/compiler/CompileError;
    new-instance v2, Ljavassist/CannotCompileException;

    invoke-direct {v2, v1}, Ljavassist/CannotCompileException;-><init>(Ljavassist/compiler/CompileError;)V

    throw v2
.end method

.method public static make([Ljavassist/CtClass;[Ljavassist/CtClass;ILjavassist/CtMethod;Ljavassist/CtMethod$ConstParameter;Ljavassist/CtClass;)Ljavassist/CtConstructor;
    .locals 1
    .param p0, "parameters"    # [Ljavassist/CtClass;
    .param p1, "exceptions"    # [Ljavassist/CtClass;
    .param p2, "howto"    # I
    .param p3, "body"    # Ljavassist/CtMethod;
    .param p4, "cparam"    # Ljavassist/CtMethod$ConstParameter;
    .param p5, "declaring"    # Ljavassist/CtClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 317
    invoke-static/range {p0 .. p5}, Ljavassist/CtNewWrappedConstructor;->wrapped([Ljavassist/CtClass;[Ljavassist/CtClass;ILjavassist/CtMethod;Ljavassist/CtMethod$ConstParameter;Ljavassist/CtClass;)Ljavassist/CtConstructor;

    move-result-object v0

    return-object v0
.end method

.method public static make([Ljavassist/CtClass;[Ljavassist/CtClass;Ljava/lang/String;Ljavassist/CtClass;)Ljavassist/CtConstructor;
    .locals 2
    .param p0, "parameters"    # [Ljavassist/CtClass;
    .param p1, "exceptions"    # [Ljavassist/CtClass;
    .param p2, "body"    # Ljava/lang/String;
    .param p3, "declaring"    # Ljavassist/CtClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 102
    :try_start_0
    new-instance v0, Ljavassist/CtConstructor;

    invoke-direct {v0, p0, p3}, Ljavassist/CtConstructor;-><init>([Ljavassist/CtClass;Ljavassist/CtClass;)V

    .line 103
    .local v0, "cc":Ljavassist/CtConstructor;
    invoke-virtual {v0, p1}, Ljavassist/CtConstructor;->setExceptionTypes([Ljavassist/CtClass;)V

    .line 104
    invoke-virtual {v0, p2}, Ljavassist/CtConstructor;->setBody(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    return-object v0

    .line 107
    .end local v0    # "cc":Ljavassist/CtConstructor;
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljavassist/NotFoundException;
    new-instance v1, Ljavassist/CannotCompileException;

    invoke-direct {v1, v0}, Ljavassist/CannotCompileException;-><init>(Ljavassist/NotFoundException;)V

    throw v1
.end method

.method public static make([Ljavassist/CtClass;[Ljavassist/CtClass;Ljavassist/CtClass;)Ljavassist/CtConstructor;
    .locals 6
    .param p0, "parameters"    # [Ljavassist/CtClass;
    .param p1, "exceptions"    # [Ljavassist/CtClass;
    .param p2, "declaring"    # Ljavassist/CtClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 201
    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Ljavassist/CtNewConstructor;->make([Ljavassist/CtClass;[Ljavassist/CtClass;ILjavassist/CtMethod;Ljavassist/CtMethod$ConstParameter;Ljavassist/CtClass;)Ljavassist/CtConstructor;

    move-result-object v0

    return-object v0
.end method

.method public static skeleton([Ljavassist/CtClass;[Ljavassist/CtClass;Ljavassist/CtClass;)Ljavassist/CtConstructor;
    .locals 6
    .param p0, "parameters"    # [Ljavassist/CtClass;
    .param p1, "exceptions"    # [Ljavassist/CtClass;
    .param p2, "declaring"    # Ljavassist/CtClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 182
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Ljavassist/CtNewConstructor;->make([Ljavassist/CtClass;[Ljavassist/CtClass;ILjavassist/CtMethod;Ljavassist/CtMethod$ConstParameter;Ljavassist/CtClass;)Ljavassist/CtConstructor;

    move-result-object v0

    return-object v0
.end method
