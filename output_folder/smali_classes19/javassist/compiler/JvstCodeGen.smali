.class public Ljavassist/compiler/JvstCodeGen;
.super Ljavassist/compiler/MemberCodeGen;
.source "JvstCodeGen.java"


# static fields
.field public static final cflowName:Ljava/lang/String; = "$cflow"

.field public static final clazzName:Ljava/lang/String; = "$class"

.field public static final dollarTypeName:Ljava/lang/String; = "$type"

.field public static final sigName:Ljava/lang/String; = "$sig"

.field public static final wrapperCastName:Ljava/lang/String; = "$w"


# instance fields
.field private dollarType:Ljavassist/CtClass;

.field private param0Type:Ljava/lang/String;

.field paramArrayName:Ljava/lang/String;

.field paramListName:Ljava/lang/String;

.field paramTypeList:[Ljavassist/CtClass;

.field private paramVarBase:I

.field procHandler:Ljavassist/compiler/ProceedHandler;

.field proceedName:Ljava/lang/String;

.field returnCastName:Ljava/lang/String;

.field returnType:Ljavassist/CtClass;

.field private returnVarName:Ljava/lang/String;

.field private useParam0:Z


# direct methods
.method public constructor <init>(Ljavassist/bytecode/Bytecode;Ljavassist/CtClass;Ljavassist/ClassPool;)V
    .locals 2
    .param p1, "b"    # Ljavassist/bytecode/Bytecode;
    .param p2, "cc"    # Ljavassist/CtClass;
    .param p3, "cp"    # Ljavassist/ClassPool;

    .line 59
    invoke-direct {p0, p1, p2, p3}, Ljavassist/compiler/MemberCodeGen;-><init>(Ljavassist/bytecode/Bytecode;Ljavassist/CtClass;Ljavassist/ClassPool;)V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Ljavassist/compiler/JvstCodeGen;->paramArrayName:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Ljavassist/compiler/JvstCodeGen;->paramListName:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Ljavassist/compiler/JvstCodeGen;->paramTypeList:[Ljavassist/CtClass;

    .line 42
    const/4 v1, 0x0

    iput v1, p0, Ljavassist/compiler/JvstCodeGen;->paramVarBase:I

    .line 43
    iput-boolean v1, p0, Ljavassist/compiler/JvstCodeGen;->useParam0:Z

    .line 44
    iput-object v0, p0, Ljavassist/compiler/JvstCodeGen;->param0Type:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Ljavassist/compiler/JvstCodeGen;->dollarType:Ljavassist/CtClass;

    .line 49
    iput-object v0, p0, Ljavassist/compiler/JvstCodeGen;->returnType:Ljavassist/CtClass;

    .line 50
    iput-object v0, p0, Ljavassist/compiler/JvstCodeGen;->returnCastName:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Ljavassist/compiler/JvstCodeGen;->returnVarName:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Ljavassist/compiler/JvstCodeGen;->proceedName:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Ljavassist/compiler/JvstCodeGen;->procHandler:Ljavassist/compiler/ProceedHandler;

    .line 60
    new-instance v0, Ljavassist/compiler/JvstTypeChecker;

    invoke-direct {v0, p2, p3, p0}, Ljavassist/compiler/JvstTypeChecker;-><init>(Ljavassist/CtClass;Ljavassist/ClassPool;Ljavassist/compiler/JvstCodeGen;)V

    invoke-virtual {p0, v0}, Ljavassist/compiler/JvstCodeGen;->setTypeChecker(Ljavassist/compiler/TypeChecker;)V

    .line 61
    return-void
.end method

.method private callGetType(Ljava/lang/String;)V
    .locals 3
    .param p1, "method"    # Ljava/lang/String;

    .line 130
    iget-object v0, p0, Ljavassist/compiler/JvstCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const-string v1, "javassist/runtime/Desc"

    const-string v2, "(Ljava/lang/String;)Ljava/lang/Class;"

    invoke-virtual {v0, v1, p1, v2}, Ljavassist/bytecode/Bytecode;->addInvokestatic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const/16 v0, 0x133

    iput v0, p0, Ljavassist/compiler/JvstCodeGen;->exprType:I

    .line 133
    const/4 v0, 0x0

    iput v0, p0, Ljavassist/compiler/JvstCodeGen;->arrayDim:I

    .line 134
    const-string v0, "java/lang/Class"

    iput-object v0, p0, Ljavassist/compiler/JvstCodeGen;->className:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public static compileParameterList(Ljavassist/bytecode/Bytecode;[Ljavassist/CtClass;I)I
    .locals 9
    .param p0, "code"    # Ljavassist/bytecode/Bytecode;
    .param p1, "params"    # [Ljavassist/CtClass;
    .param p2, "regno"    # I

    .line 621
    const/4 v0, 0x0

    const-string v1, "java.lang.Object"

    const/4 v2, 0x1

    if-nez p1, :cond_0

    .line 622
    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->addIconst(I)V

    .line 623
    invoke-virtual {p0, v1}, Ljavassist/bytecode/Bytecode;->addAnewarray(Ljava/lang/String;)V

    .line 624
    return v2

    .line 626
    :cond_0
    new-array v2, v2, [Ljavassist/CtClass;

    .line 627
    .local v2, "args":[Ljavassist/CtClass;
    array-length v3, p1

    .line 628
    .local v3, "n":I
    invoke-virtual {p0, v3}, Ljavassist/bytecode/Bytecode;->addIconst(I)V

    .line 629
    invoke-virtual {p0, v1}, Ljavassist/bytecode/Bytecode;->addAnewarray(Ljava/lang/String;)V

    .line 630
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 631
    const/16 v4, 0x59

    invoke-virtual {p0, v4}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 632
    invoke-virtual {p0, v1}, Ljavassist/bytecode/Bytecode;->addIconst(I)V

    .line 633
    aget-object v5, p1, v1

    invoke-virtual {v5}, Ljavassist/CtClass;->isPrimitive()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 634
    aget-object v5, p1, v1

    check-cast v5, Ljavassist/CtPrimitiveType;

    .line 635
    .local v5, "pt":Ljavassist/CtPrimitiveType;
    invoke-virtual {v5}, Ljavassist/CtPrimitiveType;->getWrapperName()Ljava/lang/String;

    move-result-object v6

    .line 636
    .local v6, "wrapper":Ljava/lang/String;
    invoke-virtual {p0, v6}, Ljavassist/bytecode/Bytecode;->addNew(Ljava/lang/String;)V

    .line 637
    invoke-virtual {p0, v4}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 638
    invoke-virtual {p0, p2, v5}, Ljavassist/bytecode/Bytecode;->addLoad(ILjavassist/CtClass;)I

    move-result v4

    .line 639
    .local v4, "s":I
    add-int/2addr p2, v4

    .line 640
    aput-object v5, v2, v0

    .line 641
    sget-object v7, Ljavassist/CtClass;->voidType:Ljavassist/CtClass;

    .line 642
    invoke-static {v7, v2}, Ljavassist/bytecode/Descriptor;->ofMethod(Ljavassist/CtClass;[Ljavassist/CtClass;)Ljava/lang/String;

    move-result-object v7

    .line 641
    const-string v8, "<init>"

    invoke-virtual {p0, v6, v8, v7}, Ljavassist/bytecode/Bytecode;->addInvokespecial(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    .end local v4    # "s":I
    .end local v5    # "pt":Ljavassist/CtPrimitiveType;
    .end local v6    # "wrapper":Ljava/lang/String;
    goto :goto_1

    .line 646
    :cond_1
    invoke-virtual {p0, p2}, Ljavassist/bytecode/Bytecode;->addAload(I)V

    .line 647
    add-int/lit8 p2, p2, 0x1

    .line 650
    :goto_1
    const/16 v4, 0x53

    invoke-virtual {p0, v4}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 630
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 653
    .end local v1    # "i":I
    :cond_2
    const/16 v0, 0x8

    return v0
.end method

.method private indexOfParam1()I
    .locals 2

    .line 66
    iget v0, p0, Ljavassist/compiler/JvstCodeGen;->paramVarBase:I

    iget-boolean v1, p0, Ljavassist/compiler/JvstCodeGen;->useParam0:Z

    add-int/2addr v0, v1

    return v0
.end method

.method private static makeCflowName(Ljava/lang/StringBuffer;Ljavassist/compiler/ast/ASTree;)V
    .locals 3
    .param p0, "sbuf"    # Ljava/lang/StringBuffer;
    .param p1, "name"    # Ljavassist/compiler/ast/ASTree;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 294
    instance-of v0, p1, Ljavassist/compiler/ast/Symbol;

    if-eqz v0, :cond_0

    .line 295
    move-object v0, p1

    check-cast v0, Ljavassist/compiler/ast/Symbol;

    invoke-virtual {v0}, Ljavassist/compiler/ast/Symbol;->get()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 296
    return-void

    .line 298
    :cond_0
    instance-of v0, p1, Ljavassist/compiler/ast/Expr;

    if-eqz v0, :cond_1

    .line 299
    move-object v0, p1

    check-cast v0, Ljavassist/compiler/ast/Expr;

    .line 300
    .local v0, "expr":Ljavassist/compiler/ast/Expr;
    invoke-virtual {v0}, Ljavassist/compiler/ast/Expr;->getOperator()I

    move-result v1

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_1

    .line 301
    invoke-virtual {v0}, Ljavassist/compiler/ast/Expr;->oprand1()Ljavassist/compiler/ast/ASTree;

    move-result-object v1

    invoke-static {p0, v1}, Ljavassist/compiler/JvstCodeGen;->makeCflowName(Ljava/lang/StringBuffer;Ljavassist/compiler/ast/ASTree;)V

    .line 302
    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 303
    invoke-virtual {v0}, Ljavassist/compiler/ast/Expr;->oprand2()Ljavassist/compiler/ast/ASTree;

    move-result-object v1

    invoke-static {p0, v1}, Ljavassist/compiler/JvstCodeGen;->makeCflowName(Ljava/lang/StringBuffer;Ljavassist/compiler/ast/ASTree;)V

    .line 304
    return-void

    .line 308
    .end local v0    # "expr":Ljavassist/compiler/ast/Expr;
    :cond_1
    new-instance v0, Ljavassist/compiler/CompileError;

    const-string v1, "bad $cflow"

    invoke-direct {v0, v1}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private recordVar(Ljavassist/CtClass;Ljava/lang/String;ILjavassist/compiler/SymbolTable;)I
    .locals 7
    .param p1, "cc"    # Ljavassist/CtClass;
    .param p2, "varName"    # Ljava/lang/String;
    .param p3, "varNo"    # I
    .param p4, "tbl"    # Ljavassist/compiler/SymbolTable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 566
    sget-object v0, Ljavassist/CtClass;->voidType:Ljavassist/CtClass;

    if-ne p1, v0, :cond_0

    .line 567
    const/16 v0, 0x133

    iput v0, p0, Ljavassist/compiler/JvstCodeGen;->exprType:I

    .line 568
    const/4 v0, 0x0

    iput v0, p0, Ljavassist/compiler/JvstCodeGen;->arrayDim:I

    .line 569
    const-string v0, "java/lang/Object"

    iput-object v0, p0, Ljavassist/compiler/JvstCodeGen;->className:Ljava/lang/String;

    goto :goto_0

    .line 572
    :cond_0
    invoke-virtual {p0, p1}, Ljavassist/compiler/JvstCodeGen;->setType(Ljavassist/CtClass;)V

    .line 574
    :goto_0
    new-instance v0, Ljavassist/compiler/ast/Declarator;

    iget v2, p0, Ljavassist/compiler/JvstCodeGen;->exprType:I

    iget-object v3, p0, Ljavassist/compiler/JvstCodeGen;->className:Ljava/lang/String;

    iget v4, p0, Ljavassist/compiler/JvstCodeGen;->arrayDim:I

    new-instance v6, Ljavassist/compiler/ast/Symbol;

    invoke-direct {v6, p2}, Ljavassist/compiler/ast/Symbol;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    move v5, p3

    invoke-direct/range {v1 .. v6}, Ljavassist/compiler/ast/Declarator;-><init>(ILjava/lang/String;IILjavassist/compiler/ast/Symbol;)V

    .line 577
    .local v0, "decl":Ljavassist/compiler/ast/Declarator;
    invoke-virtual {p4, p2, v0}, Ljavassist/compiler/SymbolTable;->append(Ljava/lang/String;Ljavassist/compiler/ast/Declarator;)V

    .line 578
    iget v1, p0, Ljavassist/compiler/JvstCodeGen;->exprType:I

    iget v2, p0, Ljavassist/compiler/JvstCodeGen;->arrayDim:I

    invoke-static {v1, v2}, Ljavassist/compiler/JvstCodeGen;->is2word(II)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method private setType(Ljavassist/CtClass;I)V
    .locals 4
    .param p1, "type"    # Ljavassist/CtClass;
    .param p2, "dim"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 690
    invoke-virtual {p1}, Ljavassist/CtClass;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 691
    move-object v0, p1

    check-cast v0, Ljavassist/CtPrimitiveType;

    .line 692
    .local v0, "pt":Ljavassist/CtPrimitiveType;
    invoke-virtual {v0}, Ljavassist/CtPrimitiveType;->getDescriptor()C

    move-result v1

    invoke-static {v1}, Ljavassist/compiler/MemberResolver;->descToType(C)I

    move-result v1

    iput v1, p0, Ljavassist/compiler/JvstCodeGen;->exprType:I

    .line 693
    iput p2, p0, Ljavassist/compiler/JvstCodeGen;->arrayDim:I

    .line 694
    const/4 v1, 0x0

    iput-object v1, p0, Ljavassist/compiler/JvstCodeGen;->className:Ljava/lang/String;

    .line 695
    .end local v0    # "pt":Ljavassist/CtPrimitiveType;
    goto :goto_0

    .line 696
    :cond_0
    invoke-virtual {p1}, Ljavassist/CtClass;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 698
    :try_start_0
    invoke-virtual {p1}, Ljavassist/CtClass;->getComponentType()Ljavassist/CtClass;

    move-result-object v0

    add-int/lit8 v1, p2, 0x1

    invoke-direct {p0, v0, v1}, Ljavassist/compiler/JvstCodeGen;->setType(Ljavassist/CtClass;I)V
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 702
    goto :goto_0

    .line 700
    :catch_0
    move-exception v0

    .line 701
    .local v0, "e":Ljavassist/NotFoundException;
    new-instance v1, Ljavassist/compiler/CompileError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "undefined type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 704
    .end local v0    # "e":Ljavassist/NotFoundException;
    :cond_1
    const/16 v0, 0x133

    iput v0, p0, Ljavassist/compiler/JvstCodeGen;->exprType:I

    .line 705
    iput p2, p0, Ljavassist/compiler/JvstCodeGen;->arrayDim:I

    .line 706
    invoke-virtual {p1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavassist/compiler/MemberResolver;->javaToJvmName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavassist/compiler/JvstCodeGen;->className:Ljava/lang/String;

    .line 708
    :goto_0
    return-void
.end method


# virtual methods
.method public addNullIfVoid()V
    .locals 2

    .line 83
    iget v0, p0, Ljavassist/compiler/JvstCodeGen;->exprType:I

    const/16 v1, 0x158

    if-ne v0, v1, :cond_0

    .line 84
    iget-object v0, p0, Ljavassist/compiler/JvstCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 85
    const/16 v0, 0x133

    iput v0, p0, Ljavassist/compiler/JvstCodeGen;->exprType:I

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Ljavassist/compiler/JvstCodeGen;->arrayDim:I

    .line 87
    const-string v0, "java/lang/Object"

    iput-object v0, p0, Ljavassist/compiler/JvstCodeGen;->className:Ljava/lang/String;

    .line 89
    :cond_0
    return-void
.end method

.method protected atAssignParamList([Ljavassist/CtClass;Ljavassist/bytecode/Bytecode;)V
    .locals 5
    .param p1, "params"    # [Ljavassist/CtClass;
    .param p2, "code"    # Ljavassist/bytecode/Bytecode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 161
    if-nez p1, :cond_0

    .line 162
    return-void

    .line 164
    :cond_0
    invoke-direct {p0}, Ljavassist/compiler/JvstCodeGen;->indexOfParam1()I

    move-result v0

    .line 165
    .local v0, "varNo":I
    array-length v1, p1

    .line 166
    .local v1, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 167
    const/16 v3, 0x59

    invoke-virtual {p2, v3}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 168
    invoke-virtual {p2, v2}, Ljavassist/bytecode/Bytecode;->addIconst(I)V

    .line 169
    const/16 v3, 0x32

    invoke-virtual {p2, v3}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 170
    aget-object v3, p1, v2

    invoke-virtual {p0, v3, p2}, Ljavassist/compiler/JvstCodeGen;->compileUnwrapValue(Ljavassist/CtClass;Ljavassist/bytecode/Bytecode;)V

    .line 171
    aget-object v3, p1, v2

    invoke-virtual {p2, v0, v3}, Ljavassist/bytecode/Bytecode;->addStore(ILjavassist/CtClass;)I

    .line 172
    iget v3, p0, Ljavassist/compiler/JvstCodeGen;->exprType:I

    iget v4, p0, Ljavassist/compiler/JvstCodeGen;->arrayDim:I

    invoke-static {v3, v4}, Ljavassist/compiler/JvstCodeGen;->is2word(II)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    goto :goto_1

    :cond_1
    const/4 v3, 0x1

    :goto_1
    add-int/2addr v0, v3

    .line 166
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 174
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method public atCallExpr(Ljavassist/compiler/ast/CallExpr;)V
    .locals 5
    .param p1, "expr"    # Ljavassist/compiler/ast/CallExpr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 248
    invoke-virtual {p1}, Ljavassist/compiler/ast/CallExpr;->oprand1()Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    .line 249
    .local v0, "method":Ljavassist/compiler/ast/ASTree;
    instance-of v1, v0, Ljavassist/compiler/ast/Member;

    if-eqz v1, :cond_1

    .line 250
    move-object v1, v0

    check-cast v1, Ljavassist/compiler/ast/Member;

    invoke-virtual {v1}, Ljavassist/compiler/ast/Member;->get()Ljava/lang/String;

    move-result-object v1

    .line 251
    .local v1, "name":Ljava/lang/String;
    iget-object v2, p0, Ljavassist/compiler/JvstCodeGen;->procHandler:Ljavassist/compiler/ProceedHandler;

    if-eqz v2, :cond_0

    iget-object v2, p0, Ljavassist/compiler/JvstCodeGen;->proceedName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 252
    iget-object v2, p0, Ljavassist/compiler/JvstCodeGen;->procHandler:Ljavassist/compiler/ProceedHandler;

    iget-object v3, p0, Ljavassist/compiler/JvstCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {p1}, Ljavassist/compiler/ast/CallExpr;->oprand2()Ljavassist/compiler/ast/ASTree;

    move-result-object v4

    check-cast v4, Ljavassist/compiler/ast/ASTList;

    invoke-interface {v2, p0, v3, v4}, Ljavassist/compiler/ProceedHandler;->doit(Ljavassist/compiler/JvstCodeGen;Ljavassist/bytecode/Bytecode;Ljavassist/compiler/ast/ASTList;)V

    .line 253
    return-void

    .line 255
    :cond_0
    const-string v2, "$cflow"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 256
    invoke-virtual {p1}, Ljavassist/compiler/ast/CallExpr;->oprand2()Ljavassist/compiler/ast/ASTree;

    move-result-object v2

    check-cast v2, Ljavassist/compiler/ast/ASTList;

    invoke-virtual {p0, v2}, Ljavassist/compiler/JvstCodeGen;->atCflow(Ljavassist/compiler/ast/ASTList;)V

    .line 257
    return-void

    .line 261
    .end local v1    # "name":Ljava/lang/String;
    :cond_1
    invoke-super {p0, p1}, Ljavassist/compiler/MemberCodeGen;->atCallExpr(Ljavassist/compiler/ast/CallExpr;)V

    .line 262
    return-void
.end method

.method public atCastExpr(Ljavassist/compiler/ast/CastExpr;)V
    .locals 4
    .param p1, "expr"    # Ljavassist/compiler/ast/CastExpr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 178
    invoke-virtual {p1}, Ljavassist/compiler/ast/CastExpr;->getClassName()Ljavassist/compiler/ast/ASTList;

    move-result-object v0

    .line 179
    .local v0, "classname":Ljavassist/compiler/ast/ASTList;
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljavassist/compiler/ast/CastExpr;->getArrayDim()I

    move-result v1

    if-nez v1, :cond_1

    .line 180
    invoke-virtual {v0}, Ljavassist/compiler/ast/ASTList;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object v1

    .line 181
    .local v1, "p":Ljavassist/compiler/ast/ASTree;
    instance-of v2, v1, Ljavassist/compiler/ast/Symbol;

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljavassist/compiler/ast/ASTList;->tail()Ljavassist/compiler/ast/ASTList;

    move-result-object v2

    if-nez v2, :cond_1

    .line 182
    move-object v2, v1

    check-cast v2, Ljavassist/compiler/ast/Symbol;

    invoke-virtual {v2}, Ljavassist/compiler/ast/Symbol;->get()Ljava/lang/String;

    move-result-object v2

    .line 183
    .local v2, "typename":Ljava/lang/String;
    iget-object v3, p0, Ljavassist/compiler/JvstCodeGen;->returnCastName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 184
    invoke-virtual {p0, p1}, Ljavassist/compiler/JvstCodeGen;->atCastToRtype(Ljavassist/compiler/ast/CastExpr;)V

    .line 185
    return-void

    .line 187
    :cond_0
    const-string v3, "$w"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 188
    invoke-virtual {p0, p1}, Ljavassist/compiler/JvstCodeGen;->atCastToWrapper(Ljavassist/compiler/ast/CastExpr;)V

    .line 189
    return-void

    .line 194
    .end local v1    # "p":Ljavassist/compiler/ast/ASTree;
    .end local v2    # "typename":Ljava/lang/String;
    :cond_1
    invoke-super {p0, p1}, Ljavassist/compiler/MemberCodeGen;->atCastExpr(Ljavassist/compiler/ast/CastExpr;)V

    .line 195
    return-void
.end method

.method protected atCastToRtype(Ljavassist/compiler/ast/CastExpr;)V
    .locals 3
    .param p1, "expr"    # Ljavassist/compiler/ast/CastExpr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 202
    invoke-virtual {p1}, Ljavassist/compiler/ast/CastExpr;->getOprand()Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 203
    iget v0, p0, Ljavassist/compiler/JvstCodeGen;->exprType:I

    const/16 v1, 0x158

    if-eq v0, v1, :cond_2

    iget v0, p0, Ljavassist/compiler/JvstCodeGen;->exprType:I

    invoke-static {v0}, Ljavassist/compiler/JvstCodeGen;->isRefType(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Ljavassist/compiler/JvstCodeGen;->arrayDim:I

    if-lez v0, :cond_0

    goto :goto_0

    .line 205
    :cond_0
    iget-object v0, p0, Ljavassist/compiler/JvstCodeGen;->returnType:Ljavassist/CtClass;

    instance-of v1, v0, Ljavassist/CtPrimitiveType;

    if-eqz v1, :cond_1

    .line 206
    check-cast v0, Ljavassist/CtPrimitiveType;

    .line 207
    .local v0, "pt":Ljavassist/CtPrimitiveType;
    invoke-virtual {v0}, Ljavassist/CtPrimitiveType;->getDescriptor()C

    move-result v1

    invoke-static {v1}, Ljavassist/compiler/MemberResolver;->descToType(C)I

    move-result v1

    .line 208
    .local v1, "destType":I
    iget v2, p0, Ljavassist/compiler/JvstCodeGen;->exprType:I

    invoke-virtual {p0, v2, v1}, Ljavassist/compiler/JvstCodeGen;->atNumCastExpr(II)V

    .line 209
    iput v1, p0, Ljavassist/compiler/JvstCodeGen;->exprType:I

    .line 210
    const/4 v2, 0x0

    iput v2, p0, Ljavassist/compiler/JvstCodeGen;->arrayDim:I

    .line 211
    const/4 v2, 0x0

    iput-object v2, p0, Ljavassist/compiler/JvstCodeGen;->className:Ljava/lang/String;

    .line 212
    .end local v0    # "pt":Ljavassist/CtPrimitiveType;
    .end local v1    # "destType":I
    goto :goto_1

    .line 214
    :cond_1
    new-instance v0, Ljavassist/compiler/CompileError;

    const-string v1, "invalid cast"

    invoke-direct {v0, v1}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_2
    :goto_0
    iget-object v0, p0, Ljavassist/compiler/JvstCodeGen;->returnType:Ljavassist/CtClass;

    iget-object v1, p0, Ljavassist/compiler/JvstCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {p0, v0, v1}, Ljavassist/compiler/JvstCodeGen;->compileUnwrapValue(Ljavassist/CtClass;Ljavassist/bytecode/Bytecode;)V

    .line 215
    :goto_1
    return-void
.end method

.method protected atCastToWrapper(Ljavassist/compiler/ast/CastExpr;)V
    .locals 6
    .param p1, "expr"    # Ljavassist/compiler/ast/CastExpr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 218
    invoke-virtual {p1}, Ljavassist/compiler/ast/CastExpr;->getOprand()Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 219
    iget v0, p0, Ljavassist/compiler/JvstCodeGen;->exprType:I

    invoke-static {v0}, Ljavassist/compiler/JvstCodeGen;->isRefType(I)Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Ljavassist/compiler/JvstCodeGen;->arrayDim:I

    if-lez v0, :cond_0

    goto :goto_1

    .line 222
    :cond_0
    iget-object v0, p0, Ljavassist/compiler/JvstCodeGen;->resolver:Ljavassist/compiler/MemberResolver;

    iget v1, p0, Ljavassist/compiler/JvstCodeGen;->exprType:I

    iget v2, p0, Ljavassist/compiler/JvstCodeGen;->arrayDim:I

    iget-object v3, p0, Ljavassist/compiler/JvstCodeGen;->className:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Ljavassist/compiler/MemberResolver;->lookupClass(IILjava/lang/String;)Ljavassist/CtClass;

    move-result-object v0

    .line 223
    .local v0, "clazz":Ljavassist/CtClass;
    instance-of v1, v0, Ljavassist/CtPrimitiveType;

    if-eqz v1, :cond_2

    .line 224
    move-object v1, v0

    check-cast v1, Ljavassist/CtPrimitiveType;

    .line 225
    .local v1, "pt":Ljavassist/CtPrimitiveType;
    invoke-virtual {v1}, Ljavassist/CtPrimitiveType;->getWrapperName()Ljava/lang/String;

    move-result-object v2

    .line 226
    .local v2, "wrapper":Ljava/lang/String;
    iget-object v3, p0, Ljavassist/compiler/JvstCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v3, v2}, Ljavassist/bytecode/Bytecode;->addNew(Ljava/lang/String;)V

    .line 227
    iget-object v3, p0, Ljavassist/compiler/JvstCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v4, 0x59

    invoke-virtual {v3, v4}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 228
    invoke-virtual {v1}, Ljavassist/CtPrimitiveType;->getDataSize()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 229
    iget-object v3, p0, Ljavassist/compiler/JvstCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v4, 0x5e

    invoke-virtual {v3, v4}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    goto :goto_0

    .line 231
    :cond_1
    iget-object v3, p0, Ljavassist/compiler/JvstCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 233
    :goto_0
    iget-object v3, p0, Ljavassist/compiler/JvstCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v4, 0x58

    invoke-virtual {v3, v4}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 234
    iget-object v3, p0, Ljavassist/compiler/JvstCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 235
    invoke-virtual {v1}, Ljavassist/CtPrimitiveType;->getDescriptor()C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")V"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 234
    const-string v5, "<init>"

    invoke-virtual {v3, v2, v5, v4}, Ljavassist/bytecode/Bytecode;->addInvokespecial(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const/16 v3, 0x133

    iput v3, p0, Ljavassist/compiler/JvstCodeGen;->exprType:I

    .line 238
    const/4 v3, 0x0

    iput v3, p0, Ljavassist/compiler/JvstCodeGen;->arrayDim:I

    .line 239
    const-string v3, "java/lang/Object"

    iput-object v3, p0, Ljavassist/compiler/JvstCodeGen;->className:Ljava/lang/String;

    .line 241
    .end local v1    # "pt":Ljavassist/CtPrimitiveType;
    .end local v2    # "wrapper":Ljava/lang/String;
    :cond_2
    return-void

    .line 220
    .end local v0    # "clazz":Ljavassist/CtClass;
    :cond_3
    :goto_1
    return-void
.end method

.method protected atCflow(Ljavassist/compiler/ast/ASTList;)V
    .locals 8
    .param p1, "cname"    # Ljavassist/compiler/ast/ASTList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 267
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 268
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljavassist/compiler/ast/ASTList;->tail()Ljavassist/compiler/ast/ASTList;

    move-result-object v1

    if-nez v1, :cond_1

    .line 271
    invoke-virtual {p1}, Ljavassist/compiler/ast/ASTList;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object v1

    invoke-static {v0, v1}, Ljavassist/compiler/JvstCodeGen;->makeCflowName(Ljava/lang/StringBuffer;Ljavassist/compiler/ast/ASTree;)V

    .line 272
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 273
    .local v1, "name":Ljava/lang/String;
    iget-object v2, p0, Ljavassist/compiler/JvstCodeGen;->resolver:Ljavassist/compiler/MemberResolver;

    invoke-virtual {v2}, Ljavassist/compiler/MemberResolver;->getClassPool()Ljavassist/ClassPool;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljavassist/ClassPool;->lookupCflow(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v2

    .line 274
    .local v2, "names":[Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 277
    iget-object v3, p0, Ljavassist/compiler/JvstCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/4 v4, 0x0

    aget-object v5, v2, v4

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x1

    aget-object v6, v2, v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "Ljavassist/runtime/Cflow;"

    invoke-virtual {v3, v5, v6, v7}, Ljavassist/bytecode/Bytecode;->addGetstatic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    iget-object v3, p0, Ljavassist/compiler/JvstCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const-string v5, "javassist.runtime.Cflow"

    const-string v6, "value"

    const-string v7, "()I"

    invoke-virtual {v3, v5, v6, v7}, Ljavassist/bytecode/Bytecode;->addInvokevirtual(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const/16 v3, 0x144

    iput v3, p0, Ljavassist/compiler/JvstCodeGen;->exprType:I

    .line 282
    iput v4, p0, Ljavassist/compiler/JvstCodeGen;->arrayDim:I

    .line 283
    const/4 v3, 0x0

    iput-object v3, p0, Ljavassist/compiler/JvstCodeGen;->className:Ljava/lang/String;

    .line 284
    return-void

    .line 275
    :cond_0
    new-instance v3, Ljavassist/compiler/CompileError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "no such $cflow: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v3

    .line 269
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "names":[Ljava/lang/Object;
    :cond_1
    new-instance v1, Ljavassist/compiler/CompileError;

    const-string v2, "bad $cflow"

    invoke-direct {v1, v2}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected atFieldAssign(Ljavassist/compiler/ast/Expr;ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;Z)V
    .locals 3
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

    .line 141
    instance-of v0, p3, Ljavassist/compiler/ast/Member;

    if-eqz v0, :cond_2

    move-object v0, p3

    check-cast v0, Ljavassist/compiler/ast/Member;

    .line 142
    invoke-virtual {v0}, Ljavassist/compiler/ast/Member;->get()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljavassist/compiler/JvstCodeGen;->paramArrayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 143
    const/16 v0, 0x3d

    if-ne p2, v0, :cond_1

    .line 146
    invoke-virtual {p4, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 147
    iget v0, p0, Ljavassist/compiler/JvstCodeGen;->arrayDim:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Ljavassist/compiler/JvstCodeGen;->exprType:I

    const/16 v1, 0x133

    if-ne v0, v1, :cond_0

    .line 150
    iget-object v0, p0, Ljavassist/compiler/JvstCodeGen;->paramTypeList:[Ljavassist/CtClass;

    iget-object v1, p0, Ljavassist/compiler/JvstCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {p0, v0, v1}, Ljavassist/compiler/JvstCodeGen;->atAssignParamList([Ljavassist/CtClass;Ljavassist/bytecode/Bytecode;)V

    .line 151
    if-nez p5, :cond_3

    .line 152
    iget-object v0, p0, Ljavassist/compiler/JvstCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v1, 0x57

    invoke-virtual {v0, v1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    goto :goto_0

    .line 148
    :cond_0
    new-instance v0, Ljavassist/compiler/CompileError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid type for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljavassist/compiler/JvstCodeGen;->paramArrayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_1
    new-instance v0, Ljavassist/compiler/CompileError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad operator for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljavassist/compiler/JvstCodeGen;->paramArrayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_2
    invoke-super/range {p0 .. p5}, Ljavassist/compiler/MemberCodeGen;->atFieldAssign(Ljavassist/compiler/ast/Expr;ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;Z)V

    .line 156
    :cond_3
    :goto_0
    return-void
.end method

.method public atMember(Ljavassist/compiler/ast/Member;)V
    .locals 7
    .param p1, "mem"    # Ljavassist/compiler/ast/Member;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 96
    invoke-virtual {p1}, Ljavassist/compiler/ast/Member;->get()Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Ljavassist/compiler/JvstCodeGen;->paramArrayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/16 v3, 0x133

    if-eqz v1, :cond_0

    .line 98
    iget-object v1, p0, Ljavassist/compiler/JvstCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    iget-object v4, p0, Ljavassist/compiler/JvstCodeGen;->paramTypeList:[Ljavassist/CtClass;

    invoke-direct {p0}, Ljavassist/compiler/JvstCodeGen;->indexOfParam1()I

    move-result v5

    invoke-static {v1, v4, v5}, Ljavassist/compiler/JvstCodeGen;->compileParameterList(Ljavassist/bytecode/Bytecode;[Ljavassist/CtClass;I)I

    .line 99
    iput v3, p0, Ljavassist/compiler/JvstCodeGen;->exprType:I

    .line 100
    iput v2, p0, Ljavassist/compiler/JvstCodeGen;->arrayDim:I

    .line 101
    const-string v1, "java/lang/Object"

    iput-object v1, p0, Ljavassist/compiler/JvstCodeGen;->className:Ljava/lang/String;

    goto/16 :goto_0

    .line 103
    :cond_0
    const-string v1, "$sig"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    iget-object v1, p0, Ljavassist/compiler/JvstCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    iget-object v4, p0, Ljavassist/compiler/JvstCodeGen;->returnType:Ljavassist/CtClass;

    iget-object v5, p0, Ljavassist/compiler/JvstCodeGen;->paramTypeList:[Ljavassist/CtClass;

    invoke-static {v4, v5}, Ljavassist/bytecode/Descriptor;->ofMethod(Ljavassist/CtClass;[Ljavassist/CtClass;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljavassist/bytecode/Bytecode;->addLdc(Ljava/lang/String;)V

    .line 105
    iget-object v1, p0, Ljavassist/compiler/JvstCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const-string v4, "javassist/runtime/Desc"

    const-string v5, "getParams"

    const-string v6, "(Ljava/lang/String;)[Ljava/lang/Class;"

    invoke-virtual {v1, v4, v5, v6}, Ljavassist/bytecode/Bytecode;->addInvokestatic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iput v3, p0, Ljavassist/compiler/JvstCodeGen;->exprType:I

    .line 108
    iput v2, p0, Ljavassist/compiler/JvstCodeGen;->arrayDim:I

    .line 109
    const-string v1, "java/lang/Class"

    iput-object v1, p0, Ljavassist/compiler/JvstCodeGen;->className:Ljava/lang/String;

    goto :goto_0

    .line 111
    :cond_1
    const-string v1, "$type"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 112
    iget-object v1, p0, Ljavassist/compiler/JvstCodeGen;->dollarType:Ljavassist/CtClass;

    if-eqz v1, :cond_2

    .line 115
    iget-object v1, p0, Ljavassist/compiler/JvstCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    iget-object v2, p0, Ljavassist/compiler/JvstCodeGen;->dollarType:Ljavassist/CtClass;

    invoke-static {v2}, Ljavassist/bytecode/Descriptor;->of(Ljavassist/CtClass;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavassist/bytecode/Bytecode;->addLdc(Ljava/lang/String;)V

    .line 116
    const-string v1, "getType"

    invoke-direct {p0, v1}, Ljavassist/compiler/JvstCodeGen;->callGetType(Ljava/lang/String;)V

    goto :goto_0

    .line 113
    :cond_2
    new-instance v1, Ljavassist/compiler/CompileError;

    const-string v2, "$type is not available"

    invoke-direct {v1, v2}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 118
    :cond_3
    const-string v1, "$class"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 119
    iget-object v1, p0, Ljavassist/compiler/JvstCodeGen;->param0Type:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 122
    iget-object v1, p0, Ljavassist/compiler/JvstCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    iget-object v2, p0, Ljavassist/compiler/JvstCodeGen;->param0Type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljavassist/bytecode/Bytecode;->addLdc(Ljava/lang/String;)V

    .line 123
    const-string v1, "getClazz"

    invoke-direct {p0, v1}, Ljavassist/compiler/JvstCodeGen;->callGetType(Ljava/lang/String;)V

    goto :goto_0

    .line 120
    :cond_4
    new-instance v1, Ljavassist/compiler/CompileError;

    const-string v2, "$class is not available"

    invoke-direct {v1, v2}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 126
    :cond_5
    invoke-super {p0, p1}, Ljavassist/compiler/MemberCodeGen;->atMember(Ljavassist/compiler/ast/Member;)V

    .line 127
    :goto_0
    return-void
.end method

.method public atMethodArgs(Ljavassist/compiler/ast/ASTList;[I[I[Ljava/lang/String;)V
    .locals 9
    .param p1, "args"    # Ljavassist/compiler/ast/ASTList;
    .param p2, "types"    # [I
    .param p3, "dims"    # [I
    .param p4, "cnames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 355
    iget-object v0, p0, Ljavassist/compiler/JvstCodeGen;->paramTypeList:[Ljavassist/CtClass;

    .line 356
    .local v0, "params":[Ljavassist/CtClass;
    iget-object v1, p0, Ljavassist/compiler/JvstCodeGen;->paramListName:Ljava/lang/String;

    .line 357
    .local v1, "pname":Ljava/lang/String;
    const/4 v2, 0x0

    .line 358
    .local v2, "i":I
    :goto_0
    if-eqz p1, :cond_3

    .line 359
    invoke-virtual {p1}, Ljavassist/compiler/ast/ASTList;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object v3

    .line 360
    .local v3, "a":Ljavassist/compiler/ast/ASTree;
    instance-of v4, v3, Ljavassist/compiler/ast/Member;

    if-eqz v4, :cond_1

    move-object v4, v3

    check-cast v4, Ljavassist/compiler/ast/Member;

    invoke-virtual {v4}, Ljavassist/compiler/ast/Member;->get()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 361
    if-eqz v0, :cond_2

    .line 362
    array-length v4, v0

    .line 363
    .local v4, "n":I
    invoke-direct {p0}, Ljavassist/compiler/JvstCodeGen;->indexOfParam1()I

    move-result v5

    .line 364
    .local v5, "regno":I
    const/4 v6, 0x0

    .local v6, "k":I
    :goto_1
    if-ge v6, v4, :cond_0

    .line 365
    aget-object v7, v0, v6

    .line 366
    .local v7, "p":Ljavassist/CtClass;
    iget-object v8, p0, Ljavassist/compiler/JvstCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v8, v5, v7}, Ljavassist/bytecode/Bytecode;->addLoad(ILjavassist/CtClass;)I

    move-result v8

    add-int/2addr v5, v8

    .line 367
    invoke-virtual {p0, v7}, Ljavassist/compiler/JvstCodeGen;->setType(Ljavassist/CtClass;)V

    .line 368
    iget v8, p0, Ljavassist/compiler/JvstCodeGen;->exprType:I

    aput v8, p2, v2

    .line 369
    iget v8, p0, Ljavassist/compiler/JvstCodeGen;->arrayDim:I

    aput v8, p3, v2

    .line 370
    iget-object v8, p0, Ljavassist/compiler/JvstCodeGen;->className:Ljava/lang/String;

    aput-object v8, p4, v2

    .line 371
    nop

    .end local v7    # "p":Ljavassist/CtClass;
    add-int/lit8 v2, v2, 0x1

    .line 364
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 373
    .end local v4    # "n":I
    .end local v5    # "regno":I
    .end local v6    # "k":I
    :cond_0
    goto :goto_2

    .line 376
    :cond_1
    invoke-virtual {v3, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 377
    iget v4, p0, Ljavassist/compiler/JvstCodeGen;->exprType:I

    aput v4, p2, v2

    .line 378
    iget v4, p0, Ljavassist/compiler/JvstCodeGen;->arrayDim:I

    aput v4, p3, v2

    .line 379
    iget-object v4, p0, Ljavassist/compiler/JvstCodeGen;->className:Ljava/lang/String;

    aput-object v4, p4, v2

    .line 380
    add-int/lit8 v2, v2, 0x1

    .line 383
    :cond_2
    :goto_2
    invoke-virtual {p1}, Ljavassist/compiler/ast/ASTList;->tail()Ljavassist/compiler/ast/ASTList;

    move-result-object p1

    .line 384
    .end local v3    # "a":Ljavassist/compiler/ast/ASTree;
    goto :goto_0

    .line 385
    :cond_3
    return-void
.end method

.method protected atReturnStmnt(Ljavassist/compiler/ast/Stmnt;)V
    .locals 3
    .param p1, "st"    # Ljavassist/compiler/ast/Stmnt;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 432
    invoke-virtual {p1}, Ljavassist/compiler/ast/Stmnt;->getLeft()Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    .line 433
    .local v0, "result":Ljavassist/compiler/ast/ASTree;
    if-eqz v0, :cond_2

    iget-object v1, p0, Ljavassist/compiler/JvstCodeGen;->returnType:Ljavassist/CtClass;

    sget-object v2, Ljavassist/CtClass;->voidType:Ljavassist/CtClass;

    if-ne v1, v2, :cond_2

    .line 434
    invoke-virtual {p0, v0}, Ljavassist/compiler/JvstCodeGen;->compileExpr(Ljavassist/compiler/ast/ASTree;)V

    .line 435
    iget v1, p0, Ljavassist/compiler/JvstCodeGen;->exprType:I

    iget v2, p0, Ljavassist/compiler/JvstCodeGen;->arrayDim:I

    invoke-static {v1, v2}, Ljavassist/compiler/JvstCodeGen;->is2word(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 436
    iget-object v1, p0, Ljavassist/compiler/JvstCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v2, 0x58

    invoke-virtual {v1, v2}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    goto :goto_0

    .line 437
    :cond_0
    iget v1, p0, Ljavassist/compiler/JvstCodeGen;->exprType:I

    const/16 v2, 0x158

    if-eq v1, v2, :cond_1

    .line 438
    iget-object v1, p0, Ljavassist/compiler/JvstCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v2, 0x57

    invoke-virtual {v1, v2}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 440
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 443
    :cond_2
    invoke-virtual {p0, v0}, Ljavassist/compiler/JvstCodeGen;->atReturnStmnt2(Ljavassist/compiler/ast/ASTree;)V

    .line 444
    return-void
.end method

.method compileInvokeSpecial(Ljavassist/compiler/ast/ASTree;ILjava/lang/String;Ljavassist/compiler/ast/ASTList;)V
    .locals 4
    .param p1, "target"    # Ljavassist/compiler/ast/ASTree;
    .param p2, "methodIndex"    # I
    .param p3, "descriptor"    # Ljava/lang/String;
    .param p4, "args"    # Ljavassist/compiler/ast/ASTList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 418
    invoke-virtual {p1, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 419
    invoke-virtual {p0, p4}, Ljavassist/compiler/JvstCodeGen;->getMethodArgsLength(Ljavassist/compiler/ast/ASTList;)I

    move-result v0

    .line 420
    .local v0, "nargs":I
    new-array v1, v0, [I

    new-array v2, v0, [I

    new-array v3, v0, [Ljava/lang/String;

    invoke-virtual {p0, p4, v1, v2, v3}, Ljavassist/compiler/JvstCodeGen;->atMethodArgs(Ljavassist/compiler/ast/ASTList;[I[I[Ljava/lang/String;)V

    .line 422
    iget-object v1, p0, Ljavassist/compiler/JvstCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v1, p2, p3}, Ljavassist/bytecode/Bytecode;->addInvokespecial(ILjava/lang/String;)V

    .line 423
    const/4 v1, 0x0

    invoke-virtual {p0, p3, v1, v1}, Ljavassist/compiler/JvstCodeGen;->setReturnType(Ljava/lang/String;ZZ)V

    .line 424
    invoke-virtual {p0}, Ljavassist/compiler/JvstCodeGen;->addNullIfVoid()V

    .line 425
    return-void
.end method

.method protected compileUnwrapValue(Ljavassist/CtClass;Ljavassist/bytecode/Bytecode;)V
    .locals 4
    .param p1, "type"    # Ljavassist/CtClass;
    .param p2, "code"    # Ljavassist/bytecode/Bytecode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 659
    sget-object v0, Ljavassist/CtClass;->voidType:Ljavassist/CtClass;

    if-ne p1, v0, :cond_0

    .line 660
    invoke-virtual {p0}, Ljavassist/compiler/JvstCodeGen;->addNullIfVoid()V

    .line 661
    return-void

    .line 664
    :cond_0
    iget v0, p0, Ljavassist/compiler/JvstCodeGen;->exprType:I

    const/16 v1, 0x158

    if-eq v0, v1, :cond_2

    .line 667
    instance-of v0, p1, Ljavassist/CtPrimitiveType;

    if-eqz v0, :cond_1

    .line 668
    move-object v0, p1

    check-cast v0, Ljavassist/CtPrimitiveType;

    .line 670
    .local v0, "pt":Ljavassist/CtPrimitiveType;
    invoke-virtual {v0}, Ljavassist/CtPrimitiveType;->getWrapperName()Ljava/lang/String;

    move-result-object v1

    .line 671
    .local v1, "wrapper":Ljava/lang/String;
    invoke-virtual {p2, v1}, Ljavassist/bytecode/Bytecode;->addCheckcast(Ljava/lang/String;)V

    .line 672
    invoke-virtual {v0}, Ljavassist/CtPrimitiveType;->getGetMethodName()Ljava/lang/String;

    move-result-object v2

    .line 673
    invoke-virtual {v0}, Ljavassist/CtPrimitiveType;->getGetMethodDescriptor()Ljava/lang/String;

    move-result-object v3

    .line 672
    invoke-virtual {p2, v1, v2, v3}, Ljavassist/bytecode/Bytecode;->addInvokevirtual(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    invoke-virtual {p0, p1}, Ljavassist/compiler/JvstCodeGen;->setType(Ljavassist/CtClass;)V

    .line 675
    .end local v0    # "pt":Ljavassist/CtPrimitiveType;
    .end local v1    # "wrapper":Ljava/lang/String;
    goto :goto_0

    .line 677
    :cond_1
    invoke-virtual {p2, p1}, Ljavassist/bytecode/Bytecode;->addCheckcast(Ljavassist/CtClass;)V

    .line 678
    invoke-virtual {p0, p1}, Ljavassist/compiler/JvstCodeGen;->setType(Ljavassist/CtClass;)V

    .line 680
    :goto_0
    return-void

    .line 665
    :cond_2
    new-instance v0, Ljavassist/compiler/CompileError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid type for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljavassist/compiler/JvstCodeGen;->returnCastName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public doNumCast(Ljavassist/CtClass;)V
    .locals 3
    .param p1, "type"    # Ljavassist/CtClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 713
    iget v0, p0, Ljavassist/compiler/JvstCodeGen;->arrayDim:I

    if-nez v0, :cond_1

    iget v0, p0, Ljavassist/compiler/JvstCodeGen;->exprType:I

    invoke-static {v0}, Ljavassist/compiler/JvstCodeGen;->isRefType(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 714
    instance-of v0, p1, Ljavassist/CtPrimitiveType;

    if-eqz v0, :cond_0

    .line 715
    move-object v0, p1

    check-cast v0, Ljavassist/CtPrimitiveType;

    .line 716
    .local v0, "pt":Ljavassist/CtPrimitiveType;
    iget v1, p0, Ljavassist/compiler/JvstCodeGen;->exprType:I

    .line 717
    invoke-virtual {v0}, Ljavassist/CtPrimitiveType;->getDescriptor()C

    move-result v2

    invoke-static {v2}, Ljavassist/compiler/MemberResolver;->descToType(C)I

    move-result v2

    .line 716
    invoke-virtual {p0, v1, v2}, Ljavassist/compiler/JvstCodeGen;->atNumCastExpr(II)V

    .line 718
    .end local v0    # "pt":Ljavassist/CtPrimitiveType;
    goto :goto_0

    .line 720
    :cond_0
    new-instance v0, Ljavassist/compiler/CompileError;

    const-string v1, "type mismatch"

    invoke-direct {v0, v1}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 721
    :cond_1
    :goto_0
    return-void
.end method

.method public getMethodArgsLength(Ljavassist/compiler/ast/ASTList;)I
    .locals 4
    .param p1, "args"    # Ljavassist/compiler/ast/ASTList;

    .line 335
    iget-object v0, p0, Ljavassist/compiler/JvstCodeGen;->paramListName:Ljava/lang/String;

    .line 336
    .local v0, "pname":Ljava/lang/String;
    const/4 v1, 0x0

    .line 337
    .local v1, "n":I
    :goto_0
    if-eqz p1, :cond_2

    .line 338
    invoke-virtual {p1}, Ljavassist/compiler/ast/ASTList;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object v2

    .line 339
    .local v2, "a":Ljavassist/compiler/ast/ASTree;
    instance-of v3, v2, Ljavassist/compiler/ast/Member;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Ljavassist/compiler/ast/Member;

    invoke-virtual {v3}, Ljavassist/compiler/ast/Member;->get()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 340
    iget-object v3, p0, Ljavassist/compiler/JvstCodeGen;->paramTypeList:[Ljavassist/CtClass;

    if-eqz v3, :cond_1

    .line 341
    array-length v3, v3

    add-int/2addr v1, v3

    goto :goto_1

    .line 344
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 346
    :cond_1
    :goto_1
    invoke-virtual {p1}, Ljavassist/compiler/ast/ASTList;->tail()Ljavassist/compiler/ast/ASTList;

    move-result-object p1

    .line 347
    .end local v2    # "a":Ljavassist/compiler/ast/ASTree;
    goto :goto_0

    .line 349
    :cond_2
    return v1
.end method

.method public isParamListName(Ljavassist/compiler/ast/ASTList;)Z
    .locals 4
    .param p1, "args"    # Ljavassist/compiler/ast/ASTList;

    .line 315
    iget-object v0, p0, Ljavassist/compiler/JvstCodeGen;->paramTypeList:[Ljavassist/CtClass;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 316
    invoke-virtual {p1}, Ljavassist/compiler/ast/ASTList;->tail()Ljavassist/compiler/ast/ASTList;

    move-result-object v0

    if-nez v0, :cond_1

    .line 317
    invoke-virtual {p1}, Ljavassist/compiler/ast/ASTList;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    .line 318
    .local v0, "left":Ljavassist/compiler/ast/ASTree;
    instance-of v2, v0, Ljavassist/compiler/ast/Member;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Ljavassist/compiler/ast/Member;

    .line 319
    invoke-virtual {v2}, Ljavassist/compiler/ast/Member;->get()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ljavassist/compiler/JvstCodeGen;->paramListName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 318
    :goto_0
    return v1

    .line 321
    .end local v0    # "left":Ljavassist/compiler/ast/ASTree;
    :cond_1
    return v1
.end method

.method public recordParams([Ljavassist/CtClass;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljavassist/compiler/SymbolTable;)I
    .locals 10
    .param p1, "params"    # [Ljavassist/CtClass;
    .param p2, "isStatic"    # Z
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "paramVarName"    # Ljava/lang/String;
    .param p5, "paramsName"    # Ljava/lang/String;
    .param p6, "tbl"    # Ljavassist/compiler/SymbolTable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 487
    xor-int/lit8 v6, p2, 0x1

    const/4 v7, 0x0

    .line 488
    invoke-virtual {p0}, Ljavassist/compiler/JvstCodeGen;->getThisName()Ljava/lang/String;

    move-result-object v8

    .line 487
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v9, p6

    invoke-virtual/range {v0 .. v9}, Ljavassist/compiler/JvstCodeGen;->recordParams([Ljavassist/CtClass;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Ljavassist/compiler/SymbolTable;)I

    move-result v0

    return v0
.end method

.method public recordParams([Ljavassist/CtClass;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Ljavassist/compiler/SymbolTable;)I
    .locals 18
    .param p1, "params"    # [Ljavassist/CtClass;
    .param p2, "isStatic"    # Z
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "paramVarName"    # Ljava/lang/String;
    .param p5, "paramsName"    # Ljava/lang/String;
    .param p6, "use0"    # Z
    .param p7, "paramBase"    # I
    .param p8, "target"    # Ljava/lang/String;
    .param p9, "tbl"    # Ljavassist/compiler/SymbolTable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 518
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p6

    move-object/from16 v4, p9

    iput-object v1, v0, Ljavassist/compiler/JvstCodeGen;->paramTypeList:[Ljavassist/CtClass;

    .line 519
    move-object/from16 v5, p4

    iput-object v5, v0, Ljavassist/compiler/JvstCodeGen;->paramArrayName:Ljava/lang/String;

    .line 520
    move-object/from16 v6, p5

    iput-object v6, v0, Ljavassist/compiler/JvstCodeGen;->paramListName:Ljava/lang/String;

    .line 521
    move/from16 v7, p7

    iput v7, v0, Ljavassist/compiler/JvstCodeGen;->paramVarBase:I

    .line 522
    iput-boolean v3, v0, Ljavassist/compiler/JvstCodeGen;->useParam0:Z

    .line 524
    if-eqz p8, :cond_0

    .line 525
    invoke-static/range {p8 .. p8}, Ljavassist/compiler/MemberResolver;->jvmToJavaName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Ljavassist/compiler/JvstCodeGen;->param0Type:Ljava/lang/String;

    .line 527
    :cond_0
    move/from16 v8, p2

    iput-boolean v8, v0, Ljavassist/compiler/JvstCodeGen;->inStaticMethod:Z

    .line 528
    move/from16 v13, p7

    .line 529
    .local v13, "varNo":I
    if-eqz v3, :cond_1

    .line 530
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "0"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 531
    .local v15, "varName":Ljava/lang/String;
    new-instance v16, Ljavassist/compiler/ast/Declarator;

    const/16 v10, 0x133

    .line 532
    invoke-static/range {p8 .. p8}, Ljavassist/compiler/MemberResolver;->javaToJvmName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    add-int/lit8 v17, v13, 0x1

    .end local v13    # "varNo":I
    .local v17, "varNo":I
    new-instance v14, Ljavassist/compiler/ast/Symbol;

    invoke-direct {v14, v15}, Ljavassist/compiler/ast/Symbol;-><init>(Ljava/lang/String;)V

    move-object/from16 v9, v16

    invoke-direct/range {v9 .. v14}, Ljavassist/compiler/ast/Declarator;-><init>(ILjava/lang/String;IILjavassist/compiler/ast/Symbol;)V

    .line 534
    .local v9, "decl":Ljavassist/compiler/ast/Declarator;
    invoke-virtual {v4, v15, v9}, Ljavassist/compiler/SymbolTable;->append(Ljava/lang/String;Ljavassist/compiler/ast/Declarator;)V

    move/from16 v13, v17

    .line 537
    .end local v9    # "decl":Ljavassist/compiler/ast/Declarator;
    .end local v15    # "varName":Ljava/lang/String;
    .end local v17    # "varNo":I
    .restart local v13    # "varNo":I
    :cond_1
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    array-length v10, v1

    if-ge v9, v10, :cond_2

    .line 538
    aget-object v10, v1, v9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    add-int/lit8 v12, v9, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v10, v11, v13, v4}, Ljavassist/compiler/JvstCodeGen;->recordVar(Ljavassist/CtClass;Ljava/lang/String;ILjavassist/compiler/SymbolTable;)I

    move-result v10

    add-int/2addr v13, v10

    .line 537
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 540
    .end local v9    # "i":I
    :cond_2
    invoke-virtual/range {p0 .. p0}, Ljavassist/compiler/JvstCodeGen;->getMaxLocals()I

    move-result v9

    if-ge v9, v13, :cond_3

    .line 541
    invoke-virtual {v0, v13}, Ljavassist/compiler/JvstCodeGen;->setMaxLocals(I)V

    .line 543
    :cond_3
    return v13
.end method

.method public recordReturnType(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;Ljavassist/compiler/SymbolTable;)I
    .locals 2
    .param p1, "type"    # Ljavassist/CtClass;
    .param p2, "castName"    # Ljava/lang/String;
    .param p3, "resultName"    # Ljava/lang/String;
    .param p4, "tbl"    # Ljavassist/compiler/SymbolTable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 459
    iput-object p1, p0, Ljavassist/compiler/JvstCodeGen;->returnType:Ljavassist/CtClass;

    .line 460
    iput-object p2, p0, Ljavassist/compiler/JvstCodeGen;->returnCastName:Ljava/lang/String;

    .line 461
    iput-object p3, p0, Ljavassist/compiler/JvstCodeGen;->returnVarName:Ljava/lang/String;

    .line 462
    if-nez p3, :cond_0

    .line 463
    const/4 v0, -0x1

    return v0

    .line 464
    :cond_0
    invoke-virtual {p0}, Ljavassist/compiler/JvstCodeGen;->getMaxLocals()I

    move-result v0

    .line 465
    .local v0, "varNo":I
    invoke-direct {p0, p1, p3, v0, p4}, Ljavassist/compiler/JvstCodeGen;->recordVar(Ljavassist/CtClass;Ljava/lang/String;ILjavassist/compiler/SymbolTable;)I

    move-result v1

    add-int/2addr v1, v0

    .line 466
    .local v1, "locals":I
    invoke-virtual {p0, v1}, Ljavassist/compiler/JvstCodeGen;->setMaxLocals(I)V

    .line 467
    return v0
.end method

.method public recordType(Ljavassist/CtClass;)V
    .locals 0
    .param p1, "t"    # Ljavassist/CtClass;

    .line 474
    iput-object p1, p0, Ljavassist/compiler/JvstCodeGen;->dollarType:Ljavassist/CtClass;

    .line 475
    return-void
.end method

.method public recordVariable(Ljavassist/CtClass;Ljava/lang/String;Ljavassist/compiler/SymbolTable;)I
    .locals 2
    .param p1, "type"    # Ljavassist/CtClass;
    .param p2, "varName"    # Ljava/lang/String;
    .param p3, "tbl"    # Ljavassist/compiler/SymbolTable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 555
    if-nez p2, :cond_0

    .line 556
    const/4 v0, -0x1

    return v0

    .line 557
    :cond_0
    invoke-virtual {p0}, Ljavassist/compiler/JvstCodeGen;->getMaxLocals()I

    move-result v0

    .line 558
    .local v0, "varNo":I
    invoke-direct {p0, p1, p2, v0, p3}, Ljavassist/compiler/JvstCodeGen;->recordVar(Ljavassist/CtClass;Ljava/lang/String;ILjavassist/compiler/SymbolTable;)I

    move-result v1

    add-int/2addr v1, v0

    .line 559
    .local v1, "locals":I
    invoke-virtual {p0, v1}, Ljavassist/compiler/JvstCodeGen;->setMaxLocals(I)V

    .line 560
    return v0
.end method

.method public recordVariable(Ljava/lang/String;Ljava/lang/String;ILjavassist/compiler/SymbolTable;)V
    .locals 11
    .param p1, "typeDesc"    # Ljava/lang/String;
    .param p2, "varName"    # Ljava/lang/String;
    .param p3, "varNo"    # I
    .param p4, "tbl"    # Ljavassist/compiler/SymbolTable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 592
    const/4 v0, 0x0

    .line 593
    .local v0, "dim":I
    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move v7, v1

    .local v7, "c":C
    const/16 v2, 0x5b

    if-ne v1, v2, :cond_0

    .line 594
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 596
    :cond_0
    invoke-static {v7}, Ljavassist/compiler/MemberResolver;->descToType(C)I

    move-result v8

    .line 597
    .local v8, "type":I
    const/4 v1, 0x0

    .line 598
    .local v1, "cname":Ljava/lang/String;
    const/16 v2, 0x133

    if-ne v8, v2, :cond_2

    .line 599
    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 600
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move-object v9, v1

    goto :goto_1

    .line 602
    :cond_1
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move-object v9, v1

    goto :goto_1

    .line 598
    :cond_2
    move-object v9, v1

    .line 605
    .end local v1    # "cname":Ljava/lang/String;
    .local v9, "cname":Ljava/lang/String;
    :goto_1
    new-instance v10, Ljavassist/compiler/ast/Declarator;

    new-instance v6, Ljavassist/compiler/ast/Symbol;

    invoke-direct {v6, p2}, Ljavassist/compiler/ast/Symbol;-><init>(Ljava/lang/String;)V

    move-object v1, v10

    move v2, v8

    move-object v3, v9

    move v4, v0

    move v5, p3

    invoke-direct/range {v1 .. v6}, Ljavassist/compiler/ast/Declarator;-><init>(ILjava/lang/String;IILjavassist/compiler/ast/Symbol;)V

    .line 607
    .local v1, "decl":Ljavassist/compiler/ast/Declarator;
    invoke-virtual {p4, p2, v1}, Ljavassist/compiler/SymbolTable;->append(Ljava/lang/String;Ljavassist/compiler/ast/Declarator;)V

    .line 608
    return-void
.end method

.method public setProceedHandler(Ljavassist/compiler/ProceedHandler;Ljava/lang/String;)V
    .locals 0
    .param p1, "h"    # Ljavassist/compiler/ProceedHandler;
    .param p2, "name"    # Ljava/lang/String;

    .line 75
    iput-object p2, p0, Ljavassist/compiler/JvstCodeGen;->proceedName:Ljava/lang/String;

    .line 76
    iput-object p1, p0, Ljavassist/compiler/JvstCodeGen;->procHandler:Ljavassist/compiler/ProceedHandler;

    .line 77
    return-void
.end method

.method public setType(Ljavassist/CtClass;)V
    .locals 1
    .param p1, "type"    # Ljavassist/CtClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 686
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljavassist/compiler/JvstCodeGen;->setType(Ljavassist/CtClass;I)V

    .line 687
    return-void
.end method
