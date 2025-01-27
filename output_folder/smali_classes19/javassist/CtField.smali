.class public Ljavassist/CtField;
.super Ljavassist/CtMember;
.source "CtField.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavassist/CtField$MultiArrayInitializer;,
        Ljavassist/CtField$ArrayInitializer;,
        Ljavassist/CtField$StringInitializer;,
        Ljavassist/CtField$DoubleInitializer;,
        Ljavassist/CtField$FloatInitializer;,
        Ljavassist/CtField$LongInitializer;,
        Ljavassist/CtField$IntInitializer;,
        Ljavassist/CtField$MethodInitializer;,
        Ljavassist/CtField$NewInitializer;,
        Ljavassist/CtField$ParamInitializer;,
        Ljavassist/CtField$PtreeInitializer;,
        Ljavassist/CtField$CodeInitializer;,
        Ljavassist/CtField$CodeInitializer0;,
        Ljavassist/CtField$Initializer;
    }
.end annotation


# static fields
.field static final javaLangString:Ljava/lang/String; = "java.lang.String"


# instance fields
.field protected fieldInfo:Ljavassist/bytecode/FieldInfo;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljavassist/CtClass;)V
    .locals 4
    .param p1, "typeDesc"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "clazz"    # Ljavassist/CtClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 107
    invoke-direct {p0, p3}, Ljavassist/CtMember;-><init>(Ljavassist/CtClass;)V

    .line 108
    invoke-virtual {p3}, Ljavassist/CtClass;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v0

    .line 109
    .local v0, "cf":Ljavassist/bytecode/ClassFile;
    if-eqz v0, :cond_0

    .line 113
    new-instance v1, Ljavassist/bytecode/FieldInfo;

    invoke-virtual {v0}, Ljavassist/bytecode/ClassFile;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v2

    invoke-direct {v1, v2, p2, p1}, Ljavassist/bytecode/FieldInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Ljavassist/CtField;->fieldInfo:Ljavassist/bytecode/FieldInfo;

    .line 114
    return-void

    .line 110
    :cond_0
    new-instance v1, Ljavassist/CannotCompileException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad declaring class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 111
    invoke-virtual {p3}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(Ljavassist/CtClass;Ljava/lang/String;Ljavassist/CtClass;)V
    .locals 1
    .param p1, "type"    # Ljavassist/CtClass;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "declaring"    # Ljavassist/CtClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 71
    invoke-static {p1}, Ljavassist/bytecode/Descriptor;->of(Ljavassist/CtClass;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Ljavassist/CtField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljavassist/CtClass;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Ljavassist/CtField;Ljavassist/CtClass;)V
    .locals 6
    .param p1, "src"    # Ljavassist/CtField;
    .param p2, "declaring"    # Ljavassist/CtClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 94
    iget-object v0, p1, Ljavassist/CtField;->fieldInfo:Ljavassist/bytecode/FieldInfo;

    invoke-virtual {v0}, Ljavassist/bytecode/FieldInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Ljavassist/CtField;->fieldInfo:Ljavassist/bytecode/FieldInfo;

    invoke-virtual {v1}, Ljavassist/bytecode/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Ljavassist/CtField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljavassist/CtClass;)V

    .line 96
    iget-object v0, p0, Ljavassist/CtField;->fieldInfo:Ljavassist/bytecode/FieldInfo;

    .line 97
    .local v0, "fi":Ljavassist/bytecode/FieldInfo;
    iget-object v1, p1, Ljavassist/CtField;->fieldInfo:Ljavassist/bytecode/FieldInfo;

    invoke-virtual {v1}, Ljavassist/bytecode/FieldInfo;->getAccessFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Ljavassist/bytecode/FieldInfo;->setAccessFlags(I)V

    .line 98
    invoke-virtual {v0}, Ljavassist/bytecode/FieldInfo;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v1

    .line 99
    .local v1, "cp":Ljavassist/bytecode/ConstPool;
    iget-object v2, p1, Ljavassist/CtField;->fieldInfo:Ljavassist/bytecode/FieldInfo;

    invoke-virtual {v2}, Ljavassist/bytecode/FieldInfo;->getAttributes()Ljava/util/List;

    move-result-object v2

    .line 100
    .local v2, "attributes":Ljava/util/List;, "Ljava/util/List<Ljavassist/bytecode/AttributeInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavassist/bytecode/AttributeInfo;

    .line 101
    .local v4, "ainfo":Ljavassist/bytecode/AttributeInfo;
    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Ljavassist/bytecode/AttributeInfo;->copy(Ljavassist/bytecode/ConstPool;Ljava/util/Map;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljavassist/bytecode/FieldInfo;->addAttribute(Ljavassist/bytecode/AttributeInfo;)V

    .end local v4    # "ainfo":Ljavassist/bytecode/AttributeInfo;
    goto :goto_0

    .line 102
    :cond_0
    return-void
.end method

.method constructor <init>(Ljavassist/bytecode/FieldInfo;Ljavassist/CtClass;)V
    .locals 0
    .param p1, "fi"    # Ljavassist/bytecode/FieldInfo;
    .param p2, "clazz"    # Ljavassist/CtClass;

    .line 117
    invoke-direct {p0, p2}, Ljavassist/CtMember;-><init>(Ljavassist/CtClass;)V

    .line 118
    iput-object p1, p0, Ljavassist/CtField;->fieldInfo:Ljavassist/bytecode/FieldInfo;

    .line 119
    return-void
.end method

.method private getAnnotations(Z)[Ljava/lang/Object;
    .locals 4
    .param p1, "ignoreNotFound"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 326
    invoke-virtual {p0}, Ljavassist/CtField;->getFieldInfo2()Ljavassist/bytecode/FieldInfo;

    move-result-object v0

    .line 327
    .local v0, "fi":Ljavassist/bytecode/FieldInfo;
    nop

    .line 328
    const-string v1, "RuntimeInvisibleAnnotations"

    invoke-virtual {v0, v1}, Ljavassist/bytecode/FieldInfo;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v1

    check-cast v1, Ljavassist/bytecode/AnnotationsAttribute;

    .line 329
    .local v1, "ainfo":Ljavassist/bytecode/AnnotationsAttribute;
    nop

    .line 330
    const-string v2, "RuntimeVisibleAnnotations"

    invoke-virtual {v0, v2}, Ljavassist/bytecode/FieldInfo;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v2

    check-cast v2, Ljavassist/bytecode/AnnotationsAttribute;

    .line 331
    .local v2, "ainfo2":Ljavassist/bytecode/AnnotationsAttribute;
    invoke-virtual {p0}, Ljavassist/CtField;->getDeclaringClass()Ljavassist/CtClass;

    move-result-object v3

    invoke-virtual {v3}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object v3

    invoke-static {p1, v3, v1, v2}, Ljavassist/CtClassType;->toAnnotationType(ZLjavassist/ClassPool;Ljavassist/bytecode/AnnotationsAttribute;Ljavassist/bytecode/AnnotationsAttribute;)[Ljava/lang/Object;

    move-result-object v3

    return-object v3
.end method

.method public static make(Ljava/lang/String;Ljavassist/CtClass;)Ljavassist/CtField;
    .locals 3
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "declaring"    # Ljavassist/CtClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 166
    new-instance v0, Ljavassist/compiler/Javac;

    invoke-direct {v0, p1}, Ljavassist/compiler/Javac;-><init>(Ljavassist/CtClass;)V

    .line 168
    .local v0, "compiler":Ljavassist/compiler/Javac;
    :try_start_0
    invoke-virtual {v0, p0}, Ljavassist/compiler/Javac;->compile(Ljava/lang/String;)Ljavassist/CtMember;

    move-result-object v1

    .line 169
    .local v1, "obj":Ljavassist/CtMember;
    instance-of v2, v1, Ljavassist/CtField;

    if-eqz v2, :cond_0

    .line 170
    move-object v2, v1

    check-cast v2, Ljavassist/CtField;
    :try_end_0
    .catch Ljavassist/compiler/CompileError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 174
    .end local v1    # "obj":Ljavassist/CtMember;
    :cond_0
    nop

    .line 176
    new-instance v1, Ljavassist/CannotCompileException;

    const-string v2, "not a field"

    invoke-direct {v1, v2}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 172
    :catch_0
    move-exception v1

    .line 173
    .local v1, "e":Ljavassist/compiler/CompileError;
    new-instance v2, Ljavassist/CannotCompileException;

    invoke-direct {v2, v1}, Ljavassist/CannotCompileException;-><init>(Ljavassist/compiler/CompileError;)V

    throw v2
.end method


# virtual methods
.method protected extendToString(Ljava/lang/StringBuffer;)V
    .locals 2
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .line 132
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 133
    invoke-virtual {p0}, Ljavassist/CtField;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 134
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 135
    iget-object v0, p0, Ljavassist/CtField;->fieldInfo:Ljavassist/bytecode/FieldInfo;

    invoke-virtual {v0}, Ljavassist/bytecode/FieldInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 136
    return-void
.end method

.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
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

    .line 285
    .local p1, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljavassist/CtField;->getFieldInfo2()Ljavassist/bytecode/FieldInfo;

    move-result-object v0

    .line 286
    .local v0, "fi":Ljavassist/bytecode/FieldInfo;
    nop

    .line 287
    const-string v1, "RuntimeInvisibleAnnotations"

    invoke-virtual {v0, v1}, Ljavassist/bytecode/FieldInfo;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v1

    check-cast v1, Ljavassist/bytecode/AnnotationsAttribute;

    .line 288
    .local v1, "ainfo":Ljavassist/bytecode/AnnotationsAttribute;
    nop

    .line 289
    const-string v2, "RuntimeVisibleAnnotations"

    invoke-virtual {v0, v2}, Ljavassist/bytecode/FieldInfo;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v2

    check-cast v2, Ljavassist/bytecode/AnnotationsAttribute;

    .line 290
    .local v2, "ainfo2":Ljavassist/bytecode/AnnotationsAttribute;
    invoke-virtual {p0}, Ljavassist/CtField;->getDeclaringClass()Ljavassist/CtClass;

    move-result-object v3

    invoke-virtual {v3}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object v3

    invoke-static {p1, v3, v1, v2}, Ljavassist/CtClassType;->getAnnotationType(Ljava/lang/Class;Ljavassist/ClassPool;Ljavassist/bytecode/AnnotationsAttribute;Ljavassist/bytecode/AnnotationsAttribute;)Ljava/lang/Object;

    move-result-object v3

    return-object v3
.end method

.method public getAnnotations()[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 303
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljavassist/CtField;->getAnnotations(Z)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAttribute(Ljava/lang/String;)[B
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 468
    iget-object v0, p0, Ljavassist/CtField;->fieldInfo:Ljavassist/bytecode/FieldInfo;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/FieldInfo;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v0

    .line 469
    .local v0, "ai":Ljavassist/bytecode/AttributeInfo;
    if-nez v0, :cond_0

    .line 470
    const/4 v1, 0x0

    return-object v1

    .line 471
    :cond_0
    invoke-virtual {v0}, Ljavassist/bytecode/AttributeInfo;->get()[B

    move-result-object v1

    return-object v1
.end method

.method public getAvailableAnnotations()[Ljava/lang/Object;
    .locals 3

    .line 318
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Ljavassist/CtField;->getAnnotations(Z)[Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 320
    :catch_0
    move-exception v0

    .line 321
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unexpected exception"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getConstantValue()Ljava/lang/Object;
    .locals 5

    .line 429
    iget-object v0, p0, Ljavassist/CtField;->fieldInfo:Ljavassist/bytecode/FieldInfo;

    invoke-virtual {v0}, Ljavassist/bytecode/FieldInfo;->getConstantValue()I

    move-result v0

    .line 430
    .local v0, "index":I
    if-nez v0, :cond_0

    .line 431
    const/4 v1, 0x0

    return-object v1

    .line 433
    :cond_0
    iget-object v1, p0, Ljavassist/CtField;->fieldInfo:Ljavassist/bytecode/FieldInfo;

    invoke-virtual {v1}, Ljavassist/bytecode/FieldInfo;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v1

    .line 434
    .local v1, "cp":Ljavassist/bytecode/ConstPool;
    invoke-virtual {v1, v0}, Ljavassist/bytecode/ConstPool;->getTag(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 450
    :pswitch_0
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bad tag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1, v0}, Ljavassist/bytecode/ConstPool;->getTag(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 448
    :pswitch_1
    invoke-virtual {v1, v0}, Ljavassist/bytecode/ConstPool;->getStringInfo(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 440
    :pswitch_2
    invoke-virtual {v1, v0}, Ljavassist/bytecode/ConstPool;->getDoubleInfo(I)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    return-object v2

    .line 436
    :pswitch_3
    invoke-virtual {v1, v0}, Ljavassist/bytecode/ConstPool;->getLongInfo(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    return-object v2

    .line 438
    :pswitch_4
    invoke-virtual {v1, v0}, Ljavassist/bytecode/ConstPool;->getFloatInfo(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    return-object v2

    .line 442
    :pswitch_5
    invoke-virtual {v1, v0}, Ljavassist/bytecode/ConstPool;->getIntegerInfo(I)I

    move-result v2

    .line 444
    .local v2, "value":I
    iget-object v3, p0, Ljavassist/CtField;->fieldInfo:Ljavassist/bytecode/FieldInfo;

    invoke-virtual {v3}, Ljavassist/bytecode/FieldInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Z"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 445
    if-eqz v2, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    return-object v3

    .line 446
    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getDeclaringClass()Ljavassist/CtClass;
    .locals 1

    .line 214
    invoke-super {p0}, Ljavassist/CtMember;->getDeclaringClass()Ljavassist/CtClass;

    move-result-object v0

    return-object v0
.end method

.method public getFieldInfo()Ljavassist/bytecode/FieldInfo;
    .locals 1

    .line 183
    iget-object v0, p0, Ljavassist/CtField;->declaringClass:Ljavassist/CtClass;

    invoke-virtual {v0}, Ljavassist/CtClass;->checkModify()V

    .line 184
    iget-object v0, p0, Ljavassist/CtField;->fieldInfo:Ljavassist/bytecode/FieldInfo;

    return-object v0
.end method

.method public getFieldInfo2()Ljavassist/bytecode/FieldInfo;
    .locals 1

    .line 206
    iget-object v0, p0, Ljavassist/CtField;->fieldInfo:Ljavassist/bytecode/FieldInfo;

    return-object v0
.end method

.method public getGenericSignature()Ljava/lang/String;
    .locals 2

    .line 363
    iget-object v0, p0, Ljavassist/CtField;->fieldInfo:Ljavassist/bytecode/FieldInfo;

    .line 364
    const-string v1, "Signature"

    invoke-virtual {v0, v1}, Ljavassist/bytecode/FieldInfo;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/SignatureAttribute;

    .line 365
    .local v0, "sa":Ljavassist/bytecode/SignatureAttribute;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljavassist/bytecode/SignatureAttribute;->getSignature()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method getInit()Ljavassist/CtField$Initializer;
    .locals 2

    .line 143
    invoke-virtual {p0}, Ljavassist/CtField;->getInitAST()Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    .line 144
    .local v0, "tree":Ljavassist/compiler/ast/ASTree;
    if-nez v0, :cond_0

    .line 145
    const/4 v1, 0x0

    return-object v1

    .line 146
    :cond_0
    invoke-static {v0}, Ljavassist/CtField$Initializer;->byExpr(Ljavassist/compiler/ast/ASTree;)Ljavassist/CtField$Initializer;

    move-result-object v1

    return-object v1
.end method

.method protected getInitAST()Ljavassist/compiler/ast/ASTree;
    .locals 1

    .line 139
    const/4 v0, 0x0

    return-object v0
.end method

.method public getModifiers()I
    .locals 1

    .line 240
    iget-object v0, p0, Ljavassist/CtField;->fieldInfo:Ljavassist/bytecode/FieldInfo;

    invoke-virtual {v0}, Ljavassist/bytecode/FieldInfo;->getAccessFlags()I

    move-result v0

    invoke-static {v0}, Ljavassist/bytecode/AccessFlag;->toModifier(I)I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 222
    iget-object v0, p0, Ljavassist/CtField;->fieldInfo:Ljavassist/bytecode/FieldInfo;

    invoke-virtual {v0}, Ljavassist/bytecode/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .line 351
    iget-object v0, p0, Ljavassist/CtField;->fieldInfo:Ljavassist/bytecode/FieldInfo;

    invoke-virtual {v0}, Ljavassist/bytecode/FieldInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljavassist/CtClass;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 388
    iget-object v0, p0, Ljavassist/CtField;->fieldInfo:Ljavassist/bytecode/FieldInfo;

    invoke-virtual {v0}, Ljavassist/bytecode/FieldInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljavassist/CtField;->declaringClass:Ljavassist/CtClass;

    .line 389
    invoke-virtual {v1}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object v1

    .line 388
    invoke-static {v0, v1}, Ljavassist/bytecode/Descriptor;->toCtClass(Ljava/lang/String;Ljavassist/ClassPool;)Ljavassist/CtClass;

    move-result-object v0

    return-object v0
.end method

.method public hasAnnotation(Ljava/lang/String;)Z
    .locals 4
    .param p1, "typeName"    # Ljava/lang/String;

    .line 263
    invoke-virtual {p0}, Ljavassist/CtField;->getFieldInfo2()Ljavassist/bytecode/FieldInfo;

    move-result-object v0

    .line 264
    .local v0, "fi":Ljavassist/bytecode/FieldInfo;
    nop

    .line 265
    const-string v1, "RuntimeInvisibleAnnotations"

    invoke-virtual {v0, v1}, Ljavassist/bytecode/FieldInfo;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v1

    check-cast v1, Ljavassist/bytecode/AnnotationsAttribute;

    .line 266
    .local v1, "ainfo":Ljavassist/bytecode/AnnotationsAttribute;
    nop

    .line 267
    const-string v2, "RuntimeVisibleAnnotations"

    invoke-virtual {v0, v2}, Ljavassist/bytecode/FieldInfo;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v2

    check-cast v2, Ljavassist/bytecode/AnnotationsAttribute;

    .line 268
    .local v2, "ainfo2":Ljavassist/bytecode/AnnotationsAttribute;
    invoke-virtual {p0}, Ljavassist/CtField;->getDeclaringClass()Ljavassist/CtClass;

    move-result-object v3

    invoke-virtual {v3}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object v3

    invoke-static {p1, v3, v1, v2}, Ljavassist/CtClassType;->hasAnnotationType(Ljava/lang/String;Ljavassist/ClassPool;Ljavassist/bytecode/AnnotationsAttribute;Ljavassist/bytecode/AnnotationsAttribute;)Z

    move-result v3

    return v3
.end method

.method public setAttribute(Ljava/lang/String;[B)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "data"    # [B

    .line 486
    iget-object v0, p0, Ljavassist/CtField;->declaringClass:Ljavassist/CtClass;

    invoke-virtual {v0}, Ljavassist/CtClass;->checkModify()V

    .line 487
    iget-object v0, p0, Ljavassist/CtField;->fieldInfo:Ljavassist/bytecode/FieldInfo;

    new-instance v1, Ljavassist/bytecode/AttributeInfo;

    invoke-virtual {v0}, Ljavassist/bytecode/FieldInfo;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Ljavassist/bytecode/AttributeInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;[B)V

    invoke-virtual {v0, v1}, Ljavassist/bytecode/FieldInfo;->addAttribute(Ljavassist/bytecode/AttributeInfo;)V

    .line 489
    return-void
.end method

.method public setGenericSignature(Ljava/lang/String;)V
    .locals 3
    .param p1, "sig"    # Ljava/lang/String;

    .line 380
    iget-object v0, p0, Ljavassist/CtField;->declaringClass:Ljavassist/CtClass;

    invoke-virtual {v0}, Ljavassist/CtClass;->checkModify()V

    .line 381
    iget-object v0, p0, Ljavassist/CtField;->fieldInfo:Ljavassist/bytecode/FieldInfo;

    new-instance v1, Ljavassist/bytecode/SignatureAttribute;

    invoke-virtual {v0}, Ljavassist/bytecode/FieldInfo;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljavassist/bytecode/SignatureAttribute;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavassist/bytecode/FieldInfo;->addAttribute(Ljavassist/bytecode/AttributeInfo;)V

    .line 382
    return-void
.end method

.method public setModifiers(I)V
    .locals 2
    .param p1, "mod"    # I

    .line 250
    iget-object v0, p0, Ljavassist/CtField;->declaringClass:Ljavassist/CtClass;

    invoke-virtual {v0}, Ljavassist/CtClass;->checkModify()V

    .line 251
    iget-object v0, p0, Ljavassist/CtField;->fieldInfo:Ljavassist/bytecode/FieldInfo;

    invoke-static {p1}, Ljavassist/bytecode/AccessFlag;->of(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljavassist/bytecode/FieldInfo;->setAccessFlags(I)V

    .line 252
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .param p1, "newName"    # Ljava/lang/String;

    .line 229
    iget-object v0, p0, Ljavassist/CtField;->declaringClass:Ljavassist/CtClass;

    invoke-virtual {v0}, Ljavassist/CtClass;->checkModify()V

    .line 230
    iget-object v0, p0, Ljavassist/CtField;->fieldInfo:Ljavassist/bytecode/FieldInfo;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/FieldInfo;->setName(Ljava/lang/String;)V

    .line 231
    return-void
.end method

.method public setType(Ljavassist/CtClass;)V
    .locals 2
    .param p1, "clazz"    # Ljavassist/CtClass;

    .line 407
    iget-object v0, p0, Ljavassist/CtField;->declaringClass:Ljavassist/CtClass;

    invoke-virtual {v0}, Ljavassist/CtClass;->checkModify()V

    .line 408
    iget-object v0, p0, Ljavassist/CtField;->fieldInfo:Ljavassist/bytecode/FieldInfo;

    invoke-static {p1}, Ljavassist/bytecode/Descriptor;->of(Ljavassist/CtClass;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavassist/bytecode/FieldInfo;->setDescriptor(Ljava/lang/String;)V

    .line 409
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavassist/CtField;->getDeclaringClass()Ljavassist/CtClass;

    move-result-object v1

    invoke-virtual {v1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljavassist/CtField;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljavassist/CtField;->fieldInfo:Ljavassist/bytecode/FieldInfo;

    .line 127
    invoke-virtual {v1}, Ljavassist/bytecode/FieldInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 126
    return-object v0
.end method
