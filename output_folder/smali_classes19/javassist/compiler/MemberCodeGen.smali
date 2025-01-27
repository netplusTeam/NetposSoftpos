.class public Ljavassist/compiler/MemberCodeGen;
.super Ljavassist/compiler/CodeGen;
.source "MemberCodeGen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavassist/compiler/MemberCodeGen$JsrHook2;,
        Ljavassist/compiler/MemberCodeGen$JsrHook;
    }
.end annotation


# instance fields
.field protected resolver:Ljavassist/compiler/MemberResolver;

.field protected resultStatic:Z

.field protected thisClass:Ljavassist/CtClass;

.field protected thisMethod:Ljavassist/bytecode/MethodInfo;


# direct methods
.method public constructor <init>(Ljavassist/bytecode/Bytecode;Ljavassist/CtClass;Ljavassist/ClassPool;)V
    .locals 1
    .param p1, "b"    # Ljavassist/bytecode/Bytecode;
    .param p2, "cc"    # Ljavassist/CtClass;
    .param p3, "cp"    # Ljavassist/ClassPool;

    .line 60
    invoke-direct {p0, p1}, Ljavassist/compiler/CodeGen;-><init>(Ljavassist/bytecode/Bytecode;)V

    .line 61
    new-instance v0, Ljavassist/compiler/MemberResolver;

    invoke-direct {v0, p3}, Ljavassist/compiler/MemberResolver;-><init>(Ljavassist/ClassPool;)V

    iput-object v0, p0, Ljavassist/compiler/MemberCodeGen;->resolver:Ljavassist/compiler/MemberResolver;

    .line 62
    iput-object p2, p0, Ljavassist/compiler/MemberCodeGen;->thisClass:Ljavassist/CtClass;

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Ljavassist/compiler/MemberCodeGen;->thisMethod:Ljavassist/bytecode/MethodInfo;

    .line 64
    return-void
.end method

.method private addFieldrefInfo(Ljavassist/CtField;Ljavassist/bytecode/FieldInfo;)I
    .locals 6
    .param p1, "f"    # Ljavassist/CtField;
    .param p2, "finfo"    # Ljavassist/bytecode/FieldInfo;

    .line 1023
    iget-object v0, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v0}, Ljavassist/bytecode/Bytecode;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v0

    .line 1024
    .local v0, "cp":Ljavassist/bytecode/ConstPool;
    invoke-virtual {p1}, Ljavassist/CtField;->getDeclaringClass()Ljavassist/CtClass;

    move-result-object v1

    invoke-virtual {v1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1025
    .local v1, "cname":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljava/lang/String;)I

    move-result v2

    .line 1026
    .local v2, "ci":I
    invoke-virtual {p2}, Ljavassist/bytecode/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1027
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {p2}, Ljavassist/bytecode/FieldInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    .line 1028
    .local v4, "type":Ljava/lang/String;
    invoke-virtual {v0, v2, v3, v4}, Ljavassist/bytecode/ConstPool;->addFieldrefInfo(ILjava/lang/String;Ljava/lang/String;)I

    move-result v5

    return v5
.end method

.method private addFinally(Ljava/util/List;Ljavassist/compiler/ast/Stmnt;)V
    .locals 7
    .param p2, "finallyBlock"    # Ljavassist/compiler/ast/Stmnt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[I>;",
            "Ljavassist/compiler/ast/Stmnt;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 306
    .local p1, "returnList":Ljava/util/List;, "Ljava/util/List<[I>;"
    iget-object v0, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    .line 307
    .local v0, "bc":Ljavassist/bytecode/Bytecode;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 308
    .local v2, "ret":[I
    const/4 v3, 0x0

    aget v3, v2, v3

    .line 309
    .local v3, "pc":I
    invoke-virtual {v0}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result v4

    sub-int/2addr v4, v3

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v3, v4}, Ljavassist/bytecode/Bytecode;->write16bit(II)V

    .line 310
    new-instance v4, Ljavassist/compiler/MemberCodeGen$JsrHook2;

    invoke-direct {v4, p0, v2}, Ljavassist/compiler/MemberCodeGen$JsrHook2;-><init>(Ljavassist/compiler/CodeGen;[I)V

    .line 311
    .local v4, "hook":Ljavassist/compiler/CodeGen$ReturnHook;
    invoke-virtual {p2, p0}, Ljavassist/compiler/ast/Stmnt;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 312
    invoke-virtual {v4, p0}, Ljavassist/compiler/CodeGen$ReturnHook;->remove(Ljavassist/compiler/CodeGen;)V

    .line 313
    iget-boolean v5, p0, Ljavassist/compiler/MemberCodeGen;->hasReturned:Z

    if-nez v5, :cond_0

    .line 314
    const/16 v5, 0xa7

    invoke-virtual {v0, v5}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 315
    add-int/lit8 v5, v3, 0x3

    invoke-virtual {v0}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v0, v5}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    .line 317
    .end local v2    # "ret":[I
    .end local v3    # "pc":I
    .end local v4    # "hook":Ljavassist/compiler/CodeGen$ReturnHook;
    :cond_0
    goto :goto_0

    .line 318
    :cond_1
    return-void
.end method

.method private atArrayLength(Ljavassist/compiler/ast/ASTree;)V
    .locals 2
    .param p1, "expr"    # Ljavassist/compiler/ast/ASTree;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 934
    iget v0, p0, Ljavassist/compiler/MemberCodeGen;->arrayDim:I

    if-eqz v0, :cond_0

    .line 937
    iget-object v0, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v1, 0xbe

    invoke-virtual {v0, v1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 938
    const/16 v0, 0x144

    iput v0, p0, Ljavassist/compiler/MemberCodeGen;->exprType:I

    .line 939
    const/4 v0, 0x0

    iput v0, p0, Ljavassist/compiler/MemberCodeGen;->arrayDim:I

    .line 940
    return-void

    .line 935
    :cond_0
    new-instance v0, Ljavassist/compiler/CompileError;

    const-string v1, ".length applied to a non array"

    invoke-direct {v0, v1}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private atFieldAssignCore(Ljavassist/CtField;ZIZ)V
    .locals 7
    .param p1, "f"    # Ljavassist/CtField;
    .param p2, "is_static"    # Z
    .param p3, "fi"    # I
    .param p4, "is2byte"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 884
    if-eqz p3, :cond_3

    .line 885
    const/4 v0, -0x2

    if-eqz p2, :cond_1

    .line 886
    iget-object v1, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v2, 0xb3

    invoke-virtual {v1, v2}, Ljavassist/bytecode/Bytecode;->add(I)V

    .line 887
    iget-object v1, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    invoke-virtual {v1, v0}, Ljavassist/bytecode/Bytecode;->growStack(I)V

    goto :goto_1

    .line 890
    :cond_1
    iget-object v1, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v2, 0xb5

    invoke-virtual {v1, v2}, Ljavassist/bytecode/Bytecode;->add(I)V

    .line 891
    iget-object v1, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    if-eqz p4, :cond_2

    const/4 v0, -0x3

    :cond_2
    invoke-virtual {v1, v0}, Ljavassist/bytecode/Bytecode;->growStack(I)V

    .line 894
    :goto_1
    iget-object v0, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v0, p3}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    goto :goto_2

    .line 897
    :cond_3
    invoke-virtual {p1}, Ljavassist/CtField;->getDeclaringClass()Ljavassist/CtClass;

    move-result-object v0

    .line 898
    .local v0, "declClass":Ljavassist/CtClass;
    invoke-virtual {v0}, Ljavassist/CtClass;->getAccessorMaker()Ljavassist/compiler/AccessorMaker;

    move-result-object v1

    .line 900
    .local v1, "maker":Ljavassist/compiler/AccessorMaker;
    invoke-virtual {p1}, Ljavassist/CtField;->getFieldInfo2()Ljavassist/bytecode/FieldInfo;

    move-result-object v2

    .line 901
    .local v2, "finfo":Ljavassist/bytecode/FieldInfo;
    invoke-virtual {v1, v2, p2}, Ljavassist/compiler/AccessorMaker;->getFieldSetter(Ljavassist/bytecode/FieldInfo;Z)Ljavassist/bytecode/MethodInfo;

    move-result-object v3

    .line 902
    .local v3, "minfo":Ljavassist/bytecode/MethodInfo;
    iget-object v4, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v3}, Ljavassist/bytecode/MethodInfo;->getName()Ljava/lang/String;

    move-result-object v5

    .line 903
    invoke-virtual {v3}, Ljavassist/bytecode/MethodInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v6

    .line 902
    invoke-virtual {v4, v0, v5, v6}, Ljavassist/bytecode/Bytecode;->addInvokestatic(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    .end local v0    # "declClass":Ljavassist/CtClass;
    .end local v1    # "maker":Ljavassist/compiler/AccessorMaker;
    .end local v2    # "finfo":Ljavassist/bytecode/FieldInfo;
    .end local v3    # "minfo":Ljavassist/bytecode/MethodInfo;
    :goto_2
    return-void
.end method

.method private atFieldRead(Ljavassist/CtField;Z)I
    .locals 8
    .param p1, "f"    # Ljavassist/CtField;
    .param p2, "isStatic"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 948
    invoke-virtual {p1}, Ljavassist/CtField;->getFieldInfo2()Ljavassist/bytecode/FieldInfo;

    move-result-object v0

    .line 949
    .local v0, "finfo":Ljavassist/bytecode/FieldInfo;
    invoke-direct {p0, v0}, Ljavassist/compiler/MemberCodeGen;->setFieldType(Ljavassist/bytecode/FieldInfo;)Z

    move-result v1

    .line 950
    .local v1, "is2byte":Z
    invoke-direct {p0, p1, v0}, Ljavassist/compiler/MemberCodeGen;->isAccessibleField(Ljavassist/CtField;Ljavassist/bytecode/FieldInfo;)Ljavassist/compiler/AccessorMaker;

    move-result-object v2

    .line 951
    .local v2, "maker":Ljavassist/compiler/AccessorMaker;
    if-eqz v2, :cond_0

    .line 952
    invoke-virtual {v2, v0, p2}, Ljavassist/compiler/AccessorMaker;->getFieldGetter(Ljavassist/bytecode/FieldInfo;Z)Ljavassist/bytecode/MethodInfo;

    move-result-object v3

    .line 953
    .local v3, "minfo":Ljavassist/bytecode/MethodInfo;
    iget-object v4, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {p1}, Ljavassist/CtField;->getDeclaringClass()Ljavassist/CtClass;

    move-result-object v5

    invoke-virtual {v3}, Ljavassist/bytecode/MethodInfo;->getName()Ljava/lang/String;

    move-result-object v6

    .line 954
    invoke-virtual {v3}, Ljavassist/bytecode/MethodInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v7

    .line 953
    invoke-virtual {v4, v5, v6, v7}, Ljavassist/bytecode/Bytecode;->addInvokestatic(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    const/4 v4, 0x0

    return v4

    .line 957
    .end local v3    # "minfo":Ljavassist/bytecode/MethodInfo;
    :cond_0
    invoke-direct {p0, p1, v0}, Ljavassist/compiler/MemberCodeGen;->addFieldrefInfo(Ljavassist/CtField;Ljavassist/bytecode/FieldInfo;)I

    move-result v3

    .line 958
    .local v3, "fi":I
    if-eqz p2, :cond_2

    .line 959
    iget-object v4, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v5, 0xb2

    invoke-virtual {v4, v5}, Ljavassist/bytecode/Bytecode;->add(I)V

    .line 960
    iget-object v4, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    if-eqz v1, :cond_1

    const/4 v5, 0x2

    goto :goto_0

    :cond_1
    const/4 v5, 0x1

    :goto_0
    invoke-virtual {v4, v5}, Ljavassist/bytecode/Bytecode;->growStack(I)V

    goto :goto_1

    .line 963
    :cond_2
    iget-object v4, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v5, 0xb4

    invoke-virtual {v4, v5}, Ljavassist/bytecode/Bytecode;->add(I)V

    .line 964
    iget-object v4, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v4, v1}, Ljavassist/bytecode/Bytecode;->growStack(I)V

    .line 967
    :goto_1
    iget-object v4, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v4, v3}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    .line 968
    return v3
.end method

