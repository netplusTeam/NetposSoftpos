.class public final Ljavassist/CtMethod;
.super Ljavassist/CtBehavior;
.source "CtMethod.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavassist/CtMethod$StringConstParameter;,
        Ljavassist/CtMethod$LongConstParameter;,
        Ljavassist/CtMethod$IntConstParameter;,
        Ljavassist/CtMethod$ConstParameter;
    }
.end annotation


# instance fields
.field protected cachedStringRep:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljavassist/CtClass;Ljava/lang/String;[Ljavassist/CtClass;Ljavassist/CtClass;)V
    .locals 3
    .param p1, "returnType"    # Ljavassist/CtClass;
    .param p2, "mname"    # Ljava/lang/String;
    .param p3, "parameters"    # [Ljavassist/CtClass;
    .param p4, "declaring"    # Ljavassist/CtClass;

    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, v0, p4}, Ljavassist/CtMethod;-><init>(Ljavassist/bytecode/MethodInfo;Ljavassist/CtClass;)V

    .line 64
    invoke-virtual {p4}, Ljavassist/CtClass;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v0

    invoke-virtual {v0}, Ljavassist/bytecode/ClassFile;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v0

    .line 65
    .local v0, "cp":Ljavassist/bytecode/ConstPool;
    invoke-static {p1, p3}, Ljavassist/bytecode/Descriptor;->ofMethod(Ljavassist/CtClass;[Ljavassist/CtClass;)Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, "desc":Ljava/lang/String;
    new-instance v2, Ljavassist/bytecode/MethodInfo;

    invoke-direct {v2, v0, p2, v1}, Ljavassist/bytecode/MethodInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Ljavassist/CtMethod;->methodInfo:Ljavassist/bytecode/MethodInfo;

    .line 67
    const/16 v2, 0x401

    invoke-virtual {p0, v2}, Ljavassist/CtMethod;->setModifiers(I)V

    .line 68
    return-void
.end method

.method public constructor <init>(Ljavassist/CtMethod;Ljavassist/CtClass;Ljavassist/ClassMap;)V
    .locals 1
    .param p1, "src"    # Ljavassist/CtMethod;
    .param p2, "declaring"    # Ljavassist/CtClass;
    .param p3, "map"    # Ljavassist/ClassMap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 123
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Ljavassist/CtMethod;-><init>(Ljavassist/bytecode/MethodInfo;Ljavassist/CtClass;)V

    .line 124
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p3}, Ljavassist/CtMethod;->copy(Ljavassist/CtBehavior;ZLjavassist/ClassMap;)V

    .line 125
    return-void
.end method

.method constructor <init>(Ljavassist/bytecode/MethodInfo;Ljavassist/CtClass;)V
    .locals 1
    .param p1, "minfo"    # Ljavassist/bytecode/MethodInfo;
    .param p2, "declaring"    # Ljavassist/CtClass;

    .line 46
    invoke-direct {p0, p2, p1}, Ljavassist/CtBehavior;-><init>(Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;)V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Ljavassist/CtMethod;->cachedStringRep:Ljava/lang/String;

    .line 48
    return-void
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

    .line 140
    invoke-static {p0, p1}, Ljavassist/CtNewMethod;->make(Ljava/lang/String;Ljavassist/CtClass;)Ljavassist/CtMethod;

    move-result-object v0

    return-object v0
.end method

.method public static make(Ljavassist/bytecode/MethodInfo;Ljavassist/CtClass;)Ljavassist/CtMethod;
    .locals 2
    .param p0, "minfo"    # Ljavassist/bytecode/MethodInfo;
    .param p1, "declaring"    # Ljavassist/CtClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 155
    invoke-virtual {p1}, Ljavassist/CtClass;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v0

    invoke-virtual {v0}, Ljavassist/bytecode/ClassFile;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v0

    invoke-virtual {p0}, Ljavassist/bytecode/MethodInfo;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 158
    new-instance v0, Ljavassist/CtMethod;

    invoke-direct {v0, p0, p1}, Ljavassist/CtMethod;-><init>(Ljavassist/bytecode/MethodInfo;Ljavassist/CtClass;)V

    return-object v0

    .line 156
    :cond_0
    new-instance v0, Ljavassist/CannotCompileException;

    const-string v1, "bad declaring class"

    invoke-direct {v0, v1}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 196
    if-eqz p1, :cond_0

    instance-of v0, p1, Ljavassist/CtMethod;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljavassist/CtMethod;

    .line 197
    invoke-virtual {v0}, Ljavassist/CtMethod;->getStringRep()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljavassist/CtMethod;->getStringRep()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 196
    :goto_0
    return v0
