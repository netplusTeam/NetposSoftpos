.class public Lbsh/ClassGeneratorUtil;
.super Ljava/lang/Object;
.source "ClassGeneratorUtil.java"

# interfaces
.implements Lbsh/org/objectweb/asm/Constants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbsh/ClassGeneratorUtil$ConstructorArgs;
    }
.end annotation


# static fields
.field static final BSHCONSTRUCTORS:Ljava/lang/String; = "_bshConstructors"

.field static final BSHINIT:Ljava/lang/String; = "_bshInstanceInitializer"

.field static final BSHSTATIC:Ljava/lang/String; = "_bshStatic"

.field static final BSHSUPER:Ljava/lang/String; = "_bshSuper"

.field static final BSHTHIS:Ljava/lang/String; = "_bshThis"

.field static final DEFAULTCONSTRUCTOR:I = -0x1

.field static final OBJECT:Ljava/lang/String; = "Ljava/lang/Object;"


# instance fields
.field classModifiers:Lbsh/Modifiers;

.field className:Ljava/lang/String;

.field constructors:[Lbsh/DelayedEvalBshMethod;

.field fqClassName:Ljava/lang/String;

.field interfaces:[Ljava/lang/Class;

.field isInterface:Z

.field methods:[Lbsh/DelayedEvalBshMethod;

.field superClass:Ljava/lang/Class;

.field superClassName:Ljava/lang/String;

.field superConstructors:[Ljava/lang/reflect/Constructor;

.field vars:[Lbsh/Variable;


# direct methods
.method public constructor <init>(Lbsh/Modifiers;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Lbsh/Variable;[Lbsh/DelayedEvalBshMethod;Z)V
    .locals 3
    .param p1, "classModifiers"    # Lbsh/Modifiers;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "superClass"    # Ljava/lang/Class;
    .param p5, "interfaces"    # [Ljava/lang/Class;
    .param p6, "vars"    # [Lbsh/Variable;
    .param p7, "bshmethods"    # [Lbsh/DelayedEvalBshMethod;
    .param p8, "isInterface"    # Z

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object p1, p0, Lbsh/ClassGeneratorUtil;->classModifiers:Lbsh/Modifiers;

    .line 133
    iput-object p2, p0, Lbsh/ClassGeneratorUtil;->className:Ljava/lang/String;

    .line 134
    if-eqz p3, :cond_0

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    invoke-virtual {p3, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbsh/ClassGeneratorUtil;->fqClassName:Ljava/lang/String;

    goto :goto_0

    .line 137
    :cond_0
    iput-object p2, p0, Lbsh/ClassGeneratorUtil;->fqClassName:Ljava/lang/String;

    .line 138
    :goto_0
    if-nez p4, :cond_1

    .line 139
    const-class p4, Ljava/lang/Object;

    .line 140
    :cond_1
    iput-object p4, p0, Lbsh/ClassGeneratorUtil;->superClass:Ljava/lang/Class;

    .line 141
    invoke-static {p4}, Lbsh/org/objectweb/asm/Type;->getInternalName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbsh/ClassGeneratorUtil;->superClassName:Ljava/lang/String;

    .line 142
    if-nez p5, :cond_2

    .line 143
    const/4 v0, 0x0

    new-array p5, v0, [Ljava/lang/Class;

    .line 144
    :cond_2
    iput-object p5, p0, Lbsh/ClassGeneratorUtil;->interfaces:[Ljava/lang/Class;

    .line 145
    iput-object p6, p0, Lbsh/ClassGeneratorUtil;->vars:[Lbsh/Variable;

    .line 147
    invoke-virtual {p4}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    iput-object v0, p0, Lbsh/ClassGeneratorUtil;->superConstructors:[Ljava/lang/reflect/Constructor;

    .line 148
    iput-boolean p8, p0, Lbsh/ClassGeneratorUtil;->isInterface:Z

    .line 150
    invoke-direct {p0, p2, p7}, Lbsh/ClassGeneratorUtil;->splitMethodsAndConstructors(Ljava/lang/String;[Lbsh/DelayedEvalBshMethod;)V

    .line 151
    return-void
.end method

.method static classContainsMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 7
    .param p0, "clas"    # Ljava/lang/Class;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "paramTypes"    # [Ljava/lang/String;

    .line 700
    :goto_0
    if-eqz p0, :cond_4

    .line 702
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .line 703
    .local v0, "methods":[Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_3

    .line 705
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 707
    aget-object v2, v0, v1

    .line 708
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lbsh/ClassGeneratorUtil;->getTypeDescriptors([Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v2

    .line 709
    .local v2, "methodParamTypes":[Ljava/lang/String;
    const/4 v3, 0x1

    .line 710
    .local v3, "found":Z
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    array-length v5, v2

    if-ge v4, v5, :cond_1

    .line 712
    aget-object v5, p2, v4

    aget-object v6, v2, v4

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 713
    const/4 v3, 0x0

    .line 714
    goto :goto_3

    .line 710
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 717
    .end local v4    # "j":I
    :cond_1
    :goto_3
    if-eqz v3, :cond_2

    .line 718
    const/4 v4, 0x1

    return v4

    .line 703
    .end local v2    # "methodParamTypes":[Ljava/lang/String;
    .end local v3    # "found":Z
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 722
    .end local v1    # "i":I
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    .line 723
    .end local v0    # "methods":[Ljava/lang/reflect/Method;
    goto :goto_0

    .line 725
    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method private static descriptorToClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .line 1192
    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "L"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1194
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1193
    :cond_1
    :goto_0
    return-object p0
.end method

.method static doSwitchBranch(ILjava/lang/String;[Ljava/lang/String;Lbsh/org/objectweb/asm/Label;[Lbsh/org/objectweb/asm/Label;ILbsh/org/objectweb/asm/CodeVisitor;)V
    .locals 13
    .param p0, "index"    # I
    .param p1, "targetClassName"    # Ljava/lang/String;
    .param p2, "paramTypes"    # [Ljava/lang/String;
    .param p3, "endLabel"    # Lbsh/org/objectweb/asm/Label;
    .param p4, "labels"    # [Lbsh/org/objectweb/asm/Label;
    .param p5, "consArgsVar"    # I
    .param p6, "cv"    # Lbsh/org/objectweb/asm/CodeVisitor;

    .line 594
    move-object v0, p2

    move-object/from16 v1, p6

    aget-object v2, p4, p0

    invoke-interface {v1, v2}, Lbsh/org/objectweb/asm/CodeVisitor;->visitLabel(Lbsh/org/objectweb/asm/Label;)V

    .line 596
    const/16 v2, 0x19

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lbsh/org/objectweb/asm/CodeVisitor;->visitVarInsn(II)V

    .line 599
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_a

    .line 601
    aget-object v4, v0, v3

    .line 602
    .local v4, "type":Ljava/lang/String;
    const/4 v5, 0x0

    .line 603
    .local v5, "method":Ljava/lang/String;
    const-string v6, "Z"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 604
    const-string v5, "getBoolean"

    goto :goto_1

    .line 605
    :cond_0
    const-string v6, "B"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 606
    const-string v5, "getByte"

    goto :goto_1

    .line 607
    :cond_1
    const-string v6, "C"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 608
    const-string v5, "getChar"

    goto :goto_1

    .line 609
    :cond_2
    const-string v6, "S"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 610
    const-string v5, "getShort"

    goto :goto_1

    .line 611
    :cond_3
    const-string v6, "I"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 612
    const-string v5, "getInt"

    goto :goto_1

    .line 613
    :cond_4
    const-string v6, "J"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 614
    const-string v5, "getLong"

    goto :goto_1

    .line 615
    :cond_5
    const-string v6, "D"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 616
    const-string v5, "getDouble"

    goto :goto_1

    .line 617
    :cond_6
    const-string v6, "F"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 618
    const-string v5, "getFloat"

    goto :goto_1

    .line 620
    :cond_7
    const-string v5, "getObject"

    .line 623
    :goto_1
    move/from16 v6, p5

    invoke-interface {v1, v2, v6}, Lbsh/org/objectweb/asm/CodeVisitor;->visitVarInsn(II)V

    .line 624
    const-string v7, "bsh/ClassGeneratorUtil$ConstructorArgs"

    .line 626
    .local v7, "className":Ljava/lang/String;
    const-string v8, "getObject"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 627
    const-string v9, "Ljava/lang/Object;"

    .local v9, "retType":Ljava/lang/String;
    goto :goto_2

    .line 629
    .end local v9    # "retType":Ljava/lang/String;
    :cond_8
    move-object v9, v4

    .line 630
    .restart local v9    # "retType":Ljava/lang/String;
    :goto_2
    const/16 v10, 0xb6

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "()"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v1, v10, v7, v5, v11}, Lbsh/org/objectweb/asm/CodeVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 633
    const/16 v8, 0xc0

    invoke-static {v4}, Lbsh/ClassGeneratorUtil;->descriptorToClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v1, v8, v10}, Lbsh/org/objectweb/asm/CodeVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 599
    .end local v4    # "type":Ljava/lang/String;
    .end local v5    # "method":Ljava/lang/String;
    .end local v7    # "className":Ljava/lang/String;
    .end local v9    # "retType":Ljava/lang/String;
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_a
    move/from16 v6, p5

    .line 637
    .end local v3    # "i":I
    const-string v2, "V"

    invoke-static {v2, p2}, Lbsh/ClassGeneratorUtil;->getMethodDescriptor(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 638
    .local v2, "descriptor":Ljava/lang/String;
    const/16 v3, 0xb7

    const-string v4, "<init>"

    move-object v5, p1

    invoke-interface {v1, v3, p1, v4, v2}, Lbsh/org/objectweb/asm/CodeVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    const/16 v3, 0xa7

    move-object/from16 v4, p3

    invoke-interface {v1, v3, v4}, Lbsh/org/objectweb/asm/CodeVisitor;->visitJumpInsn(ILbsh/org/objectweb/asm/Label;)V

    .line 641
    return-void
.end method

.method static generateField(Ljava/lang/String;Ljava/lang/String;ILbsh/org/objectweb/asm/ClassWriter;)V
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "modifiers"    # I
    .param p3, "cw"    # Lbsh/org/objectweb/asm/ClassWriter;

    .line 332
    const/4 v0, 0x0

    invoke-virtual {p3, p2, p0, p1, v0}, Lbsh/org/objectweb/asm/ClassWriter;->visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 333
    return-void
.end method

.method static generateMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ILbsh/org/objectweb/asm/ClassWriter;)V
    .locals 17
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "fqClassName"    # Ljava/lang/String;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "returnType"    # Ljava/lang/String;
    .param p4, "paramTypes"    # [Ljava/lang/String;
    .param p5, "modifiers"    # I
    .param p6, "cw"    # Lbsh/org/objectweb/asm/ClassWriter;

    .line 346
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move/from16 v4, p5

    const/4 v5, 0x0

    .line 347
    .local v5, "exceptions":[Ljava/lang/String;
    and-int/lit8 v6, v4, 0x8

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_0

    move v6, v7

    goto :goto_0

    :cond_0
    move v6, v8

    .line 349
    .local v6, "isStatic":Z
    :goto_0
    if-nez p3, :cond_1

    .line 350
    const-string v9, "Ljava/lang/Object;"

    .end local p3    # "returnType":Ljava/lang/String;
    .local v9, "returnType":Ljava/lang/String;
    goto :goto_1

    .line 349
    .end local v9    # "returnType":Ljava/lang/String;
    .restart local p3    # "returnType":Ljava/lang/String;
    :cond_1
    move-object/from16 v9, p3

    .line 352
    .end local p3    # "returnType":Ljava/lang/String;
    .restart local v9    # "returnType":Ljava/lang/String;
    :goto_1
    invoke-static {v9, v3}, Lbsh/ClassGeneratorUtil;->getMethodDescriptor(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 355
    .local v10, "methodDescriptor":Ljava/lang/String;
    move-object/from16 v11, p6

    invoke-virtual {v11, v4, v2, v10, v5}, Lbsh/org/objectweb/asm/ClassWriter;->visitMethod(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lbsh/org/objectweb/asm/CodeVisitor;

    move-result-object v12

    .line 358
    .local v12, "cv":Lbsh/org/objectweb/asm/CodeVisitor;
    and-int/lit16 v13, v4, 0x400

    if-eqz v13, :cond_2

    .line 359
    return-void

    .line 362
    :cond_2
    if-eqz v6, :cond_3

    .line 363
    invoke-static {v1, v0, v12}, Lbsh/ClassGeneratorUtil;->pushBshStatic(Ljava/lang/String;Ljava/lang/String;Lbsh/org/objectweb/asm/CodeVisitor;)V

    goto :goto_2

    .line 367
    :cond_3
    const/16 v13, 0x19

    invoke-interface {v12, v13, v8}, Lbsh/org/objectweb/asm/CodeVisitor;->visitVarInsn(II)V

    .line 370
    const/16 v13, 0xb4

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "_bshThis"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, "Lbsh/This;"

    invoke-interface {v12, v13, v1, v14, v15}, Lbsh/org/objectweb/asm/CodeVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    :goto_2
    invoke-interface {v12, v2}, Lbsh/org/objectweb/asm/CodeVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 378
    invoke-static {v3, v6, v12}, Lbsh/ClassGeneratorUtil;->generateParameterReifierCode([Ljava/lang/String;ZLbsh/org/objectweb/asm/CodeVisitor;)V

    .line 381
    invoke-interface {v12, v7}, Lbsh/org/objectweb/asm/CodeVisitor;->visitInsn(I)V

    .line 382
    invoke-interface {v12, v7}, Lbsh/org/objectweb/asm/CodeVisitor;->visitInsn(I)V

    .line 383
    invoke-interface {v12, v7}, Lbsh/org/objectweb/asm/CodeVisitor;->visitInsn(I)V

    .line 386
    const/4 v13, 0x4

    invoke-interface {v12, v13}, Lbsh/org/objectweb/asm/CodeVisitor;->visitInsn(I)V

    .line 389
    const-class v15, Ljava/lang/Object;

    .line 392
    invoke-static {v15}, Lbsh/org/objectweb/asm/Type;->getType(Ljava/lang/Class;)Lbsh/org/objectweb/asm/Type;

    move-result-object v15

    const/4 v14, 0x6

    new-array v14, v14, [Lbsh/org/objectweb/asm/Type;

    const-class v16, Ljava/lang/String;

    .line 394
    invoke-static/range {v16 .. v16}, Lbsh/org/objectweb/asm/Type;->getType(Ljava/lang/Class;)Lbsh/org/objectweb/asm/Type;

    move-result-object v16

    aput-object v16, v14, v8

    const-class v16, [Ljava/lang/Object;

    .line 395
    invoke-static/range {v16 .. v16}, Lbsh/org/objectweb/asm/Type;->getType(Ljava/lang/Class;)Lbsh/org/objectweb/asm/Type;

    move-result-object v16

    aput-object v16, v14, v7

    const/4 v7, 0x2

    const-class v16, Lbsh/Interpreter;

    .line 396
    invoke-static/range {v16 .. v16}, Lbsh/org/objectweb/asm/Type;->getType(Ljava/lang/Class;)Lbsh/org/objectweb/asm/Type;

    move-result-object v16

    aput-object v16, v14, v7

    const/4 v7, 0x3

    const-class v16, Lbsh/CallStack;

    .line 397
    invoke-static/range {v16 .. v16}, Lbsh/org/objectweb/asm/Type;->getType(Ljava/lang/Class;)Lbsh/org/objectweb/asm/Type;

    move-result-object v16

    aput-object v16, v14, v7

    const-class v7, Lbsh/SimpleNode;

    .line 398
    invoke-static {v7}, Lbsh/org/objectweb/asm/Type;->getType(Ljava/lang/Class;)Lbsh/org/objectweb/asm/Type;

    move-result-object v7

    aput-object v7, v14, v13

    const/4 v7, 0x5

    sget-object v13, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 399
    invoke-static {v13}, Lbsh/org/objectweb/asm/Type;->getType(Ljava/lang/Class;)Lbsh/org/objectweb/asm/Type;

    move-result-object v13

    aput-object v13, v14, v7

    .line 391
    invoke-static {v15, v14}, Lbsh/org/objectweb/asm/Type;->getMethodDescriptor(Lbsh/org/objectweb/asm/Type;[Lbsh/org/objectweb/asm/Type;)Ljava/lang/String;

    move-result-object v7

    .line 389
    const-string v13, "bsh/This"

    const-string v14, "invokeMethod"

    const/16 v15, 0xb6

    invoke-interface {v12, v15, v13, v14, v7}, Lbsh/org/objectweb/asm/CodeVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    const/16 v7, 0xb8

    const-string v13, "bsh/Primitive"

    const-string/jumbo v14, "unwrap"

    const-string v15, "(Ljava/lang/Object;)Ljava/lang/Object;"

    invoke-interface {v12, v7, v13, v14, v15}, Lbsh/org/objectweb/asm/CodeVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    invoke-static {v9, v12}, Lbsh/ClassGeneratorUtil;->generateReturnCode(Ljava/lang/String;Lbsh/org/objectweb/asm/CodeVisitor;)V

    .line 413
    invoke-interface {v12, v8, v8}, Lbsh/org/objectweb/asm/CodeVisitor;->visitMaxs(II)V

    .line 414
    return-void
.end method

.method public static generateParameterReifierCode([Ljava/lang/String;ZLbsh/org/objectweb/asm/CodeVisitor;)V
    .locals 12
    .param p0, "paramTypes"    # [Ljava/lang/String;
    .param p1, "isStatic"    # Z
    .param p2, "cv"    # Lbsh/org/objectweb/asm/CodeVisitor;

    .line 768
    array-length v0, p0

    const/16 v1, 0x11

    invoke-interface {p2, v1, v0}, Lbsh/org/objectweb/asm/CodeVisitor;->visitIntInsn(II)V

    .line 769
    const/16 v0, 0xbd

    const-string v2, "java/lang/Object"

    invoke-interface {p2, v0, v2}, Lbsh/org/objectweb/asm/CodeVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 770
    xor-int/lit8 v0, p1, 0x1

    .line 771
    .local v0, "localVarIndex":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_6

    .line 773
    aget-object v3, p0, v2

    .line 774
    .local v3, "param":Ljava/lang/String;
    const/16 v4, 0x59

    invoke-interface {p2, v4}, Lbsh/org/objectweb/asm/CodeVisitor;->visitInsn(I)V

    .line 775
    invoke-interface {p2, v1, v2}, Lbsh/org/objectweb/asm/CodeVisitor;->visitIntInsn(II)V

    .line 776
    invoke-static {v3}, Lbsh/ClassGeneratorUtil;->isPrimitive(Ljava/lang/String;)Z

    move-result v5

    const-string v6, "J"

    const-string v7, "D"

    if-eqz v5, :cond_3

    .line 779
    const-string v5, "F"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 780
    const/16 v5, 0x17

    .local v5, "opcode":I
    goto :goto_1

    .line 781
    .end local v5    # "opcode":I
    :cond_0
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 782
    const/16 v5, 0x18

    .restart local v5    # "opcode":I
    goto :goto_1

    .line 783
    .end local v5    # "opcode":I
    :cond_1
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 784
    const/16 v5, 0x16

    .restart local v5    # "opcode":I
    goto :goto_1

    .line 786
    .end local v5    # "opcode":I
    :cond_2
    const/16 v5, 0x15

    .line 789
    .restart local v5    # "opcode":I
    :goto_1
    const-string v8, "bsh/Primitive"

    .line 790
    .local v8, "type":Ljava/lang/String;
    const/16 v9, 0xbb

    invoke-interface {p2, v9, v8}, Lbsh/org/objectweb/asm/CodeVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 791
    invoke-interface {p2, v4}, Lbsh/org/objectweb/asm/CodeVisitor;->visitInsn(I)V

    .line 792
    invoke-interface {p2, v5, v0}, Lbsh/org/objectweb/asm/CodeVisitor;->visitVarInsn(II)V

    .line 793
    move-object v4, v3

    .line 794
    .local v4, "desc":Ljava/lang/String;
    const/16 v9, 0xb7

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")V"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "<init>"

    invoke-interface {p2, v9, v8, v11, v10}, Lbsh/org/objectweb/asm/CodeVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    .end local v4    # "desc":Ljava/lang/String;
    .end local v5    # "opcode":I
    .end local v8    # "type":Ljava/lang/String;
    goto :goto_2

    .line 802
    :cond_3
    const/16 v4, 0x19

    invoke-interface {p2, v4, v0}, Lbsh/org/objectweb/asm/CodeVisitor;->visitVarInsn(II)V

    .line 804
    :goto_2
    const/16 v4, 0x53

    invoke-interface {p2, v4}, Lbsh/org/objectweb/asm/CodeVisitor;->visitInsn(I)V

    .line 805
    nop

    .line 806
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_3

    :cond_4
    const/4 v4, 0x1

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v4, 0x2

    :goto_4
    add-int/2addr v0, v4

    .line 771
    .end local v3    # "param":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 808
    .end local v2    # "i":I
    :cond_6
    return-void
.end method

.method static generatePlainReturnCode(Ljava/lang/String;Lbsh/org/objectweb/asm/CodeVisitor;)V
    .locals 2
    .param p0, "returnType"    # Ljava/lang/String;
    .param p1, "cv"    # Lbsh/org/objectweb/asm/CodeVisitor;

    .line 733
    const-string v0, "V"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 734
    const/16 v0, 0xb1

    invoke-interface {p1, v0}, Lbsh/org/objectweb/asm/CodeVisitor;->visitInsn(I)V

    goto :goto_1

    .line 736
    :cond_0
    invoke-static {p0}, Lbsh/ClassGeneratorUtil;->isPrimitive(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 738
    const/16 v0, 0xac

    .line 739
    .local v0, "opcode":I
    const-string v1, "D"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 740
    const/16 v0, 0xaf

    goto :goto_0

    .line 741
    :cond_1
    const-string v1, "F"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 742
    const/16 v0, 0xae

    goto :goto_0

    .line 743
    :cond_2
    const-string v1, "J"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 744
    const/16 v0, 0xad

    .line 746
    :cond_3
    :goto_0
    invoke-interface {p1, v0}, Lbsh/org/objectweb/asm/CodeVisitor;->visitInsn(I)V

    .line 747
    .end local v0    # "opcode":I
    goto :goto_1

    .line 749
    :cond_4
    const/16 v0, 0xc0

    invoke-static {p0}, Lbsh/ClassGeneratorUtil;->descriptorToClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lbsh/org/objectweb/asm/CodeVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 750
    const/16 v0, 0xb0

    invoke-interface {p1, v0}, Lbsh/org/objectweb/asm/CodeVisitor;->visitInsn(I)V

    .line 752
    :goto_1
    return-void
.end method

.method public static generateReturnCode(Ljava/lang/String;Lbsh/org/objectweb/asm/CodeVisitor;)V
    .locals 7
    .param p0, "returnType"    # Ljava/lang/String;
    .param p1, "cv"    # Lbsh/org/objectweb/asm/CodeVisitor;

    .line 822
    const-string v0, "V"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 824
    const/16 v0, 0x57

    invoke-interface {p1, v0}, Lbsh/org/objectweb/asm/CodeVisitor;->visitInsn(I)V

    .line 825
    const/16 v0, 0xb1

    invoke-interface {p1, v0}, Lbsh/org/objectweb/asm/CodeVisitor;->visitInsn(I)V

    goto/16 :goto_1

    .line 827
    :cond_0
    invoke-static {p0}, Lbsh/ClassGeneratorUtil;->isPrimitive(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0xc0

    if-eqz v0, :cond_8

    .line 829
    const/16 v0, 0xac

    .line 832
    .local v0, "opcode":I
    const-string v2, "B"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 833
    const-string v2, "java/lang/Byte"

    .line 834
    .local v2, "type":Ljava/lang/String;
    const-string v3, "byteValue"

    .local v3, "meth":Ljava/lang/String;
    goto :goto_0

    .line 835
    .end local v2    # "type":Ljava/lang/String;
    .end local v3    # "meth":Ljava/lang/String;
    :cond_1
    const-string v2, "I"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 836
    const-string v2, "java/lang/Integer"

    .line 837
    .restart local v2    # "type":Ljava/lang/String;
    const-string v3, "intValue"

    .restart local v3    # "meth":Ljava/lang/String;
    goto :goto_0

    .line 838
    .end local v2    # "type":Ljava/lang/String;
    .end local v3    # "meth":Ljava/lang/String;
    :cond_2
    const-string v2, "Z"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 839
    const-string v2, "java/lang/Boolean"

    .line 840
    .restart local v2    # "type":Ljava/lang/String;
    const-string v3, "booleanValue"

    .restart local v3    # "meth":Ljava/lang/String;
    goto :goto_0

    .line 841
    .end local v2    # "type":Ljava/lang/String;
    .end local v3    # "meth":Ljava/lang/String;
    :cond_3
    const-string v2, "D"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 842
    const/16 v0, 0xaf

    .line 843
    const-string v2, "java/lang/Double"

    .line 844
    .restart local v2    # "type":Ljava/lang/String;
    const-string v3, "doubleValue"

    .restart local v3    # "meth":Ljava/lang/String;
    goto :goto_0

    .line 845
    .end local v2    # "type":Ljava/lang/String;
    .end local v3    # "meth":Ljava/lang/String;
    :cond_4
    const-string v2, "F"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 846
    const/16 v0, 0xae

    .line 847
    const-string v2, "java/lang/Float"

    .line 848
    .restart local v2    # "type":Ljava/lang/String;
    const-string v3, "floatValue"

    .restart local v3    # "meth":Ljava/lang/String;
    goto :goto_0

    .line 849
    .end local v2    # "type":Ljava/lang/String;
    .end local v3    # "meth":Ljava/lang/String;
    :cond_5
    const-string v2, "J"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 850
    const/16 v0, 0xad

    .line 851
    const-string v2, "java/lang/Long"

    .line 852
    .restart local v2    # "type":Ljava/lang/String;
    const-string v3, "longValue"

    .restart local v3    # "meth":Ljava/lang/String;
    goto :goto_0

    .line 853
    .end local v2    # "type":Ljava/lang/String;
    .end local v3    # "meth":Ljava/lang/String;
    :cond_6
    const-string v2, "C"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 854
    const-string v2, "java/lang/Character"

    .line 855
    .restart local v2    # "type":Ljava/lang/String;
    const-string v3, "charValue"

    .restart local v3    # "meth":Ljava/lang/String;
    goto :goto_0

    .line 857
    .end local v2    # "type":Ljava/lang/String;
    .end local v3    # "meth":Ljava/lang/String;
    :cond_7
    const-string v2, "java/lang/Short"

    .line 858
    .restart local v2    # "type":Ljava/lang/String;
    const-string/jumbo v3, "shortValue"

    .line 861
    .restart local v3    # "meth":Ljava/lang/String;
    :goto_0
    move-object v4, p0

    .line 862
    .local v4, "desc":Ljava/lang/String;
    invoke-interface {p1, v1, v2}, Lbsh/org/objectweb/asm/CodeVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 863
    const/16 v1, 0xb6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v1, v2, v3, v5}, Lbsh/org/objectweb/asm/CodeVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    invoke-interface {p1, v0}, Lbsh/org/objectweb/asm/CodeVisitor;->visitInsn(I)V

    .line 865
    .end local v0    # "opcode":I
    .end local v2    # "type":Ljava/lang/String;
    .end local v3    # "meth":Ljava/lang/String;
    .end local v4    # "desc":Ljava/lang/String;
    goto :goto_1

    .line 867
    :cond_8
    invoke-static {p0}, Lbsh/ClassGeneratorUtil;->descriptorToClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lbsh/org/objectweb/asm/CodeVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 868
    const/16 v0, 0xb0

    invoke-interface {p1, v0}, Lbsh/org/objectweb/asm/CodeVisitor;->visitInsn(I)V

    .line 870
    :goto_1
    return-void
.end method

.method static generateSuperDelegateMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ILbsh/org/objectweb/asm/ClassWriter;)V
    .locals 8
    .param p0, "superClassName"    # Ljava/lang/String;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "returnType"    # Ljava/lang/String;
    .param p3, "paramTypes"    # [Ljava/lang/String;
    .param p4, "modifiers"    # I
    .param p5, "cw"    # Lbsh/org/objectweb/asm/ClassWriter;

    .line 663
    const/4 v0, 0x0

    .line 665
    .local v0, "exceptions":[Ljava/lang/String;
    if-nez p2, :cond_0

    .line 666
    const-string p2, "Ljava/lang/Object;"

    .line 668
    :cond_0
    invoke-static {p2, p3}, Lbsh/ClassGeneratorUtil;->getMethodDescriptor(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 671
    .local v1, "methodDescriptor":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_bshSuper"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p5, p4, v2, v1, v0}, Lbsh/org/objectweb/asm/ClassWriter;->visitMethod(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lbsh/org/objectweb/asm/CodeVisitor;

    move-result-object v2

    .line 674
    .local v2, "cv":Lbsh/org/objectweb/asm/CodeVisitor;
    const/4 v3, 0x0

    const/16 v4, 0x19

    invoke-interface {v2, v4, v3}, Lbsh/org/objectweb/asm/CodeVisitor;->visitVarInsn(II)V

    .line 676
    const/4 v3, 0x1

    .line 677
    .local v3, "localVarIndex":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v6, p3

    if-ge v5, v6, :cond_4

    .line 679
    aget-object v6, p3, v5

    invoke-static {v6}, Lbsh/ClassGeneratorUtil;->isPrimitive(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 680
    const/16 v6, 0x15

    invoke-interface {v2, v6, v3}, Lbsh/org/objectweb/asm/CodeVisitor;->visitVarInsn(II)V

    goto :goto_1

    .line 682
    :cond_1
    invoke-interface {v2, v4, v3}, Lbsh/org/objectweb/asm/CodeVisitor;->visitVarInsn(II)V

    .line 683
    :goto_1
    aget-object v6, p3, v5

    .line 684
    const-string v7, "D"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    aget-object v6, p3, v5

    const-string v7, "J"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_2

    :cond_2
    const/4 v6, 0x1

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v6, 0x2

    :goto_3
    add-int/2addr v3, v6

    .line 677
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 688
    .end local v5    # "i":I
    :cond_4
    const/16 v4, 0xb7

    invoke-interface {v2, v4, p0, p1, v1}, Lbsh/org/objectweb/asm/CodeVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    invoke-static {p2, v2}, Lbsh/ClassGeneratorUtil;->generatePlainReturnCode(Ljava/lang/String;Lbsh/org/objectweb/asm/CodeVisitor;)V

    .line 694
    const/16 v4, 0x14

    invoke-interface {v2, v4, v4}, Lbsh/org/objectweb/asm/CodeVisitor;->visitMaxs(II)V

    .line 695
    return-void
.end method

.method static getASMModifiers(Lbsh/Modifiers;)I
    .locals 2
    .param p0, "modifiers"    # Lbsh/Modifiers;

    .line 308
    const/4 v0, 0x0

    .line 309
    .local v0, "mods":I
    if-nez p0, :cond_0

    .line 310
    return v0

    .line 312
    :cond_0
    const-string/jumbo v1, "public"

    invoke-virtual {p0, v1}, Lbsh/Modifiers;->hasModifier(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 313
    add-int/lit8 v0, v0, 0x1

    .line 314
    :cond_1
    const-string/jumbo v1, "protected"

    invoke-virtual {p0, v1}, Lbsh/Modifiers;->hasModifier(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 315
    add-int/lit8 v0, v0, 0x4

    .line 316
    :cond_2
    const-string/jumbo v1, "static"

    invoke-virtual {p0, v1}, Lbsh/Modifiers;->hasModifier(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 317
    add-int/lit8 v0, v0, 0x8

    .line 318
    :cond_3
    const-string/jumbo v1, "synchronized"

    invoke-virtual {p0, v1}, Lbsh/Modifiers;->hasModifier(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 319
    add-int/lit8 v0, v0, 0x20

    .line 320
    :cond_4
    const-string v1, "abstract"

    invoke-virtual {p0, v1}, Lbsh/Modifiers;->hasModifier(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 321
    add-int/lit16 v0, v0, 0x400

    .line 323
    :cond_5
    return v0
.end method

.method private static getBaseName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "className"    # Ljava/lang/String;

    .line 1202
    const-string v0, "$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1203
    .local v0, "i":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1204
    return-object p0

    .line 1206
    :cond_0
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static getClassInstanceThis(Ljava/lang/Object;Ljava/lang/String;)Lbsh/This;
    .locals 4
    .param p0, "instance"    # Ljava/lang/Object;
    .param p1, "className"    # Ljava/lang/String;

    .line 1161
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_bshThis"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lbsh/Reflect;->getObjectFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1162
    .local v0, "o":Ljava/lang/Object;
    invoke-static {v0}, Lbsh/Primitive;->unwrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbsh/This;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1163
    .end local v0    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 1164
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lbsh/InterpreterError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Generated class: Error getting This"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static getClassStaticThis(Ljava/lang/Class;Ljava/lang/String;)Lbsh/This;
    .locals 4
    .param p0, "clas"    # Ljava/lang/Class;
    .param p1, "className"    # Ljava/lang/String;

    .line 1146
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_bshStatic"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lbsh/Reflect;->getStaticFieldValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsh/This;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1148
    :catch_0
    move-exception v0

    .line 1149
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lbsh/InterpreterError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to get class static space: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getConstructorArgs(Ljava/lang/String;Lbsh/This;[Ljava/lang/Object;I)Lbsh/ClassGeneratorUtil$ConstructorArgs;
    .locals 22
    .param p0, "superClassName"    # Ljava/lang/String;
    .param p1, "classStaticThis"    # Lbsh/This;
    .param p2, "consArgs"    # [Ljava/lang/Object;
    .param p3, "index"    # I

    .line 889
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    if-eqz v2, :cond_e

    .line 894
    nop

    .line 895
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lbsh/This;->getNameSpace()Lbsh/NameSpace;

    move-result-object v0

    const-string v5, "_bshConstructors"

    invoke-virtual {v0, v5}, Lbsh/NameSpace;->getVariable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 896
    .local v0, "cons":Ljava/lang/Object;
    sget-object v5, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    if-eq v0, v5, :cond_d

    .line 899
    move-object v5, v0

    check-cast v5, [Lbsh/DelayedEvalBshMethod;

    check-cast v5, [Lbsh/DelayedEvalBshMethod;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 903
    .end local v0    # "cons":Ljava/lang/Object;
    .local v5, "constructors":[Lbsh/DelayedEvalBshMethod;
    nop

    .line 905
    const/4 v0, -0x1

    if-ne v4, v0, :cond_0

    .line 906
    sget-object v0, Lbsh/ClassGeneratorUtil$ConstructorArgs;->DEFAULT:Lbsh/ClassGeneratorUtil$ConstructorArgs;

    return-object v0

    .line 908
    :cond_0
    aget-object v6, v5, v4

    .line 910
    .local v6, "constructor":Lbsh/DelayedEvalBshMethod;
    iget-object v7, v6, Lbsh/DelayedEvalBshMethod;->methodBody:Lbsh/BSHBlock;

    invoke-virtual {v7}, Lbsh/BSHBlock;->jjtGetNumChildren()I

    move-result v7

    if-nez v7, :cond_1

    .line 911
    sget-object v0, Lbsh/ClassGeneratorUtil$ConstructorArgs;->DEFAULT:Lbsh/ClassGeneratorUtil$ConstructorArgs;

    return-object v0

    .line 914
    :cond_1
    const/4 v7, 0x0

    .line 915
    .local v7, "altConstructor":Ljava/lang/String;
    const/4 v8, 0x0

    .line 916
    .local v8, "argsNode":Lbsh/BSHArguments;
    iget-object v9, v6, Lbsh/DelayedEvalBshMethod;->methodBody:Lbsh/BSHBlock;

    .line 917
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lbsh/BSHBlock;->jjtGetChild(I)Lbsh/Node;

    move-result-object v9

    check-cast v9, Lbsh/SimpleNode;

    .line 918
    .local v9, "firstStatement":Lbsh/SimpleNode;
    instance-of v11, v9, Lbsh/BSHPrimaryExpression;

    if-eqz v11, :cond_2

    .line 919
    invoke-virtual {v9, v10}, Lbsh/SimpleNode;->jjtGetChild(I)Lbsh/Node;

    move-result-object v10

    move-object v9, v10

    check-cast v9, Lbsh/SimpleNode;

    .line 920
    :cond_2
    instance-of v10, v9, Lbsh/BSHMethodInvocation;

    const-string/jumbo v11, "super"

    if-eqz v10, :cond_4

    .line 922
    move-object v10, v9

    check-cast v10, Lbsh/BSHMethodInvocation;

    .line 924
    .local v10, "methodNode":Lbsh/BSHMethodInvocation;
    invoke-virtual {v10}, Lbsh/BSHMethodInvocation;->getNameNode()Lbsh/BSHAmbiguousName;

    move-result-object v12

    .line 925
    .local v12, "methodName":Lbsh/BSHAmbiguousName;
    iget-object v13, v12, Lbsh/BSHAmbiguousName;->text:Ljava/lang/String;

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    iget-object v13, v12, Lbsh/BSHAmbiguousName;->text:Ljava/lang/String;

    .line 926
    const-string/jumbo v14, "this"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 928
    :cond_3
    iget-object v7, v12, Lbsh/BSHAmbiguousName;->text:Ljava/lang/String;

    .line 929
    invoke-virtual {v10}, Lbsh/BSHMethodInvocation;->getArgsNode()Lbsh/BSHArguments;

    move-result-object v8

    .line 933
    .end local v10    # "methodNode":Lbsh/BSHMethodInvocation;
    .end local v12    # "methodName":Lbsh/BSHAmbiguousName;
    :cond_4
    if-nez v7, :cond_5

    .line 934
    sget-object v0, Lbsh/ClassGeneratorUtil$ConstructorArgs;->DEFAULT:Lbsh/ClassGeneratorUtil$ConstructorArgs;

    return-object v0

    .line 938
    :cond_5
    new-instance v10, Lbsh/NameSpace;

    .line 939
    invoke-virtual/range {p1 .. p1}, Lbsh/This;->getNameSpace()Lbsh/NameSpace;

    move-result-object v12

    const-string v13, "consArgs"

    invoke-direct {v10, v12, v13}, Lbsh/NameSpace;-><init>(Lbsh/NameSpace;Ljava/lang/String;)V

    .line 940
    .local v10, "consArgsNameSpace":Lbsh/NameSpace;
    invoke-virtual {v6}, Lbsh/DelayedEvalBshMethod;->getParameterNames()[Ljava/lang/String;

    move-result-object v12

    .line 941
    .local v12, "consArgNames":[Ljava/lang/String;
    invoke-virtual {v6}, Lbsh/DelayedEvalBshMethod;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v13

    .line 942
    .local v13, "consArgTypes":[Ljava/lang/Class;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    array-length v15, v3

    if-ge v14, v15, :cond_6

    .line 945
    :try_start_1
    aget-object v15, v12, v14

    aget-object v0, v13, v14
    :try_end_1
    .catch Lbsh/UtilEvalError; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v17, v6

    .end local v6    # "constructor":Lbsh/DelayedEvalBshMethod;
    .local v17, "constructor":Lbsh/DelayedEvalBshMethod;
    :try_start_2
    aget-object v6, v3, v14

    const/4 v3, 0x0

    invoke-virtual {v10, v15, v0, v6, v3}, Lbsh/NameSpace;->setTypedVariable(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lbsh/Modifiers;)V
    :try_end_2
    .catch Lbsh/UtilEvalError; {:try_start_2 .. :try_end_2} :catch_0

    .line 950
    nop

    .line 942
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v3, p2

    move-object/from16 v6, v17

    const/4 v0, -0x1

    goto :goto_0

    .line 948
    :catch_0
    move-exception v0

    goto :goto_1

    .end local v17    # "constructor":Lbsh/DelayedEvalBshMethod;
    .restart local v6    # "constructor":Lbsh/DelayedEvalBshMethod;
    :catch_1
    move-exception v0

    move-object/from16 v17, v6

    .line 949
    .end local v6    # "constructor":Lbsh/DelayedEvalBshMethod;
    .local v0, "e":Lbsh/UtilEvalError;
    .restart local v17    # "constructor":Lbsh/DelayedEvalBshMethod;
    :goto_1
    new-instance v3, Lbsh/InterpreterError;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "err setting local cons arg:"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v3

    .line 942
    .end local v0    # "e":Lbsh/UtilEvalError;
    .end local v17    # "constructor":Lbsh/DelayedEvalBshMethod;
    .restart local v6    # "constructor":Lbsh/DelayedEvalBshMethod;
    :cond_6
    move-object/from16 v17, v6

    .line 955
    .end local v6    # "constructor":Lbsh/DelayedEvalBshMethod;
    .end local v14    # "i":I
    .restart local v17    # "constructor":Lbsh/DelayedEvalBshMethod;
    new-instance v0, Lbsh/CallStack;

    invoke-direct {v0}, Lbsh/CallStack;-><init>()V

    move-object v3, v0

    .line 956
    .local v3, "callstack":Lbsh/CallStack;
    invoke-virtual {v3, v10}, Lbsh/CallStack;->push(Lbsh/NameSpace;)V

    .line 957
    const/4 v6, 0x0

    .line 958
    .local v6, "args":[Ljava/lang/Object;
    iget-object v14, v2, Lbsh/This;->declaringInterpreter:Lbsh/Interpreter;

    .line 961
    .local v14, "interpreter":Lbsh/Interpreter;
    :try_start_3
    invoke-virtual {v8, v3, v14}, Lbsh/BSHArguments;->getArguments(Lbsh/CallStack;Lbsh/Interpreter;)[Ljava/lang/Object;

    move-result-object v0
    :try_end_3
    .catch Lbsh/EvalError; {:try_start_3 .. :try_end_3} :catch_2

    .line 965
    .end local v6    # "args":[Ljava/lang/Object;
    .local v0, "args":[Ljava/lang/Object;
    nop

    .line 967
    invoke-static {v0}, Lbsh/Types;->getTypes([Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v6

    .line 968
    .local v6, "argTypes":[Ljava/lang/Class;
    invoke-static {v0}, Lbsh/Primitive;->unwrap([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 969
    nop

    .line 970
    invoke-virtual {v14}, Lbsh/Interpreter;->getClassManager()Lbsh/BshClassManager;

    move-result-object v15

    invoke-virtual {v15, v1}, Lbsh/BshClassManager;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v15

    .line 971
    .local v15, "superClass":Ljava/lang/Class;
    if-eqz v15, :cond_c

    .line 974
    invoke-virtual {v15}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 977
    .local v2, "superCons":[Ljava/lang/reflect/Constructor;
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 979
    invoke-static {v6, v2}, Lbsh/Reflect;->findMostSpecificConstructorIndex([Ljava/lang/Class;[Ljava/lang/reflect/Constructor;)I

    move-result v11

    .line 981
    .local v11, "i":I
    move-object/from16 v18, v3

    const/4 v3, -0x1

    .end local v3    # "callstack":Lbsh/CallStack;
    .local v18, "callstack":Lbsh/CallStack;
    if-eq v11, v3, :cond_7

    .line 983
    new-instance v3, Lbsh/ClassGeneratorUtil$ConstructorArgs;

    invoke-direct {v3, v11, v0}, Lbsh/ClassGeneratorUtil$ConstructorArgs;-><init>(I[Ljava/lang/Object;)V

    return-object v3

    .line 982
    :cond_7
    new-instance v3, Lbsh/InterpreterError;

    move-object/from16 v19, v7

    .end local v7    # "altConstructor":Ljava/lang/String;
    .local v19, "altConstructor":Ljava/lang/String;
    const-string v7, "can\'t find constructor for args!"

    invoke-direct {v3, v7}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v3

    .line 987
    .end local v11    # "i":I
    .end local v18    # "callstack":Lbsh/CallStack;
    .end local v19    # "altConstructor":Ljava/lang/String;
    .restart local v3    # "callstack":Lbsh/CallStack;
    .restart local v7    # "altConstructor":Ljava/lang/String;
    :cond_8
    move-object/from16 v18, v3

    move-object/from16 v19, v7

    .end local v3    # "callstack":Lbsh/CallStack;
    .end local v7    # "altConstructor":Ljava/lang/String;
    .restart local v18    # "callstack":Lbsh/CallStack;
    .restart local v19    # "altConstructor":Ljava/lang/String;
    array-length v3, v5

    new-array v3, v3, [[Ljava/lang/Class;

    .line 988
    .local v3, "candidates":[[Ljava/lang/Class;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    array-length v11, v3

    if-ge v7, v11, :cond_9

    .line 989
    aget-object v11, v5, v7

    invoke-virtual {v11}, Lbsh/DelayedEvalBshMethod;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v11

    aput-object v11, v3, v7

    .line 988
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 990
    .end local v7    # "i":I
    :cond_9
    invoke-static {v6, v3}, Lbsh/Reflect;->findMostSpecificSignature([Ljava/lang/Class;[[Ljava/lang/Class;)I

    move-result v7

    .line 991
    .restart local v7    # "i":I
    const/4 v11, -0x1

    if-eq v7, v11, :cond_b

    .line 995
    array-length v11, v2

    add-int/2addr v11, v7

    .line 996
    .local v11, "selector":I
    move-object/from16 v16, v3

    .end local v3    # "candidates":[[Ljava/lang/Class;
    .local v16, "candidates":[[Ljava/lang/Class;
    array-length v3, v2

    add-int/2addr v3, v4

    .line 999
    .local v3, "ourSelector":I
    if-eq v11, v3, :cond_a

    .line 1002
    move-object/from16 v20, v2

    .end local v2    # "superCons":[Ljava/lang/reflect/Constructor;
    .local v20, "superCons":[Ljava/lang/reflect/Constructor;
    new-instance v2, Lbsh/ClassGeneratorUtil$ConstructorArgs;

    invoke-direct {v2, v11, v0}, Lbsh/ClassGeneratorUtil$ConstructorArgs;-><init>(I[Ljava/lang/Object;)V

    return-object v2

    .line 1000
    .end local v20    # "superCons":[Ljava/lang/reflect/Constructor;
    .restart local v2    # "superCons":[Ljava/lang/reflect/Constructor;
    :cond_a
    move-object/from16 v20, v2

    .end local v2    # "superCons":[Ljava/lang/reflect/Constructor;
    .restart local v20    # "superCons":[Ljava/lang/reflect/Constructor;
    new-instance v2, Lbsh/InterpreterError;

    move-object/from16 v21, v0

    .end local v0    # "args":[Ljava/lang/Object;
    .local v21, "args":[Ljava/lang/Object;
    const-string v0, "Recusive constructor call."

    invoke-direct {v2, v0}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 992
    .end local v11    # "selector":I
    .end local v16    # "candidates":[[Ljava/lang/Class;
    .end local v20    # "superCons":[Ljava/lang/reflect/Constructor;
    .end local v21    # "args":[Ljava/lang/Object;
    .restart local v0    # "args":[Ljava/lang/Object;
    .restart local v2    # "superCons":[Ljava/lang/reflect/Constructor;
    .local v3, "candidates":[[Ljava/lang/Class;
    :cond_b
    move-object/from16 v21, v0

    move-object/from16 v20, v2

    .end local v0    # "args":[Ljava/lang/Object;
    .end local v2    # "superCons":[Ljava/lang/reflect/Constructor;
    .restart local v20    # "superCons":[Ljava/lang/reflect/Constructor;
    .restart local v21    # "args":[Ljava/lang/Object;
    new-instance v0, Lbsh/InterpreterError;

    const-string v2, "can\'t find constructor for args 2!"

    invoke-direct {v0, v2}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 972
    .end local v18    # "callstack":Lbsh/CallStack;
    .end local v19    # "altConstructor":Ljava/lang/String;
    .end local v20    # "superCons":[Ljava/lang/reflect/Constructor;
    .end local v21    # "args":[Ljava/lang/Object;
    .restart local v0    # "args":[Ljava/lang/Object;
    .local v3, "callstack":Lbsh/CallStack;
    .local v7, "altConstructor":Ljava/lang/String;
    :cond_c
    move-object/from16 v21, v0

    move-object/from16 v18, v3

    .end local v0    # "args":[Ljava/lang/Object;
    .end local v3    # "callstack":Lbsh/CallStack;
    .restart local v18    # "callstack":Lbsh/CallStack;
    .restart local v21    # "args":[Ljava/lang/Object;
    new-instance v0, Lbsh/InterpreterError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t find superclass: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 962
    .end local v15    # "superClass":Ljava/lang/Class;
    .end local v18    # "callstack":Lbsh/CallStack;
    .end local v21    # "args":[Ljava/lang/Object;
    .restart local v3    # "callstack":Lbsh/CallStack;
    .local v6, "args":[Ljava/lang/Object;
    :catch_2
    move-exception v0

    move-object/from16 v18, v3

    move-object/from16 v19, v7

    move-object v2, v0

    .end local v3    # "callstack":Lbsh/CallStack;
    .end local v7    # "altConstructor":Ljava/lang/String;
    .restart local v18    # "callstack":Lbsh/CallStack;
    .restart local v19    # "altConstructor":Ljava/lang/String;
    move-object v0, v2

    .line 963
    .local v0, "e":Lbsh/EvalError;
    new-instance v2, Lbsh/InterpreterError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error evaluating constructor args: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 897
    .end local v5    # "constructors":[Lbsh/DelayedEvalBshMethod;
    .end local v6    # "args":[Ljava/lang/Object;
    .end local v8    # "argsNode":Lbsh/BSHArguments;
    .end local v9    # "firstStatement":Lbsh/SimpleNode;
    .end local v10    # "consArgsNameSpace":Lbsh/NameSpace;
    .end local v12    # "consArgNames":[Ljava/lang/String;
    .end local v13    # "consArgTypes":[Ljava/lang/Class;
    .end local v14    # "interpreter":Lbsh/Interpreter;
    .end local v17    # "constructor":Lbsh/DelayedEvalBshMethod;
    .end local v18    # "callstack":Lbsh/CallStack;
    .end local v19    # "altConstructor":Ljava/lang/String;
    .local v0, "cons":Ljava/lang/Object;
    :cond_d
    :try_start_4
    new-instance v2, Lbsh/InterpreterError;

    const-string v3, "Unable to find constructors array in class"

    invoke-direct {v2, v3}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    .end local p0    # "superClassName":Ljava/lang/String;
    .end local p1    # "classStaticThis":Lbsh/This;
    .end local p2    # "consArgs":[Ljava/lang/Object;
    .end local p3    # "index":I
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 900
    .end local v0    # "cons":Ljava/lang/Object;
    .restart local p0    # "superClassName":Ljava/lang/String;
    .restart local p1    # "classStaticThis":Lbsh/This;
    .restart local p2    # "consArgs":[Ljava/lang/Object;
    .restart local p3    # "index":I
    :catch_3
    move-exception v0

    .line 901
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lbsh/InterpreterError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to get instance initializers: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 890
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_e
    new-instance v0, Lbsh/InterpreterError;

    const-string v2, "Unititialized class: no static"

    invoke-direct {v0, v2}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static getMethodDescriptor(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "returnType"    # Ljava/lang/String;
    .param p1, "paramTypes"    # [Ljava/lang/String;

    .line 645
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 646
    .local v0, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 647
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 646
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 648
    .end local v1    # "i":I
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 649
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static getTypeDescriptors([Ljava/lang/Class;)[Ljava/lang/String;
    .locals 3
    .param p0, "cparams"    # [Ljava/lang/Class;

    .line 1179
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/String;

    .line 1180
    .local v0, "sa":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1181
    aget-object v2, p0, v1

    invoke-static {v2}, Lbsh/BSHType;->getTypeDescriptor(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1180
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1182
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static initInstance(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 17
    .param p0, "instance"    # Ljava/lang/Object;
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 1018
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-static/range {p2 .. p2}, Lbsh/Types;->getTypes([Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v3

    .line 1019
    .local v3, "sig":[Ljava/lang/Class;
    new-instance v0, Lbsh/CallStack;

    invoke-direct {v0}, Lbsh/CallStack;-><init>()V

    move-object v10, v0

    .line 1025
    .local v10, "callstack":Lbsh/CallStack;
    invoke-static/range {p0 .. p1}, Lbsh/ClassGeneratorUtil;->getClassInstanceThis(Ljava/lang/Object;Ljava/lang/String;)Lbsh/This;

    move-result-object v4

    .line 1028
    .local v4, "instanceThis":Lbsh/This;
    const-string v11, "Error in class initialization: "

    const/4 v0, 0x1

    if-nez v4, :cond_1

    .line 1034
    nop

    .line 1035
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5, v2}, Lbsh/ClassGeneratorUtil;->getClassStaticThis(Ljava/lang/Class;Ljava/lang/String;)Lbsh/This;

    move-result-object v5

    .line 1037
    .local v5, "classStaticThis":Lbsh/This;
    if-eqz v5, :cond_0

    .line 1040
    iget-object v6, v5, Lbsh/This;->declaringInterpreter:Lbsh/Interpreter;

    .line 1045
    .local v6, "interpreter":Lbsh/Interpreter;
    :try_start_0
    invoke-virtual {v5}, Lbsh/This;->getNameSpace()Lbsh/NameSpace;

    move-result-object v7

    const-string v8, "_bshInstanceInitializer"

    .line 1046
    invoke-virtual {v7, v8}, Lbsh/NameSpace;->getVariable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lbsh/BSHBlock;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1050
    .local v7, "instanceInitBlock":Lbsh/BSHBlock;
    nop

    .line 1053
    new-instance v8, Lbsh/NameSpace;

    .line 1054
    invoke-virtual {v5}, Lbsh/This;->getNameSpace()Lbsh/NameSpace;

    move-result-object v9

    invoke-direct {v8, v9, v2}, Lbsh/NameSpace;-><init>(Lbsh/NameSpace;Ljava/lang/String;)V

    .line 1055
    .local v8, "instanceNameSpace":Lbsh/NameSpace;
    iput-boolean v0, v8, Lbsh/NameSpace;->isClass:Z

    .line 1058
    invoke-virtual {v8, v6}, Lbsh/NameSpace;->getThis(Lbsh/Interpreter;)Lbsh/This;

    move-result-object v4

    .line 1060
    :try_start_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "_bshThis"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1061
    invoke-static {v1, v9}, Lbsh/Reflect;->getLHSObjectField(Ljava/lang/Object;Ljava/lang/String;)Lbsh/LHS;

    move-result-object v9

    .line 1062
    .local v9, "lhs":Lbsh/LHS;
    const/4 v12, 0x0

    invoke-virtual {v9, v4, v12}, Lbsh/LHS;->assign(Ljava/lang/Object;Z)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1065
    nop

    .line 1068
    .end local v9    # "lhs":Lbsh/LHS;
    invoke-virtual {v8, v1}, Lbsh/NameSpace;->setClassInstance(Ljava/lang/Object;)V

    .line 1071
    invoke-virtual {v10, v8}, Lbsh/CallStack;->push(Lbsh/NameSpace;)V

    .line 1075
    :try_start_2
    sget-object v9, Lbsh/ClassGeneratorImpl$ClassNodeFilter;->CLASSINSTANCE:Lbsh/ClassGeneratorImpl$ClassNodeFilter;

    invoke-virtual {v7, v10, v6, v0, v9}, Lbsh/BSHBlock;->evalBlock(Lbsh/CallStack;Lbsh/Interpreter;ZLbsh/BSHBlock$NodeFilter;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1080
    nop

    .line 1082
    invoke-virtual {v10}, Lbsh/CallStack;->pop()Lbsh/NameSpace;

    .line 1084
    .end local v5    # "classStaticThis":Lbsh/This;
    .end local v7    # "instanceInitBlock":Lbsh/BSHBlock;
    move-object v12, v4

    move-object v13, v6

    move-object v14, v8

    goto :goto_0

    .line 1078
    .restart local v5    # "classStaticThis":Lbsh/This;
    .restart local v7    # "instanceInitBlock":Lbsh/BSHBlock;
    :catch_0
    move-exception v0

    .line 1079
    .local v0, "e":Ljava/lang/Exception;
    new-instance v9, Lbsh/InterpreterError;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1063
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1064
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v9, Lbsh/InterpreterError;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error in class gen setup: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1047
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v7    # "instanceInitBlock":Lbsh/BSHBlock;
    .end local v8    # "instanceNameSpace":Lbsh/NameSpace;
    :catch_2
    move-exception v0

    .line 1048
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v7, Lbsh/InterpreterError;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "unable to get instance initializer: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1038
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v6    # "interpreter":Lbsh/Interpreter;
    :cond_0
    new-instance v0, Lbsh/InterpreterError;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to init class: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1088
    .end local v5    # "classStaticThis":Lbsh/This;
    :cond_1
    iget-object v6, v4, Lbsh/This;->declaringInterpreter:Lbsh/Interpreter;

    .line 1089
    .restart local v6    # "interpreter":Lbsh/Interpreter;
    invoke-virtual {v4}, Lbsh/This;->getNameSpace()Lbsh/NameSpace;

    move-result-object v8

    move-object v12, v4

    move-object v13, v6

    move-object v14, v8

    .line 1094
    .end local v4    # "instanceThis":Lbsh/This;
    .end local v6    # "interpreter":Lbsh/Interpreter;
    .local v12, "instanceThis":Lbsh/This;
    .local v13, "interpreter":Lbsh/Interpreter;
    .local v14, "instanceNameSpace":Lbsh/NameSpace;
    :goto_0
    invoke-static/range {p1 .. p1}, Lbsh/ClassGeneratorUtil;->getBaseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1097
    .local v15, "constructorName":Ljava/lang/String;
    :try_start_3
    invoke-virtual {v14, v15, v3, v0}, Lbsh/NameSpace;->getMethod(Ljava/lang/String;[Ljava/lang/Class;Z)Lbsh/BshMethod;

    move-result-object v0

    .line 1101
    .local v0, "constructor":Lbsh/BshMethod;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lbsh/BshMethod;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1102
    const/4 v0, 0x0

    .line 1105
    :cond_2
    move-object/from16 v9, p2

    array-length v4, v9

    if-lez v4, :cond_4

    if-eqz v0, :cond_3

    goto :goto_1

    .line 1106
    :cond_3
    new-instance v4, Lbsh/InterpreterError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t find constructor: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    .end local v3    # "sig":[Ljava/lang/Class;
    .end local v10    # "callstack":Lbsh/CallStack;
    .end local v12    # "instanceThis":Lbsh/This;
    .end local v13    # "interpreter":Lbsh/Interpreter;
    .end local v14    # "instanceNameSpace":Lbsh/NameSpace;
    .end local v15    # "constructorName":Ljava/lang/String;
    .end local p0    # "instance":Ljava/lang/Object;
    .end local p1    # "className":Ljava/lang/String;
    .end local p2    # "args":[Ljava/lang/Object;
    throw v4

    .line 1110
    .restart local v3    # "sig":[Ljava/lang/Class;
    .restart local v10    # "callstack":Lbsh/CallStack;
    .restart local v12    # "instanceThis":Lbsh/This;
    .restart local v13    # "interpreter":Lbsh/Interpreter;
    .restart local v14    # "instanceNameSpace":Lbsh/NameSpace;
    .restart local v15    # "constructorName":Ljava/lang/String;
    .restart local p0    # "instance":Ljava/lang/Object;
    .restart local p1    # "className":Ljava/lang/String;
    .restart local p2    # "args":[Ljava/lang/Object;
    :cond_4
    :goto_1
    if-eqz v0, :cond_5

    .line 1111
    const/4 v8, 0x0

    const/16 v16, 0x0

    move-object v4, v0

    move-object/from16 v5, p2

    move-object v6, v13

    move-object v7, v10

    move/from16 v9, v16

    invoke-virtual/range {v4 .. v9}, Lbsh/BshMethod;->invoke([Ljava/lang/Object;Lbsh/Interpreter;Lbsh/CallStack;Lbsh/SimpleNode;Z)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 1122
    .end local v0    # "constructor":Lbsh/BshMethod;
    :cond_5
    nop

    .line 1123
    return-void

    .line 1113
    :catch_3
    move-exception v0

    .line 1114
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v4, Lbsh/Interpreter;->DEBUG:Z

    if-eqz v4, :cond_6

    .line 1115
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1116
    :cond_6
    instance-of v4, v0, Lbsh/TargetError;

    if-eqz v4, :cond_7

    .line 1117
    move-object v4, v0

    check-cast v4, Lbsh/TargetError;

    invoke-virtual {v4}, Lbsh/TargetError;->getTarget()Ljava/lang/Throwable;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/Exception;

    .line 1118
    :cond_7
    instance-of v4, v0, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v4, :cond_8

    .line 1119
    move-object v4, v0

    check-cast v4, Ljava/lang/reflect/InvocationTargetException;

    .line 1120
    invoke-virtual {v4}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/Exception;

    .line 1121
    :cond_8
    new-instance v4, Lbsh/InterpreterError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public static initStatic(Ljava/lang/Class;)V
    .locals 0
    .param p0, "genClass"    # Ljava/lang/Class;

    .line 1136
    invoke-static {p0}, Lbsh/ClassGeneratorUtil;->startInterpreterForClass(Ljava/lang/Class;)V

    .line 1137
    return-void
.end method

.method private static isPrimitive(Ljava/lang/String;)Z
    .locals 2
    .param p0, "typeDescriptor"    # Ljava/lang/String;

    .line 1174
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static pushBshStatic(Ljava/lang/String;Ljava/lang/String;Lbsh/org/objectweb/asm/CodeVisitor;)V
    .locals 3
    .param p0, "fqClassName"    # Ljava/lang/String;
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "cv"    # Lbsh/org/objectweb/asm/CodeVisitor;

    .line 579
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_bshStatic"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xb2

    const-string v2, "Lbsh/This;"

    invoke-interface {p2, v1, p0, v0, v2}, Lbsh/org/objectweb/asm/CodeVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    return-void
.end method

.method private splitMethodsAndConstructors(Ljava/lang/String;[Lbsh/DelayedEvalBshMethod;)V
    .locals 6
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "bshmethods"    # [Lbsh/DelayedEvalBshMethod;

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 181
    .local v0, "consl":Ljava/util/List;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 182
    .local v1, "methodsl":Ljava/util/List;
    invoke-static {p1}, Lbsh/ClassGeneratorUtil;->getBaseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 183
    .local v2, "classBaseName":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, p2

    if-ge v3, v4, :cond_1

    .line 185
    aget-object v4, p2, v3

    .line 186
    .local v4, "bm":Lbsh/BshMethod;
    invoke-virtual {v4}, Lbsh/BshMethod;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 187
    invoke-virtual {v4}, Lbsh/BshMethod;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    if-nez v5, :cond_0

    .line 189
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 191
    :cond_0
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    .end local v4    # "bm":Lbsh/BshMethod;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 194
    .end local v3    # "i":I
    :cond_1
    const/4 v3, 0x0

    new-array v4, v3, [Lbsh/DelayedEvalBshMethod;

    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lbsh/DelayedEvalBshMethod;

    check-cast v4, [Lbsh/DelayedEvalBshMethod;

    iput-object v4, p0, Lbsh/ClassGeneratorUtil;->constructors:[Lbsh/DelayedEvalBshMethod;

    .line 196
    new-array v3, v3, [Lbsh/DelayedEvalBshMethod;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lbsh/DelayedEvalBshMethod;

    check-cast v3, [Lbsh/DelayedEvalBshMethod;

    iput-object v3, p0, Lbsh/ClassGeneratorUtil;->methods:[Lbsh/DelayedEvalBshMethod;

    .line 198
    return-void
.end method

.method public static startInterpreterForClass(Ljava/lang/Class;)V
    .locals 11
    .param p0, "genClass"    # Ljava/lang/Class;

    .line 1262
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1263
    .local v0, "fqClassName":Ljava/lang/String;
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lbsh/Name;->suffix(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1264
    .local v1, "baseName":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".bsh"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1266
    .local v2, "resName":Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 1267
    .local v3, "in":Ljava/io/InputStream;
    if-eqz v3, :cond_1

    .line 1272
    new-instance v4, Ljava/io/InputStreamReader;

    .line 1273
    invoke-virtual {p0, v2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 1276
    .local v4, "reader":Ljava/io/Reader;
    new-instance v5, Lbsh/Interpreter;

    invoke-direct {v5}, Lbsh/Interpreter;-><init>()V

    .line 1277
    .local v5, "bsh":Lbsh/Interpreter;
    invoke-virtual {v5}, Lbsh/Interpreter;->getNameSpace()Lbsh/NameSpace;

    move-result-object v6

    .line 1278
    .local v6, "globalNS":Lbsh/NameSpace;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "class_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_global"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lbsh/NameSpace;->setName(Ljava/lang/String;)V

    .line 1279
    invoke-virtual {v6}, Lbsh/NameSpace;->getClassManager()Lbsh/BshClassManager;

    move-result-object v7

    invoke-virtual {v7, p0}, Lbsh/BshClassManager;->associateClass(Ljava/lang/Class;)V

    .line 1283
    :try_start_0
    invoke-virtual {v5}, Lbsh/Interpreter;->getNameSpace()Lbsh/NameSpace;

    move-result-object v7

    invoke-virtual {v5, v4, v7, v2}, Lbsh/Interpreter;->eval(Ljava/io/Reader;Lbsh/NameSpace;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lbsh/TargetError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lbsh/EvalError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1290
    :cond_0
    :goto_0
    goto :goto_1

    .line 1288
    :catch_0
    move-exception v7

    .line 1289
    .local v7, "e":Lbsh/EvalError;
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Evaluation Error: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 1284
    .end local v7    # "e":Lbsh/EvalError;
    :catch_1
    move-exception v7

    .line 1285
    .local v7, "e":Lbsh/TargetError;
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Script threw exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1286
    invoke-virtual {v7}, Lbsh/TargetError;->inNativeCode()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1287
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v7, v8}, Lbsh/TargetError;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_0

    .line 1291
    .end local v7    # "e":Lbsh/TargetError;
    :goto_1
    return-void

    .line 1268
    .end local v4    # "reader":Ljava/io/Reader;
    .end local v5    # "bsh":Lbsh/Interpreter;
    .end local v6    # "globalNS":Lbsh/NameSpace;
    :cond_1
    new-instance v4, Lbsh/InterpreterError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Script ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") for BeanShell generated class: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not found."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v4
.end method


# virtual methods
.method public generateClass(Z)[B
    .locals 20
    .param p1, "generateInitCode"    # Z

    .line 206
    move-object/from16 v0, p0

    iget-object v1, v0, Lbsh/ClassGeneratorUtil;->classModifiers:Lbsh/Modifiers;

    invoke-static {v1}, Lbsh/ClassGeneratorUtil;->getASMModifiers(Lbsh/Modifiers;)I

    move-result v1

    const/4 v2, 0x1

    or-int/2addr v1, v2

    .line 207
    .local v1, "classMods":I
    iget-boolean v3, v0, Lbsh/ClassGeneratorUtil;->isInterface:Z

    if-eqz v3, :cond_0

    .line 208
    or-int/lit16 v1, v1, 0x200

    .line 210
    :cond_0
    iget-object v3, v0, Lbsh/ClassGeneratorUtil;->interfaces:[Ljava/lang/Class;

    array-length v3, v3

    new-array v9, v3, [Ljava/lang/String;

    .line 211
    .local v9, "interfaceNames":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, v0, Lbsh/ClassGeneratorUtil;->interfaces:[Ljava/lang/Class;

    array-length v5, v4

    if-ge v3, v5, :cond_1

    .line 212
    aget-object v4, v4, v3

    invoke-static {v4}, Lbsh/org/objectweb/asm/Type;->getInternalName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v9, v3

    .line 211
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 214
    .end local v3    # "i":I
    :cond_1
    const-string v10, "BeanShell Generated via ASM (www.objectweb.org)"

    .line 215
    .local v10, "sourceFile":Ljava/lang/String;
    new-instance v3, Lbsh/org/objectweb/asm/ClassWriter;

    invoke-direct {v3, v2}, Lbsh/org/objectweb/asm/ClassWriter;-><init>(Z)V

    move-object v15, v3

    .line 216
    .local v15, "cw":Lbsh/org/objectweb/asm/ClassWriter;
    iget-object v5, v0, Lbsh/ClassGeneratorUtil;->fqClassName:Ljava/lang/String;

    iget-object v6, v0, Lbsh/ClassGeneratorUtil;->superClassName:Ljava/lang/String;

    move v4, v1

    move-object v7, v9

    move-object v8, v10

    invoke-virtual/range {v3 .. v8}, Lbsh/org/objectweb/asm/ClassWriter;->visit(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-boolean v3, v0, Lbsh/ClassGeneratorUtil;->isInterface:Z

    if-nez v3, :cond_2

    .line 222
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_bshThis"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lbsh/ClassGeneratorUtil;->className:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Lbsh/This;"

    invoke-static {v3, v4, v2, v15}, Lbsh/ClassGeneratorUtil;->generateField(Ljava/lang/String;Ljava/lang/String;ILbsh/org/objectweb/asm/ClassWriter;)V

    .line 226
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_bshStatic"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v0, Lbsh/ClassGeneratorUtil;->className:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x9

    invoke-static {v3, v4, v5, v15}, Lbsh/ClassGeneratorUtil;->generateField(Ljava/lang/String;Ljava/lang/String;ILbsh/org/objectweb/asm/ClassWriter;)V

    .line 231
    :cond_2
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    iget-object v4, v0, Lbsh/ClassGeneratorUtil;->vars:[Lbsh/Variable;

    array-length v5, v4

    const-string/jumbo v6, "private"

    if-ge v3, v5, :cond_6

    .line 233
    aget-object v4, v4, v3

    invoke-virtual {v4}, Lbsh/Variable;->getTypeDescriptor()Ljava/lang/String;

    move-result-object v4

    .line 237
    .local v4, "type":Ljava/lang/String;
    iget-object v5, v0, Lbsh/ClassGeneratorUtil;->vars:[Lbsh/Variable;

    aget-object v5, v5, v3

    invoke-virtual {v5, v6}, Lbsh/Variable;->hasModifier(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    if-nez v4, :cond_3

    .line 238
    goto :goto_3

    .line 241
    :cond_3
    iget-boolean v5, v0, Lbsh/ClassGeneratorUtil;->isInterface:Z

    if-eqz v5, :cond_4

    .line 242
    const/16 v5, 0x19

    .local v5, "modifiers":I
    goto :goto_2

    .line 244
    .end local v5    # "modifiers":I
    :cond_4
    iget-object v5, v0, Lbsh/ClassGeneratorUtil;->vars:[Lbsh/Variable;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Lbsh/Variable;->getModifiers()Lbsh/Modifiers;

    move-result-object v5

    invoke-static {v5}, Lbsh/ClassGeneratorUtil;->getASMModifiers(Lbsh/Modifiers;)I

    move-result v5

    .line 246
    .restart local v5    # "modifiers":I
    :goto_2
    iget-object v6, v0, Lbsh/ClassGeneratorUtil;->vars:[Lbsh/Variable;

    aget-object v6, v6, v3

    invoke-virtual {v6}, Lbsh/Variable;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4, v5, v15}, Lbsh/ClassGeneratorUtil;->generateField(Ljava/lang/String;Ljava/lang/String;ILbsh/org/objectweb/asm/ClassWriter;)V

    .line 231
    .end local v4    # "type":Ljava/lang/String;
    .end local v5    # "modifiers":I
    :cond_5
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 251
    .end local v3    # "i":I
    :cond_6
    if-eqz p1, :cond_7

    .line 252
    invoke-virtual {v0, v15}, Lbsh/ClassGeneratorUtil;->generateStaticInitializer(Lbsh/org/objectweb/asm/ClassWriter;)V

    .line 255
    :cond_7
    const/4 v3, 0x0

    .line 256
    .local v3, "hasConstructor":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4
    iget-object v5, v0, Lbsh/ClassGeneratorUtil;->constructors:[Lbsh/DelayedEvalBshMethod;

    array-length v7, v5

    if-ge v4, v7, :cond_9

    .line 259
    aget-object v5, v5, v4

    invoke-virtual {v5, v6}, Lbsh/DelayedEvalBshMethod;->hasModifier(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 260
    goto :goto_5

    .line 262
    :cond_8
    iget-object v5, v0, Lbsh/ClassGeneratorUtil;->constructors:[Lbsh/DelayedEvalBshMethod;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Lbsh/DelayedEvalBshMethod;->getModifiers()Lbsh/Modifiers;

    move-result-object v5

    invoke-static {v5}, Lbsh/ClassGeneratorUtil;->getASMModifiers(Lbsh/Modifiers;)I

    move-result v5

    .line 263
    .restart local v5    # "modifiers":I
    iget-object v7, v0, Lbsh/ClassGeneratorUtil;->constructors:[Lbsh/DelayedEvalBshMethod;

    aget-object v7, v7, v4

    .line 264
    invoke-virtual {v7}, Lbsh/DelayedEvalBshMethod;->getParamTypeDescriptors()[Ljava/lang/String;

    move-result-object v7

    .line 263
    invoke-virtual {v0, v4, v7, v5, v15}, Lbsh/ClassGeneratorUtil;->generateConstructor(I[Ljava/lang/String;ILbsh/org/objectweb/asm/ClassWriter;)V

    .line 265
    const/4 v3, 0x1

    .line 256
    .end local v5    # "modifiers":I
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 269
    .end local v4    # "i":I
    :cond_9
    iget-boolean v4, v0, Lbsh/ClassGeneratorUtil;->isInterface:Z

    const/4 v5, 0x0

    if-nez v4, :cond_a

    if-nez v3, :cond_a

    .line 270
    const/4 v4, -0x1

    new-array v7, v5, [Ljava/lang/String;

    invoke-virtual {v0, v4, v7, v2, v15}, Lbsh/ClassGeneratorUtil;->generateConstructor(I[Ljava/lang/String;ILbsh/org/objectweb/asm/ClassWriter;)V

    .line 274
    :cond_a
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_6
    iget-object v7, v0, Lbsh/ClassGeneratorUtil;->methods:[Lbsh/DelayedEvalBshMethod;

    array-length v8, v7

    if-ge v4, v8, :cond_f

    .line 276
    aget-object v7, v7, v4

    invoke-virtual {v7}, Lbsh/DelayedEvalBshMethod;->getReturnTypeDescriptor()Ljava/lang/String;

    move-result-object v7

    .line 279
    .local v7, "returnType":Ljava/lang/String;
    iget-object v8, v0, Lbsh/ClassGeneratorUtil;->methods:[Lbsh/DelayedEvalBshMethod;

    aget-object v8, v8, v4

    invoke-virtual {v8, v6}, Lbsh/DelayedEvalBshMethod;->hasModifier(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 280
    move-object/from16 v18, v15

    goto/16 :goto_8

    .line 282
    :cond_b
    iget-object v8, v0, Lbsh/ClassGeneratorUtil;->methods:[Lbsh/DelayedEvalBshMethod;

    aget-object v8, v8, v4

    invoke-virtual {v8}, Lbsh/DelayedEvalBshMethod;->getModifiers()Lbsh/Modifiers;

    move-result-object v8

    invoke-static {v8}, Lbsh/ClassGeneratorUtil;->getASMModifiers(Lbsh/Modifiers;)I

    move-result v8

    .line 283
    .local v8, "modifiers":I
    iget-boolean v11, v0, Lbsh/ClassGeneratorUtil;->isInterface:Z

    if-eqz v11, :cond_c

    .line 284
    or-int/lit16 v8, v8, 0x401

    .line 286
    :cond_c
    iget-object v11, v0, Lbsh/ClassGeneratorUtil;->className:Ljava/lang/String;

    iget-object v12, v0, Lbsh/ClassGeneratorUtil;->fqClassName:Ljava/lang/String;

    iget-object v13, v0, Lbsh/ClassGeneratorUtil;->methods:[Lbsh/DelayedEvalBshMethod;

    aget-object v13, v13, v4

    .line 287
    invoke-virtual {v13}, Lbsh/DelayedEvalBshMethod;->getName()Ljava/lang/String;

    move-result-object v13

    iget-object v14, v0, Lbsh/ClassGeneratorUtil;->methods:[Lbsh/DelayedEvalBshMethod;

    aget-object v14, v14, v4

    .line 288
    invoke-virtual {v14}, Lbsh/DelayedEvalBshMethod;->getParamTypeDescriptors()[Ljava/lang/String;

    move-result-object v16

    .line 286
    move-object v14, v7

    move-object/from16 v18, v15

    .end local v15    # "cw":Lbsh/org/objectweb/asm/ClassWriter;
    .local v18, "cw":Lbsh/org/objectweb/asm/ClassWriter;
    move-object/from16 v15, v16

    move/from16 v16, v8

    move-object/from16 v17, v18

    invoke-static/range {v11 .. v17}, Lbsh/ClassGeneratorUtil;->generateMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ILbsh/org/objectweb/asm/ClassWriter;)V

    .line 290
    and-int/lit8 v11, v8, 0x8

    if-lez v11, :cond_d

    move v11, v2

    goto :goto_7

    :cond_d
    move v11, v5

    :goto_7
    move/from16 v17, v11

    .line 291
    .local v17, "isStatic":Z
    iget-object v11, v0, Lbsh/ClassGeneratorUtil;->superClass:Ljava/lang/Class;

    iget-object v12, v0, Lbsh/ClassGeneratorUtil;->methods:[Lbsh/DelayedEvalBshMethod;

    aget-object v12, v12, v4

    .line 292
    invoke-virtual {v12}, Lbsh/DelayedEvalBshMethod;->getName()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v0, Lbsh/ClassGeneratorUtil;->methods:[Lbsh/DelayedEvalBshMethod;

    aget-object v13, v13, v4

    .line 293
    invoke-virtual {v13}, Lbsh/DelayedEvalBshMethod;->getParamTypeDescriptors()[Ljava/lang/String;

    move-result-object v13

    .line 291
    invoke-static {v11, v12, v13}, Lbsh/ClassGeneratorUtil;->classContainsMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v19

    .line 294
    .local v19, "overridden":Z
    if-nez v17, :cond_e

    if-eqz v19, :cond_e

    .line 295
    iget-object v11, v0, Lbsh/ClassGeneratorUtil;->superClassName:Ljava/lang/String;

    iget-object v12, v0, Lbsh/ClassGeneratorUtil;->methods:[Lbsh/DelayedEvalBshMethod;

    aget-object v12, v12, v4

    .line 296
    invoke-virtual {v12}, Lbsh/DelayedEvalBshMethod;->getName()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v0, Lbsh/ClassGeneratorUtil;->methods:[Lbsh/DelayedEvalBshMethod;

    aget-object v13, v13, v4

    .line 297
    invoke-virtual {v13}, Lbsh/DelayedEvalBshMethod;->getParamTypeDescriptors()[Ljava/lang/String;

    move-result-object v14

    .line 295
    move-object v13, v7

    move v15, v8

    move-object/from16 v16, v18

    invoke-static/range {v11 .. v16}, Lbsh/ClassGeneratorUtil;->generateSuperDelegateMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ILbsh/org/objectweb/asm/ClassWriter;)V

    .line 274
    .end local v7    # "returnType":Ljava/lang/String;
    .end local v8    # "modifiers":I
    .end local v17    # "isStatic":Z
    .end local v19    # "overridden":Z
    :cond_e
    :goto_8
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v15, v18

    goto/16 :goto_6

    .end local v18    # "cw":Lbsh/org/objectweb/asm/ClassWriter;
    .restart local v15    # "cw":Lbsh/org/objectweb/asm/ClassWriter;
    :cond_f
    move-object/from16 v18, v15

    .line 300
    .end local v4    # "i":I
    .end local v15    # "cw":Lbsh/org/objectweb/asm/ClassWriter;
    .restart local v18    # "cw":Lbsh/org/objectweb/asm/ClassWriter;
    invoke-virtual/range {v18 .. v18}, Lbsh/org/objectweb/asm/ClassWriter;->toByteArray()[B

    move-result-object v2

    return-object v2
.end method

.method generateConstructor(I[Ljava/lang/String;ILbsh/org/objectweb/asm/ClassWriter;)V
    .locals 10
    .param p1, "index"    # I
    .param p2, "paramTypes"    # [Ljava/lang/String;
    .param p3, "modifiers"    # I
    .param p4, "cw"    # Lbsh/org/objectweb/asm/ClassWriter;

    .line 423
    array-length v0, p2

    add-int/lit8 v0, v0, 0x1

    .line 425
    .local v0, "argsVar":I
    array-length v1, p2

    add-int/lit8 v1, v1, 0x2

    .line 427
    .local v1, "consArgsVar":I
    const/4 v2, 0x0

    .line 428
    .local v2, "exceptions":[Ljava/lang/String;
    const-string v3, "V"

    invoke-static {v3, p2}, Lbsh/ClassGeneratorUtil;->getMethodDescriptor(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 431
    .local v3, "methodDescriptor":Ljava/lang/String;
    nop

    .line 432
    const-string v4, "<init>"

    invoke-virtual {p4, p3, v4, v3, v2}, Lbsh/org/objectweb/asm/ClassWriter;->visitMethod(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lbsh/org/objectweb/asm/CodeVisitor;

    move-result-object v4

    .line 435
    .local v4, "cv":Lbsh/org/objectweb/asm/CodeVisitor;
    const/4 v5, 0x0

    invoke-static {p2, v5, v4}, Lbsh/ClassGeneratorUtil;->generateParameterReifierCode([Ljava/lang/String;ZLbsh/org/objectweb/asm/CodeVisitor;)V

    .line 436
    const/16 v6, 0x3a

    invoke-interface {v4, v6, v0}, Lbsh/org/objectweb/asm/CodeVisitor;->visitVarInsn(II)V

    .line 439
    invoke-virtual {p0, p1, v0, v1, v4}, Lbsh/ClassGeneratorUtil;->generateConstructorSwitch(IIILbsh/org/objectweb/asm/CodeVisitor;)V

    .line 444
    const/16 v6, 0x19

    invoke-interface {v4, v6, v5}, Lbsh/org/objectweb/asm/CodeVisitor;->visitVarInsn(II)V

    .line 447
    iget-object v7, p0, Lbsh/ClassGeneratorUtil;->className:Ljava/lang/String;

    invoke-interface {v4, v7}, Lbsh/org/objectweb/asm/CodeVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 450
    invoke-interface {v4, v6, v0}, Lbsh/org/objectweb/asm/CodeVisitor;->visitVarInsn(II)V

    .line 453
    const/16 v6, 0xb8

    const-string v7, "bsh/ClassGeneratorUtil"

    const-string v8, "initInstance"

    const-string v9, "(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V"

    invoke-interface {v4, v6, v7, v8, v9}, Lbsh/org/objectweb/asm/CodeVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    const/16 v6, 0xb1

    invoke-interface {v4, v6}, Lbsh/org/objectweb/asm/CodeVisitor;->visitInsn(I)V

    .line 460
    invoke-interface {v4, v5, v5}, Lbsh/org/objectweb/asm/CodeVisitor;->visitMaxs(II)V

    .line 461
    return-void
.end method

.method generateConstructorSwitch(IIILbsh/org/objectweb/asm/CodeVisitor;)V
    .locals 18
    .param p1, "consIndex"    # I
    .param p2, "argsVar"    # I
    .param p3, "consArgsVar"    # I
    .param p4, "cv"    # Lbsh/org/objectweb/asm/CodeVisitor;

    .line 510
    move-object/from16 v0, p0

    move/from16 v8, p3

    move-object/from16 v9, p4

    new-instance v1, Lbsh/org/objectweb/asm/Label;

    invoke-direct {v1}, Lbsh/org/objectweb/asm/Label;-><init>()V

    move-object v10, v1

    .line 511
    .local v10, "defaultLabel":Lbsh/org/objectweb/asm/Label;
    new-instance v1, Lbsh/org/objectweb/asm/Label;

    invoke-direct {v1}, Lbsh/org/objectweb/asm/Label;-><init>()V

    move-object v11, v1

    .line 512
    .local v11, "endLabel":Lbsh/org/objectweb/asm/Label;
    iget-object v1, v0, Lbsh/ClassGeneratorUtil;->superConstructors:[Ljava/lang/reflect/Constructor;

    array-length v1, v1

    iget-object v2, v0, Lbsh/ClassGeneratorUtil;->constructors:[Lbsh/DelayedEvalBshMethod;

    array-length v2, v2

    add-int v12, v1, v2

    .line 514
    .local v12, "cases":I
    new-array v13, v12, [Lbsh/org/objectweb/asm/Label;

    .line 515
    .local v13, "labels":[Lbsh/org/objectweb/asm/Label;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v12, :cond_0

    .line 516
    new-instance v2, Lbsh/org/objectweb/asm/Label;

    invoke-direct {v2}, Lbsh/org/objectweb/asm/Label;-><init>()V

    aput-object v2, v13, v1

    .line 515
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 522
    .end local v1    # "i":I
    :cond_0
    iget-object v1, v0, Lbsh/ClassGeneratorUtil;->superClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v1}, Lbsh/org/objectweb/asm/CodeVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 525
    iget-object v1, v0, Lbsh/ClassGeneratorUtil;->fqClassName:Ljava/lang/String;

    iget-object v2, v0, Lbsh/ClassGeneratorUtil;->className:Ljava/lang/String;

    invoke-static {v1, v2, v9}, Lbsh/ClassGeneratorUtil;->pushBshStatic(Ljava/lang/String;Ljava/lang/String;Lbsh/org/objectweb/asm/CodeVisitor;)V

    .line 528
    const/16 v14, 0x19

    move/from16 v15, p2

    invoke-interface {v9, v14, v15}, Lbsh/org/objectweb/asm/CodeVisitor;->visitVarInsn(II)V

    .line 531
    const/16 v1, 0x10

    move/from16 v7, p1

    invoke-interface {v9, v1, v7}, Lbsh/org/objectweb/asm/CodeVisitor;->visitIntInsn(II)V

    .line 534
    const/16 v1, 0xb8

    const-string v2, "bsh/ClassGeneratorUtil"

    const-string v3, "getConstructorArgs"

    const-string v4, "(Ljava/lang/String;Lbsh/This;[Ljava/lang/Object;I)Lbsh/ClassGeneratorUtil$ConstructorArgs;"

    invoke-interface {v9, v1, v2, v3, v4}, Lbsh/org/objectweb/asm/CodeVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    const/16 v1, 0x3a

    invoke-interface {v9, v1, v8}, Lbsh/org/objectweb/asm/CodeVisitor;->visitVarInsn(II)V

    .line 546
    invoke-interface {v9, v14, v8}, Lbsh/org/objectweb/asm/CodeVisitor;->visitVarInsn(II)V

    .line 547
    const/16 v1, 0xb4

    const-string v2, "bsh/ClassGeneratorUtil$ConstructorArgs"

    const-string/jumbo v3, "selector"

    const-string v4, "I"

    invoke-interface {v9, v1, v2, v3, v4}, Lbsh/org/objectweb/asm/CodeVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    add-int/lit8 v1, v12, -0x1

    const/4 v6, 0x0

    invoke-interface {v9, v6, v1, v10, v13}, Lbsh/org/objectweb/asm/CodeVisitor;->visitTableSwitchInsn(IILbsh/org/objectweb/asm/Label;[Lbsh/org/objectweb/asm/Label;)V

    .line 555
    const/4 v1, 0x0

    .line 556
    .local v1, "index":I
    const/4 v2, 0x0

    move/from16 v16, v1

    move v5, v2

    .end local v1    # "index":I
    .local v5, "i":I
    .local v16, "index":I
    :goto_1
    iget-object v1, v0, Lbsh/ClassGeneratorUtil;->superConstructors:[Ljava/lang/reflect/Constructor;

    array-length v2, v1

    if-ge v5, v2, :cond_1

    .line 557
    iget-object v2, v0, Lbsh/ClassGeneratorUtil;->superClassName:Ljava/lang/String;

    aget-object v1, v1, v5

    .line 558
    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lbsh/ClassGeneratorUtil;->getTypeDescriptors([Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v3

    .line 557
    move/from16 v1, v16

    move-object v4, v11

    move/from16 v17, v5

    .end local v5    # "i":I
    .local v17, "i":I
    move-object v5, v13

    move v8, v6

    move/from16 v6, p3

    move-object/from16 v7, p4

    invoke-static/range {v1 .. v7}, Lbsh/ClassGeneratorUtil;->doSwitchBranch(ILjava/lang/String;[Ljava/lang/String;Lbsh/org/objectweb/asm/Label;[Lbsh/org/objectweb/asm/Label;ILbsh/org/objectweb/asm/CodeVisitor;)V

    .line 556
    add-int/lit8 v5, v17, 0x1

    .end local v17    # "i":I
    .restart local v5    # "i":I
    add-int/lit8 v16, v16, 0x1

    move/from16 v7, p1

    move v6, v8

    move/from16 v8, p3

    goto :goto_1

    :cond_1
    move/from16 v17, v5

    move v8, v6

    .line 560
    .end local v5    # "i":I
    const/4 v1, 0x0

    move v7, v1

    .local v7, "i":I
    :goto_2
    iget-object v1, v0, Lbsh/ClassGeneratorUtil;->constructors:[Lbsh/DelayedEvalBshMethod;

    array-length v2, v1

    if-ge v7, v2, :cond_2

    .line 561
    iget-object v2, v0, Lbsh/ClassGeneratorUtil;->fqClassName:Ljava/lang/String;

    aget-object v1, v1, v7

    .line 562
    invoke-virtual {v1}, Lbsh/DelayedEvalBshMethod;->getParamTypeDescriptors()[Ljava/lang/String;

    move-result-object v3

    .line 561
    move/from16 v1, v16

    move-object v4, v11

    move-object v5, v13

    move/from16 v6, p3

    move/from16 v17, v7

    .end local v7    # "i":I
    .restart local v17    # "i":I
    move-object/from16 v7, p4

    invoke-static/range {v1 .. v7}, Lbsh/ClassGeneratorUtil;->doSwitchBranch(ILjava/lang/String;[Ljava/lang/String;Lbsh/org/objectweb/asm/Label;[Lbsh/org/objectweb/asm/Label;ILbsh/org/objectweb/asm/CodeVisitor;)V

    .line 560
    add-int/lit8 v7, v17, 0x1

    .end local v17    # "i":I
    .restart local v7    # "i":I
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 566
    .end local v7    # "i":I
    :cond_2
    invoke-interface {v9, v10}, Lbsh/org/objectweb/asm/CodeVisitor;->visitLabel(Lbsh/org/objectweb/asm/Label;)V

    .line 568
    invoke-interface {v9, v14, v8}, Lbsh/org/objectweb/asm/CodeVisitor;->visitVarInsn(II)V

    .line 569
    const/16 v1, 0xb7

    iget-object v2, v0, Lbsh/ClassGeneratorUtil;->superClassName:Ljava/lang/String;

    const-string v3, "<init>"

    const-string v4, "()V"

    invoke-interface {v9, v1, v2, v3, v4}, Lbsh/org/objectweb/asm/CodeVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    invoke-interface {v9, v11}, Lbsh/org/objectweb/asm/CodeVisitor;->visitLabel(Lbsh/org/objectweb/asm/Label;)V

    .line 573
    return-void
.end method

.method generateStaticInitializer(Lbsh/org/objectweb/asm/ClassWriter;)V
    .locals 5
    .param p1, "cw"    # Lbsh/org/objectweb/asm/ClassWriter;

    .line 468
    nop

    .line 469
    const/16 v0, 0x8

    const-string v1, "<clinit>"

    const-string v2, "()V"

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Lbsh/org/objectweb/asm/ClassWriter;->visitMethod(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lbsh/org/objectweb/asm/CodeVisitor;

    move-result-object v0

    .line 474
    .local v0, "cv":Lbsh/org/objectweb/asm/CodeVisitor;
    iget-object v1, p0, Lbsh/ClassGeneratorUtil;->fqClassName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lbsh/org/objectweb/asm/CodeVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 479
    const/16 v1, 0xb8

    const-string v2, "java/lang/Class"

    const-string v3, "forName"

    const-string v4, "(Ljava/lang/String;)Ljava/lang/Class;"

    invoke-interface {v0, v1, v2, v3, v4}, Lbsh/org/objectweb/asm/CodeVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    const-string v2, "bsh/ClassGeneratorUtil"

    const-string v3, "initStatic"

    const-string v4, "(Ljava/lang/Class;)V"

    invoke-interface {v0, v1, v2, v3, v4}, Lbsh/org/objectweb/asm/CodeVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    const/16 v1, 0xb1

    invoke-interface {v0, v1}, Lbsh/org/objectweb/asm/CodeVisitor;->visitInsn(I)V

    .line 491
    const/4 v1, 0x0

    invoke-interface {v0, v1, v1}, Lbsh/org/objectweb/asm/CodeVisitor;->visitMaxs(II)V

    .line 492
    return-void
.end method

.method public initStaticNameSpace(Lbsh/NameSpace;Lbsh/BSHBlock;)V
    .locals 4
    .param p1, "classStaticNameSpace"    # Lbsh/NameSpace;
    .param p2, "instanceInitBlock"    # Lbsh/BSHBlock;

    .line 166
    :try_start_0
    const-string v0, "_bshConstructors"

    iget-object v1, p0, Lbsh/ClassGeneratorUtil;->constructors:[Lbsh/DelayedEvalBshMethod;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lbsh/NameSpace;->setLocalVariable(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 168
    const-string v0, "_bshInstanceInitializer"

    invoke-virtual {p1, v0, p2, v2}, Lbsh/NameSpace;->setLocalVariable(Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_0
    .catch Lbsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    nop

    .line 174
    return-void

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Lbsh/UtilEvalError;
    new-instance v1, Lbsh/InterpreterError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to init class static block: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v1
.end method