.method private atMethodCallCore2(Ljavassist/CtClass;Ljava/lang/String;ZZILjavassist/compiler/MemberResolver$Method;)V
    .locals 19
    .param p1, "targetClass"    # Ljavassist/CtClass;
    .param p2, "mname"    # Ljava/lang/String;
    .param p3, "isStatic"    # Z
    .param p4, "isSpecial"    # Z
    .param p5, "aload0pos"    # I
    .param p6, "found"    # Ljavassist/compiler/MemberResolver$Method;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 640
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v8, p5

    move-object/from16 v9, p6

    iget-object v10, v9, Ljavassist/compiler/MemberResolver$Method;->declaring:Ljavassist/CtClass;

    .line 641
    .local v10, "declClass":Ljavassist/CtClass;
    iget-object v11, v9, Ljavassist/compiler/MemberResolver$Method;->info:Ljavassist/bytecode/MethodInfo;

    .line 642
    .local v11, "minfo":Ljavassist/bytecode/MethodInfo;
    invoke-virtual {v11}, Ljavassist/bytecode/MethodInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 643
    .local v0, "desc":Ljava/lang/String;
    invoke-virtual {v11}, Ljavassist/bytecode/MethodInfo;->getAccessFlags()I

    move-result v1

    .line 645
    .local v1, "acc":I
    const-string v2, "<init>"

    move-object/from16 v12, p2

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v13, 0x1

    if-eqz v2, :cond_3

    .line 646
    const/4 v2, 0x1

    .line 647
    .end local p4    # "isSpecial":Z
    .local v2, "isSpecial":Z
    if-ne v10, v7, :cond_2

    .line 650
    iget-object v3, v6, Ljavassist/compiler/MemberCodeGen;->thisClass:Ljavassist/CtClass;

    if-eq v10, v3, :cond_1

    invoke-static {v1}, Ljavassist/bytecode/AccessFlag;->isPrivate(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 651
    invoke-virtual {v10}, Ljavassist/CtClass;->getClassFile()Ljavassist/bytecode/ClassFile;

    move-result-object v3

    invoke-virtual {v3}, Ljavassist/bytecode/ClassFile;->getMajorVersion()I

    move-result v3

    const/16 v4, 0x37

    if-lt v3, v4, :cond_0

    iget-object v3, v6, Ljavassist/compiler/MemberCodeGen;->thisClass:Ljavassist/CtClass;

    .line 652
    invoke-direct {v6, v10, v3}, Ljavassist/compiler/MemberCodeGen;->isFromSameDeclaringClass(Ljavassist/CtClass;Ljavassist/CtClass;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 653
    :cond_0
    invoke-virtual {v6, v0, v10, v11}, Ljavassist/compiler/MemberCodeGen;->getAccessibleConstructor(Ljava/lang/String;Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;)Ljava/lang/String;

    move-result-object v0

    .line 654
    iget-object v3, v6, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v3, v13}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    move/from16 v15, p3

    goto/16 :goto_1

    .line 674
    :cond_1
    move/from16 v15, p3

    goto/16 :goto_1

    .line 648
    :cond_2
    new-instance v3, Ljavassist/compiler/CompileError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "no such constructor: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v3

    .line 658
    .end local v2    # "isSpecial":Z
    .restart local p4    # "isSpecial":Z
    :cond_3
    invoke-static {v1}, Ljavassist/bytecode/AccessFlag;->isPrivate(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 659
    iget-object v2, v6, Ljavassist/compiler/MemberCodeGen;->thisClass:Ljavassist/CtClass;

    if-ne v10, v2, :cond_4

    .line 660
    const/4 v2, 0x1

    move/from16 v15, p3

    .end local p4    # "isSpecial":Z
    .restart local v2    # "isSpecial":Z
    goto :goto_1

    .line 662
    .end local v2    # "isSpecial":Z
    .restart local p4    # "isSpecial":Z
    :cond_4
    const/4 v14, 0x0

    .line 663
    .end local p4    # "isSpecial":Z
    .local v14, "isSpecial":Z
    const/4 v15, 0x1

    .line 664
    .end local p3    # "isStatic":Z
    .local v15, "isStatic":Z
    move-object v5, v0

    .line 665
    .local v5, "origDesc":Ljava/lang/String;
    and-int/lit8 v2, v1, 0x8

    if-nez v2, :cond_5

    .line 666
    invoke-virtual {v10}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Ljavassist/bytecode/Descriptor;->insertParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v16, v0

    goto :goto_0

    .line 665
    :cond_5
    move-object/from16 v16, v0

    .line 669
    .end local v0    # "desc":Ljava/lang/String;
    .local v16, "desc":Ljava/lang/String;
    :goto_0
    invoke-static {v1}, Ljavassist/bytecode/AccessFlag;->setPackage(I)I

    move-result v0

    or-int/lit8 v17, v0, 0x8

    .line 670
    .end local v1    # "acc":I
    .local v17, "acc":I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v5

    move-object/from16 v3, v16

    move-object v4, v11

    move-object/from16 v18, v5

    .end local v5    # "origDesc":Ljava/lang/String;
    .local v18, "origDesc":Ljava/lang/String;
    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Ljavassist/compiler/MemberCodeGen;->getAccessiblePrivate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljavassist/bytecode/MethodInfo;Ljavassist/CtClass;)Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    move v2, v14

    move-object/from16 v0, v16

    move/from16 v1, v17

    .end local p2    # "mname":Ljava/lang/String;
    .local v0, "mname":Ljava/lang/String;
    goto :goto_1

    .line 658
    .end local v14    # "isSpecial":Z
    .end local v15    # "isStatic":Z
    .end local v16    # "desc":Ljava/lang/String;
    .end local v17    # "acc":I
    .end local v18    # "origDesc":Ljava/lang/String;
    .local v0, "desc":Ljava/lang/String;
    .restart local v1    # "acc":I
    .restart local p2    # "mname":Ljava/lang/String;
    .restart local p3    # "isStatic":Z
    .restart local p4    # "isSpecial":Z
    :cond_6
    move/from16 v15, p3

    move/from16 v2, p4

    .line 674
    .end local p2    # "mname":Ljava/lang/String;
    .end local p3    # "isStatic":Z
    .end local p4    # "isSpecial":Z
    .restart local v2    # "isSpecial":Z
    .local v12, "mname":Ljava/lang/String;
    .restart local v15    # "isStatic":Z
    :goto_1
    const/4 v3, 0x0

    .line 675
    .local v3, "popTarget":Z
    and-int/lit8 v4, v1, 0x8

    if-eqz v4, :cond_9

    .line 676
    if-nez v15, :cond_8

    .line 682
    const/4 v15, 0x1

    .line 683
    if-ltz v8, :cond_7

    .line 684
    iget-object v4, v6, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/4 v5, 0x0

    invoke-virtual {v4, v8, v5}, Ljavassist/bytecode/Bytecode;->write(II)V

    goto :goto_2

    .line 686
    :cond_7
    const/4 v3, 0x1

    .line 689
    :cond_8
    :goto_2
    iget-object v4, v6, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v4, v10, v12, v0}, Ljavassist/bytecode/Bytecode;->addInvokestatic(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 691
    :cond_9
    if-eqz v2, :cond_a

    .line 692
    iget-object v4, v6, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v4, v7, v12, v0}, Ljavassist/bytecode/Bytecode;->addInvokespecial(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 694
    :cond_a
    invoke-virtual {v10}, Ljavassist/CtClass;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljavassist/Modifier;->isPublic(I)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 695
    invoke-virtual {v10}, Ljavassist/CtClass;->isInterface()Z

    move-result v4

    invoke-virtual/range {p1 .. p1}, Ljavassist/CtClass;->isInterface()Z

    move-result v5

    if-eq v4, v5, :cond_c

    .line 696
    :cond_b
    move-object/from16 v10, p1

    .line 698
    :cond_c
    invoke-virtual {v10}, Ljavassist/CtClass;->isInterface()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 699
    invoke-static {v0}, Ljavassist/bytecode/Descriptor;->paramSize(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v4, v13

    .line 700
    .local v4, "nargs":I
    iget-object v5, v6, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v5, v10, v12, v0, v4}, Ljavassist/bytecode/Bytecode;->addInvokeinterface(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;I)V

    .line 701
    .end local v4    # "nargs":I
    goto :goto_3

    .line 703
    :cond_d
    if-nez v15, :cond_e

    .line 706
    iget-object v4, v6, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v4, v10, v12, v0}, Ljavassist/bytecode/Bytecode;->addInvokevirtual(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    :goto_3
    invoke-virtual {v6, v0, v15, v3}, Ljavassist/compiler/MemberCodeGen;->setReturnType(Ljava/lang/String;ZZ)V

    .line 710
    return-void

    .line 704
    :cond_e
    new-instance v4, Ljavassist/compiler/CompileError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, " is not static"

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private atNewArrayExpr2(ILjavassist/compiler/ast/ASTree;Ljava/lang/String;Ljavassist/compiler/ast/ArrayInit;)V
    .locals 6
    .param p1, "type"    # I
    .param p2, "sizeExpr"    # Ljavassist/compiler/ast/ASTree;
    .param p3, "jvmClassname"    # Ljava/lang/String;
    .param p4, "init"    # Ljavassist/compiler/ast/ArrayInit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 361
    if-nez p4, :cond_1

    .line 362
    if-eqz p2, :cond_0

    .line 365
    invoke-virtual {p2, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    goto :goto_0

    .line 363
    :cond_0
    new-instance v0, Ljavassist/compiler/CompileError;

    const-string v1, "no array size"

    invoke-direct {v0, v1}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 367
    :cond_1
    if-nez p2, :cond_5

    .line 368
    invoke-virtual {p4}, Ljavassist/compiler/ast/ArrayInit;->size()I

    move-result v0

    .line 369
    .local v0, "s":I
    iget-object v1, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v1, v0}, Ljavassist/bytecode/Bytecode;->addIconst(I)V

    .line 370
    .end local v0    # "s":I
    nop

    .line 375
    :goto_0
    const/16 v0, 0x133

    if-ne p1, v0, :cond_2

    .line 376
    invoke-virtual {p0, p3}, Ljavassist/compiler/MemberCodeGen;->resolveClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 377
    .local v0, "elementClass":Ljava/lang/String;
    iget-object v1, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-static {v0}, Ljavassist/compiler/MemberResolver;->jvmToJavaName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavassist/bytecode/Bytecode;->addAnewarray(Ljava/lang/String;)V

    goto :goto_2

    .line 380
    .end local v0    # "elementClass":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    .line 381
    .restart local v0    # "elementClass":Ljava/lang/String;
    const/4 v1, 0x0

    .line 382
    .local v1, "atype":I
    sparse-switch p1, :sswitch_data_0

    .line 408
    invoke-static {}, Ljavassist/compiler/MemberCodeGen;->badNewExpr()V

    goto :goto_1

    .line 399
    :sswitch_0
    const/16 v1, 0x9

    .line 400
    goto :goto_1

    .line 405
    :sswitch_1
    const/16 v1, 0xb

    .line 406
    goto :goto_1

    .line 402
    :sswitch_2
    const/16 v1, 0xa

    .line 403
    goto :goto_1

    .line 390
    :sswitch_3
    const/4 v1, 0x6

    .line 391
    goto :goto_1

    .line 393
    :sswitch_4
    const/4 v1, 0x7

    .line 394
    goto :goto_1

    .line 387
    :sswitch_5
    const/4 v1, 0x5

    .line 388
    goto :goto_1

    .line 396
    :sswitch_6
    const/16 v1, 0x8

    .line 397
    goto :goto_1

    .line 384
    :sswitch_7
    const/4 v1, 0x4

    .line 385
    nop

    .line 412
    :goto_1
    iget-object v2, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v3, 0xbc

    invoke-virtual {v2, v3}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 413
    iget-object v2, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v2, v1}, Ljavassist/bytecode/Bytecode;->add(I)V

    .line 416
    .end local v1    # "atype":I
    :goto_2
    if-eqz p4, :cond_4

    .line 417
    invoke-virtual {p4}, Ljavassist/compiler/ast/ArrayInit;->size()I

    move-result v1

    .line 418
    .local v1, "s":I
    move-object v2, p4

    .line 419
    .local v2, "list":Ljavassist/compiler/ast/ASTList;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    if-ge v3, v1, :cond_4

    .line 420
    iget-object v4, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v5, 0x59

    invoke-virtual {v4, v5}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 421
    iget-object v4, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v4, v3}, Ljavassist/bytecode/Bytecode;->addIconst(I)V

    .line 422
    invoke-virtual {v2}, Ljavassist/compiler/ast/ASTList;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 423
    invoke-static {p1}, Ljavassist/compiler/MemberCodeGen;->isRefType(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 424
    iget v4, p0, Ljavassist/compiler/MemberCodeGen;->exprType:I

    invoke-virtual {p0, v4, p1}, Ljavassist/compiler/MemberCodeGen;->atNumCastExpr(II)V

    .line 426
    :cond_3
    iget-object v4, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/4 v5, 0x0

    invoke-static {p1, v5}, Ljavassist/compiler/MemberCodeGen;->getArrayWriteOp(II)I

    move-result v5

    invoke-virtual {v4, v5}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 427
    invoke-virtual {v2}, Ljavassist/compiler/ast/ASTList;->tail()Ljavassist/compiler/ast/ASTList;

    move-result-object v2

    .line 419
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 431
    .end local v1    # "s":I
    .end local v2    # "list":Ljavassist/compiler/ast/ASTList;
    .end local v3    # "i":I
    :cond_4
    iput p1, p0, Ljavassist/compiler/MemberCodeGen;->exprType:I

    .line 432
    const/4 v1, 0x1

    iput v1, p0, Ljavassist/compiler/MemberCodeGen;->arrayDim:I

    .line 433
    iput-object v0, p0, Ljavassist/compiler/MemberCodeGen;->className:Ljava/lang/String;

    .line 434
    return-void

    .line 372
    .end local v0    # "elementClass":Ljava/lang/String;
    :cond_5
    new-instance v0, Ljavassist/compiler/CompileError;

    const-string v1, "unnecessary array size specified for new"

    invoke-direct {v0, v1}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        0x12d -> :sswitch_7
        0x12f -> :sswitch_6
        0x132 -> :sswitch_5
        0x138 -> :sswitch_4
        0x13d -> :sswitch_3
        0x144 -> :sswitch_2
        0x146 -> :sswitch_1
        0x14e -> :sswitch_0
    .end sparse-switch
.end method

.method private static badLvalue()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 1155
    new-instance v0, Ljavassist/compiler/CompileError;

    const-string v1, "bad l-value"

    invoke-direct {v0, v1}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static badMethod()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 573
    new-instance v0, Ljavassist/compiler/CompileError;

    const-string v1, "bad method"

    invoke-direct {v0, v1}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static badNewExpr()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 437
    new-instance v0, Ljavassist/compiler/CompileError;

    const-string v1, "bad new expression"

    invoke-direct {v0, v1}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private isAccessibleField(Ljavassist/CtField;Ljavassist/bytecode/FieldInfo;)Ljavassist/compiler/AccessorMaker;
    .locals 4
    .param p1, "f"    # Ljavassist/CtField;
    .param p2, "finfo"    # Ljavassist/bytecode/FieldInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 979
    invoke-virtual {p2}, Ljavassist/bytecode/FieldInfo;->getAccessFlags()I

    move-result v0

    invoke-static {v0}, Ljavassist/bytecode/AccessFlag;->isPrivate(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 980
    invoke-virtual {p1}, Ljavassist/CtField;->getDeclaringClass()Ljavassist/CtClass;

    move-result-object v0

    iget-object v1, p0, Ljavassist/compiler/MemberCodeGen;->thisClass:Ljavassist/CtClass;

    if-eq v0, v1, :cond_1

    .line 981
    invoke-virtual {p1}, Ljavassist/CtField;->getDeclaringClass()Ljavassist/CtClass;

    move-result-object v0

    .line 982
    .local v0, "declClass":Ljavassist/CtClass;
    iget-object v1, p0, Ljavassist/compiler/MemberCodeGen;->thisClass:Ljavassist/CtClass;

    invoke-direct {p0, v0, v1}, Ljavassist/compiler/MemberCodeGen;->isEnclosing(Ljavassist/CtClass;Ljavassist/CtClass;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 983
    invoke-virtual {v0}, Ljavassist/CtClass;->getAccessorMaker()Ljavassist/compiler/AccessorMaker;

    move-result-object v1

    .line 984
    .local v1, "maker":Ljavassist/compiler/AccessorMaker;
    if-eqz v1, :cond_0

    .line 985
    return-object v1

    .line 987
    .end local v1    # "maker":Ljavassist/compiler/AccessorMaker;
    :cond_0
    new-instance v1, Ljavassist/compiler/CompileError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Field "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljavassist/CtField;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 988
    invoke-virtual {v0}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is private."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 991
    .end local v0    # "declClass":Ljavassist/CtClass;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private isEnclosing(Ljavassist/CtClass;Ljavassist/CtClass;)Z
    .locals 1
    .param p1, "outer"    # Ljavassist/CtClass;
    .param p2, "inner"    # Ljavassist/CtClass;

    .line 760
    :cond_0
    if-eqz p2, :cond_1

    .line 761
    :try_start_0
    invoke-virtual {p2}, Ljavassist/CtClass;->getDeclaringClass()Ljavassist/CtClass;

    move-result-object v0
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, v0

    .line 762
    if-ne p2, p1, :cond_0

    .line 763
    const/4 v0, 0x1

    return v0

    .line 766
    :catch_0
    move-exception v0

    :cond_1
    nop

    .line 767
    const/4 v0, 0x0

    return v0
.end method

.method private isFromSameDeclaringClass(Ljavassist/CtClass;Ljavassist/CtClass;)Z
    .locals 1
    .param p1, "outer"    # Ljavassist/CtClass;
    .param p2, "inner"    # Ljavassist/CtClass;

    .line 624
    :goto_0
    if-eqz p1, :cond_1

    .line 625
    :try_start_0
    invoke-direct {p0, p1, p2}, Ljavassist/compiler/MemberCodeGen;->isEnclosing(Ljavassist/CtClass;Ljavassist/CtClass;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 626
    const/4 v0, 0x1

    return v0

    .line 627
    :cond_0
    invoke-virtual {p1}, Ljavassist/CtClass;->getDeclaringClass()Ljavassist/CtClass;

    move-result-object v0
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    goto :goto_0

    .line 630
    :catch_0
    move-exception v0

    :cond_1
    nop

    .line 631
    const/4 v0, 0x0

    return v0
.end method

.method private setFieldType(Ljavassist/bytecode/FieldInfo;)Z
    .locals 7
    .param p1, "finfo"    # Ljavassist/bytecode/FieldInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 1000
    invoke-virtual {p1}, Ljavassist/bytecode/FieldInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 1002
    .local v0, "type":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1003
    .local v1, "i":I
    const/4 v2, 0x0

    .line 1004
    .local v2, "dim":I
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1005
    .local v3, "c":C
    :goto_0
    const/16 v4, 0x5b

    if-ne v3, v4, :cond_0

    .line 1006
    add-int/lit8 v2, v2, 0x1

    .line 1007
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_0

    .line 1010
    :cond_0
    iput v2, p0, Ljavassist/compiler/MemberCodeGen;->arrayDim:I

    .line 1011
    invoke-static {v3}, Ljavassist/compiler/MemberResolver;->descToType(C)I

    move-result v4

    iput v4, p0, Ljavassist/compiler/MemberCodeGen;->exprType:I

    .line 1013
    const/16 v4, 0x4c

    if-ne v3, v4, :cond_1

    .line 1014
    add-int/lit8 v4, v1, 0x1

    const/16 v5, 0x3b

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Ljavassist/compiler/MemberCodeGen;->className:Ljava/lang/String;

    goto :goto_1

    .line 1016
    :cond_1
    const/4 v4, 0x0

    iput-object v4, p0, Ljavassist/compiler/MemberCodeGen;->className:Ljava/lang/String;

    .line 1018
    :goto_1
    if-nez v2, :cond_3

    const/16 v4, 0x4a

    if-eq v3, v4, :cond_2

    const/16 v4, 0x44

    if-ne v3, v4, :cond_3

    :cond_2
    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    .line 1019
    .local v4, "is2byte":Z
    :goto_2
    return v4
.end method


# virtual methods
.method public atArrayInit(Ljavassist/compiler/ast/ArrayInit;)V
    .locals 2
    .param p1, "init"    # Ljavassist/compiler/ast/ArrayInit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 448
    new-instance v0, Ljavassist/compiler/CompileError;

    const-string v1, "array initializer is not supported"

    invoke-direct {v0, v1}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected atArrayVariableAssign(Ljavassist/compiler/ast/ArrayInit;IILjava/lang/String;)V
    .locals 1
    .param p1, "init"    # Ljavassist/compiler/ast/ArrayInit;
    .param p2, "varType"    # I
    .param p3, "varArray"    # I
    .param p4, "varClass"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 443
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p4, p1}, Ljavassist/compiler/MemberCodeGen;->atNewArrayExpr2(ILjavassist/compiler/ast/ASTree;Ljava/lang/String;Ljavassist/compiler/ast/ArrayInit;)V

    .line 444
    return-void
.end method

.method public atCallExpr(Ljavassist/compiler/ast/CallExpr;)V
    .locals 17
    .param p1, "expr"    # Ljavassist/compiler/ast/CallExpr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 482
    move-object/from16 v9, p0

    const/4 v0, 0x0

    .line 483
    .local v0, "mname":Ljava/lang/String;
    const/4 v1, 0x0

    .line 484
    .local v1, "targetClass":Ljavassist/CtClass;
    invoke-virtual/range {p1 .. p1}, Ljavassist/compiler/ast/CallExpr;->oprand1()Ljavassist/compiler/ast/ASTree;

    move-result-object v10

    .line 485
    .local v10, "method":Ljavassist/compiler/ast/ASTree;
    invoke-virtual/range {p1 .. p1}, Ljavassist/compiler/ast/CallExpr;->oprand2()Ljavassist/compiler/ast/ASTree;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Ljavassist/compiler/ast/ASTList;

    .line 486
    .local v11, "args":Ljavassist/compiler/ast/ASTList;
    const/4 v2, 0x0

    .line 487
    .local v2, "isStatic":Z
    const/4 v3, 0x0

    .line 488
    .local v3, "isSpecial":Z
    const/4 v4, -0x1

    .line 490
    .local v4, "aload0pos":I
    invoke-virtual/range {p1 .. p1}, Ljavassist/compiler/ast/CallExpr;->getMethod()Ljavassist/compiler/MemberResolver$Method;

    move-result-object v12

    .line 491
    .local v12, "cached":Ljavassist/compiler/MemberResolver$Method;
    instance-of v5, v10, Ljavassist/compiler/ast/Member;

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    .line 492
    move-object v5, v10

    check-cast v5, Ljavassist/compiler/ast/Member;

    invoke-virtual {v5}, Ljavassist/compiler/ast/Member;->get()Ljava/lang/String;

    move-result-object v0

    .line 493
    iget-object v1, v9, Ljavassist/compiler/MemberCodeGen;->thisClass:Ljavassist/CtClass;

    .line 494
    iget-boolean v5, v9, Ljavassist/compiler/MemberCodeGen;->inStaticMethod:Z

    if-nez v5, :cond_1

    if-eqz v12, :cond_0

    invoke-virtual {v12}, Ljavassist/compiler/MemberResolver$Method;->isStatic()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 497
    :cond_0
    iget-object v5, v9, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v5}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result v4

    .line 498
    iget-object v5, v9, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v5, v6}, Ljavassist/bytecode/Bytecode;->addAload(I)V

    move-object v13, v1

    move v14, v2

    move v15, v3

    move/from16 v16, v4

    goto/16 :goto_5

    .line 495
    :cond_1
    :goto_0
    const/4 v2, 0x1

    move-object v13, v1

    move v14, v2

    move v15, v3

    move/from16 v16, v4

    goto/16 :goto_5

    .line 501
    :cond_2
    instance-of v5, v10, Ljavassist/compiler/ast/Keyword;

    const/16 v7, 0x150

    if-eqz v5, :cond_5

    .line 502
    const/4 v3, 0x1

    .line 503
    const-string v0, "<init>"

    .line 504
    iget-object v1, v9, Ljavassist/compiler/MemberCodeGen;->thisClass:Ljavassist/CtClass;

    .line 505
    iget-boolean v5, v9, Ljavassist/compiler/MemberCodeGen;->inStaticMethod:Z

    if-nez v5, :cond_4

    .line 507
    iget-object v5, v9, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v5, v6}, Ljavassist/bytecode/Bytecode;->addAload(I)V

    .line 509
    move-object v5, v10

    check-cast v5, Ljavassist/compiler/ast/Keyword;

    invoke-virtual {v5}, Ljavassist/compiler/ast/Keyword;->get()I

    move-result v5

    if-ne v5, v7, :cond_3

    .line 510
    invoke-static {v1}, Ljavassist/compiler/MemberResolver;->getSuperclass(Ljavassist/CtClass;)Ljavassist/CtClass;

    move-result-object v1

    move-object v13, v1

    move v14, v2

    move v15, v3

    move/from16 v16, v4

    goto/16 :goto_5

    .line 509
    :cond_3
    move-object v13, v1

    move v14, v2

    move v15, v3

    move/from16 v16, v4

    goto/16 :goto_5

    .line 506
    :cond_4
    new-instance v5, Ljavassist/compiler/CompileError;

    const-string v6, "a constructor cannot be static"

    invoke-direct {v5, v6}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v5

    .line 512
    :cond_5
    instance-of v5, v10, Ljavassist/compiler/ast/Expr;

    if-eqz v5, :cond_f

    .line 513
    move-object v5, v10

    check-cast v5, Ljavassist/compiler/ast/Expr;

    .line 514
    .local v5, "e":Ljavassist/compiler/ast/Expr;
    invoke-virtual {v5}, Ljavassist/compiler/ast/Expr;->oprand2()Ljavassist/compiler/ast/ASTree;

    move-result-object v8

    check-cast v8, Ljavassist/compiler/ast/Symbol;

    invoke-virtual {v8}, Ljavassist/compiler/ast/Symbol;->get()Ljava/lang/String;

    move-result-object v8

    .line 515
    .end local v0    # "mname":Ljava/lang/String;
    .local v8, "mname":Ljava/lang/String;
    invoke-virtual {v5}, Ljavassist/compiler/ast/Expr;->getOperator()I

    move-result v13

    .line 516
    .local v13, "op":I
    const/16 v0, 0x23

    if-ne v13, v0, :cond_6

    .line 517
    iget-object v0, v9, Ljavassist/compiler/MemberCodeGen;->resolver:Ljavassist/compiler/MemberResolver;

    .line 518
    invoke-virtual {v5}, Ljavassist/compiler/ast/Expr;->oprand1()Ljavassist/compiler/ast/ASTree;

    move-result-object v7

    check-cast v7, Ljavassist/compiler/ast/Symbol;

    invoke-virtual {v7}, Ljavassist/compiler/ast/Symbol;->get()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7, v6}, Ljavassist/compiler/MemberResolver;->lookupClass(Ljava/lang/String;Z)Ljavassist/CtClass;

    move-result-object v0

    .line 519
    .end local v1    # "targetClass":Ljavassist/CtClass;
    .local v0, "targetClass":Ljavassist/CtClass;
    const/4 v1, 0x1

    move v2, v1

    move-object v1, v0

    .end local v2    # "isStatic":Z
    .local v1, "isStatic":Z
    goto/16 :goto_4

    .line 521
    .end local v0    # "targetClass":Ljavassist/CtClass;
    .local v1, "targetClass":Ljavassist/CtClass;
    .restart local v2    # "isStatic":Z
    :cond_6
    const/16 v0, 0x2e

    if-ne v13, v0, :cond_e

    .line 522
    invoke-virtual {v5}, Ljavassist/compiler/ast/Expr;->oprand1()Ljavassist/compiler/ast/ASTree;

    move-result-object v14

    .line 523
    .local v14, "target":Ljavassist/compiler/ast/ASTree;
    invoke-static {v14}, Ljavassist/compiler/TypeChecker;->isDotSuper(Ljavassist/compiler/ast/ASTree;)Ljava/lang/String;

    move-result-object v15

    .line 524
    .local v15, "classFollowedByDotSuper":Ljava/lang/String;
    if-eqz v15, :cond_9

    .line 525
    const/4 v0, 0x1

    .line 526
    .end local v3    # "isSpecial":Z
    .local v0, "isSpecial":Z
    iget-object v3, v9, Ljavassist/compiler/MemberCodeGen;->thisClass:Ljavassist/CtClass;

    invoke-static {v3, v15}, Ljavassist/compiler/MemberResolver;->getSuperInterface(Ljavassist/CtClass;Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v1

    .line 528
    iget-boolean v3, v9, Ljavassist/compiler/MemberCodeGen;->inStaticMethod:Z

    if-nez v3, :cond_8

    if-eqz v12, :cond_7

    invoke-virtual {v12}, Ljavassist/compiler/MemberResolver$Method;->isStatic()Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_1

    .line 531
    :cond_7
    iget-object v3, v9, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v3}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result v4

    .line 532
    iget-object v3, v9, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v3, v6}, Ljavassist/bytecode/Bytecode;->addAload(I)V

    goto :goto_3

    .line 529
    :cond_8
    :goto_1
    const/4 v2, 0x1

    goto :goto_3

    .line 536
    .end local v0    # "isSpecial":Z
    .restart local v3    # "isSpecial":Z
    :cond_9
    instance-of v0, v14, Ljavassist/compiler/ast/Keyword;

    if-eqz v0, :cond_a

    .line 537
    move-object v0, v14

    check-cast v0, Ljavassist/compiler/ast/Keyword;

    invoke-virtual {v0}, Ljavassist/compiler/ast/Keyword;->get()I

    move-result v0

    if-ne v0, v7, :cond_a

    .line 538
    const/4 v3, 0x1

    .line 541
    :cond_a
    const/16 v7, 0x133

    :try_start_0
    invoke-virtual {v14, v9}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V
    :try_end_0
    .catch Ljavassist/compiler/NoFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 552
    goto :goto_2

    .line 543
    :catch_0
    move-exception v0

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    .line 544
    .local v0, "nfe":Ljavassist/compiler/NoFieldException;
    invoke-virtual {v0}, Ljavassist/compiler/NoFieldException;->getExpr()Ljavassist/compiler/ast/ASTree;

    move-result-object v6

    if-ne v6, v14, :cond_d

    .line 548
    iput v7, v9, Ljavassist/compiler/MemberCodeGen;->exprType:I

    .line 549
    const/4 v6, 0x0

    iput v6, v9, Ljavassist/compiler/MemberCodeGen;->arrayDim:I

    .line 550
    invoke-virtual {v0}, Ljavassist/compiler/NoFieldException;->getField()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v9, Ljavassist/compiler/MemberCodeGen;->className:Ljava/lang/String;

    .line 551
    const/4 v2, 0x1

    .line 554
    .end local v0    # "nfe":Ljavassist/compiler/NoFieldException;
    :goto_2
    iget v0, v9, Ljavassist/compiler/MemberCodeGen;->arrayDim:I

    if-lez v0, :cond_b

    .line 555
    iget-object v0, v9, Ljavassist/compiler/MemberCodeGen;->resolver:Ljavassist/compiler/MemberResolver;

    const/4 v6, 0x1

    const-string v7, "java.lang.Object"

    invoke-virtual {v0, v7, v6}, Ljavassist/compiler/MemberResolver;->lookupClass(Ljava/lang/String;Z)Ljavassist/CtClass;

    move-result-object v1

    move v0, v3

    goto :goto_3

    .line 556
    :cond_b
    iget v0, v9, Ljavassist/compiler/MemberCodeGen;->exprType:I

    if-ne v0, v7, :cond_c

    .line 557
    iget-object v0, v9, Ljavassist/compiler/MemberCodeGen;->resolver:Ljavassist/compiler/MemberResolver;

    iget-object v6, v9, Ljavassist/compiler/MemberCodeGen;->className:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljavassist/compiler/MemberResolver;->lookupClassByJvmName(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v1

    move v0, v3

    goto :goto_3

    .line 559
    :cond_c
    invoke-static {}, Ljavassist/compiler/MemberCodeGen;->badMethod()V

    move v0, v3

    .line 561
    .end local v3    # "isSpecial":Z
    .end local v14    # "target":Ljavassist/compiler/ast/ASTree;
    .end local v15    # "classFollowedByDotSuper":Ljava/lang/String;
    .local v0, "isSpecial":Z
    :goto_3
    move v3, v0

    goto :goto_4

    .line 545
    .local v0, "nfe":Ljavassist/compiler/NoFieldException;
    .restart local v3    # "isSpecial":Z
    .restart local v14    # "target":Ljavassist/compiler/ast/ASTree;
    .restart local v15    # "classFollowedByDotSuper":Ljava/lang/String;
    :cond_d
    throw v0

    .line 563
    .end local v0    # "nfe":Ljavassist/compiler/NoFieldException;
    .end local v14    # "target":Ljavassist/compiler/ast/ASTree;
    .end local v15    # "classFollowedByDotSuper":Ljava/lang/String;
    :cond_e
    invoke-static {}, Ljavassist/compiler/MemberCodeGen;->badMethod()V

    .line 564
    .end local v5    # "e":Ljavassist/compiler/ast/Expr;
    .end local v13    # "op":I
    :goto_4
    move-object v13, v1

    move v14, v2

    move v15, v3

    move/from16 v16, v4

    move-object v0, v8

    goto :goto_5

    .line 566
    .end local v8    # "mname":Ljava/lang/String;
    .local v0, "mname":Ljava/lang/String;
    :cond_f
    invoke-static {}, Ljavassist/compiler/MemberCodeGen;->fatal()V

    move-object v13, v1

    move v14, v2

    move v15, v3

    move/from16 v16, v4

    .line 568
    .end local v1    # "targetClass":Ljavassist/CtClass;
    .end local v2    # "isStatic":Z
    .end local v3    # "isSpecial":Z
    .end local v4    # "aload0pos":I
    .local v13, "targetClass":Ljavassist/CtClass;
    .local v14, "isStatic":Z
    .local v15, "isSpecial":Z
    .local v16, "aload0pos":I
    :goto_5
    move-object/from16 v1, p0

    move-object v2, v13

    move-object v3, v0

    move-object v4, v11

    move v5, v14

    move v6, v15

    move/from16 v7, v16

    move-object v8, v12

    invoke-virtual/range {v1 .. v8}, Ljavassist/compiler/MemberCodeGen;->atMethodCallCore(Ljavassist/CtClass;Ljava/lang/String;Ljavassist/compiler/ast/ASTList;ZZILjavassist/compiler/MemberResolver$Method;)V

    .line 570
    return-void
.end method

.method protected atClassObject2(Ljava/lang/String;)V
    .locals 2
    .param p1, "cname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 1033
    invoke-virtual {p0}, Ljavassist/compiler/MemberCodeGen;->getMajorVersion()I

    move-result v0

    const/16 v1, 0x31

    if-ge v0, v1, :cond_0

    .line 1034
    invoke-super {p0, p1}, Ljavassist/compiler/CodeGen;->atClassObject2(Ljava/lang/String;)V

    goto :goto_0

    .line 1036
    :cond_0
    iget-object v0, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    iget-object v1, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v1}, Ljavassist/bytecode/Bytecode;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljavassist/bytecode/Bytecode;->addLdc(I)V

    .line 1037
    :goto_0
    return-void