.end method

.method public getLongName()Ljava/lang/String;
    .locals 2

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavassist/CtMethod;->getDeclaringClass()Ljavassist/CtClass;

    move-result-object v1

    invoke-virtual {v1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 209
    invoke-virtual {p0}, Ljavassist/CtMethod;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljavassist/CtMethod;->getSignature()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavassist/bytecode/Descriptor;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 208
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 217
    iget-object v0, p0, Ljavassist/CtMethod;->methodInfo:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {v0}, Ljavassist/bytecode/MethodInfo;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReturnType()Ljavassist/CtClass;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 232
    invoke-virtual {p0}, Ljavassist/CtMethod;->getReturnType0()Ljavassist/CtClass;

    move-result-object v0

    return-object v0
.end method

.method final getStringRep()Ljava/lang/String;
    .locals 2

    .line 183
    iget-object v0, p0, Ljavassist/CtMethod;->cachedStringRep:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljavassist/CtMethod;->methodInfo:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {v1}, Ljavassist/bytecode/MethodInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljavassist/CtMethod;->methodInfo:Ljavassist/bytecode/MethodInfo;

    .line 185
    invoke-virtual {v1}, Ljavassist/bytecode/MethodInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavassist/bytecode/Descriptor;->getParamDescriptor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavassist/CtMethod;->cachedStringRep:Ljava/lang/String;

    .line 187
    :cond_0
    iget-object v0, p0, Ljavassist/CtMethod;->cachedStringRep:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 168
    invoke-virtual {p0}, Ljavassist/CtMethod;->getStringRep()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 6

    .line 241
    invoke-virtual {p0}, Ljavassist/CtMethod;->getMethodInfo2()Ljavassist/bytecode/MethodInfo;

    move-result-object v0

    invoke-virtual {v0}, Ljavassist/bytecode/MethodInfo;->getCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object v0

    .line 242
    .local v0, "ca":Ljavassist/bytecode/CodeAttribute;
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 243
    invoke-virtual {p0}, Ljavassist/CtMethod;->getModifiers()I

    move-result v3

    and-int/lit16 v3, v3, 0x400

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 245
    :cond_1
    invoke-virtual {v0}, Ljavassist/bytecode/CodeAttribute;->iterator()Ljavassist/bytecode/CodeIterator;

    move-result-object v3

    .line 247
    .local v3, "it":Ljavassist/bytecode/CodeIterator;
    :try_start_0
    invoke-virtual {v3}, Ljavassist/bytecode/CodeIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Ljavassist/bytecode/CodeIterator;->next()I

    move-result v4

    invoke-virtual {v3, v4}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result v4

    const/16 v5, 0xb1

    if-ne v4, v5, :cond_2

    .line 248
    invoke-virtual {v3}, Ljavassist/bytecode/CodeIterator;->hasNext()Z

    move-result v4
    :try_end_0
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    .line 247
    :goto_1
    return v1

    .line 250
    :catch_0
    move-exception v1

    .line 251
    return v2
.end method

.method nameReplaced()V
    .locals 1

    .line 177
    const/4 v0, 0x0

    iput-object v0, p0, Ljavassist/CtMethod;->cachedStringRep:Ljava/lang/String;

    .line 178
    return-void
.end method

.method public setBody(Ljavassist/CtMethod;Ljavassist/ClassMap;)V
    .locals 4
    .param p1, "src"    # Ljavassist/CtMethod;
    .param p2, "map"    # Ljavassist/ClassMap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 271
    iget-object v0, p1, Ljavassist/CtMethod;->declaringClass:Ljavassist/CtClass;

    iget-object v1, p1, Ljavassist/CtMethod;->methodInfo:Ljavassist/bytecode/MethodInfo;

    iget-object v2, p0, Ljavassist/CtMethod;->declaringClass:Ljavassist/CtClass;

    iget-object v3, p0, Ljavassist/CtMethod;->methodInfo:Ljavassist/bytecode/MethodInfo;

    invoke-static {v0, v1, v2, v3, p2}, Ljavassist/CtMethod;->setBody0(Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;Ljavassist/ClassMap;)V

    .line 273
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .param p1, "newname"    # Ljava/lang/String;

    .line 224
    iget-object v0, p0, Ljavassist/CtMethod;->declaringClass:Ljavassist/CtClass;

    invoke-virtual {v0}, Ljavassist/CtClass;->checkModify()V

    .line 225
    iget-object v0, p0, Ljavassist/CtMethod;->methodInfo:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/MethodInfo;->setName(Ljava/lang/String;)V

    .line 226
    return-void
.end method

.method public setWrappedBody(Ljavassist/CtMethod;Ljavassist/CtMethod$ConstParameter;)V
    .locals 7
    .param p1, "mbody"    # Ljavassist/CtMethod;
    .param p2, "constParam"    # Ljavassist/CtMethod$ConstParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 289
    iget-object v0, p0, Ljavassist/CtMethod;->declaringClass:Ljavassist/CtClass;

    invoke-virtual {v0}, Ljavassist/CtClass;->checkModify()V

    .line 291
    invoke-virtual {p0}, Ljavassist/CtMethod;->getDeclaringClass()Ljavassist/CtClass;

    move-result-object v0

    .line 295
    .local v0, "clazz":Ljavassist/CtClass;
    :try_start_0
    invoke-virtual {p0}, Ljavassist/CtMethod;->getParameterTypes()[Ljavassist/CtClass;

    move-result-object v4

    .line 296
    .local v4, "params":[Ljavassist/CtClass;
    invoke-virtual {p0}, Ljavassist/CtMethod;->getReturnType()Ljavassist/CtClass;

    move-result-object v5
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    .local v5, "retType":Ljavassist/CtClass;
    nop

    .line 302
    nop

    .line 303
    invoke-virtual {v0}, Ljavassist/CtClass;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v2

    .line 302
    move-object v1, v0

    move-object v3, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Ljavassist/CtNewWrappedMethod;->makeBody(Ljavassist/CtClass;Ljavassist/bytecode/ClassFile;Ljavassist/CtMethod;[Ljavassist/CtClass;Ljavassist/CtClass;Ljavassist/CtMethod$ConstParameter;)Ljavassist/bytecode/Bytecode;

    move-result-object v1

    .line 307
    .local v1, "code":Ljavassist/bytecode/Bytecode;
    invoke-virtual {v1}, Ljavassist/bytecode/Bytecode;->toCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object v2

    .line 308
    .local v2, "cattr":Ljavassist/bytecode/CodeAttribute;
    iget-object v3, p0, Ljavassist/CtMethod;->methodInfo:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {v3, v2}, Ljavassist/bytecode/MethodInfo;->setCodeAttribute(Ljavassist/bytecode/CodeAttribute;)V

    .line 309
    iget-object v3, p0, Ljavassist/CtMethod;->methodInfo:Ljavassist/bytecode/MethodInfo;

    iget-object v6, p0, Ljavassist/CtMethod;->methodInfo:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {v6}, Ljavassist/bytecode/MethodInfo;->getAccessFlags()I

    move-result v6

    and-int/lit16 v6, v6, -0x401

    invoke-virtual {v3, v6}, Ljavassist/bytecode/MethodInfo;->setAccessFlags(I)V

    .line 312
    return-void

    .line 298
    .end local v1    # "code":Ljavassist/bytecode/Bytecode;
    .end local v2    # "cattr":Ljavassist/bytecode/CodeAttribute;
    .end local v4    # "params":[Ljavassist/CtClass;
    .end local v5    # "retType":Ljavassist/CtClass;
    :catch_0
    move-exception v1

    .line 299
    .local v1, "e":Ljavassist/NotFoundException;
    new-instance v2, Ljavassist/CannotCompileException;

    invoke-direct {v2, v1}, Ljavassist/CannotCompileException;-><init>(Ljavassist/NotFoundException;)V

    throw v2
.end method
