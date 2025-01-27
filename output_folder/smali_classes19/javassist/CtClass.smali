.class public abstract Ljavassist/CtClass;
.super Ljava/lang/Object;
.source "CtClass.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavassist/CtClass$DelayedFileOutputStream;
    }
.end annotation


# static fields
.field public static booleanType:Ljavassist/CtClass; = null

.field public static byteType:Ljavassist/CtClass; = null

.field public static charType:Ljavassist/CtClass; = null

.field public static debugDump:Ljava/lang/String; = null

.field public static doubleType:Ljavassist/CtClass; = null

.field public static floatType:Ljavassist/CtClass; = null

.field public static intType:Ljavassist/CtClass; = null

.field static final javaLangObject:Ljava/lang/String; = "java.lang.Object"

.field public static longType:Ljavassist/CtClass; = null

.field static primitiveTypes:[Ljavassist/CtClass; = null

.field public static shortType:Ljavassist/CtClass; = null

.field public static final version:Ljava/lang/String; = "3.27.0-GA"

.field public static voidType:Ljavassist/CtClass;


# instance fields
.field protected qualifiedName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 67
    const/4 v0, 0x0

    sput-object v0, Ljavassist/CtClass;->debugDump:Ljava/lang/String;

    .line 146
    const/16 v0, 0x9

    new-array v0, v0, [Ljavassist/CtClass;

    sput-object v0, Ljavassist/CtClass;->primitiveTypes:[Ljavassist/CtClass;

    .line 148
    new-instance v0, Ljavassist/CtPrimitiveType;

    const-string v2, "boolean"

    const/16 v3, 0x5a

    const-string v4, "java.lang.Boolean"

    const-string v5, "booleanValue"

    const-string v6, "()Z"

    const/16 v7, 0xac

    const/4 v8, 0x4

    const/4 v9, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Ljavassist/CtPrimitiveType;-><init>(Ljava/lang/String;CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    sput-object v0, Ljavassist/CtClass;->booleanType:Ljavassist/CtClass;

    .line 152
    sget-object v1, Ljavassist/CtClass;->primitiveTypes:[Ljavassist/CtClass;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 154
    new-instance v0, Ljavassist/CtPrimitiveType;

    const-string v4, "char"

    const/16 v5, 0x43

    const-string v6, "java.lang.Character"

    const-string v7, "charValue"

    const-string v8, "()C"

    const/16 v9, 0xac

    const/4 v10, 0x5

    const/4 v11, 0x1

    move-object v3, v0

    invoke-direct/range {v3 .. v11}, Ljavassist/CtPrimitiveType;-><init>(Ljava/lang/String;CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    sput-object v0, Ljavassist/CtClass;->charType:Ljavassist/CtClass;

    .line 157
    sget-object v1, Ljavassist/CtClass;->primitiveTypes:[Ljavassist/CtClass;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    .line 159
    new-instance v0, Ljavassist/CtPrimitiveType;

    const-string v4, "byte"

    const/16 v5, 0x42

    const-string v6, "java.lang.Byte"

    const-string v7, "byteValue"

    const-string v8, "()B"

    const/16 v10, 0x8

    move-object v3, v0

    invoke-direct/range {v3 .. v11}, Ljavassist/CtPrimitiveType;-><init>(Ljava/lang/String;CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    sput-object v0, Ljavassist/CtClass;->byteType:Ljavassist/CtClass;

    .line 162
    sget-object v1, Ljavassist/CtClass;->primitiveTypes:[Ljavassist/CtClass;

    const/4 v2, 0x2

    aput-object v0, v1, v2

    .line 164
    new-instance v0, Ljavassist/CtPrimitiveType;

    const-string v4, "short"

    const/16 v5, 0x53

    const-string v6, "java.lang.Short"

    const-string v7, "shortValue"

    const-string v8, "()S"

    const/16 v10, 0x9

    move-object v3, v0

    invoke-direct/range {v3 .. v11}, Ljavassist/CtPrimitiveType;-><init>(Ljava/lang/String;CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    sput-object v0, Ljavassist/CtClass;->shortType:Ljavassist/CtClass;

    .line 167
    sget-object v1, Ljavassist/CtClass;->primitiveTypes:[Ljavassist/CtClass;

    const/4 v2, 0x3

    aput-object v0, v1, v2

    .line 169
    new-instance v0, Ljavassist/CtPrimitiveType;

    const-string v4, "int"

    const/16 v5, 0x49

    const-string v6, "java.lang.Integer"

    const-string v7, "intValue"

    const-string v8, "()I"

    const/16 v10, 0xa

    move-object v3, v0

    invoke-direct/range {v3 .. v11}, Ljavassist/CtPrimitiveType;-><init>(Ljava/lang/String;CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    sput-object v0, Ljavassist/CtClass;->intType:Ljavassist/CtClass;

    .line 172
    sget-object v1, Ljavassist/CtClass;->primitiveTypes:[Ljavassist/CtClass;

    const/4 v2, 0x4

    aput-object v0, v1, v2

    .line 174
    new-instance v0, Ljavassist/CtPrimitiveType;

    const-string v4, "long"

    const/16 v5, 0x4a

    const-string v6, "java.lang.Long"

    const-string v7, "longValue"

    const-string v8, "()J"

    const/16 v9, 0xad

    const/16 v10, 0xb

    const/4 v11, 0x2

    move-object v3, v0

    invoke-direct/range {v3 .. v11}, Ljavassist/CtPrimitiveType;-><init>(Ljava/lang/String;CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    sput-object v0, Ljavassist/CtClass;->longType:Ljavassist/CtClass;

    .line 177
    sget-object v1, Ljavassist/CtClass;->primitiveTypes:[Ljavassist/CtClass;

    const/4 v2, 0x5

    aput-object v0, v1, v2

    .line 179
    new-instance v0, Ljavassist/CtPrimitiveType;

    const-string v4, "float"

    const/16 v5, 0x46

    const-string v6, "java.lang.Float"

    const-string v7, "floatValue"

    const-string v8, "()F"

    const/16 v9, 0xae

    const/4 v10, 0x6

    const/4 v11, 0x1

    move-object v3, v0

    invoke-direct/range {v3 .. v11}, Ljavassist/CtPrimitiveType;-><init>(Ljava/lang/String;CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    sput-object v0, Ljavassist/CtClass;->floatType:Ljavassist/CtClass;

    .line 182
    sget-object v1, Ljavassist/CtClass;->primitiveTypes:[Ljavassist/CtClass;

    const/4 v2, 0x6

    aput-object v0, v1, v2

    .line 184
    new-instance v0, Ljavassist/CtPrimitiveType;

    const-string v4, "double"

    const/16 v5, 0x44

    const-string v6, "java.lang.Double"

    const-string v7, "doubleValue"

    const-string v8, "()D"

    const/16 v9, 0xaf

    const/4 v10, 0x7

    const/4 v11, 0x2

    move-object v3, v0

    invoke-direct/range {v3 .. v11}, Ljavassist/CtPrimitiveType;-><init>(Ljava/lang/String;CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    sput-object v0, Ljavassist/CtClass;->doubleType:Ljavassist/CtClass;

    .line 187
    sget-object v1, Ljavassist/CtClass;->primitiveTypes:[Ljavassist/CtClass;

    const/4 v2, 0x7

    aput-object v0, v1, v2

    .line 189
    new-instance v0, Ljavassist/CtPrimitiveType;

    const-string v4, "void"

    const/16 v5, 0x56

    const-string v6, "java.lang.Void"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xb1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v11}, Ljavassist/CtPrimitiveType;-><init>(Ljava/lang/String;CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    sput-object v0, Ljavassist/CtClass;->voidType:Ljavassist/CtClass;

    .line 191
    sget-object v1, Ljavassist/CtClass;->primitiveTypes:[Ljavassist/CtClass;

    const/16 v2, 0x8

    aput-object v0, v1, v2

    .line 192
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    iput-object p1, p0, Ljavassist/CtClass;->qualifiedName:Ljava/lang/String;

    .line 196
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .param p0, "args"    # [Ljava/lang/String;

    .line 82
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Javassist version 3.27.0-GA"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 83
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Copyright (C) 1999-2020 Shigeru Chiba. All Rights Reserved."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 85
    return-void
.end method


# virtual methods
.method public addConstructor(Ljavassist/CtConstructor;)V
    .locals 0
    .param p1, "c"    # Ljavassist/CtConstructor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 1071
    invoke-virtual {p0}, Ljavassist/CtClass;->checkModify()V

    .line 1072
    return-void
.end method

.method public addField(Ljavassist/CtField;)V
    .locals 2
    .param p1, "f"    # Ljavassist/CtField;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 1111
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljavassist/CtField$Initializer;

    invoke-virtual {p0, p1, v0}, Ljavassist/CtClass;->addField(Ljavassist/CtField;Ljavassist/CtField$Initializer;)V

    .line 1112
    return-void
.end method

.method public addField(Ljavassist/CtField;Ljava/lang/String;)V
    .locals 0
    .param p1, "f"    # Ljavassist/CtField;
    .param p2, "init"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 1147
    invoke-virtual {p0}, Ljavassist/CtClass;->checkModify()V

    .line 1148
    return-void
.end method

.method public addField(Ljavassist/CtField;Ljavassist/CtField$Initializer;)V
    .locals 0
    .param p1, "f"    # Ljavassist/CtField;
    .param p2, "init"    # Ljavassist/CtField$Initializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 1175
    invoke-virtual {p0}, Ljavassist/CtClass;->checkModify()V

    .line 1176
    return-void
.end method

.method public addInterface(Ljavassist/CtClass;)V
    .locals 0
    .param p1, "anInterface"    # Ljavassist/CtClass;

    .line 772
    invoke-virtual {p0}, Ljavassist/CtClass;->checkModify()V

    .line 773
    return-void
.end method

.method public addMethod(Ljavassist/CtMethod;)V
    .locals 0
    .param p1, "m"    # Ljavassist/CtMethod;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 1088
    invoke-virtual {p0}, Ljavassist/CtClass;->checkModify()V

    .line 1089
    return-void
.end method

.method checkModify()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 296
    invoke-virtual {p0}, Ljavassist/CtClass;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 300
    return-void

    .line 297
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " class is frozen"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method compress()V
    .locals 0

    .line 1687
    return-void
.end method

.method public debugWriteFile()V
    .locals 1

    .line 1586
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljavassist/CtClass;->debugWriteFile(Ljava/lang/String;)V

    .line 1587
    return-void
.end method

.method public debugWriteFile(Ljava/lang/String;)V
    .locals 2
    .param p1, "directoryName"    # Ljava/lang/String;

    .line 1600
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Ljavassist/CtClass;->stopPruning(Z)Z

    move-result v0

    .line 1601
    .local v0, "p":Z
    invoke-virtual {p0, p1}, Ljavassist/CtClass;->writeFile(Ljava/lang/String;)V

    .line 1602
    invoke-virtual {p0}, Ljavassist/CtClass;->defrost()V

    .line 1603
    invoke-virtual {p0, v0}, Ljavassist/CtClass;->stopPruning(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1607
    nop

    .line 1608
    .end local v0    # "p":Z
    return-void

    .line 1605
    :catch_0
    move-exception v0

    .line 1606
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public defrost()V
    .locals 3

    .line 318
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot defrost "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public detach()V
    .locals 4

    .line 1424
    invoke-virtual {p0}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object v0

    .line 1425
    .local v0, "cp":Ljavassist/ClassPool;
    invoke-virtual {p0}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavassist/ClassPool;->removeCached(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v1

    .line 1426
    .local v1, "obj":Ljavassist/CtClass;
    if-eq v1, p0, :cond_0

    .line 1427
    invoke-virtual {p0}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Ljavassist/ClassPool;->cacheCtClass(Ljava/lang/String;Ljavassist/CtClass;Z)V

    .line 1428
    :cond_0
    return-void
.end method

.method protected extendToString(Ljava/lang/StringBuffer;)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .line 217
    invoke-virtual {p0}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 218
    return-void
.end method

.method public freeze()V
    .locals 0

    .line 291
    return-void
.end method

.method public getAccessorMaker()Ljavassist/compiler/AccessorMaker;
    .locals 1

    .line 260
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 628
    .local p1, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAnnotations()[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 643
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public getAttribute(Ljava/lang/String;)[B
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 1206
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAvailableAnnotations()[Ljava/lang/Object;
    .locals 1

    .line 658
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public getClassFile()Ljavassist/bytecode/ClassFile;
    .locals 1

    .line 232
    invoke-virtual {p0}, Ljavassist/CtClass;->checkModify()V

    .line 233
    invoke-virtual {p0}, Ljavassist/CtClass;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v0

    return-object v0
.end method

.method public getClassFile2()Ljavassist/bytecode/ClassFile;
    .locals 1

    .line 254
    const/4 v0, 0x0

    return-object v0
.end method

.method public getClassInitializer()Ljavassist/CtConstructor;
    .locals 1

    .line 965
    const/4 v0, 0x0

    return-object v0
.end method

.method public getClassPool()Ljavassist/ClassPool;
    .locals 1

    .line 223
    const/4 v0, 0x0

    return-object v0
.end method

.method public getComponentType()Ljavassist/CtClass;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 348
    const/4 v0, 0x0

    return-object v0
.end method

.method public getConstructor(Ljava/lang/String;)Ljavassist/CtConstructor;
    .locals 2
    .param p1, "desc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 931
    new-instance v0, Ljavassist/NotFoundException;

    const-string v1, "no such constructor"

    invoke-direct {v0, v1}, Ljavassist/NotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getConstructors()[Ljavassist/CtConstructor;
    .locals 1

    .line 915
    const/4 v0, 0x0

    new-array v0, v0, [Ljavassist/CtConstructor;

    return-object v0
.end method

.method public getDeclaredBehaviors()[Ljavassist/CtBehavior;
    .locals 1

    .line 907
    const/4 v0, 0x0

    new-array v0, v0, [Ljavassist/CtBehavior;

    return-object v0
.end method

.method public getDeclaredClasses()[Ljavassist/CtClass;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 670
    invoke-virtual {p0}, Ljavassist/CtClass;->getNestedClasses()[Ljavassist/CtClass;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaredConstructor([Ljavassist/CtClass;)Ljavassist/CtConstructor;
    .locals 2
    .param p1, "params"    # [Ljavassist/CtClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 951
    invoke-static {p1}, Ljavassist/bytecode/Descriptor;->ofConstructor([Ljavassist/CtClass;)Ljava/lang/String;

    move-result-object v0

    .line 952
    .local v0, "desc":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljavassist/CtClass;->getConstructor(Ljava/lang/String;)Ljavassist/CtConstructor;

    move-result-object v1

    return-object v1
.end method

.method public getDeclaredConstructors()[Ljavassist/CtConstructor;
    .locals 1

    .line 940
    const/4 v0, 0x0

    new-array v0, v0, [Ljavassist/CtConstructor;

    return-object v0
.end method

.method public getDeclaredField(Ljava/lang/String;)Ljavassist/CtField;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 884
    new-instance v0, Ljavassist/NotFoundException;

    invoke-direct {v0, p1}, Ljavassist/NotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDeclaredField(Ljava/lang/String;Ljava/lang/String;)Ljavassist/CtField;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 900
    new-instance v0, Ljavassist/NotFoundException;

    invoke-direct {v0, p1}, Ljavassist/NotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDeclaredFields()[Ljavassist/CtField;
    .locals 1

    .line 875
    const/4 v0, 0x0

    new-array v0, v0, [Ljavassist/CtField;

    return-object v0
.end method

.method public getDeclaredMethod(Ljava/lang/String;)Ljavassist/CtMethod;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 1046
    new-instance v0, Ljavassist/NotFoundException;

    invoke-direct {v0, p1}, Ljavassist/NotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDeclaredMethod(Ljava/lang/String;[Ljavassist/CtClass;)Ljavassist/CtMethod;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "params"    # [Ljavassist/CtClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 1019
    new-instance v0, Ljavassist/NotFoundException;

    invoke-direct {v0, p1}, Ljavassist/NotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDeclaredMethods()[Ljavassist/CtMethod;
    .locals 1

    .line 1003
    const/4 v0, 0x0

    new-array v0, v0, [Ljavassist/CtMethod;

    return-object v0
.end method

.method public getDeclaredMethods(Ljava/lang/String;)[Ljavassist/CtMethod;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 1033
    new-instance v0, Ljavassist/NotFoundException;

    invoke-direct {v0, p1}, Ljavassist/NotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDeclaringClass()Ljavassist/CtClass;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 782
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEnclosingBehavior()Ljavassist/CtBehavior;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 815
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getEnclosingMethod()Ljavassist/CtMethod;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 797
    invoke-virtual {p0}, Ljavassist/CtClass;->getEnclosingBehavior()Ljavassist/CtBehavior;

    move-result-object v0

    .line 798
    .local v0, "b":Ljavassist/CtBehavior;
    if-nez v0, :cond_0

    .line 799
    const/4 v1, 0x0

    return-object v1

    .line 800
    :cond_0
    instance-of v1, v0, Ljavassist/CtMethod;

    if-eqz v1, :cond_1

    .line 801
    move-object v1, v0

    check-cast v1, Ljavassist/CtMethod;

    return-object v1

    .line 803
    :cond_1
    new-instance v1, Ljavassist/NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljavassist/CtBehavior;->getLongName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is enclosing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavassist/NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getField(Ljava/lang/String;)Ljavassist/CtField;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 846
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljavassist/CtClass;->getField(Ljava/lang/String;Ljava/lang/String;)Ljavassist/CtField;

    move-result-object v0

    return-object v0
.end method

.method public getField(Ljava/lang/String;Ljava/lang/String;)Ljavassist/CtField;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 861
    new-instance v0, Ljavassist/NotFoundException;

    invoke-direct {v0, p1}, Ljavassist/NotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getField2(Ljava/lang/String;Ljava/lang/String;)Ljavassist/CtField;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;

    .line 867
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFields()[Ljavassist/CtField;
    .locals 1

    .line 839
    const/4 v0, 0x0

    new-array v0, v0, [Ljavassist/CtField;

    return-object v0
.end method

.method public getGenericSignature()Ljava/lang/String;
    .locals 1

    .line 412
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInterfaces()[Ljavassist/CtClass;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 750
    const/4 v0, 0x0

    new-array v0, v0, [Ljavassist/CtClass;

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

    .line 993
    new-instance v0, Ljavassist/NotFoundException;

    invoke-direct {v0, p1}, Ljavassist/NotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMethods()[Ljavassist/CtMethod;
    .locals 1

    .line 975
    const/4 v0, 0x0

    new-array v0, v0, [Ljavassist/CtMethod;

    return-object v0
.end method

.method public getModifiers()I
    .locals 1

    .line 591
    const/4 v0, 0x0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 363
    iget-object v0, p0, Ljavassist/CtClass;->qualifiedName:Ljava/lang/String;

    return-object v0
.end method

.method public getNestedClasses()[Ljavassist/CtClass;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 681
    const/4 v0, 0x0

    new-array v0, v0, [Ljavassist/CtClass;

    return-object v0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 3

    .line 380
    iget-object v0, p0, Ljavassist/CtClass;->qualifiedName:Ljava/lang/String;

    .line 381
    .local v0, "qname":Ljava/lang/String;
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 382
    .local v1, "index":I
    if-gez v1, :cond_0

    .line 383
    const/4 v2, 0x0

    return-object v2

    .line 384
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public declared-synchronized getRefClasses()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 528
    :try_start_0
    invoke-virtual {p0}, Ljavassist/CtClass;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v0

    .line 529
    .local v0, "cf":Ljavassist/bytecode/ClassFile;
    if-eqz v0, :cond_0

    .line 530
    new-instance v1, Ljavassist/CtClass$1;

    invoke-direct {v1, p0}, Ljavassist/CtClass$1;-><init>(Ljavassist/CtClass;)V

    .line 547
    .local v1, "cm":Ljavassist/ClassMap;
    invoke-virtual {v0, v1}, Ljavassist/bytecode/ClassFile;->getRefClasses(Ljava/util/Map;)V

    .line 548
    invoke-virtual {v1}, Ljavassist/ClassMap;->values()Ljava/util/Collection;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    .line 550
    .end local v1    # "cm":Ljavassist/ClassMap;
    .end local p0    # "this":Ljavassist/CtClass;
    :cond_0
    const/4 v1, 0x0

    monitor-exit p0

    return-object v1

    .line 527
    .end local v0    # "cf":Ljavassist/bytecode/ClassFile;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getSimpleName()Ljava/lang/String;
    .locals 3

    .line 369
    iget-object v0, p0, Ljavassist/CtClass;->qualifiedName:Ljava/lang/String;

    .line 370
    .local v0, "qname":Ljava/lang/String;
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 371
    .local v1, "index":I
    if-gez v1, :cond_0

    .line 372
    return-object v0

    .line 373
    :cond_0
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getSuperclass()Ljavassist/CtClass;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 724
    const/4 v0, 0x0

    return-object v0
.end method

.method public getURL()Ljava/net/URL;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 267
    new-instance v0, Ljavassist/NotFoundException;

    invoke-virtual {p0}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavassist/NotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasAnnotation(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 602
    .local p1, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavassist/CtClass;->hasAnnotation(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasAnnotation(Ljava/lang/String;)Z
    .locals 1
    .param p1, "annotationTypeName"    # Ljava/lang/String;

    .line 613
    const/4 v0, 0x0

    return v0
.end method

.method incGetCounter()V
    .locals 0

    .line 1491
    return-void
.end method

.method public instrument(Ljavassist/CodeConverter;)V
    .locals 0
    .param p1, "converter"    # Ljavassist/CodeConverter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 1246
    invoke-virtual {p0}, Ljavassist/CtClass;->checkModify()V

    .line 1247
    return-void
.end method

.method public instrument(Ljavassist/expr/ExprEditor;)V
    .locals 0
    .param p1, "editor"    # Ljavassist/expr/ExprEditor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 1260
    invoke-virtual {p0}, Ljavassist/CtClass;->checkModify()V

    .line 1261
    return-void
.end method

.method public isAnnotation()Z
    .locals 1

    .line 568
    const/4 v0, 0x0

    return v0
.end method

.method public isArray()Z
    .locals 1

    .line 332
    const/4 v0, 0x0

    return v0
.end method

.method public isEnum()Z
    .locals 1

    .line 578
    const/4 v0, 0x0

    return v0
.end method

.method public isFrozen()Z
    .locals 1

    .line 282
    const/4 v0, 0x1

    return v0
.end method

.method public isInterface()Z
    .locals 1

    .line 558
    const/4 v0, 0x0

    return v0
.end method

.method public isKotlin()Z
    .locals 1

    .line 340
    const-string v0, "kotlin.Metadata"

    invoke-virtual {p0, v0}, Ljavassist/CtClass;->hasAnnotation(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isModified()Z
    .locals 1

    .line 273
    const/4 v0, 0x0

    return v0
.end method

.method public isPrimitive()Z
    .locals 1

    .line 326
    const/4 v0, 0x0

    return v0
.end method

.method public makeClassInitializer()Ljavassist/CtConstructor;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 1059
    new-instance v0, Ljavassist/CannotCompileException;

    const-string v1, "not a class"

    invoke-direct {v0, v1}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected makeFileOutput(Ljava/lang/String;)Ljava/io/DataOutputStream;
    .locals 6
    .param p1, "directoryName"    # Ljava/lang/String;

    .line 1564
    invoke-virtual {p0}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1565
    .local v0, "classname":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-char v2, Ljava/io/File;->separatorChar:C

    .line 1566
    const/16 v3, 0x2e

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".class"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1567
    .local v1, "filename":Ljava/lang/String;
    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 1568
    .local v2, "pos":I
    if-lez v2, :cond_0

    .line 1569
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1570
    .local v3, "dir":Ljava/lang/String;
    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1571
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 1574
    .end local v3    # "dir":Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/io/DataOutputStream;

    new-instance v4, Ljava/io/BufferedOutputStream;

    new-instance v5, Ljavassist/CtClass$DelayedFileOutputStream;

    invoke-direct {v5, v1}, Ljavassist/CtClass$DelayedFileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v3
.end method

.method public makeNestedClass(Ljava/lang/String;Z)Ljavassist/CtClass;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "isStatic"    # Z

    .line 830
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a class"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public makeUniqueName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;

    .line 1681
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not available in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public prune()V
    .locals 0

    .line 1486
    return-void
.end method

.method public rebuildClassFile()V
    .locals 0

    .line 1506
    return-void
.end method

.method public removeConstructor(Ljavassist/CtConstructor;)V
    .locals 0
    .param p1, "c"    # Ljavassist/CtConstructor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 1081
    invoke-virtual {p0}, Ljavassist/CtClass;->checkModify()V

    .line 1082
    return-void
.end method

.method public removeField(Ljavassist/CtField;)V
    .locals 0
    .param p1, "f"    # Ljavassist/CtField;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 1185
    invoke-virtual {p0}, Ljavassist/CtClass;->checkModify()V

    .line 1186
    return-void
.end method

.method public removeMethod(Ljavassist/CtMethod;)V
    .locals 0
    .param p1, "m"    # Ljavassist/CtMethod;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 1098
    invoke-virtual {p0}, Ljavassist/CtClass;->checkModify()V

    .line 1099
    return-void
.end method

.method public replaceClassName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "oldName"    # Ljava/lang/String;
    .param p2, "newName"    # Ljava/lang/String;

    .line 494
    invoke-virtual {p0}, Ljavassist/CtClass;->checkModify()V

    .line 495
    return-void
.end method

.method public replaceClassName(Ljavassist/ClassMap;)V
    .locals 0
    .param p1, "map"    # Ljavassist/ClassMap;

    .line 515
    invoke-virtual {p0}, Ljavassist/CtClass;->checkModify()V

    .line 516
    return-void
.end method

.method public setAttribute(Ljava/lang/String;[B)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "data"    # [B

    .line 1232
    invoke-virtual {p0}, Ljavassist/CtClass;->checkModify()V

    .line 1233
    return-void
.end method

.method public setGenericSignature(Ljava/lang/String;)V
    .locals 0
    .param p1, "sig"    # Ljava/lang/String;

    .line 484
    invoke-virtual {p0}, Ljavassist/CtClass;->checkModify()V

    return-void
.end method

.method public setInterfaces([Ljavassist/CtClass;)V
    .locals 0
    .param p1, "list"    # [Ljavassist/CtClass;

    .line 763
    invoke-virtual {p0}, Ljavassist/CtClass;->checkModify()V

    .line 764
    return-void
.end method

.method public setModifiers(I)V
    .locals 0
    .param p1, "mod"    # I

    .line 696
    invoke-virtual {p0}, Ljavassist/CtClass;->checkModify()V

    .line 697
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 393
    invoke-virtual {p0}, Ljavassist/CtClass;->checkModify()V

    .line 394
    if-eqz p1, :cond_0

    .line 395
    iput-object p1, p0, Ljavassist/CtClass;->qualifiedName:Ljava/lang/String;

    .line 396
    :cond_0
    return-void
.end method

.method public setSuperclass(Ljavassist/CtClass;)V
    .locals 0
    .param p1, "clazz"    # Ljavassist/CtClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 741
    invoke-virtual {p0}, Ljavassist/CtClass;->checkModify()V

    .line 742
    return-void
.end method

.method public stopPruning(Z)Z
    .locals 1
    .param p1, "stop"    # Z

    .line 1454
    const/4 v0, 0x1

    return v0
.end method

.method public subclassOf(Ljavassist/CtClass;)Z
    .locals 1
    .param p1, "superclass"    # Ljavassist/CtClass;

    .line 708
    const/4 v0, 0x0

    return v0
.end method

.method public subtypeOf(Ljavassist/CtClass;)Z
    .locals 2
    .param p1, "clazz"    # Ljavassist/CtClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 357
    if-eq p0, p1, :cond_1

    invoke-virtual {p0}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

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

.method public toBytecode(Ljava/io/DataOutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1668
    new-instance v0, Ljavassist/CannotCompileException;

    const-string v1, "not a class"

    invoke-direct {v0, v1}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toBytecode()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 1516
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1517
    .local v0, "barray":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1519
    .local v1, "out":Ljava/io/DataOutputStream;
    :try_start_0
    invoke-virtual {p0, v1}, Ljavassist/CtClass;->toBytecode(Ljava/io/DataOutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1522
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 1523
    nop

    .line 1525
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2

    .line 1522
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 1523
    throw v2
.end method

.method public toClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 1298
    invoke-virtual {p0}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljavassist/ClassPool;->toClass(Ljavassist/CtClass;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public toClass(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 1325
    .local p1, "neighbor":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljavassist/ClassPool;->toClass(Ljavassist/CtClass;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public final toClass(Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 2
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1408
    invoke-virtual {p0}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1, v1}, Ljavassist/ClassPool;->toClass(Ljavassist/CtClass;Ljava/lang/Class;Ljava/lang/ClassLoader;Ljava/security/ProtectionDomain;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public toClass(Ljava/lang/ClassLoader;Ljava/security/ProtectionDomain;)Ljava/lang/Class;
    .locals 2
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .param p2, "domain"    # Ljava/security/ProtectionDomain;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/security/ProtectionDomain;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 1388
    invoke-virtual {p0}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object v0

    .line 1389
    .local v0, "cp":Ljavassist/ClassPool;
    if-nez p1, :cond_0

    .line 1390
    invoke-virtual {v0}, Ljavassist/ClassPool;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    .line 1392
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1, p2}, Ljavassist/ClassPool;->toClass(Ljavassist/CtClass;Ljava/lang/Class;Ljava/lang/ClassLoader;Ljava/security/ProtectionDomain;)Ljava/lang/Class;

    move-result-object v1

    return-object v1
.end method

.method public toClass(Ljava/lang/invoke/MethodHandles$Lookup;)Ljava/lang/Class;
    .locals 1
    .param p1, "lookup"    # Ljava/lang/invoke/MethodHandles$Lookup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/invoke/MethodHandles$Lookup;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 1351
    invoke-virtual {p0}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljavassist/ClassPool;->toClass(Ljavassist/CtClass;Ljava/lang/invoke/MethodHandles$Lookup;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 203
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 204
    .local v0, "buf":Ljava/lang/StringBuffer;
    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 205
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 206
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 207
    invoke-virtual {p0, v0}, Ljavassist/CtClass;->extendToString(Ljava/lang/StringBuffer;)V

    .line 208
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 209
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeFile()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;,
            Ljava/io/IOException;,
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 1539
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljavassist/CtClass;->writeFile(Ljava/lang/String;)V

    .line 1540
    return-void
.end method

.method public writeFile(Ljava/lang/String;)V
    .locals 2
    .param p1, "directoryName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1554
    invoke-virtual {p0, p1}, Ljavassist/CtClass;->makeFileOutput(Ljava/lang/String;)Ljava/io/DataOutputStream;

    move-result-object v0

    .line 1556
    .local v0, "out":Ljava/io/DataOutputStream;
    :try_start_0
    invoke-virtual {p0, v0}, Ljavassist/CtClass;->toBytecode(Ljava/io/DataOutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1559
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 1560
    nop

    .line 1561
    return-void

    .line 1559
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 1560
    throw v1
.end method