.end method

.method protected atFieldAssign(Ljavassist/compiler/ast/Expr;ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;Z)V
    .locals 17
    .param p1, "expr"    # Ljavassist/compiler/ast/Expr;
    .param p2, "op"    # I
    .param p3, "left"    # Ljavassist/compiler/ast/ASTree;
    .param p4, "right"    # Ljavassist/compiler/ast/ASTree;
    .param p5, "doDup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 838
    move-object/from16 v7, p0

    move/from16 v8, p2

    const/4 v0, 0x0

    move-object/from16 v9, p3

    invoke-virtual {v7, v9, v0}, Ljavassist/compiler/MemberCodeGen;->fieldAccess(Ljavassist/compiler/ast/ASTree;Z)Ljavassist/CtField;

    move-result-object v10

    .line 839
    .local v10, "f":Ljavassist/CtField;
    iget-boolean v11, v7, Ljavassist/compiler/MemberCodeGen;->resultStatic:Z

    .line 840
    .local v11, "is_static":Z
    const/16 v12, 0x59

    const/16 v0, 0x3d

    if-eq v8, v0, :cond_0

    if-nez v11, :cond_0

    .line 841
    iget-object v1, v7, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v1, v12}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 844
    :cond_0
    if-ne v8, v0, :cond_2

    .line 845
    invoke-virtual {v10}, Ljavassist/CtField;->getFieldInfo2()Ljavassist/bytecode/FieldInfo;

    move-result-object v0

    .line 846
    .local v0, "finfo":Ljavassist/bytecode/FieldInfo;
    invoke-direct {v7, v0}, Ljavassist/compiler/MemberCodeGen;->setFieldType(Ljavassist/bytecode/FieldInfo;)Z

    .line 847
    invoke-direct {v7, v10, v0}, Ljavassist/compiler/MemberCodeGen;->isAccessibleField(Ljavassist/CtField;Ljavassist/bytecode/FieldInfo;)Ljavassist/compiler/AccessorMaker;

    move-result-object v1

    .line 848
    .local v1, "maker":Ljavassist/compiler/AccessorMaker;
    if-nez v1, :cond_1

    .line 849
    invoke-direct {v7, v10, v0}, Ljavassist/compiler/MemberCodeGen;->addFieldrefInfo(Ljavassist/CtField;Ljavassist/bytecode/FieldInfo;)I

    move-result v2

    .local v2, "fi":I
    goto :goto_0

    .line 851
    .end local v2    # "fi":I
    :cond_1
    const/4 v2, 0x0

    .line 852
    .end local v0    # "finfo":Ljavassist/bytecode/FieldInfo;
    .end local v1    # "maker":Ljavassist/compiler/AccessorMaker;
    .restart local v2    # "fi":I
    :goto_0
    move v13, v2

    goto :goto_1

    .line 854
    .end local v2    # "fi":I
    :cond_2
    invoke-direct {v7, v10, v11}, Ljavassist/compiler/MemberCodeGen;->atFieldRead(Ljavassist/CtField;Z)I

    move-result v2

    move v13, v2

    .line 856
    .local v13, "fi":I
    :goto_1
    iget v14, v7, Ljavassist/compiler/MemberCodeGen;->exprType:I

    .line 857
    .local v14, "fType":I
    iget v15, v7, Ljavassist/compiler/MemberCodeGen;->arrayDim:I

    .line 858
    .local v15, "fDim":I
    iget-object v6, v7, Ljavassist/compiler/MemberCodeGen;->className:Ljava/lang/String;

    .line 860
    .local v6, "cname":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p4

    move v4, v14

    move v5, v15

    move-object/from16 v16, v6

    .end local v6    # "cname":Ljava/lang/String;
    .local v16, "cname":Ljava/lang/String;
    invoke-virtual/range {v0 .. v6}, Ljavassist/compiler/MemberCodeGen;->atAssignCore(Ljavassist/compiler/ast/Expr;ILjavassist/compiler/ast/ASTree;IILjava/lang/String;)V

    .line 862
    invoke-static {v14, v15}, Ljavassist/compiler/MemberCodeGen;->is2word(II)Z

    move-result v0

    .line 863
    .local v0, "is2w":Z
    if-eqz p5, :cond_6

    .line 865
    if-eqz v11, :cond_4

    .line 866
    if-eqz v0, :cond_3

    const/16 v12, 0x5c

    :cond_3
    move v1, v12

    .local v1, "dup_code":I
    goto :goto_2

    .line 868
    .end local v1    # "dup_code":I
    :cond_4
    if-eqz v0, :cond_5

    const/16 v1, 0x5d

    goto :goto_2

    :cond_5
    const/16 v1, 0x5a

    .line 870
    .restart local v1    # "dup_code":I
    :goto_2
    iget-object v2, v7, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v2, v1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 873
    .end local v1    # "dup_code":I
    :cond_6
    invoke-direct {v7, v10, v11, v13, v0}, Ljavassist/compiler/MemberCodeGen;->atFieldAssignCore(Ljavassist/CtField;ZIZ)V

    .line 875
    iput v14, v7, Ljavassist/compiler/MemberCodeGen;->exprType:I

    .line 876
    iput v15, v7, Ljavassist/compiler/MemberCodeGen;->arrayDim:I

    .line 877
    move-object/from16 v1, v16

    .end local v16    # "cname":Ljava/lang/String;
    .local v1, "cname":Ljava/lang/String;
    iput-object v1, v7, Ljavassist/compiler/MemberCodeGen;->className:Ljava/lang/String;

    .line 878
    return-void
.end method

.method protected atFieldPlusPlus(IZLjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/Expr;Z)V
    .locals 14
    .param p1, "token"    # I
    .param p2, "isPost"    # Z
    .param p3, "oprand"    # Ljavassist/compiler/ast/ASTree;
    .param p4, "expr"    # Ljavassist/compiler/ast/Expr;
    .param p5, "doDup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 1044
    move-object v6, p0

    const/4 v0, 0x0

    move-object/from16 v7, p3

    invoke-virtual {p0, v7, v0}, Ljavassist/compiler/MemberCodeGen;->fieldAccess(Ljavassist/compiler/ast/ASTree;Z)Ljavassist/CtField;

    move-result-object v8

    .line 1045
    .local v8, "f":Ljavassist/CtField;
    iget-boolean v9, v6, Ljavassist/compiler/MemberCodeGen;->resultStatic:Z

    .line 1046
    .local v9, "is_static":Z
    const/16 v0, 0x59

    if-nez v9, :cond_0

    .line 1047
    iget-object v1, v6, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v1, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1049
    :cond_0
    invoke-direct {p0, v8, v9}, Ljavassist/compiler/MemberCodeGen;->atFieldRead(Ljavassist/CtField;Z)I

    move-result v10

    .line 1050
    .local v10, "fi":I
    iget v11, v6, Ljavassist/compiler/MemberCodeGen;->exprType:I

    .line 1051
    .local v11, "t":I
    iget v1, v6, Ljavassist/compiler/MemberCodeGen;->arrayDim:I

    invoke-static {v11, v1}, Ljavassist/compiler/MemberCodeGen;->is2word(II)Z

    move-result v12

    .line 1054
    .local v12, "is2w":Z
    if-eqz v9, :cond_2

    .line 1055
    if-eqz v12, :cond_1

    const/16 v0, 0x5c

    :cond_1
    move v13, v0

    .local v0, "dup_code":I
    goto :goto_1

    .line 1057
    .end local v0    # "dup_code":I
    :cond_2
    if-eqz v12, :cond_3

    const/16 v0, 0x5d

    goto :goto_0

    :cond_3
    const/16 v0, 0x5a

    :goto_0
    move v13, v0

    .line 1059
    .local v13, "dup_code":I
    :goto_1
    move-object v0, p0

    move v1, v13

    move/from16 v2, p5

    move v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p4

    invoke-virtual/range {v0 .. v5}, Ljavassist/compiler/MemberCodeGen;->atPlusPlusCore(IZIZLjavassist/compiler/ast/Expr;)V

    .line 1060
    invoke-direct {p0, v8, v9, v10, v12}, Ljavassist/compiler/MemberCodeGen;->atFieldAssignCore(Ljavassist/CtField;ZIZ)V

    .line 1061
    return-void
.end method

.method protected atFieldRead(Ljavassist/compiler/ast/ASTree;)V
    .locals 4
    .param p1, "expr"    # Ljavassist/compiler/ast/ASTree;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 917
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ljavassist/compiler/MemberCodeGen;->fieldAccess(Ljavassist/compiler/ast/ASTree;Z)Ljavassist/CtField;

    move-result-object v0

    .line 918
    .local v0, "f":Ljavassist/CtField;
    if-nez v0, :cond_0

    .line 919
    invoke-direct {p0, p1}, Ljavassist/compiler/MemberCodeGen;->atArrayLength(Ljavassist/compiler/ast/ASTree;)V

    .line 920
    return-void

    .line 923
    :cond_0
    iget-boolean v1, p0, Ljavassist/compiler/MemberCodeGen;->resultStatic:Z

    .line 924
    .local v1, "is_static":Z
    invoke-static {v0}, Ljavassist/compiler/TypeChecker;->getConstantFieldValue(Ljavassist/CtField;)Ljavassist/compiler/ast/ASTree;

    move-result-object v2

    .line 925
    .local v2, "cexpr":Ljavassist/compiler/ast/ASTree;
    if-nez v2, :cond_1

    .line 926
    invoke-direct {p0, v0, v1}, Ljavassist/compiler/MemberCodeGen;->atFieldRead(Ljavassist/CtField;Z)I

    goto :goto_0

    .line 928
    :cond_1
    invoke-virtual {v2, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 929
    invoke-virtual {v0}, Ljavassist/CtField;->getFieldInfo2()Ljavassist/bytecode/FieldInfo;

    move-result-object v3

    invoke-direct {p0, v3}, Ljavassist/compiler/MemberCodeGen;->setFieldType(Ljavassist/bytecode/FieldInfo;)Z

    .line 931
    :goto_0
    return-void
.end method

.method public atMember(Ljavassist/compiler/ast/Member;)V
    .locals 0
    .param p1, "mem"    # Ljavassist/compiler/ast/Member;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 911
    invoke-virtual {p0, p1}, Ljavassist/compiler/MemberCodeGen;->atFieldRead(Ljavassist/compiler/ast/ASTree;)V

    .line 912
    return-void
.end method

.method public atMethodArgs(Ljavassist/compiler/ast/ASTList;[I[I[Ljava/lang/String;)V
    .locals 3
    .param p1, "args"    # Ljavassist/compiler/ast/ASTList;
    .param p2, "types"    # [I
    .param p3, "dims"    # [I
    .param p4, "cnames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 776
    const/4 v0, 0x0

    .line 777
    .local v0, "i":I
    :goto_0
    if-eqz p1, :cond_0

    .line 778
    invoke-virtual {p1}, Ljavassist/compiler/ast/ASTList;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object v1

    .line 779
    .local v1, "a":Ljavassist/compiler/ast/ASTree;
    invoke-virtual {v1, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 780
    iget v2, p0, Ljavassist/compiler/MemberCodeGen;->exprType:I

    aput v2, p2, v0

    .line 781
    iget v2, p0, Ljavassist/compiler/MemberCodeGen;->arrayDim:I

    aput v2, p3, v0

    .line 782
    iget-object v2, p0, Ljavassist/compiler/MemberCodeGen;->className:Ljava/lang/String;

    aput-object v2, p4, v0

    .line 783
    add-int/lit8 v0, v0, 0x1

    .line 784
    invoke-virtual {p1}, Ljavassist/compiler/ast/ASTList;->tail()Ljavassist/compiler/ast/ASTList;

    move-result-object p1

    .line 785
    .end local v1    # "a":Ljavassist/compiler/ast/ASTree;
    goto :goto_0

    .line 786
    :cond_0
    return-void
.end method

.method public atMethodCallCore(Ljavassist/CtClass;Ljava/lang/String;Ljavassist/compiler/ast/ASTList;ZZILjavassist/compiler/MemberResolver$Method;)V
    .locals 18
    .param p1, "targetClass"    # Ljavassist/CtClass;
    .param p2, "mname"    # Ljava/lang/String;
    .param p3, "args"    # Ljavassist/compiler/ast/ASTList;
    .param p4, "isStatic"    # Z
    .param p5, "isSpecial"    # Z
    .param p6, "aload0pos"    # I
    .param p7, "found"    # Ljavassist/compiler/MemberResolver$Method;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 587
    move-object/from16 v7, p0

    move-object/from16 v6, p2

    move-object/from16 v5, p3

    invoke-virtual {v7, v5}, Ljavassist/compiler/MemberCodeGen;->getMethodArgsLength(Ljavassist/compiler/ast/ASTList;)I

    move-result v4

    .line 588
    .local v4, "nargs":I
    new-array v3, v4, [I

    .line 589
    .local v3, "types":[I
    new-array v2, v4, [I

    .line 590
    .local v2, "dims":[I
    new-array v1, v4, [Ljava/lang/String;

    .line 592
    .local v1, "cnames":[Ljava/lang/String;
    if-nez p4, :cond_0

    if-eqz p7, :cond_0

    invoke-virtual/range {p7 .. p7}, Ljavassist/compiler/MemberResolver$Method;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 593
    iget-object v0, v7, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v8, 0x57

    invoke-virtual {v0, v8}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 594
    const/4 v0, 0x1

    move/from16 v16, v0

    .end local p4    # "isStatic":Z
    .local v0, "isStatic":Z
    goto :goto_0

    .line 598
    .end local v0    # "isStatic":Z
    .restart local p4    # "isStatic":Z
    :cond_0
    move/from16 v16, p4

    .end local p4    # "isStatic":Z
    .local v16, "isStatic":Z
    :goto_0
    iget-object v0, v7, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v0}, Ljavassist/bytecode/Bytecode;->getStackDepth()I

    move-result v17

    .line 601
    .local v17, "stack":I
    invoke-virtual {v7, v5, v3, v2, v1}, Ljavassist/compiler/MemberCodeGen;->atMethodArgs(Ljavassist/compiler/ast/ASTList;[I[I[Ljava/lang/String;)V

    .line 603
    if-nez p7, :cond_1

    .line 604
    iget-object v8, v7, Ljavassist/compiler/MemberCodeGen;->resolver:Ljavassist/compiler/MemberResolver;

    iget-object v10, v7, Ljavassist/compiler/MemberCodeGen;->thisClass:Ljavassist/CtClass;

    iget-object v11, v7, Ljavassist/compiler/MemberCodeGen;->thisMethod:Ljavassist/bytecode/MethodInfo;

    move-object/from16 v9, p1

    move-object/from16 v12, p2

    move-object v13, v3

    move-object v14, v2

    move-object v15, v1

    invoke-virtual/range {v8 .. v15}, Ljavassist/compiler/MemberResolver;->lookupMethod(Ljavassist/CtClass;Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;Ljava/lang/String;[I[I[Ljava/lang/String;)Ljavassist/compiler/MemberResolver$Method;

    move-result-object v0

    move-object v8, v0

    .end local p7    # "found":Ljavassist/compiler/MemberResolver$Method;
    .local v0, "found":Ljavassist/compiler/MemberResolver$Method;
    goto :goto_1

    .line 603
    .end local v0    # "found":Ljavassist/compiler/MemberResolver$Method;
    .restart local p7    # "found":Ljavassist/compiler/MemberResolver$Method;
    :cond_1
    move-object/from16 v8, p7

    .line 607
    .end local p7    # "found":Ljavassist/compiler/MemberResolver$Method;
    .local v8, "found":Ljavassist/compiler/MemberResolver$Method;
    :goto_1
    if-nez v8, :cond_3

    .line 609
    const-string v0, "<init>"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 610
    const-string v0, "constructor not found"

    .local v0, "msg":Ljava/lang/String;
    goto :goto_2

    .line 612
    .end local v0    # "msg":Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Method "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, " not found in "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 613
    invoke-virtual/range {p1 .. p1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 615
    .restart local v0    # "msg":Ljava/lang/String;
    :goto_2
    new-instance v9, Ljavassist/compiler/CompileError;

    invoke-direct {v9, v0}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v9

    .line 618
    .end local v0    # "msg":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    move-object v9, v1

    .end local v1    # "cnames":[Ljava/lang/String;
    .local v9, "cnames":[Ljava/lang/String;
    move-object/from16 v1, p1

    move-object v10, v2

    .end local v2    # "dims":[I
    .local v10, "dims":[I
    move-object/from16 v2, p2

    move-object v11, v3

    .end local v3    # "types":[I
    .local v11, "types":[I
    move/from16 v3, v16

    move v12, v4

    .end local v4    # "nargs":I
    .local v12, "nargs":I
    move/from16 v4, p5

    move/from16 v5, p6

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Ljavassist/compiler/MemberCodeGen;->atMethodCallCore2(Ljavassist/CtClass;Ljava/lang/String;ZZILjavassist/compiler/MemberResolver$Method;)V

    .line 620
    return-void
.end method

.method protected atMultiNewArray(ILjavassist/compiler/ast/ASTList;Ljavassist/compiler/ast/ASTList;)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "classname"    # Ljavassist/compiler/ast/ASTList;
    .param p3, "size"    # Ljavassist/compiler/ast/ASTList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 455
    invoke-virtual {p3}, Ljavassist/compiler/ast/ASTList;->length()I

    move-result v0

    .line 456
    .local v0, "dim":I
    const/4 v1, 0x0

    .local v1, "count":I
    :goto_0
    if-eqz p3, :cond_2

    .line 457
    invoke-virtual {p3}, Ljavassist/compiler/ast/ASTList;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object v2

    .line 458
    .local v2, "s":Ljavassist/compiler/ast/ASTree;
    if-nez v2, :cond_0

    .line 459
    goto :goto_1

    .line 461
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 462
    invoke-virtual {v2, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 463
    iget v3, p0, Ljavassist/compiler/MemberCodeGen;->exprType:I

    const/16 v4, 0x144

    if-ne v3, v4, :cond_1

    .line 456
    .end local v2    # "s":Ljavassist/compiler/ast/ASTree;
    invoke-virtual {p3}, Ljavassist/compiler/ast/ASTList;->tail()Ljavassist/compiler/ast/ASTList;

    move-result-object p3

    goto :goto_0

    .line 464
    .restart local v2    # "s":Ljavassist/compiler/ast/ASTree;
    :cond_1
    new-instance v3, Ljavassist/compiler/CompileError;

    const-string v4, "bad type for array size"

    invoke-direct {v3, v4}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v3

    .line 468
    .end local v2    # "s":Ljavassist/compiler/ast/ASTree;
    :cond_2
    :goto_1
    iput p1, p0, Ljavassist/compiler/MemberCodeGen;->exprType:I

    .line 469
    iput v0, p0, Ljavassist/compiler/MemberCodeGen;->arrayDim:I

    .line 470
    const/16 v2, 0x133

    if-ne p1, v2, :cond_3

    .line 471
    invoke-virtual {p0, p2}, Ljavassist/compiler/MemberCodeGen;->resolveClassName(Ljavassist/compiler/ast/ASTList;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljavassist/compiler/MemberCodeGen;->className:Ljava/lang/String;

    .line 472
    iget-object v2, p0, Ljavassist/compiler/MemberCodeGen;->className:Ljava/lang/String;

    invoke-static {v2, v0}, Ljavassist/compiler/MemberCodeGen;->toJvmArrayName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .local v2, "desc":Ljava/lang/String;
    goto :goto_2

    .line 475
    .end local v2    # "desc":Ljava/lang/String;
    :cond_3
    invoke-static {p1, v0}, Ljavassist/compiler/MemberCodeGen;->toJvmTypeName(II)Ljava/lang/String;

    move-result-object v2

    .line 477
    .restart local v2    # "desc":Ljava/lang/String;
    :goto_2
    iget-object v3, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v3, v2, v1}, Ljavassist/bytecode/Bytecode;->addMultiNewarray(Ljava/lang/String;I)I

    .line 478
    return-void
.end method

.method public atNewArrayExpr(Ljavassist/compiler/ast/NewExpr;)V
    .locals 6
    .param p1, "expr"    # Ljavassist/compiler/ast/NewExpr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 341
    invoke-virtual {p1}, Ljavassist/compiler/ast/NewExpr;->getArrayType()I

    move-result v0

    .line 342
    .local v0, "type":I
    invoke-virtual {p1}, Ljavassist/compiler/ast/NewExpr;->getArraySize()Ljavassist/compiler/ast/ASTList;

    move-result-object v1

    .line 343
    .local v1, "size":Ljavassist/compiler/ast/ASTList;
    invoke-virtual {p1}, Ljavassist/compiler/ast/NewExpr;->getClassName()Ljavassist/compiler/ast/ASTList;

    move-result-object v2

    .line 344
    .local v2, "classname":Ljavassist/compiler/ast/ASTList;
    invoke-virtual {p1}, Ljavassist/compiler/ast/NewExpr;->getInitializer()Ljavassist/compiler/ast/ArrayInit;

    move-result-object v3

    .line 345
    .local v3, "init":Ljavassist/compiler/ast/ArrayInit;
    invoke-virtual {v1}, Ljavassist/compiler/ast/ASTList;->length()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    .line 346
    if-nez v3, :cond_0

    .line 351
    invoke-virtual {p0, v0, v2, v1}, Ljavassist/compiler/MemberCodeGen;->atMultiNewArray(ILjavassist/compiler/ast/ASTList;Ljavassist/compiler/ast/ASTList;)V

    .line 352
    return-void

    .line 347
    :cond_0
    new-instance v4, Ljavassist/compiler/CompileError;

    const-string v5, "sorry, multi-dimensional array initializer for new is not supported"

    invoke-direct {v4, v5}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v4

    .line 355
    :cond_1
    invoke-virtual {v1}, Ljavassist/compiler/ast/ASTList;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object v4

    .line 356
    .local v4, "sizeExpr":Ljavassist/compiler/ast/ASTree;
    const/16 v5, 0x2f

    invoke-static {v2, v5}, Ljavassist/compiler/ast/Declarator;->astToClassName(Ljavassist/compiler/ast/ASTList;C)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v4, v5, v3}, Ljavassist/compiler/MemberCodeGen;->atNewArrayExpr2(ILjavassist/compiler/ast/ASTree;Ljava/lang/String;Ljavassist/compiler/ast/ArrayInit;)V

    .line 357
    return-void
.end method

.method public atNewExpr(Ljavassist/compiler/ast/NewExpr;)V
    .locals 11
    .param p1, "expr"    # Ljavassist/compiler/ast/NewExpr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 322
    invoke-virtual {p1}, Ljavassist/compiler/ast/NewExpr;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    invoke-virtual {p0, p1}, Ljavassist/compiler/MemberCodeGen;->atNewArrayExpr(Ljavassist/compiler/ast/NewExpr;)V

    goto :goto_0

    .line 325
    :cond_0
    iget-object v0, p0, Ljavassist/compiler/MemberCodeGen;->resolver:Ljavassist/compiler/MemberResolver;

    invoke-virtual {p1}, Ljavassist/compiler/ast/NewExpr;->getClassName()Ljavassist/compiler/ast/ASTList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavassist/compiler/MemberResolver;->lookupClassByName(Ljavassist/compiler/ast/ASTList;)Ljavassist/CtClass;

    move-result-object v0

    .line 326
    .local v0, "clazz":Ljavassist/CtClass;
    invoke-virtual {v0}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v1

    .line 327
    .local v1, "cname":Ljava/lang/String;
    invoke-virtual {p1}, Ljavassist/compiler/ast/NewExpr;->getArguments()Ljavassist/compiler/ast/ASTList;

    move-result-object v10

    .line 328
    .local v10, "args":Ljavassist/compiler/ast/ASTList;
    iget-object v2, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v2, v1}, Ljavassist/bytecode/Bytecode;->addNew(Ljava/lang/String;)V

    .line 329
    iget-object v2, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v3, 0x59

    invoke-virtual {v2, v3}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 331
    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, -0x1

    const/4 v9, 0x0

    const-string v4, "<init>"

    move-object v2, p0

    move-object v3, v0

    move-object v5, v10

    invoke-virtual/range {v2 .. v9}, Ljavassist/compiler/MemberCodeGen;->atMethodCallCore(Ljavassist/CtClass;Ljava/lang/String;Ljavassist/compiler/ast/ASTList;ZZILjavassist/compiler/MemberResolver$Method;)V

    .line 334
    const/16 v2, 0x133

    iput v2, p0, Ljavassist/compiler/MemberCodeGen;->exprType:I

    .line 335
    const/4 v2, 0x0

    iput v2, p0, Ljavassist/compiler/MemberCodeGen;->arrayDim:I

    .line 336
    invoke-static {v1}, Ljavassist/compiler/MemberResolver;->javaToJvmName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljavassist/compiler/MemberCodeGen;->className:Ljava/lang/String;

    .line 338
    .end local v0    # "clazz":Ljavassist/CtClass;
    .end local v1    # "cname":Ljava/lang/String;
    .end local v10    # "args":Ljavassist/compiler/ast/ASTList;
    :goto_0
    return-void
.end method

.method protected atTryStmnt(Ljavassist/compiler/ast/Stmnt;)V
    .locals 18
    .param p1, "st"    # Ljavassist/compiler/ast/Stmnt;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 220
    move-object/from16 v0, p0

    iget-object v1, v0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    .line 221
    .local v1, "bc":Ljavassist/bytecode/Bytecode;
    invoke-virtual/range {p1 .. p1}, Ljavassist/compiler/ast/Stmnt;->getLeft()Ljavassist/compiler/ast/ASTree;

    move-result-object v2

    check-cast v2, Ljavassist/compiler/ast/Stmnt;

    .line 222
    .local v2, "body":Ljavassist/compiler/ast/Stmnt;
    if-nez v2, :cond_0

    .line 223
    return-void

    .line 225
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljavassist/compiler/ast/Stmnt;->getRight()Ljavassist/compiler/ast/ASTree;

    move-result-object v3

    invoke-virtual {v3}, Ljavassist/compiler/ast/ASTree;->getLeft()Ljavassist/compiler/ast/ASTree;

    move-result-object v3

    check-cast v3, Ljavassist/compiler/ast/ASTList;

    .line 226
    .local v3, "catchList":Ljavassist/compiler/ast/ASTList;
    invoke-virtual/range {p1 .. p1}, Ljavassist/compiler/ast/Stmnt;->getRight()Ljavassist/compiler/ast/ASTree;

    move-result-object v4

    invoke-virtual {v4}, Ljavassist/compiler/ast/ASTree;->getRight()Ljavassist/compiler/ast/ASTree;

    move-result-object v4

    invoke-virtual {v4}, Ljavassist/compiler/ast/ASTree;->getLeft()Ljavassist/compiler/ast/ASTree;

    move-result-object v4

    check-cast v4, Ljavassist/compiler/ast/Stmnt;

    .line 227
    .local v4, "finallyBlock":Ljavassist/compiler/ast/Stmnt;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 229
    .local v5, "gotoList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v6, 0x0

    .line 230
    .local v6, "jsrHook":Ljavassist/compiler/MemberCodeGen$JsrHook;
    if-eqz v4, :cond_1

    .line 231
    new-instance v7, Ljavassist/compiler/MemberCodeGen$JsrHook;

    invoke-direct {v7, v0}, Ljavassist/compiler/MemberCodeGen$JsrHook;-><init>(Ljavassist/compiler/CodeGen;)V

    move-object v6, v7

    .line 233
    :cond_1
    invoke-virtual {v1}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result v7

    .line 234
    .local v7, "start":I
    invoke-virtual {v2, v0}, Ljavassist/compiler/ast/Stmnt;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 235
    invoke-virtual {v1}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result v8

    .line 236
    .local v8, "end":I
    if-eq v7, v8, :cond_a

    .line 239
    iget-boolean v9, v0, Ljavassist/compiler/MemberCodeGen;->hasReturned:Z

    const/4 v10, 0x1

    xor-int/2addr v9, v10

    .line 240
    .local v9, "tryNotReturn":Z
    const/16 v11, 0xa7

    const/4 v12, 0x0

    if-eqz v9, :cond_2

    .line 241
    invoke-virtual {v1, v11}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 242
    invoke-virtual {v1}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v5, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    invoke-virtual {v1, v12}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    .line 246
    :cond_2
    invoke-virtual/range {p0 .. p0}, Ljavassist/compiler/MemberCodeGen;->getMaxLocals()I

    move-result v13

    .line 247
    .local v13, "var":I
    invoke-virtual {v0, v10}, Ljavassist/compiler/MemberCodeGen;->incMaxLocals(I)V

    .line 248
    :goto_0
    if-eqz v3, :cond_5

    .line 250
    invoke-virtual {v3}, Ljavassist/compiler/ast/ASTList;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object v14

    check-cast v14, Ljavassist/compiler/ast/Pair;

    .line 251
    .local v14, "p":Ljavassist/compiler/ast/Pair;
    invoke-virtual {v3}, Ljavassist/compiler/ast/ASTList;->tail()Ljavassist/compiler/ast/ASTList;

    move-result-object v3

    .line 252
    invoke-virtual {v14}, Ljavassist/compiler/ast/Pair;->getLeft()Ljavassist/compiler/ast/ASTree;

    move-result-object v15

    check-cast v15, Ljavassist/compiler/ast/Declarator;

    .line 253
    .local v15, "decl":Ljavassist/compiler/ast/Declarator;
    invoke-virtual {v14}, Ljavassist/compiler/ast/Pair;->getRight()Ljavassist/compiler/ast/ASTree;

    move-result-object v16

    move-object/from16 v11, v16

    check-cast v11, Ljavassist/compiler/ast/Stmnt;

    .line 255
    .local v11, "block":Ljavassist/compiler/ast/Stmnt;
    invoke-virtual {v15, v13}, Ljavassist/compiler/ast/Declarator;->setLocalVar(I)V

    .line 257
    iget-object v12, v0, Ljavassist/compiler/MemberCodeGen;->resolver:Ljavassist/compiler/MemberResolver;

    invoke-virtual {v15}, Ljavassist/compiler/ast/Declarator;->getClassName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljavassist/compiler/MemberResolver;->lookupClassByJvmName(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v10

    .line 258
    .local v10, "type":Ljavassist/CtClass;
    invoke-virtual {v10}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljavassist/compiler/MemberResolver;->javaToJvmName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v15, v12}, Ljavassist/compiler/ast/Declarator;->setClassName(Ljava/lang/String;)V

    .line 259
    invoke-virtual {v1}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result v12

    invoke-virtual {v1, v7, v8, v12, v10}, Ljavassist/bytecode/Bytecode;->addExceptionHandler(IIILjavassist/CtClass;)V

    .line 260
    const/4 v12, 0x1

    invoke-virtual {v1, v12}, Ljavassist/bytecode/Bytecode;->growStack(I)V

    .line 261
    invoke-virtual {v1, v13}, Ljavassist/bytecode/Bytecode;->addAstore(I)V

    .line 262
    const/4 v12, 0x0

    iput-boolean v12, v0, Ljavassist/compiler/MemberCodeGen;->hasReturned:Z

    .line 263
    if-eqz v11, :cond_3

    .line 264
    invoke-virtual {v11, v0}, Ljavassist/compiler/ast/Stmnt;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 266
    :cond_3
    iget-boolean v12, v0, Ljavassist/compiler/MemberCodeGen;->hasReturned:Z

    if-nez v12, :cond_4

    .line 267
    const/16 v12, 0xa7

    invoke-virtual {v1, v12}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 268
    invoke-virtual {v1}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v5, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    const/4 v12, 0x0

    invoke-virtual {v1, v12}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    .line 270
    const/4 v9, 0x1

    .line 272
    .end local v10    # "type":Ljavassist/CtClass;
    .end local v11    # "block":Ljavassist/compiler/ast/Stmnt;
    .end local v14    # "p":Ljavassist/compiler/ast/Pair;
    .end local v15    # "decl":Ljavassist/compiler/ast/Declarator;
    :cond_4
    const/4 v10, 0x1

    const/16 v11, 0xa7

    const/4 v12, 0x0

    goto :goto_0

    .line 274
    :cond_5
    if-eqz v4, :cond_7

    .line 275
    invoke-virtual {v6, v0}, Ljavassist/compiler/MemberCodeGen$JsrHook;->remove(Ljavassist/compiler/CodeGen;)V

    .line 277
    invoke-virtual {v1}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result v10

    .line 278
    .local v10, "pcAnyCatch":I
    const/4 v11, 0x0

    invoke-virtual {v1, v7, v10, v10, v11}, Ljavassist/bytecode/Bytecode;->addExceptionHandler(IIII)V

    .line 279
    const/4 v12, 0x1

    invoke-virtual {v1, v12}, Ljavassist/bytecode/Bytecode;->growStack(I)V

    .line 280
    invoke-virtual {v1, v13}, Ljavassist/bytecode/Bytecode;->addAstore(I)V

    .line 281
    iput-boolean v11, v0, Ljavassist/compiler/MemberCodeGen;->hasReturned:Z

    .line 282
    invoke-virtual {v4, v0}, Ljavassist/compiler/ast/Stmnt;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 283
    iget-boolean v14, v0, Ljavassist/compiler/MemberCodeGen;->hasReturned:Z

    if-nez v14, :cond_6

    .line 284
    invoke-virtual {v1, v13}, Ljavassist/bytecode/Bytecode;->addAload(I)V

    .line 285
    const/16 v14, 0xbf

    invoke-virtual {v1, v14}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 288
    :cond_6
    iget-object v14, v6, Ljavassist/compiler/MemberCodeGen$JsrHook;->jsrList:Ljava/util/List;

    invoke-direct {v0, v14, v4}, Ljavassist/compiler/MemberCodeGen;->addFinally(Ljava/util/List;Ljavassist/compiler/ast/Stmnt;)V

    goto :goto_1

    .line 274
    .end local v10    # "pcAnyCatch":I
    :cond_7
    const/4 v11, 0x0

    const/4 v12, 0x1

    .line 291
    :goto_1
    invoke-virtual {v1}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result v10

    .line 292
    .local v10, "pcEnd":I
    invoke-virtual {v0, v5, v10}, Ljavassist/compiler/MemberCodeGen;->patchGoto(Ljava/util/List;I)V

    .line 293
    if-nez v9, :cond_8

    move v11, v12

    :cond_8
    iput-boolean v11, v0, Ljavassist/compiler/MemberCodeGen;->hasReturned:Z

    .line 294
    if-eqz v4, :cond_9

    .line 295
    if-eqz v9, :cond_9

    .line 296
    invoke-virtual {v4, v0}, Ljavassist/compiler/ast/Stmnt;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 298
    :cond_9
    return-void

    .line 237
    .end local v9    # "tryNotReturn":Z
    .end local v10    # "pcEnd":I
    .end local v13    # "var":I
    :cond_a
    new-instance v9, Ljavassist/compiler/CompileError;

    const-string v10, "empty try block"

    invoke-direct {v9, v10}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v9
.end method

.method protected fieldAccess(Ljavassist/compiler/ast/ASTree;Z)Ljavassist/CtField;
    .locals 8
    .param p1, "expr"    # Ljavassist/compiler/ast/ASTree;
    .param p2, "acceptLength"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 1070
    instance-of v0, p1, Ljavassist/compiler/ast/Member;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1071
    move-object v0, p1

    check-cast v0, Ljavassist/compiler/ast/Member;

    invoke-virtual {v0}, Ljavassist/compiler/ast/Member;->get()Ljava/lang/String;

    move-result-object v0

    .line 1072
    .local v0, "name":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1074
    .local v2, "f":Ljavassist/CtField;
    :try_start_0
    iget-object v3, p0, Ljavassist/compiler/MemberCodeGen;->thisClass:Ljavassist/CtClass;

    invoke-virtual {v3, v0}, Ljavassist/CtClass;->getField(Ljava/lang/String;)Ljavassist/CtField;

    move-result-object v3
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    .line 1079
    nop

    .line 1081
    invoke-virtual {v2}, Ljavassist/CtField;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljavassist/Modifier;->isStatic(I)Z

    move-result v3

    .line 1082
    .local v3, "is_static":Z
    if-nez v3, :cond_1

    .line 1083
    iget-boolean v4, p0, Ljavassist/compiler/MemberCodeGen;->inStaticMethod:Z

    if-nez v4, :cond_0

    .line 1087
    iget-object v4, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v4, v1}, Ljavassist/bytecode/Bytecode;->addAload(I)V

    goto :goto_0

    .line 1084
    :cond_0
    new-instance v1, Ljavassist/compiler/CompileError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "not available in a static method: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1089
    :cond_1
    :goto_0
    iput-boolean v3, p0, Ljavassist/compiler/MemberCodeGen;->resultStatic:Z

    .line 1090
    return-object v2

    .line 1076
    .end local v3    # "is_static":Z
    :catch_0
    move-exception v1

    .line 1078
    .local v1, "e":Ljavassist/NotFoundException;
    new-instance v3, Ljavassist/compiler/NoFieldException;

    invoke-direct {v3, v0, p1}, Ljavassist/compiler/NoFieldException;-><init>(Ljava/lang/String;Ljavassist/compiler/ast/ASTree;)V

    throw v3

    .line 1092
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "e":Ljavassist/NotFoundException;
    .end local v2    # "f":Ljavassist/CtField;
    :cond_2
    instance-of v0, p1, Ljavassist/compiler/ast/Expr;

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    .line 1093
    move-object v0, p1

    check-cast v0, Ljavassist/compiler/ast/Expr;

    .line 1094
    .local v0, "e":Ljavassist/compiler/ast/Expr;
    invoke-virtual {v0}, Ljavassist/compiler/ast/Expr;->getOperator()I

    move-result v3

    .line 1095
    .local v3, "op":I
    const/16 v4, 0x23

    const/4 v5, 0x1

    if-ne v3, v4, :cond_3

    .line 1100
    iget-object v1, p0, Ljavassist/compiler/MemberCodeGen;->resolver:Ljavassist/compiler/MemberResolver;

    invoke-virtual {v0}, Ljavassist/compiler/ast/Expr;->oprand1()Ljavassist/compiler/ast/ASTree;

    move-result-object v2

    check-cast v2, Ljavassist/compiler/ast/Symbol;

    invoke-virtual {v2}, Ljavassist/compiler/ast/Symbol;->get()Ljava/lang/String;

    move-result-object v2

    .line 1101
    invoke-virtual {v0}, Ljavassist/compiler/ast/Expr;->oprand2()Ljavassist/compiler/ast/ASTree;

    move-result-object v4

    check-cast v4, Ljavassist/compiler/ast/Symbol;

    .line 1100
    invoke-virtual {v1, v2, v4}, Ljavassist/compiler/MemberResolver;->lookupField(Ljava/lang/String;Ljavassist/compiler/ast/Symbol;)Ljavassist/CtField;

    move-result-object v1

    .line 1102
    .local v1, "f":Ljavassist/CtField;
    iput-boolean v5, p0, Ljavassist/compiler/MemberCodeGen;->resultStatic:Z

    .line 1103
    return-object v1

    .line 1105
    .end local v1    # "f":Ljavassist/CtField;
    :cond_3
    const/16 v4, 0x2e

    if-ne v3, v4, :cond_8

    .line 1106
    const/4 v1, 0x0

    .line 1108
    .restart local v1    # "f":Ljavassist/CtField;
    :try_start_1
    invoke-virtual {v0}, Ljavassist/compiler/ast/Expr;->oprand1()Ljavassist/compiler/ast/ASTree;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 1113
    iget v4, p0, Ljavassist/compiler/MemberCodeGen;->exprType:I

    const/16 v6, 0x133

    if-ne v4, v6, :cond_4

    iget v4, p0, Ljavassist/compiler/MemberCodeGen;->arrayDim:I

    if-nez v4, :cond_4

    .line 1114
    iget-object v2, p0, Ljavassist/compiler/MemberCodeGen;->resolver:Ljavassist/compiler/MemberResolver;

    iget-object v4, p0, Ljavassist/compiler/MemberCodeGen;->className:Ljava/lang/String;

    .line 1115
    invoke-virtual {v0}, Ljavassist/compiler/ast/Expr;->oprand2()Ljavassist/compiler/ast/ASTree;

    move-result-object v6

    check-cast v6, Ljavassist/compiler/ast/Symbol;

    .line 1114
    invoke-virtual {v2, v4, v6}, Ljavassist/compiler/MemberResolver;->lookupFieldByJvmName(Ljava/lang/String;Ljavassist/compiler/ast/Symbol;)Ljavassist/CtField;

    move-result-object v2

    move-object v1, v2

    goto :goto_1

    .line 1116
    :cond_4
    if-eqz p2, :cond_5

    iget v4, p0, Ljavassist/compiler/MemberCodeGen;->arrayDim:I

    if-lez v4, :cond_5

    .line 1117
    invoke-virtual {v0}, Ljavassist/compiler/ast/Expr;->oprand2()Ljavassist/compiler/ast/ASTree;

    move-result-object v4

    check-cast v4, Ljavassist/compiler/ast/Symbol;

    invoke-virtual {v4}, Ljavassist/compiler/ast/Symbol;->get()Ljava/lang/String;

    move-result-object v4

    const-string v6, "length"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1118
    return-object v2

    .line 1120
    :cond_5
    invoke-static {}, Ljavassist/compiler/MemberCodeGen;->badLvalue()V

    .line 1122
    :goto_1
    invoke-virtual {v1}, Ljavassist/CtField;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljavassist/Modifier;->isStatic(I)Z

    move-result v2

    .line 1123
    .local v2, "is_static":Z
    if-eqz v2, :cond_6

    .line 1124
    iget-object v4, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v6, 0x57

    invoke-virtual {v4, v6}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1126
    :cond_6
    iput-boolean v2, p0, Ljavassist/compiler/MemberCodeGen;->resultStatic:Z
    :try_end_1
    .catch Ljavassist/compiler/NoFieldException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1127
    return-object v1

    .line 1129
    .end local v2    # "is_static":Z
    :catch_1
    move-exception v2

    .line 1130
    .local v2, "nfe":Ljavassist/compiler/NoFieldException;
    invoke-virtual {v2}, Ljavassist/compiler/NoFieldException;->getExpr()Ljavassist/compiler/ast/ASTree;

    move-result-object v4

    invoke-virtual {v0}, Ljavassist/compiler/ast/Expr;->oprand1()Ljavassist/compiler/ast/ASTree;

    move-result-object v6

    if-ne v4, v6, :cond_7

    .line 1137
    invoke-virtual {v0}, Ljavassist/compiler/ast/Expr;->oprand2()Ljavassist/compiler/ast/ASTree;

    move-result-object v4

    check-cast v4, Ljavassist/compiler/ast/Symbol;

    .line 1138
    .local v4, "fname":Ljavassist/compiler/ast/Symbol;
    invoke-virtual {v2}, Ljavassist/compiler/NoFieldException;->getField()Ljava/lang/String;

    move-result-object v6

    .line 1139
    .local v6, "cname":Ljava/lang/String;
    iget-object v7, p0, Ljavassist/compiler/MemberCodeGen;->resolver:Ljavassist/compiler/MemberResolver;

    invoke-virtual {v7, v6, v4, p1}, Ljavassist/compiler/MemberResolver;->lookupFieldByJvmName2(Ljava/lang/String;Ljavassist/compiler/ast/Symbol;Ljavassist/compiler/ast/ASTree;)Ljavassist/CtField;

    move-result-object v1

    .line 1140
    iput-boolean v5, p0, Ljavassist/compiler/MemberCodeGen;->resultStatic:Z

    .line 1141
    return-object v1

    .line 1131
    .end local v4    # "fname":Ljavassist/compiler/ast/Symbol;
    .end local v6    # "cname":Ljava/lang/String;
    :cond_7
    throw v2

    .line 1145
    .end local v1    # "f":Ljavassist/CtField;
    .end local v2    # "nfe":Ljavassist/compiler/NoFieldException;
    :cond_8
    invoke-static {}, Ljavassist/compiler/MemberCodeGen;->badLvalue()V

    .line 1146
    .end local v0    # "e":Ljavassist/compiler/ast/Expr;
    .end local v3    # "op":I
    goto :goto_2

    .line 1148
    :cond_9
    invoke-static {}, Ljavassist/compiler/MemberCodeGen;->badLvalue()V

    .line 1150
    :goto_2
    iput-boolean v1, p0, Ljavassist/compiler/MemberCodeGen;->resultStatic:Z

    .line 1151
    return-object v2
.end method

.method protected getAccessibleConstructor(Ljava/lang/String;Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;)Ljava/lang/String;
    .locals 3
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "declClass"    # Ljavassist/CtClass;
    .param p3, "minfo"    # Ljavassist/bytecode/MethodInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 748
    iget-object v0, p0, Ljavassist/compiler/MemberCodeGen;->thisClass:Ljavassist/CtClass;

    invoke-direct {p0, p2, v0}, Ljavassist/compiler/MemberCodeGen;->isEnclosing(Ljavassist/CtClass;Ljavassist/CtClass;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 749
    invoke-virtual {p2}, Ljavassist/CtClass;->getAccessorMaker()Ljavassist/compiler/AccessorMaker;

    move-result-object v0

    .line 750
    .local v0, "maker":Ljavassist/compiler/AccessorMaker;
    if-eqz v0, :cond_0

    .line 751
    invoke-virtual {v0, p2, p1, p3}, Ljavassist/compiler/AccessorMaker;->getConstructor(Ljavassist/CtClass;Ljava/lang/String;Ljavassist/bytecode/MethodInfo;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 754
    .end local v0    # "maker":Ljavassist/compiler/AccessorMaker;
    :cond_0
    new-instance v0, Ljavassist/compiler/CompileError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the called constructor is private in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 755
    invoke-virtual {p2}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getAccessiblePrivate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljavassist/bytecode/MethodInfo;Ljavassist/CtClass;)Ljava/lang/String;
    .locals 3
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "newDesc"    # Ljava/lang/String;
    .param p4, "minfo"    # Ljavassist/bytecode/MethodInfo;
    .param p5, "declClass"    # Ljavassist/CtClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 724
    iget-object v0, p0, Ljavassist/compiler/MemberCodeGen;->thisClass:Ljavassist/CtClass;

    invoke-direct {p0, p5, v0}, Ljavassist/compiler/MemberCodeGen;->isEnclosing(Ljavassist/CtClass;Ljavassist/CtClass;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 725
    invoke-virtual {p5}, Ljavassist/CtClass;->getAccessorMaker()Ljavassist/compiler/AccessorMaker;

    move-result-object v0

    .line 726
    .local v0, "maker":Ljavassist/compiler/AccessorMaker;
    if-eqz v0, :cond_0

    .line 727
    invoke-virtual {v0, p1, p2, p3, p4}, Ljavassist/compiler/AccessorMaker;->getMethodAccessor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljavassist/bytecode/MethodInfo;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 731
    .end local v0    # "maker":Ljavassist/compiler/AccessorMaker;
    :cond_0
    new-instance v0, Ljavassist/compiler/CompileError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is private"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMajorVersion()I
    .locals 2

    .line 71
    iget-object v0, p0, Ljavassist/compiler/MemberCodeGen;->thisClass:Ljavassist/CtClass;

    invoke-virtual {v0}, Ljavassist/CtClass;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v0

    .line 72
    .local v0, "cf":Ljavassist/bytecode/ClassFile;
    if-nez v0, :cond_0

    .line 73
    sget v1, Ljavassist/bytecode/ClassFile;->MAJOR_VERSION:I

    return v1

    .line 74
    :cond_0
    invoke-virtual {v0}, Ljavassist/bytecode/ClassFile;->getMajorVersion()I

    move-result v1

    return v1
.end method

.method public getMethodArgsLength(Ljavassist/compiler/ast/ASTList;)I
    .locals 1
    .param p1, "args"    # Ljavassist/compiler/ast/ASTList;

    .line 771
    invoke-static {p1}, Ljavassist/compiler/ast/ASTList;->length(Ljavassist/compiler/ast/ASTList;)I

    move-result v0

    return v0
.end method

.method protected getSuperName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 101
    iget-object v0, p0, Ljavassist/compiler/MemberCodeGen;->thisClass:Ljavassist/CtClass;

    .line 102
    invoke-static {v0}, Ljavassist/compiler/MemberResolver;->getSuperclass(Ljavassist/CtClass;)Ljavassist/CtClass;

    move-result-object v0

    invoke-virtual {v0}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v0

    .line 101
    invoke-static {v0}, Ljavassist/compiler/MemberResolver;->javaToJvmName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThisClass()Ljavassist/CtClass;
    .locals 1

    .line 86
    iget-object v0, p0, Ljavassist/compiler/MemberCodeGen;->thisClass:Ljavassist/CtClass;

    return-object v0
.end method

.method protected getThisName()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Ljavassist/compiler/MemberCodeGen;->thisClass:Ljavassist/CtClass;

    invoke-virtual {v0}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavassist/compiler/MemberResolver;->javaToJvmName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected insertDefaultSuperCall()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 107
    iget-object v0, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavassist/bytecode/Bytecode;->addAload(I)V

    .line 108
    iget-object v0, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    iget-object v1, p0, Ljavassist/compiler/MemberCodeGen;->thisClass:Ljavassist/CtClass;

    invoke-static {v1}, Ljavassist/compiler/MemberResolver;->getSuperclass(Ljavassist/CtClass;)Ljavassist/CtClass;

    move-result-object v1

    const-string v2, "<init>"

    const-string v3, "()V"

    invoke-virtual {v0, v1, v2, v3}, Ljavassist/bytecode/Bytecode;->addInvokespecial(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public makeParamList(Ljavassist/compiler/ast/MethodDecl;)[Ljavassist/CtClass;
    .locals 6
    .param p1, "md"    # Ljavassist/compiler/ast/MethodDecl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 1160
    invoke-virtual {p1}, Ljavassist/compiler/ast/MethodDecl;->getParams()Ljavassist/compiler/ast/ASTList;

    move-result-object v0

    .line 1161
    .local v0, "plist":Ljavassist/compiler/ast/ASTList;
    if-nez v0, :cond_0

    .line 1162
    const/4 v1, 0x0

    new-array v1, v1, [Ljavassist/CtClass;

    .local v1, "params":[Ljavassist/CtClass;
    goto :goto_1

    .line 1164
    .end local v1    # "params":[Ljavassist/CtClass;
    :cond_0
    const/4 v1, 0x0

    .line 1165
    .local v1, "i":I
    invoke-virtual {v0}, Ljavassist/compiler/ast/ASTList;->length()I

    move-result v2

    new-array v2, v2, [Ljavassist/CtClass;

    .line 1166
    .local v2, "params":[Ljavassist/CtClass;
    :goto_0
    if-eqz v0, :cond_1

    .line 1167
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "i":I
    .local v3, "i":I
    iget-object v4, p0, Ljavassist/compiler/MemberCodeGen;->resolver:Ljavassist/compiler/MemberResolver;

    invoke-virtual {v0}, Ljavassist/compiler/ast/ASTList;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object v5

    check-cast v5, Ljavassist/compiler/ast/Declarator;

    invoke-virtual {v4, v5}, Ljavassist/compiler/MemberResolver;->lookupClass(Ljavassist/compiler/ast/Declarator;)Ljavassist/CtClass;

    move-result-object v4

    aput-object v4, v2, v1

    .line 1168
    invoke-virtual {v0}, Ljavassist/compiler/ast/ASTList;->tail()Ljavassist/compiler/ast/ASTList;

    move-result-object v0

    move v1, v3

    goto :goto_0

    .line 1166
    .end local v3    # "i":I
    .restart local v1    # "i":I
    :cond_1
    move-object v1, v2

    .line 1172
    .end local v2    # "params":[Ljavassist/CtClass;
    .local v1, "params":[Ljavassist/CtClass;
    :goto_1
    return-object v1
.end method

.method public makeThrowsList(Ljavassist/compiler/ast/MethodDecl;)[Ljavassist/CtClass;
    .locals 6
    .param p1, "md"    # Ljavassist/compiler/ast/MethodDecl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 1177
    invoke-virtual {p1}, Ljavassist/compiler/ast/MethodDecl;->getThrows()Ljavassist/compiler/ast/ASTList;

    move-result-object v0

    .line 1178
    .local v0, "list":Ljavassist/compiler/ast/ASTList;
    if-nez v0, :cond_0

    .line 1179
    const/4 v1, 0x0

    return-object v1

    .line 1180
    :cond_0
    const/4 v1, 0x0

    .line 1181
    .local v1, "i":I
    invoke-virtual {v0}, Ljavassist/compiler/ast/ASTList;->length()I

    move-result v2

    new-array v2, v2, [Ljavassist/CtClass;

    .line 1182
    .local v2, "clist":[Ljavassist/CtClass;
    :goto_0
    if-eqz v0, :cond_1

    .line 1183
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "i":I
    .local v3, "i":I
    iget-object v4, p0, Ljavassist/compiler/MemberCodeGen;->resolver:Ljavassist/compiler/MemberResolver;

    invoke-virtual {v0}, Ljavassist/compiler/ast/ASTList;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object v5

    check-cast v5, Ljavassist/compiler/ast/ASTList;

    invoke-virtual {v4, v5}, Ljavassist/compiler/MemberResolver;->lookupClassByName(Ljavassist/compiler/ast/ASTList;)Ljavassist/CtClass;

    move-result-object v4

    aput-object v4, v2, v1

    .line 1184
    invoke-virtual {v0}, Ljavassist/compiler/ast/ASTList;->tail()Ljavassist/compiler/ast/ASTList;

    move-result-object v0

    move v1, v3

    goto :goto_0

    .line 1187
    .end local v3    # "i":I
    .restart local v1    # "i":I
    :cond_1
    return-object v2
.end method

.method protected resolveClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "jvmName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 1205
    iget-object v0, p0, Ljavassist/compiler/MemberCodeGen;->resolver:Ljavassist/compiler/MemberResolver;

    invoke-virtual {v0, p1}, Ljavassist/compiler/MemberResolver;->resolveJvmClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected resolveClassName(Ljavassist/compiler/ast/ASTList;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljavassist/compiler/ast/ASTList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 1197
    iget-object v0, p0, Ljavassist/compiler/MemberCodeGen;->resolver:Ljavassist/compiler/MemberResolver;

    invoke-virtual {v0, p1}, Ljavassist/compiler/MemberResolver;->resolveClassName(Ljavassist/compiler/ast/ASTList;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method setReturnType(Ljava/lang/String;ZZ)V
    .locals 7
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "isStatic"    # Z
    .param p3, "popTarget"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 791
    const/16 v0, 0x29

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 792
    .local v0, "i":I
    if-gez v0, :cond_0

    .line 793
    invoke-static {}, Ljavassist/compiler/MemberCodeGen;->badMethod()V

    .line 795
    :cond_0
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 796
    .local v1, "c":C
    const/4 v2, 0x0

    .line 797
    .local v2, "dim":I
    :goto_0
    const/16 v3, 0x5b

    if-ne v1, v3, :cond_1

    .line 798
    add-int/lit8 v2, v2, 0x1

    .line 799
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_0

    .line 802
    :cond_1
    iput v2, p0, Ljavassist/compiler/MemberCodeGen;->arrayDim:I

    .line 803
    const/16 v3, 0x4c

    if-ne v1, v3, :cond_3

    .line 804
    const/16 v3, 0x3b

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 805
    .local v3, "j":I
    if-gez v3, :cond_2

    .line 806
    invoke-static {}, Ljavassist/compiler/MemberCodeGen;->badMethod()V

    .line 808
    :cond_2
    const/16 v4, 0x133

    iput v4, p0, Ljavassist/compiler/MemberCodeGen;->exprType:I

    .line 809
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Ljavassist/compiler/MemberCodeGen;->className:Ljava/lang/String;

    .line 810
    .end local v3    # "j":I
    goto :goto_1

    .line 812
    :cond_3
    invoke-static {v1}, Ljavassist/compiler/MemberResolver;->descToType(C)I

    move-result v3

    iput v3, p0, Ljavassist/compiler/MemberCodeGen;->exprType:I

    .line 813
    const/4 v3, 0x0

    iput-object v3, p0, Ljavassist/compiler/MemberCodeGen;->className:Ljava/lang/String;

    .line 816
    :goto_1
    iget v3, p0, Ljavassist/compiler/MemberCodeGen;->exprType:I

    .line 817
    .local v3, "etype":I
    if-eqz p2, :cond_6

    .line 818
    if-eqz p3, :cond_6

    .line 819
    invoke-static {v3, v2}, Ljavassist/compiler/MemberCodeGen;->is2word(II)Z

    move-result v4

    const/16 v5, 0x57

    if-eqz v4, :cond_4

    .line 820
    iget-object v4, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v6, 0x5d

    invoke-virtual {v4, v6}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 821
    iget-object v4, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v6, 0x58

    invoke-virtual {v4, v6}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 822
    iget-object v4, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v4, v5}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    goto :goto_2

    .line 824
    :cond_4
    const/16 v4, 0x158

    if-ne v3, v4, :cond_5

    .line 825
    iget-object v4, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v4, v5}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    goto :goto_2

    .line 827
    :cond_5
    iget-object v4, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v6, 0x5f

    invoke-virtual {v4, v6}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 828
    iget-object v4, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v4, v5}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 832
    :cond_6
    :goto_2
    return-void
.end method

.method public setThisMethod(Ljavassist/CtMethod;)V
    .locals 2
    .param p1, "m"    # Ljavassist/CtMethod;

    .line 81
    invoke-virtual {p1}, Ljavassist/CtMethod;->getMethodInfo2()Ljavassist/bytecode/MethodInfo;

    move-result-object v0

    iput-object v0, p0, Ljavassist/compiler/MemberCodeGen;->thisMethod:Ljavassist/bytecode/MethodInfo;

    .line 82
    iget-object v0, p0, Ljavassist/compiler/MemberCodeGen;->typeChecker:Ljavassist/compiler/TypeChecker;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Ljavassist/compiler/MemberCodeGen;->typeChecker:Ljavassist/compiler/TypeChecker;

    iget-object v1, p0, Ljavassist/compiler/MemberCodeGen;->thisMethod:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {v0, v1}, Ljavassist/compiler/TypeChecker;->setThisMethod(Ljavassist/bytecode/MethodInfo;)V

    .line 84
    :cond_0
    return-void
.end method
