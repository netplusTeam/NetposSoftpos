.class public Ljavassist/compiler/TypeChecker;
.super Ljavassist/compiler/ast/Visitor;
.source "TypeChecker.java"

# interfaces
.implements Ljavassist/bytecode/Opcode;
.implements Ljavassist/compiler/TokenId;


# static fields
.field static final javaLangObject:Ljava/lang/String; = "java.lang.Object"

.field static final jvmJavaLangClass:Ljava/lang/String; = "java/lang/Class"

.field static final jvmJavaLangObject:Ljava/lang/String; = "java/lang/Object"

.field static final jvmJavaLangString:Ljava/lang/String; = "java/lang/String"


# instance fields
.field protected arrayDim:I

.field protected className:Ljava/lang/String;

.field protected exprType:I

.field protected resolver:Ljavassist/compiler/MemberResolver;

.field protected thisClass:Ljavassist/CtClass;

.field protected thisMethod:Ljavassist/bytecode/MethodInfo;


# direct methods
.method public constructor <init>(Ljavassist/CtClass;Ljavassist/ClassPool;)V
    .locals 1
    .param p1, "cc"    # Ljavassist/CtClass;
    .param p2, "cp"    # Ljavassist/ClassPool;

    .line 65
    invoke-direct {p0}, Ljavassist/compiler/ast/Visitor;-><init>()V

    .line 66
    new-instance v0, Ljavassist/compiler/MemberResolver;

    invoke-direct {v0, p2}, Ljavassist/compiler/MemberResolver;-><init>(Ljavassist/ClassPool;)V

    iput-object v0, p0, Ljavassist/compiler/TypeChecker;->resolver:Ljavassist/compiler/MemberResolver;

    .line 67
    iput-object p1, p0, Ljavassist/compiler/TypeChecker;->thisClass:Ljavassist/CtClass;

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Ljavassist/compiler/TypeChecker;->thisMethod:Ljavassist/bytecode/MethodInfo;

    .line 69
    return-void
.end method

.method protected static argTypesToString([I[I[Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "types"    # [I
    .param p1, "dims"    # [I
    .param p2, "cnames"    # [Ljava/lang/String;

    .line 77
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 78
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 79
    array-length v1, p0

    .line 80
    .local v1, "n":I
    if-lez v1, :cond_0

    .line 81
    const/4 v2, 0x0

    .line 83
    .local v2, "i":I
    :goto_0
    aget v3, p0, v2

    aget v4, p1, v2

    aget-object v5, p2, v2

    invoke-static {v0, v3, v4, v5}, Ljavassist/compiler/TypeChecker;->typeToString(Ljava/lang/StringBuffer;IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    add-int/lit8 v2, v2, 0x1

    if-ge v2, v1, :cond_0

    .line 85
    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 91
    .end local v2    # "i":I
    :cond_0
    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 92
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private atArrayAssign(Ljavassist/compiler/ast/Expr;ILjavassist/compiler/ast/Expr;Ljavassist/compiler/ast/ASTree;)V
    .locals 3
    .param p1, "expr"    # Ljavassist/compiler/ast/Expr;
    .param p2, "op"    # I
    .param p3, "array"    # Ljavassist/compiler/ast/Expr;
    .param p4, "right"    # Ljavassist/compiler/ast/ASTree;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 283
    invoke-virtual {p3}, Ljavassist/compiler/ast/Expr;->oprand1()Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    invoke-virtual {p3}, Ljavassist/compiler/ast/Expr;->oprand2()Ljavassist/compiler/ast/ASTree;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljavassist/compiler/TypeChecker;->atArrayRead(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)V

    .line 284
    iget v0, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    .line 285
    .local v0, "aType":I
    iget v1, p0, Ljavassist/compiler/TypeChecker;->arrayDim:I

    .line 286
    .local v1, "aDim":I
    iget-object v2, p0, Ljavassist/compiler/TypeChecker;->className:Ljava/lang/String;

    .line 287
    .local v2, "cname":Ljava/lang/String;
    invoke-virtual {p4, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 288
    iput v0, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    .line 289
    iput v1, p0, Ljavassist/compiler/TypeChecker;->arrayDim:I

    .line 290
    iput-object v2, p0, Ljavassist/compiler/TypeChecker;->className:Ljava/lang/String;

    .line 291
    return-void
.end method

.method private atFieldRead(Ljavassist/CtField;)V
    .locals 8
    .param p1, "f"    # Ljavassist/CtField;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 835
    invoke-virtual {p1}, Ljavassist/CtField;->getFieldInfo2()Ljavassist/bytecode/FieldInfo;

    move-result-object v0

    .line 836
    .local v0, "finfo":Ljavassist/bytecode/FieldInfo;
    invoke-virtual {v0}, Ljavassist/bytecode/FieldInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v1

    .line 838
    .local v1, "type":Ljava/lang/String;
    const/4 v2, 0x0

    .line 839
    .local v2, "i":I
    const/4 v3, 0x0

    .line 840
    .local v3, "dim":I
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 841
    .local v4, "c":C
    :goto_0
    const/16 v5, 0x5b

    if-ne v4, v5, :cond_0

    .line 842
    add-int/lit8 v3, v3, 0x1

    .line 843
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    goto :goto_0

    .line 846
    :cond_0
    iput v3, p0, Ljavassist/compiler/TypeChecker;->arrayDim:I

    .line 847
    invoke-static {v4}, Ljavassist/compiler/MemberResolver;->descToType(C)I

    move-result v5

    iput v5, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    .line 849
    const/16 v5, 0x4c

    if-ne v4, v5, :cond_1

    .line 850
    add-int/lit8 v5, v2, 0x1

    const/16 v6, 0x3b

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Ljavassist/compiler/TypeChecker;->className:Ljava/lang/String;

    goto :goto_1

    .line 852
    :cond_1
    const/4 v5, 0x0

    iput-object v5, p0, Ljavassist/compiler/TypeChecker;->className:Ljava/lang/String;

    .line 853
    :goto_1
    return-void
.end method

.method private atFieldRead(Ljavassist/compiler/ast/ASTree;)V
    .locals 1
    .param p1, "expr"    # Ljavassist/compiler/ast/ASTree;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 831
    invoke-virtual {p0, p1}, Ljavassist/compiler/TypeChecker;->fieldAccess(Ljavassist/compiler/ast/ASTree;)Ljavassist/CtField;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavassist/compiler/TypeChecker;->atFieldRead(Ljavassist/CtField;)V

    .line 832
    return-void
.end method

.method private atPlusExpr(Ljavassist/compiler/ast/BinExpr;)Ljavassist/compiler/ast/Expr;
    .locals 13
    .param p1, "expr"    # Ljavassist/compiler/ast/BinExpr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 374
    invoke-virtual {p1}, Ljavassist/compiler/ast/BinExpr;->oprand1()Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    .line 375
    .local v0, "left":Ljavassist/compiler/ast/ASTree;
    invoke-virtual {p1}, Ljavassist/compiler/ast/BinExpr;->oprand2()Ljavassist/compiler/ast/ASTree;

    move-result-object v1

    .line 376
    .local v1, "right":Ljavassist/compiler/ast/ASTree;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 379
    invoke-virtual {v0, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 380
    return-object v2

    .line 383
    :cond_0
    invoke-static {v0}, Ljavassist/compiler/TypeChecker;->isPlusExpr(Ljavassist/compiler/ast/ASTree;)Z

    move-result v3

    const-string v4, "java/lang/StringBuffer"

    const/4 v5, 0x0

    const/16 v6, 0x133

    if-eqz v3, :cond_2

    .line 384
    move-object v3, v0

    check-cast v3, Ljavassist/compiler/ast/BinExpr;

    invoke-direct {p0, v3}, Ljavassist/compiler/TypeChecker;->atPlusExpr(Ljavassist/compiler/ast/BinExpr;)Ljavassist/compiler/ast/Expr;

    move-result-object v3

    .line 385
    .local v3, "newExpr":Ljavassist/compiler/ast/Expr;
    if-eqz v3, :cond_1

    .line 386
    invoke-virtual {v1, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 387
    iput v6, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    .line 388
    iput v5, p0, Ljavassist/compiler/TypeChecker;->arrayDim:I

    .line 389
    iput-object v4, p0, Ljavassist/compiler/TypeChecker;->className:Ljava/lang/String;

    .line 390
    invoke-static {v3, v1}, Ljavassist/compiler/TypeChecker;->makeAppendCall(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/Expr;

    move-result-object v2

    return-object v2

    .line 392
    .end local v3    # "newExpr":Ljavassist/compiler/ast/Expr;
    :cond_1
    goto :goto_0

    .line 394
    :cond_2
    invoke-virtual {v0, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 396
    :goto_0
    iget v3, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    .line 397
    .local v3, "type1":I
    iget v7, p0, Ljavassist/compiler/TypeChecker;->arrayDim:I

    .line 398
    .local v7, "dim1":I
    iget-object v8, p0, Ljavassist/compiler/TypeChecker;->className:Ljava/lang/String;

    .line 399
    .local v8, "cname":Ljava/lang/String;
    invoke-virtual {v1, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 401
    const/16 v9, 0x2b

    invoke-direct {p0, p1, v9, v0, v1}, Ljavassist/compiler/TypeChecker;->isConstant(Ljavassist/compiler/ast/BinExpr;ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 402
    return-object v2

    .line 404
    :cond_3
    const-string v10, "java/lang/String"

    if-ne v3, v6, :cond_4

    if-nez v7, :cond_4

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    :cond_4
    iget v11, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    if-ne v11, v6, :cond_6

    iget v11, p0, Ljavassist/compiler/TypeChecker;->arrayDim:I

    if-nez v11, :cond_6

    iget-object v11, p0, Ljavassist/compiler/TypeChecker;->className:Ljava/lang/String;

    .line 406
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 407
    :cond_5
    new-instance v9, Ljavassist/compiler/ast/Symbol;

    const-string v10, "java"

    invoke-direct {v9, v10}, Ljavassist/compiler/ast/Symbol;-><init>(Ljava/lang/String;)V

    new-instance v10, Ljavassist/compiler/ast/Symbol;

    const-string v11, "lang"

    invoke-direct {v10, v11}, Ljavassist/compiler/ast/Symbol;-><init>(Ljava/lang/String;)V

    new-instance v11, Ljavassist/compiler/ast/Symbol;

    const-string v12, "StringBuffer"

    invoke-direct {v11, v12}, Ljavassist/compiler/ast/Symbol;-><init>(Ljava/lang/String;)V

    invoke-static {v9, v10, v11}, Ljavassist/compiler/ast/ASTList;->make(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/ASTList;

    move-result-object v9

    .line 409
    .local v9, "sbufClass":Ljavassist/compiler/ast/ASTList;
    new-instance v10, Ljavassist/compiler/ast/NewExpr;

    invoke-direct {v10, v9, v2}, Ljavassist/compiler/ast/NewExpr;-><init>(Ljavassist/compiler/ast/ASTList;Ljavassist/compiler/ast/ASTList;)V

    move-object v2, v10

    .line 410
    .local v2, "e":Ljavassist/compiler/ast/ASTree;
    iput v6, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    .line 411
    iput v5, p0, Ljavassist/compiler/TypeChecker;->arrayDim:I

    .line 412
    iput-object v4, p0, Ljavassist/compiler/TypeChecker;->className:Ljava/lang/String;

    .line 413
    invoke-static {v2, v0}, Ljavassist/compiler/TypeChecker;->makeAppendCall(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/Expr;

    move-result-object v4

    invoke-static {v4, v1}, Ljavassist/compiler/TypeChecker;->makeAppendCall(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/Expr;

    move-result-object v4

    return-object v4

    .line 415
    .end local v2    # "e":Ljavassist/compiler/ast/ASTree;
    .end local v9    # "sbufClass":Ljavassist/compiler/ast/ASTList;
    :cond_6
    invoke-direct {p0, p1, v9, v3}, Ljavassist/compiler/TypeChecker;->computeBinExprType(Ljavassist/compiler/ast/BinExpr;II)V

    .line 416
    return-object v2
.end method

.method private atPlusPlus(ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/Expr;)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "oprand"    # Ljavassist/compiler/ast/ASTree;
    .param p3, "expr"    # Ljavassist/compiler/ast/Expr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 979
    if-nez p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 980
    .local v0, "isPost":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 981
    invoke-virtual {p3}, Ljavassist/compiler/ast/Expr;->oprand2()Ljavassist/compiler/ast/ASTree;

    move-result-object p2

    .line 983
    :cond_1
    instance-of v1, p2, Ljavassist/compiler/ast/Variable;

    if-eqz v1, :cond_2

    .line 984
    move-object v1, p2

    check-cast v1, Ljavassist/compiler/ast/Variable;

    invoke-virtual {v1}, Ljavassist/compiler/ast/Variable;->getDeclarator()Ljavassist/compiler/ast/Declarator;

    move-result-object v1

    .line 985
    .local v1, "d":Ljavassist/compiler/ast/Declarator;
    invoke-virtual {v1}, Ljavassist/compiler/ast/Declarator;->getType()I

    move-result v2

    iput v2, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    .line 986
    invoke-virtual {v1}, Ljavassist/compiler/ast/Declarator;->getArrayDim()I

    move-result v2

    iput v2, p0, Ljavassist/compiler/TypeChecker;->arrayDim:I

    .line 987
    .end local v1    # "d":Ljavassist/compiler/ast/Declarator;
    goto :goto_1

    .line 989
    :cond_2
    instance-of v1, p2, Ljavassist/compiler/ast/Expr;

    if-eqz v1, :cond_5

    .line 990
    move-object v1, p2

    check-cast v1, Ljavassist/compiler/ast/Expr;

    .line 991
    .local v1, "e":Ljavassist/compiler/ast/Expr;
    invoke-virtual {v1}, Ljavassist/compiler/ast/Expr;->getOperator()I

    move-result v2

    const/16 v3, 0x41

    if-ne v2, v3, :cond_5

    .line 992
    invoke-virtual {v1}, Ljavassist/compiler/ast/Expr;->oprand1()Ljavassist/compiler/ast/ASTree;

    move-result-object v2

    invoke-virtual {v1}, Ljavassist/compiler/ast/Expr;->oprand2()Ljavassist/compiler/ast/ASTree;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Ljavassist/compiler/TypeChecker;->atArrayRead(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)V

    .line 994
    iget v2, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    .line 995
    .local v2, "t":I
    const/16 v3, 0x144

    if-eq v2, v3, :cond_3

    const/16 v4, 0x12f

    if-eq v2, v4, :cond_3

    const/16 v4, 0x132

    if-eq v2, v4, :cond_3

    const/16 v4, 0x14e

    if-ne v2, v4, :cond_4

    .line 996
    :cond_3
    iput v3, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    .line 998
    :cond_4
    return-void

    .line 1002
    .end local v1    # "e":Ljavassist/compiler/ast/Expr;
    .end local v2    # "t":I
    :cond_5
    invoke-virtual {p0, p2}, Ljavassist/compiler/TypeChecker;->atFieldPlusPlus(Ljavassist/compiler/ast/ASTree;)V

    .line 1004
    :goto_1
    return-void
.end method

.method private atVariableAssign(Ljavassist/compiler/ast/Expr;ILjavassist/compiler/ast/Variable;Ljavassist/compiler/ast/Declarator;Ljavassist/compiler/ast/ASTree;)V
    .locals 4
    .param p1, "expr"    # Ljavassist/compiler/ast/Expr;
    .param p2, "op"    # I
    .param p3, "var"    # Ljavassist/compiler/ast/Variable;
    .param p4, "d"    # Ljavassist/compiler/ast/Declarator;
    .param p5, "right"    # Ljavassist/compiler/ast/ASTree;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 267
    invoke-virtual {p4}, Ljavassist/compiler/ast/Declarator;->getType()I

    move-result v0

    .line 268
    .local v0, "varType":I
    invoke-virtual {p4}, Ljavassist/compiler/ast/Declarator;->getArrayDim()I

    move-result v1

    .line 269
    .local v1, "varArray":I
    invoke-virtual {p4}, Ljavassist/compiler/ast/Declarator;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 271
    .local v2, "varClass":Ljava/lang/String;
    const/16 v3, 0x3d

    if-eq p2, v3, :cond_0

    .line 272
    invoke-virtual {p0, p3}, Ljavassist/compiler/TypeChecker;->atVariable(Ljavassist/compiler/ast/Variable;)V

    .line 274
    :cond_0
    invoke-virtual {p5, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 275
    iput v0, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    .line 276
    iput v1, p0, Ljavassist/compiler/TypeChecker;->arrayDim:I

    .line 277
    iput-object v2, p0, Ljavassist/compiler/TypeChecker;->className:Ljava/lang/String;

    .line 278
    return-void
.end method

.method private static badMethod()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 728
    new-instance v0, Ljavassist/compiler/CompileError;

    const-string v1, "bad method"

    invoke-direct {v0, v1}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private booleanExpr(Ljavassist/compiler/ast/ASTree;)V
    .locals 5
    .param p1, "expr"    # Ljavassist/compiler/ast/ASTree;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 536
    invoke-static {p1}, Ljavassist/compiler/CodeGen;->getCompOperator(Ljavassist/compiler/ast/ASTree;)I

    move-result v0

    .line 537
    .local v0, "op":I
    const/16 v1, 0x166

    if-ne v0, v1, :cond_1

    .line 538
    move-object v1, p1

    check-cast v1, Ljavassist/compiler/ast/BinExpr;

    .line 539
    .local v1, "bexpr":Ljavassist/compiler/ast/BinExpr;
    invoke-virtual {v1}, Ljavassist/compiler/ast/BinExpr;->oprand1()Ljavassist/compiler/ast/ASTree;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 540
    iget v2, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    .line 541
    .local v2, "type1":I
    iget v3, p0, Ljavassist/compiler/TypeChecker;->arrayDim:I

    .line 542
    .local v3, "dim1":I
    invoke-virtual {v1}, Ljavassist/compiler/ast/BinExpr;->oprand2()Ljavassist/compiler/ast/ASTree;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 543
    if-nez v3, :cond_0

    iget v4, p0, Ljavassist/compiler/TypeChecker;->arrayDim:I

    if-nez v4, :cond_0

    .line 544
    iget v4, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    invoke-direct {p0, v1, v2, v4}, Ljavassist/compiler/TypeChecker;->insertCast(Ljavassist/compiler/ast/BinExpr;II)V

    .line 545
    .end local v1    # "bexpr":Ljavassist/compiler/ast/BinExpr;
    .end local v2    # "type1":I
    .end local v3    # "dim1":I
    :cond_0
    goto :goto_1

    .line 546
    :cond_1
    const/16 v1, 0x21

    if-ne v0, v1, :cond_2

    .line 547
    move-object v1, p1

    check-cast v1, Ljavassist/compiler/ast/Expr;

    invoke-virtual {v1}, Ljavassist/compiler/ast/Expr;->oprand1()Ljavassist/compiler/ast/ASTree;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    goto :goto_1

    .line 548
    :cond_2
    const/16 v1, 0x171

    if-eq v0, v1, :cond_4

    const/16 v1, 0x170

    if-ne v0, v1, :cond_3

    goto :goto_0

    .line 554
    :cond_3
    invoke-virtual {p1, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    goto :goto_1

    .line 549
    :cond_4
    :goto_0
    move-object v1, p1

    check-cast v1, Ljavassist/compiler/ast/BinExpr;

    .line 550
    .restart local v1    # "bexpr":Ljavassist/compiler/ast/BinExpr;
    invoke-virtual {v1}, Ljavassist/compiler/ast/BinExpr;->oprand1()Ljavassist/compiler/ast/ASTree;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 551
    invoke-virtual {v1}, Ljavassist/compiler/ast/BinExpr;->oprand2()Ljavassist/compiler/ast/ASTree;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 552
    .end local v1    # "bexpr":Ljavassist/compiler/ast/BinExpr;
    nop

    .line 556
    :goto_1
    const/16 v1, 0x12d

    iput v1, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    .line 557
    const/4 v1, 0x0

    iput v1, p0, Ljavassist/compiler/TypeChecker;->arrayDim:I

    .line 558
    return-void
.end method

.method private computeBinExprType(Ljavassist/compiler/ast/BinExpr;II)V
    .locals 3
    .param p1, "expr"    # Ljavassist/compiler/ast/BinExpr;
    .param p2, "token"    # I
    .param p3, "type1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 523
    iget v0, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    .line 524
    .local v0, "type2":I
    const/16 v1, 0x16c

    if-eq p2, v1, :cond_1

    const/16 v1, 0x16e

    if-eq p2, v1, :cond_1

    const/16 v1, 0x172

    if-ne p2, v1, :cond_0

    goto :goto_0

    .line 527
    :cond_0
    invoke-direct {p0, p1, p3, v0}, Ljavassist/compiler/TypeChecker;->insertCast(Ljavassist/compiler/ast/BinExpr;II)V

    goto :goto_1

    .line 525
    :cond_1
    :goto_0
    iput p3, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    .line 529
    :goto_1
    iget v1, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    invoke-static {v1}, Ljavassist/compiler/CodeGen;->isP_INT(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    const/16 v2, 0x12d

    if-eq v1, v2, :cond_2

    .line 530
    const/16 v1, 0x144

    iput v1, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    .line 531
    :cond_2
    return-void
.end method

.method protected static fatal()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 129
    new-instance v0, Ljavassist/compiler/CompileError;

    const-string v1, "fatal"

    invoke-direct {v0, v1}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private fieldAccess2(Ljavassist/compiler/ast/Expr;Ljava/lang/String;)Ljavassist/CtField;
    .locals 4
    .param p1, "e"    # Ljavassist/compiler/ast/Expr;
    .param p2, "jvmClassName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 940
    invoke-virtual {p1}, Ljavassist/compiler/ast/Expr;->oprand2()Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    check-cast v0, Ljavassist/compiler/ast/Member;

    .line 941
    .local v0, "fname":Ljavassist/compiler/ast/Member;
    iget-object v1, p0, Ljavassist/compiler/TypeChecker;->resolver:Ljavassist/compiler/MemberResolver;

    invoke-virtual {v1, p2, v0, p1}, Ljavassist/compiler/MemberResolver;->lookupFieldByJvmName2(Ljava/lang/String;Ljavassist/compiler/ast/Symbol;Ljavassist/compiler/ast/ASTree;)Ljavassist/CtField;

    move-result-object v1

    .line 942
    .local v1, "f":Ljavassist/CtField;
    const/16 v2, 0x23

    invoke-virtual {p1, v2}, Ljavassist/compiler/ast/Expr;->setOperator(I)V

    .line 943
    new-instance v2, Ljavassist/compiler/ast/Symbol;

    invoke-static {p2}, Ljavassist/compiler/MemberResolver;->jvmToJavaName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavassist/compiler/ast/Symbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljavassist/compiler/ast/Expr;->setOprand1(Ljavassist/compiler/ast/ASTree;)V

    .line 944
    invoke-virtual {v0, v1}, Ljavassist/compiler/ast/Member;->setField(Ljavassist/CtField;)V

    .line 945
    return-object v1
.end method

.method public static getConstantFieldValue(Ljavassist/CtField;)Ljavassist/compiler/ast/ASTree;
    .locals 5
    .param p0, "f"    # Ljavassist/CtField;

    .line 479
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 480
    return-object v0

    .line 482
    :cond_0
    invoke-virtual {p0}, Ljavassist/CtField;->getConstantValue()Ljava/lang/Object;

    move-result-object v1

    .line 483
    .local v1, "value":Ljava/lang/Object;
    if-nez v1, :cond_1

    .line 484
    return-object v0

    .line 486
    :cond_1
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 487
    new-instance v0, Ljavassist/compiler/ast/StringL;

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljavassist/compiler/ast/StringL;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 488
    :cond_2
    instance-of v2, v1, Ljava/lang/Double;

    if-nez v2, :cond_8

    instance-of v2, v1, Ljava/lang/Float;

    if-eqz v2, :cond_3

    goto :goto_2

    .line 493
    :cond_3
    instance-of v2, v1, Ljava/lang/Number;

    if-eqz v2, :cond_5

    .line 494
    instance-of v0, v1, Ljava/lang/Long;

    if-eqz v0, :cond_4

    const/16 v0, 0x193

    goto :goto_0

    :cond_4
    const/16 v0, 0x192

    .line 495
    .local v0, "token":I
    :goto_0
    new-instance v2, Ljavassist/compiler/ast/IntConst;

    move-object v3, v1

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    invoke-direct {v2, v3, v4, v0}, Ljavassist/compiler/ast/IntConst;-><init>(JI)V

    return-object v2

    .line 497
    .end local v0    # "token":I
    :cond_5
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_7

    .line 498
    new-instance v0, Ljavassist/compiler/ast/Keyword;

    move-object v2, v1

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 499
    const/16 v2, 0x19a

    goto :goto_1

    :cond_6
    const/16 v2, 0x19b

    :goto_1
    invoke-direct {v0, v2}, Ljavassist/compiler/ast/Keyword;-><init>(I)V

    .line 498
    return-object v0

    .line 501
    :cond_7
    return-object v0

    .line 489
    :cond_8
    :goto_2
    instance-of v0, v1, Ljava/lang/Double;

    if-eqz v0, :cond_9

    .line 490
    const/16 v0, 0x195

    goto :goto_3

    :cond_9
    const/16 v0, 0x194

    .line 491
    .restart local v0    # "token":I
    :goto_3
    new-instance v2, Ljavassist/compiler/ast/DoubleConst;

    move-object v3, v1

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    invoke-direct {v2, v3, v4, v0}, Ljavassist/compiler/ast/DoubleConst;-><init>(DI)V

    return-object v2
.end method

.method private static getConstantFieldValue(Ljavassist/compiler/ast/Member;)Ljavassist/compiler/ast/ASTree;
    .locals 1
    .param p0, "mem"    # Ljavassist/compiler/ast/Member;

    .line 475
    invoke-virtual {p0}, Ljavassist/compiler/ast/Member;->getField()Ljavassist/CtField;

    move-result-object v0

    invoke-static {v0}, Ljavassist/compiler/TypeChecker;->getConstantFieldValue(Ljavassist/CtField;)Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    return-object v0
.end method

.method private insertCast(Ljavassist/compiler/ast/BinExpr;II)V
    .locals 3
    .param p1, "expr"    # Ljavassist/compiler/ast/BinExpr;
    .param p2, "type1"    # I
    .param p3, "type2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 563
    invoke-static {p2, p3}, Ljavassist/compiler/CodeGen;->rightIsStrong(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 564
    new-instance v0, Ljavassist/compiler/ast/CastExpr;

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljavassist/compiler/ast/BinExpr;->oprand1()Ljavassist/compiler/ast/ASTree;

    move-result-object v2

    invoke-direct {v0, p3, v1, v2}, Ljavassist/compiler/ast/CastExpr;-><init>(IILjavassist/compiler/ast/ASTree;)V

    invoke-virtual {p1, v0}, Ljavassist/compiler/ast/BinExpr;->setLeft(Ljavassist/compiler/ast/ASTree;)V

    goto :goto_0

    .line 566
    :cond_0
    iput p2, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    .line 567
    :goto_0
    return-void
.end method

.method private isConstant(Ljavassist/compiler/ast/BinExpr;ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)Z
    .locals 5
    .param p1, "expr"    # Ljavassist/compiler/ast/BinExpr;
    .param p2, "op"    # I
    .param p3, "left"    # Ljavassist/compiler/ast/ASTree;
    .param p4, "right"    # Ljavassist/compiler/ast/ASTree;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 422
    invoke-static {p3}, Ljavassist/compiler/TypeChecker;->stripPlusExpr(Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/ASTree;

    move-result-object p3

    .line 423
    invoke-static {p4}, Ljavassist/compiler/TypeChecker;->stripPlusExpr(Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/ASTree;

    move-result-object p4

    .line 424
    const/4 v0, 0x0

    .line 425
    .local v0, "newExpr":Ljavassist/compiler/ast/ASTree;
    instance-of v1, p3, Ljavassist/compiler/ast/StringL;

    const/16 v2, 0x2b

    if-eqz v1, :cond_0

    instance-of v1, p4, Ljavassist/compiler/ast/StringL;

    if-eqz v1, :cond_0

    if-ne p2, v2, :cond_0

    .line 426
    new-instance v1, Ljavassist/compiler/ast/StringL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, p3

    check-cast v4, Ljavassist/compiler/ast/StringL;

    invoke-virtual {v4}, Ljavassist/compiler/ast/StringL;->get()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, p4

    check-cast v4, Ljavassist/compiler/ast/StringL;

    .line 427
    invoke-virtual {v4}, Ljavassist/compiler/ast/StringL;->get()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljavassist/compiler/ast/StringL;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    .line 428
    :cond_0
    instance-of v1, p3, Ljavassist/compiler/ast/IntConst;

    if-eqz v1, :cond_1

    .line 429
    move-object v1, p3

    check-cast v1, Ljavassist/compiler/ast/IntConst;

    invoke-virtual {v1, p2, p4}, Ljavassist/compiler/ast/IntConst;->compute(ILjavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    goto :goto_0

    .line 430
    :cond_1
    instance-of v1, p3, Ljavassist/compiler/ast/DoubleConst;

    if-eqz v1, :cond_2

    .line 431
    move-object v1, p3

    check-cast v1, Ljavassist/compiler/ast/DoubleConst;

    invoke-virtual {v1, p2, p4}, Ljavassist/compiler/ast/DoubleConst;->compute(ILjavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    .line 433
    :cond_2
    :goto_0
    if-nez v0, :cond_3

    .line 434
    const/4 v1, 0x0

    return v1

    .line 435
    :cond_3
    invoke-virtual {p1, v2}, Ljavassist/compiler/ast/BinExpr;->setOperator(I)V

    .line 436
    invoke-virtual {p1, v0}, Ljavassist/compiler/ast/BinExpr;->setOprand1(Ljavassist/compiler/ast/ASTree;)V

    .line 437
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljavassist/compiler/ast/BinExpr;->setOprand2(Ljavassist/compiler/ast/ASTree;)V

    .line 438
    invoke-virtual {v0, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 439
    const/4 v1, 0x1

    return v1
.end method

.method private isConstant(Ljavassist/compiler/ast/Expr;ILjavassist/compiler/ast/ASTree;)Z
    .locals 5
    .param p1, "expr"    # Ljavassist/compiler/ast/Expr;
    .param p2, "op"    # I
    .param p3, "oprand"    # Ljavassist/compiler/ast/ASTree;

    .line 632
    invoke-static {p3}, Ljavassist/compiler/TypeChecker;->stripPlusExpr(Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/ASTree;

    move-result-object p3

    .line 633
    instance-of v0, p3, Ljavassist/compiler/ast/IntConst;

    const/16 v1, 0x2d

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 634
    move-object v0, p3

    check-cast v0, Ljavassist/compiler/ast/IntConst;

    .line 635
    .local v0, "c":Ljavassist/compiler/ast/IntConst;
    invoke-virtual {v0}, Ljavassist/compiler/ast/IntConst;->get()J

    move-result-wide v3

    .line 636
    .local v3, "v":J
    if-ne p2, v1, :cond_0

    .line 637
    neg-long v1, v3

    .end local v3    # "v":J
    .local v1, "v":J
    goto :goto_0

    .line 638
    .end local v1    # "v":J
    .restart local v3    # "v":J
    :cond_0
    const/16 v1, 0x7e

    if-ne p2, v1, :cond_1

    .line 639
    not-long v1, v3

    .line 643
    .end local v3    # "v":J
    .restart local v1    # "v":J
    :goto_0
    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/ast/IntConst;->set(J)V

    .line 644
    .end local v0    # "c":Ljavassist/compiler/ast/IntConst;
    .end local v1    # "v":J
    goto :goto_1

    .line 641
    .restart local v0    # "c":Ljavassist/compiler/ast/IntConst;
    .restart local v3    # "v":J
    :cond_1
    return v2

    .line 645
    .end local v0    # "c":Ljavassist/compiler/ast/IntConst;
    .end local v3    # "v":J
    :cond_2
    instance-of v0, p3, Ljavassist/compiler/ast/DoubleConst;

    if-eqz v0, :cond_4

    .line 646
    move-object v0, p3

    check-cast v0, Ljavassist/compiler/ast/DoubleConst;

    .line 647
    .local v0, "c":Ljavassist/compiler/ast/DoubleConst;
    if-ne p2, v1, :cond_3

    .line 648
    invoke-virtual {v0}, Ljavassist/compiler/ast/DoubleConst;->get()D

    move-result-wide v1

    neg-double v1, v1

    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/ast/DoubleConst;->set(D)V

    .line 651
    .end local v0    # "c":Ljavassist/compiler/ast/DoubleConst;
    nop

    .line 655
    :goto_1
    const/16 v0, 0x2b

    invoke-virtual {p1, v0}, Ljavassist/compiler/ast/Expr;->setOperator(I)V

    .line 656
    const/4 v0, 0x1

    return v0

    .line 650
    .restart local v0    # "c":Ljavassist/compiler/ast/DoubleConst;
    :cond_3
    return v2

    .line 653
    .end local v0    # "c":Ljavassist/compiler/ast/DoubleConst;
    :cond_4
    return v2
.end method

.method static isDotSuper(Ljavassist/compiler/ast/ASTree;)Ljava/lang/String;
    .locals 4
    .param p0, "target"    # Ljavassist/compiler/ast/ASTree;

    .line 739
    instance-of v0, p0, Ljavassist/compiler/ast/Expr;

    if-eqz v0, :cond_0

    .line 740
    move-object v0, p0

    check-cast v0, Ljavassist/compiler/ast/Expr;

    .line 741
    .local v0, "e":Ljavassist/compiler/ast/Expr;
    invoke-virtual {v0}, Ljavassist/compiler/ast/Expr;->getOperator()I

    move-result v1

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_0

    .line 742
    invoke-virtual {v0}, Ljavassist/compiler/ast/Expr;->oprand2()Ljavassist/compiler/ast/ASTree;

    move-result-object v1

    .line 743
    .local v1, "right":Ljavassist/compiler/ast/ASTree;
    instance-of v2, v1, Ljavassist/compiler/ast/Keyword;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Ljavassist/compiler/ast/Keyword;

    invoke-virtual {v2}, Ljavassist/compiler/ast/Keyword;->get()I

    move-result v2

    const/16 v3, 0x150

    if-ne v2, v3, :cond_0

    .line 744
    invoke-virtual {v0}, Ljavassist/compiler/ast/Expr;->oprand1()Ljavassist/compiler/ast/ASTree;

    move-result-object v2

    check-cast v2, Ljavassist/compiler/ast/Symbol;

    invoke-virtual {v2}, Ljavassist/compiler/ast/Symbol;->get()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 748
    .end local v0    # "e":Ljavassist/compiler/ast/Expr;
    .end local v1    # "right":Ljavassist/compiler/ast/ASTree;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static isPlusExpr(Ljavassist/compiler/ast/ASTree;)Z
    .locals 4
    .param p0, "expr"    # Ljavassist/compiler/ast/ASTree;

    .line 505
    instance-of v0, p0, Ljavassist/compiler/ast/BinExpr;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 506
    move-object v0, p0

    check-cast v0, Ljavassist/compiler/ast/BinExpr;

    .line 507
    .local v0, "bexpr":Ljavassist/compiler/ast/BinExpr;
    invoke-virtual {v0}, Ljavassist/compiler/ast/BinExpr;->getOperator()I

    move-result v2

    .line 508
    .local v2, "token":I
    const/16 v3, 0x2b

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 511
    .end local v0    # "bexpr":Ljavassist/compiler/ast/BinExpr;
    .end local v2    # "token":I
    :cond_1
    return v1
.end method

.method private static makeAppendCall(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/Expr;
    .locals 2
    .param p0, "target"    # Ljavassist/compiler/ast/ASTree;
    .param p1, "arg"    # Ljavassist/compiler/ast/ASTree;

    .line 515
    new-instance v0, Ljavassist/compiler/ast/Member;

    const-string v1, "append"

    invoke-direct {v0, v1}, Ljavassist/compiler/ast/Member;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x2e

    invoke-static {v1, p0, v0}, Ljavassist/compiler/ast/Expr;->make(ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/Expr;

    move-result-object v0

    new-instance v1, Ljavassist/compiler/ast/ASTList;

    invoke-direct {v1, p1}, Ljavassist/compiler/ast/ASTList;-><init>(Ljavassist/compiler/ast/ASTree;)V

    invoke-static {v0, v1}, Ljavassist/compiler/ast/CallExpr;->makeCall(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/CallExpr;

    move-result-object v0

    return-object v0
.end method

.method static stripPlusExpr(Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/ASTree;
    .locals 4
    .param p0, "expr"    # Ljavassist/compiler/ast/ASTree;

    .line 445
    instance-of v0, p0, Ljavassist/compiler/ast/BinExpr;

    const/16 v1, 0x2b

    if-eqz v0, :cond_1

    .line 446
    move-object v0, p0

    check-cast v0, Ljavassist/compiler/ast/BinExpr;

    .line 447
    .local v0, "e":Ljavassist/compiler/ast/BinExpr;
    invoke-virtual {v0}, Ljavassist/compiler/ast/BinExpr;->getOperator()I

    move-result v2

    if-ne v2, v1, :cond_0

    invoke-virtual {v0}, Ljavassist/compiler/ast/BinExpr;->oprand2()Ljavassist/compiler/ast/ASTree;

    move-result-object v1

    if-nez v1, :cond_0

    .line 448
    invoke-virtual {v0}, Ljavassist/compiler/ast/BinExpr;->getLeft()Ljavassist/compiler/ast/ASTree;

    move-result-object v1

    return-object v1

    .line 449
    .end local v0    # "e":Ljavassist/compiler/ast/BinExpr;
    :cond_0
    goto :goto_1

    .line 450
    :cond_1
    instance-of v0, p0, Ljavassist/compiler/ast/Expr;

    if-eqz v0, :cond_5

    .line 451
    move-object v0, p0

    check-cast v0, Ljavassist/compiler/ast/Expr;

    .line 452
    .local v0, "e":Ljavassist/compiler/ast/Expr;
    invoke-virtual {v0}, Ljavassist/compiler/ast/Expr;->getOperator()I

    move-result v2

    .line 453
    .local v2, "op":I
    const/16 v3, 0x23

    if-ne v2, v3, :cond_3

    .line 454
    invoke-virtual {v0}, Ljavassist/compiler/ast/Expr;->oprand2()Ljavassist/compiler/ast/ASTree;

    move-result-object v1

    check-cast v1, Ljavassist/compiler/ast/Member;

    invoke-static {v1}, Ljavassist/compiler/TypeChecker;->getConstantFieldValue(Ljavassist/compiler/ast/Member;)Ljavassist/compiler/ast/ASTree;

    move-result-object v1

    .line 455
    .local v1, "cexpr":Ljavassist/compiler/ast/ASTree;
    if-eqz v1, :cond_2

    .line 456
    return-object v1

    .line 457
    .end local v1    # "cexpr":Ljavassist/compiler/ast/ASTree;
    :cond_2
    goto :goto_0

    .line 458
    :cond_3
    if-ne v2, v1, :cond_4

    invoke-virtual {v0}, Ljavassist/compiler/ast/Expr;->getRight()Ljavassist/compiler/ast/ASTree;

    move-result-object v1

    if-nez v1, :cond_4

    .line 459
    invoke-virtual {v0}, Ljavassist/compiler/ast/Expr;->getLeft()Ljavassist/compiler/ast/ASTree;

    move-result-object v1

    return-object v1

    .line 460
    .end local v0    # "e":Ljavassist/compiler/ast/Expr;
    .end local v2    # "op":I
    :cond_4
    :goto_0
    goto :goto_1

    .line 461
    :cond_5
    instance-of v0, p0, Ljavassist/compiler/ast/Member;

    if-eqz v0, :cond_6

    .line 462
    move-object v0, p0

    check-cast v0, Ljavassist/compiler/ast/Member;

    invoke-static {v0}, Ljavassist/compiler/TypeChecker;->getConstantFieldValue(Ljavassist/compiler/ast/Member;)Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    .line 463
    .local v0, "cexpr":Ljavassist/compiler/ast/ASTree;
    if-eqz v0, :cond_6

    .line 464
    return-object v0

    .line 467
    .end local v0    # "cexpr":Ljavassist/compiler/ast/ASTree;
    :cond_6
    :goto_1
    return-object p0
.end method

.method protected static typeToString(Ljava/lang/StringBuffer;IILjava/lang/String;)Ljava/lang/StringBuffer;
    .locals 2
    .param p0, "sbuf"    # Ljava/lang/StringBuffer;
    .param p1, "type"    # I
    .param p2, "dim"    # I
    .param p3, "cname"    # Ljava/lang/String;

    .line 102
    const/16 v0, 0x133

    if-ne p1, v0, :cond_0

    .line 103
    invoke-static {p3}, Ljavassist/compiler/MemberResolver;->jvmToJavaName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "s":Ljava/lang/String;
    goto :goto_0

    .line 104
    .end local v0    # "s":Ljava/lang/String;
    :cond_0
    const/16 v0, 0x19c

    if-ne p1, v0, :cond_1

    .line 105
    const-string v0, "Object"

    .restart local v0    # "s":Ljava/lang/String;
    goto :goto_0

    .line 108
    .end local v0    # "s":Ljava/lang/String;
    :cond_1
    :try_start_0
    invoke-static {p1}, Ljavassist/compiler/MemberResolver;->getTypeName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljavassist/compiler/CompileError; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .restart local v0    # "s":Ljava/lang/String;
    goto :goto_0

    .line 110
    .end local v0    # "s":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljavassist/compiler/CompileError;
    const-string v1, "?"

    move-object v0, v1

    .line 114
    .local v0, "s":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 115
    :goto_1
    add-int/lit8 v1, p2, -0x1

    .end local p2    # "dim":I
    .local v1, "dim":I
    if-lez p2, :cond_2

    .line 116
    const-string p2, "[]"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move p2, v1

    goto :goto_1

    .line 118
    :cond_2
    return-object p0
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

    .line 204
    move-object v0, p1

    .line 205
    .local v0, "list":Ljavassist/compiler/ast/ASTList;
    :goto_0
    if-eqz v0, :cond_1

    .line 206
    invoke-virtual {v0}, Ljavassist/compiler/ast/ASTList;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object v1

    .line 207
    .local v1, "h":Ljavassist/compiler/ast/ASTree;
    invoke-virtual {v0}, Ljavassist/compiler/ast/ASTList;->tail()Ljavassist/compiler/ast/ASTList;

    move-result-object v0

    .line 208
    if-eqz v1, :cond_0

    .line 209
    invoke-virtual {v1, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 210
    .end local v1    # "h":Ljavassist/compiler/ast/ASTree;
    :cond_0
    goto :goto_0

    .line 211
    :cond_1
    return-void
.end method

.method public atArrayLength(Ljavassist/compiler/ast/Expr;)V
    .locals 2
    .param p1, "expr"    # Ljavassist/compiler/ast/Expr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 955
    invoke-virtual {p1}, Ljavassist/compiler/ast/Expr;->oprand1()Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 956
    iget v0, p0, Ljavassist/compiler/TypeChecker;->arrayDim:I

    if-eqz v0, :cond_0

    .line 959
    const/16 v0, 0x144

    iput v0, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    .line 960
    const/4 v0, 0x0

    iput v0, p0, Ljavassist/compiler/TypeChecker;->arrayDim:I

    .line 961
    return-void

    .line 957
    :cond_0
    new-instance v0, Ljavassist/compiler/NoFieldException;

    const-string v1, "length"

    invoke-direct {v0, v1, p1}, Ljavassist/compiler/NoFieldException;-><init>(Ljava/lang/String;Ljavassist/compiler/ast/ASTree;)V

    throw v0
.end method

.method public atArrayRead(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)V
    .locals 4
    .param p1, "array"    # Ljavassist/compiler/ast/ASTree;
    .param p2, "index"    # Ljavassist/compiler/ast/ASTree;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 966
    invoke-virtual {p1, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 967
    iget v0, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    .line 968
    .local v0, "type":I
    iget v1, p0, Ljavassist/compiler/TypeChecker;->arrayDim:I

    .line 969
    .local v1, "dim":I
    iget-object v2, p0, Ljavassist/compiler/TypeChecker;->className:Ljava/lang/String;

    .line 970
    .local v2, "cname":Ljava/lang/String;
    invoke-virtual {p2, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 971
    iput v0, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    .line 972
    add-int/lit8 v3, v1, -0x1

    iput v3, p0, Ljavassist/compiler/TypeChecker;->arrayDim:I

    .line 973
    iput-object v2, p0, Ljavassist/compiler/TypeChecker;->className:Ljava/lang/String;

    .line 974
    return-void
.end method

.method public atAssignExpr(Ljavassist/compiler/ast/AssignExpr;)V
    .locals 9
    .param p1, "expr"    # Ljavassist/compiler/ast/AssignExpr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 239
    invoke-virtual {p1}, Ljavassist/compiler/ast/AssignExpr;->getOperator()I

    move-result v6

    .line 240
    .local v6, "op":I
    invoke-virtual {p1}, Ljavassist/compiler/ast/AssignExpr;->oprand1()Ljavassist/compiler/ast/ASTree;

    move-result-object v7

    .line 241
    .local v7, "left":Ljavassist/compiler/ast/ASTree;
    invoke-virtual {p1}, Ljavassist/compiler/ast/AssignExpr;->oprand2()Ljavassist/compiler/ast/ASTree;

    move-result-object v8

    .line 242
    .local v8, "right":Ljavassist/compiler/ast/ASTree;
    instance-of v0, v7, Ljavassist/compiler/ast/Variable;

    if-eqz v0, :cond_0

    .line 243
    move-object v3, v7

    check-cast v3, Ljavassist/compiler/ast/Variable;

    move-object v0, v7

    check-cast v0, Ljavassist/compiler/ast/Variable;

    .line 244
    invoke-virtual {v0}, Ljavassist/compiler/ast/Variable;->getDeclarator()Ljavassist/compiler/ast/Declarator;

    move-result-object v4

    .line 243
    move-object v0, p0

    move-object v1, p1

    move v2, v6

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Ljavassist/compiler/TypeChecker;->atVariableAssign(Ljavassist/compiler/ast/Expr;ILjavassist/compiler/ast/Variable;Ljavassist/compiler/ast/Declarator;Ljavassist/compiler/ast/ASTree;)V

    goto :goto_0

    .line 247
    :cond_0
    instance-of v0, v7, Ljavassist/compiler/ast/Expr;

    if-eqz v0, :cond_1

    .line 248
    move-object v0, v7

    check-cast v0, Ljavassist/compiler/ast/Expr;

    .line 249
    .local v0, "e":Ljavassist/compiler/ast/Expr;
    invoke-virtual {v0}, Ljavassist/compiler/ast/Expr;->getOperator()I

    move-result v1

    const/16 v2, 0x41

    if-ne v1, v2, :cond_1

    .line 250
    move-object v1, v7

    check-cast v1, Ljavassist/compiler/ast/Expr;

    invoke-direct {p0, p1, v6, v1, v8}, Ljavassist/compiler/TypeChecker;->atArrayAssign(Ljavassist/compiler/ast/Expr;ILjavassist/compiler/ast/Expr;Ljavassist/compiler/ast/ASTree;)V

    .line 251
    return-void

    .line 255
    .end local v0    # "e":Ljavassist/compiler/ast/Expr;
    :cond_1
    invoke-virtual {p0, p1, v6, v7, v8}, Ljavassist/compiler/TypeChecker;->atFieldAssign(Ljavassist/compiler/ast/Expr;ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)V

    .line 257
    :goto_0
    return-void
.end method

.method public atBinExpr(Ljavassist/compiler/ast/BinExpr;)V
    .locals 6
    .param p1, "expr"    # Ljavassist/compiler/ast/BinExpr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 334
    invoke-virtual {p1}, Ljavassist/compiler/ast/BinExpr;->getOperator()I

    move-result v0

    .line 335
    .local v0, "token":I
    invoke-static {v0}, Ljavassist/compiler/CodeGen;->lookupBinOp(I)I

    move-result v1

    .line 336
    .local v1, "k":I
    if-ltz v1, :cond_3

    .line 339
    const/16 v2, 0x2b

    if-ne v0, v2, :cond_1

    .line 340
    invoke-direct {p0, p1}, Ljavassist/compiler/TypeChecker;->atPlusExpr(Ljavassist/compiler/ast/BinExpr;)Ljavassist/compiler/ast/Expr;

    move-result-object v2

    .line 341
    .local v2, "e":Ljavassist/compiler/ast/Expr;
    if-eqz v2, :cond_0

    .line 345
    const/16 v3, 0x2e

    new-instance v4, Ljavassist/compiler/ast/Member;

    const-string v5, "toString"

    invoke-direct {v4, v5}, Ljavassist/compiler/ast/Member;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v2, v4}, Ljavassist/compiler/ast/Expr;->make(ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/Expr;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljavassist/compiler/ast/CallExpr;->makeCall(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/CallExpr;

    move-result-object v2

    .line 347
    invoke-virtual {p1, v2}, Ljavassist/compiler/ast/BinExpr;->setOprand1(Ljavassist/compiler/ast/ASTree;)V

    .line 348
    invoke-virtual {p1, v4}, Ljavassist/compiler/ast/BinExpr;->setOprand2(Ljavassist/compiler/ast/ASTree;)V

    .line 349
    const-string v3, "java/lang/String"

    iput-object v3, p0, Ljavassist/compiler/TypeChecker;->className:Ljava/lang/String;

    .line 351
    .end local v2    # "e":Ljavassist/compiler/ast/Expr;
    :cond_0
    goto :goto_0

    .line 353
    :cond_1
    invoke-virtual {p1}, Ljavassist/compiler/ast/BinExpr;->oprand1()Ljavassist/compiler/ast/ASTree;

    move-result-object v2

    .line 354
    .local v2, "left":Ljavassist/compiler/ast/ASTree;
    invoke-virtual {p1}, Ljavassist/compiler/ast/BinExpr;->oprand2()Ljavassist/compiler/ast/ASTree;

    move-result-object v3

    .line 355
    .local v3, "right":Ljavassist/compiler/ast/ASTree;
    invoke-virtual {v2, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 356
    iget v4, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    .line 357
    .local v4, "type1":I
    invoke-virtual {v3, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 358
    invoke-direct {p0, p1, v0, v2, v3}, Ljavassist/compiler/TypeChecker;->isConstant(Ljavassist/compiler/ast/BinExpr;ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 359
    invoke-direct {p0, p1, v0, v4}, Ljavassist/compiler/TypeChecker;->computeBinExprType(Ljavassist/compiler/ast/BinExpr;II)V

    .line 360
    .end local v2    # "left":Ljavassist/compiler/ast/ASTree;
    .end local v3    # "right":Ljavassist/compiler/ast/ASTree;
    .end local v4    # "type1":I
    :cond_2
    goto :goto_0

    .line 365
    :cond_3
    invoke-direct {p0, p1}, Ljavassist/compiler/TypeChecker;->booleanExpr(Ljavassist/compiler/ast/ASTree;)V

    .line 367
    :goto_0
    return-void
.end method

.method public atCallExpr(Ljavassist/compiler/ast/CallExpr;)V
    .locals 13
    .param p1, "expr"    # Ljavassist/compiler/ast/CallExpr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 661
    const/4 v0, 0x0

    .line 662
    .local v0, "mname":Ljava/lang/String;
    const/4 v1, 0x0

    .line 663
    .local v1, "targetClass":Ljavassist/CtClass;
    invoke-virtual {p1}, Ljavassist/compiler/ast/CallExpr;->oprand1()Ljavassist/compiler/ast/ASTree;

    move-result-object v2

    .line 664
    .local v2, "method":Ljavassist/compiler/ast/ASTree;
    invoke-virtual {p1}, Ljavassist/compiler/ast/CallExpr;->oprand2()Ljavassist/compiler/ast/ASTree;

    move-result-object v3

    check-cast v3, Ljavassist/compiler/ast/ASTList;

    .line 666
    .local v3, "args":Ljavassist/compiler/ast/ASTList;
    instance-of v4, v2, Ljavassist/compiler/ast/Member;

    if-eqz v4, :cond_0

    .line 667
    move-object v4, v2

    check-cast v4, Ljavassist/compiler/ast/Member;

    invoke-virtual {v4}, Ljavassist/compiler/ast/Member;->get()Ljava/lang/String;

    move-result-object v0

    .line 668
    iget-object v1, p0, Ljavassist/compiler/TypeChecker;->thisClass:Ljavassist/CtClass;

    goto/16 :goto_3

    .line 670
    :cond_0
    instance-of v4, v2, Ljavassist/compiler/ast/Keyword;

    if-eqz v4, :cond_2

    .line 671
    const-string v0, "<init>"

    .line 672
    move-object v4, v2

    check-cast v4, Ljavassist/compiler/ast/Keyword;

    invoke-virtual {v4}, Ljavassist/compiler/ast/Keyword;->get()I

    move-result v4

    const/16 v5, 0x150

    if-ne v4, v5, :cond_1

    .line 673
    iget-object v4, p0, Ljavassist/compiler/TypeChecker;->thisClass:Ljavassist/CtClass;

    invoke-static {v4}, Ljavassist/compiler/MemberResolver;->getSuperclass(Ljavassist/CtClass;)Ljavassist/CtClass;

    move-result-object v1

    goto/16 :goto_3

    .line 675
    :cond_1
    iget-object v1, p0, Ljavassist/compiler/TypeChecker;->thisClass:Ljavassist/CtClass;

    goto/16 :goto_3

    .line 677
    :cond_2
    instance-of v4, v2, Ljavassist/compiler/ast/Expr;

    if-eqz v4, :cond_9

    .line 678
    move-object v4, v2

    check-cast v4, Ljavassist/compiler/ast/Expr;

    .line 679
    .local v4, "e":Ljavassist/compiler/ast/Expr;
    invoke-virtual {v4}, Ljavassist/compiler/ast/Expr;->oprand2()Ljavassist/compiler/ast/ASTree;

    move-result-object v5

    check-cast v5, Ljavassist/compiler/ast/Symbol;

    invoke-virtual {v5}, Ljavassist/compiler/ast/Symbol;->get()Ljava/lang/String;

    move-result-object v0

    .line 680
    invoke-virtual {v4}, Ljavassist/compiler/ast/Expr;->getOperator()I

    move-result v5

    .line 681
    .local v5, "op":I
    const/4 v6, 0x0

    const/16 v7, 0x23

    if-ne v5, v7, :cond_3

    .line 682
    iget-object v7, p0, Ljavassist/compiler/TypeChecker;->resolver:Ljavassist/compiler/MemberResolver;

    .line 683
    invoke-virtual {v4}, Ljavassist/compiler/ast/Expr;->oprand1()Ljavassist/compiler/ast/ASTree;

    move-result-object v8

    check-cast v8, Ljavassist/compiler/ast/Symbol;

    invoke-virtual {v8}, Ljavassist/compiler/ast/Symbol;->get()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Ljavassist/compiler/MemberResolver;->lookupClass(Ljava/lang/String;Z)Ljavassist/CtClass;

    move-result-object v1

    goto :goto_2

    .line 685
    :cond_3
    const/16 v8, 0x2e

    if-ne v5, v8, :cond_8

    .line 686
    invoke-virtual {v4}, Ljavassist/compiler/ast/Expr;->oprand1()Ljavassist/compiler/ast/ASTree;

    move-result-object v8

    .line 687
    .local v8, "target":Ljavassist/compiler/ast/ASTree;
    invoke-static {v8}, Ljavassist/compiler/TypeChecker;->isDotSuper(Ljavassist/compiler/ast/ASTree;)Ljava/lang/String;

    move-result-object v9

    .line 688
    .local v9, "classFollowedByDotSuper":Ljava/lang/String;
    if-eqz v9, :cond_4

    .line 689
    iget-object v6, p0, Ljavassist/compiler/TypeChecker;->thisClass:Ljavassist/CtClass;

    invoke-static {v6, v9}, Ljavassist/compiler/MemberResolver;->getSuperInterface(Ljavassist/CtClass;Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v1

    goto :goto_1

    .line 693
    :cond_4
    const/16 v10, 0x133

    :try_start_0
    invoke-virtual {v8, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V
    :try_end_0
    .catch Ljavassist/compiler/NoFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 706
    goto :goto_0

    .line 695
    :catch_0
    move-exception v11

    .line 696
    .local v11, "nfe":Ljavassist/compiler/NoFieldException;
    invoke-virtual {v11}, Ljavassist/compiler/NoFieldException;->getExpr()Ljavassist/compiler/ast/ASTree;

    move-result-object v12

    if-ne v12, v8, :cond_7

    .line 700
    iput v10, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    .line 701
    iput v6, p0, Ljavassist/compiler/TypeChecker;->arrayDim:I

    .line 702
    invoke-virtual {v11}, Ljavassist/compiler/NoFieldException;->getField()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ljavassist/compiler/TypeChecker;->className:Ljava/lang/String;

    .line 703
    invoke-virtual {v4, v7}, Ljavassist/compiler/ast/Expr;->setOperator(I)V

    .line 704
    new-instance v6, Ljavassist/compiler/ast/Symbol;

    iget-object v7, p0, Ljavassist/compiler/TypeChecker;->className:Ljava/lang/String;

    invoke-static {v7}, Ljavassist/compiler/MemberResolver;->jvmToJavaName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljavassist/compiler/ast/Symbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljavassist/compiler/ast/Expr;->setOprand1(Ljavassist/compiler/ast/ASTree;)V

    .line 708
    .end local v11    # "nfe":Ljavassist/compiler/NoFieldException;
    :goto_0
    iget v6, p0, Ljavassist/compiler/TypeChecker;->arrayDim:I

    if-lez v6, :cond_5

    .line 709
    iget-object v6, p0, Ljavassist/compiler/TypeChecker;->resolver:Ljavassist/compiler/MemberResolver;

    const/4 v7, 0x1

    const-string v10, "java.lang.Object"

    invoke-virtual {v6, v10, v7}, Ljavassist/compiler/MemberResolver;->lookupClass(Ljava/lang/String;Z)Ljavassist/CtClass;

    move-result-object v1

    goto :goto_1

    .line 710
    :cond_5
    iget v6, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    if-ne v6, v10, :cond_6

    .line 711
    iget-object v6, p0, Ljavassist/compiler/TypeChecker;->resolver:Ljavassist/compiler/MemberResolver;

    iget-object v7, p0, Ljavassist/compiler/TypeChecker;->className:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljavassist/compiler/MemberResolver;->lookupClassByJvmName(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v1

    goto :goto_1

    .line 713
    :cond_6
    invoke-static {}, Ljavassist/compiler/TypeChecker;->badMethod()V

    .line 715
    .end local v8    # "target":Ljavassist/compiler/ast/ASTree;
    .end local v9    # "classFollowedByDotSuper":Ljava/lang/String;
    :goto_1
    goto :goto_2

    .line 697
    .restart local v8    # "target":Ljavassist/compiler/ast/ASTree;
    .restart local v9    # "classFollowedByDotSuper":Ljava/lang/String;
    .restart local v11    # "nfe":Ljavassist/compiler/NoFieldException;
    :cond_7
    throw v11

    .line 717
    .end local v8    # "target":Ljavassist/compiler/ast/ASTree;
    .end local v9    # "classFollowedByDotSuper":Ljava/lang/String;
    .end local v11    # "nfe":Ljavassist/compiler/NoFieldException;
    :cond_8
    invoke-static {}, Ljavassist/compiler/TypeChecker;->badMethod()V

    .line 718
    .end local v4    # "e":Ljavassist/compiler/ast/Expr;
    .end local v5    # "op":I
    :goto_2
    goto :goto_3

    .line 720
    :cond_9
    invoke-static {}, Ljavassist/compiler/TypeChecker;->fatal()V

    .line 722
    :goto_3
    nop

    .line 723
    invoke-virtual {p0, v1, v0, v3}, Ljavassist/compiler/TypeChecker;->atMethodCallCore(Ljavassist/CtClass;Ljava/lang/String;Ljavassist/compiler/ast/ASTList;)Ljavassist/compiler/MemberResolver$Method;

    move-result-object v4

    .line 724
    .local v4, "minfo":Ljavassist/compiler/MemberResolver$Method;
    invoke-virtual {p1, v4}, Ljavassist/compiler/ast/CallExpr;->setMethod(Ljavassist/compiler/MemberResolver$Method;)V

    .line 725
    return-void
.end method

.method public atCastExpr(Ljavassist/compiler/ast/CastExpr;)V
    .locals 2
    .param p1, "expr"    # Ljavassist/compiler/ast/CastExpr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 571
    invoke-virtual {p1}, Ljavassist/compiler/ast/CastExpr;->getClassName()Ljavassist/compiler/ast/ASTList;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavassist/compiler/TypeChecker;->resolveClassName(Ljavassist/compiler/ast/ASTList;)Ljava/lang/String;

    move-result-object v0

    .line 572
    .local v0, "cname":Ljava/lang/String;
    invoke-virtual {p1}, Ljavassist/compiler/ast/CastExpr;->getOprand()Ljavassist/compiler/ast/ASTree;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 573
    invoke-virtual {p1}, Ljavassist/compiler/ast/CastExpr;->getType()I

    move-result v1

    iput v1, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    .line 574
    invoke-virtual {p1}, Ljavassist/compiler/ast/CastExpr;->getArrayDim()I

    move-result v1

    iput v1, p0, Ljavassist/compiler/TypeChecker;->arrayDim:I

    .line 575
    iput-object v0, p0, Ljavassist/compiler/TypeChecker;->className:Ljava/lang/String;

    .line 576
    return-void
.end method

.method public atClassObject(Ljavassist/compiler/ast/Expr;)V
    .locals 1
    .param p1, "expr"    # Ljavassist/compiler/ast/Expr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 949
    const/16 v0, 0x133

    iput v0, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    .line 950
    const/4 v0, 0x0

    iput v0, p0, Ljavassist/compiler/TypeChecker;->arrayDim:I

    .line 951
    const-string v0, "java/lang/Class"

    iput-object v0, p0, Ljavassist/compiler/TypeChecker;->className:Ljava/lang/String;

    .line 952
    return-void
.end method

.method public atCondExpr(Ljavassist/compiler/ast/CondExpr;)V
    .locals 7
    .param p1, "expr"    # Ljavassist/compiler/ast/CondExpr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 309
    invoke-virtual {p1}, Ljavassist/compiler/ast/CondExpr;->condExpr()Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavassist/compiler/TypeChecker;->booleanExpr(Ljavassist/compiler/ast/ASTree;)V

    .line 310
    invoke-virtual {p1}, Ljavassist/compiler/ast/CondExpr;->thenExpr()Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 311
    iget v0, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    .line 312
    .local v0, "type1":I
    iget v1, p0, Ljavassist/compiler/TypeChecker;->arrayDim:I

    .line 314
    .local v1, "dim1":I
    iget-object v2, p0, Ljavassist/compiler/TypeChecker;->className:Ljava/lang/String;

    .line 315
    .local v2, "cname1":Ljava/lang/String;
    invoke-virtual {p1}, Ljavassist/compiler/ast/CondExpr;->elseExpr()Ljavassist/compiler/ast/ASTree;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 317
    if-nez v1, :cond_1

    iget v3, p0, Ljavassist/compiler/TypeChecker;->arrayDim:I

    if-ne v1, v3, :cond_1

    .line 318
    iget v3, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    invoke-static {v0, v3}, Ljavassist/compiler/CodeGen;->rightIsStrong(II)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 319
    new-instance v3, Ljavassist/compiler/ast/CastExpr;

    iget v5, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    invoke-virtual {p1}, Ljavassist/compiler/ast/CondExpr;->thenExpr()Ljavassist/compiler/ast/ASTree;

    move-result-object v6

    invoke-direct {v3, v5, v4, v6}, Ljavassist/compiler/ast/CastExpr;-><init>(IILjavassist/compiler/ast/ASTree;)V

    invoke-virtual {p1, v3}, Ljavassist/compiler/ast/CondExpr;->setThen(Ljavassist/compiler/ast/ASTree;)V

    goto :goto_0

    .line 320
    :cond_0
    iget v3, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    invoke-static {v3, v0}, Ljavassist/compiler/CodeGen;->rightIsStrong(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 321
    new-instance v3, Ljavassist/compiler/ast/CastExpr;

    invoke-virtual {p1}, Ljavassist/compiler/ast/CondExpr;->elseExpr()Ljavassist/compiler/ast/ASTree;

    move-result-object v5

    invoke-direct {v3, v0, v4, v5}, Ljavassist/compiler/ast/CastExpr;-><init>(IILjavassist/compiler/ast/ASTree;)V

    invoke-virtual {p1, v3}, Ljavassist/compiler/ast/CondExpr;->setElse(Ljavassist/compiler/ast/ASTree;)V

    .line 322
    iput v0, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    .line 324
    :cond_1
    :goto_0
    return-void
.end method

.method public atDoubleConst(Ljavassist/compiler/ast/DoubleConst;)V
    .locals 2
    .param p1, "d"    # Ljavassist/compiler/ast/DoubleConst;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 1072
    const/4 v0, 0x0

    iput v0, p0, Ljavassist/compiler/TypeChecker;->arrayDim:I

    .line 1073
    invoke-virtual {p1}, Ljavassist/compiler/ast/DoubleConst;->getType()I

    move-result v0

    const/16 v1, 0x195

    if-ne v0, v1, :cond_0

    .line 1074
    const/16 v0, 0x138

    iput v0, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    goto :goto_0

    .line 1076
    :cond_0
    const/16 v0, 0x13d

    iput v0, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    .line 1077
    :goto_0
    return-void
.end method

.method public atExpr(Ljavassist/compiler/ast/Expr;)V
    .locals 5
    .param p1, "expr"    # Ljavassist/compiler/ast/Expr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 590
    invoke-virtual {p1}, Ljavassist/compiler/ast/Expr;->getOperator()I

    move-result v0

    .line 591
    .local v0, "token":I
    invoke-virtual {p1}, Ljavassist/compiler/ast/Expr;->oprand1()Ljavassist/compiler/ast/ASTree;

    move-result-object v1

    .line 592
    .local v1, "oprand":Ljavassist/compiler/ast/ASTree;
    const-string v2, "class"

    const/16 v3, 0x2e

    if-ne v0, v3, :cond_2

    .line 593
    invoke-virtual {p1}, Ljavassist/compiler/ast/Expr;->oprand2()Ljavassist/compiler/ast/ASTree;

    move-result-object v3

    check-cast v3, Ljavassist/compiler/ast/Symbol;

    invoke-virtual {v3}, Ljavassist/compiler/ast/Symbol;->get()Ljava/lang/String;

    move-result-object v3

    .line 594
    .local v3, "member":Ljava/lang/String;
    const-string v4, "length"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 596
    :try_start_0
    invoke-virtual {p0, p1}, Ljavassist/compiler/TypeChecker;->atArrayLength(Ljavassist/compiler/ast/Expr;)V
    :try_end_0
    .catch Ljavassist/compiler/NoFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 601
    :goto_0
    goto :goto_1

    .line 598
    :catch_0
    move-exception v2

    .line 600
    .local v2, "nfe":Ljavassist/compiler/NoFieldException;
    invoke-direct {p0, p1}, Ljavassist/compiler/TypeChecker;->atFieldRead(Ljavassist/compiler/ast/ASTree;)V

    .end local v2    # "nfe":Ljavassist/compiler/NoFieldException;
    goto :goto_0

    .line 602
    :cond_0
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 603
    invoke-virtual {p0, p1}, Ljavassist/compiler/TypeChecker;->atClassObject(Ljavassist/compiler/ast/Expr;)V

    goto :goto_1

    .line 605
    :cond_1
    invoke-direct {p0, p1}, Ljavassist/compiler/TypeChecker;->atFieldRead(Ljavassist/compiler/ast/ASTree;)V

    .line 606
    .end local v3    # "member":Ljava/lang/String;
    :goto_1
    goto :goto_4

    .line 607
    :cond_2
    const/16 v3, 0x23

    if-ne v0, v3, :cond_4

    .line 608
    invoke-virtual {p1}, Ljavassist/compiler/ast/Expr;->oprand2()Ljavassist/compiler/ast/ASTree;

    move-result-object v3

    check-cast v3, Ljavassist/compiler/ast/Symbol;

    invoke-virtual {v3}, Ljavassist/compiler/ast/Symbol;->get()Ljava/lang/String;

    move-result-object v3

    .line 609
    .restart local v3    # "member":Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 610
    invoke-virtual {p0, p1}, Ljavassist/compiler/TypeChecker;->atClassObject(Ljavassist/compiler/ast/Expr;)V

    goto :goto_2

    .line 612
    :cond_3
    invoke-direct {p0, p1}, Ljavassist/compiler/TypeChecker;->atFieldRead(Ljavassist/compiler/ast/ASTree;)V

    .line 613
    .end local v3    # "member":Ljava/lang/String;
    :goto_2
    goto :goto_4

    .line 614
    :cond_4
    const/16 v2, 0x41

    if-ne v0, v2, :cond_5

    .line 615
    invoke-virtual {p1}, Ljavassist/compiler/ast/Expr;->oprand2()Ljavassist/compiler/ast/ASTree;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljavassist/compiler/TypeChecker;->atArrayRead(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)V

    goto :goto_4

    .line 616
    :cond_5
    const/16 v2, 0x16a

    if-eq v0, v2, :cond_a

    const/16 v2, 0x16b

    if-ne v0, v2, :cond_6

    goto :goto_3

    .line 618
    :cond_6
    const/16 v2, 0x21

    if-ne v0, v2, :cond_7

    .line 619
    invoke-direct {p0, p1}, Ljavassist/compiler/TypeChecker;->booleanExpr(Ljavassist/compiler/ast/ASTree;)V

    goto :goto_4

    .line 620
    :cond_7
    const/16 v2, 0x43

    if-ne v0, v2, :cond_8

    .line 621
    invoke-static {}, Ljavassist/compiler/TypeChecker;->fatal()V

    goto :goto_4

    .line 623
    :cond_8
    invoke-virtual {v1, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 624
    invoke-direct {p0, p1, v0, v1}, Ljavassist/compiler/TypeChecker;->isConstant(Ljavassist/compiler/ast/Expr;ILjavassist/compiler/ast/ASTree;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 625
    const/16 v2, 0x2d

    if-eq v0, v2, :cond_9

    const/16 v2, 0x7e

    if-ne v0, v2, :cond_b

    .line 626
    :cond_9
    iget v2, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    invoke-static {v2}, Ljavassist/compiler/CodeGen;->isP_INT(I)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 627
    const/16 v2, 0x144

    iput v2, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    goto :goto_4

    .line 617
    :cond_a
    :goto_3
    invoke-direct {p0, v0, v1, p1}, Ljavassist/compiler/TypeChecker;->atPlusPlus(ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/Expr;)V

    .line 629
    :cond_b
    :goto_4
    return-void
.end method

.method protected atFieldAssign(Ljavassist/compiler/ast/Expr;ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)V
    .locals 4
    .param p1, "expr"    # Ljavassist/compiler/ast/Expr;
    .param p2, "op"    # I
    .param p3, "left"    # Ljavassist/compiler/ast/ASTree;
    .param p4, "right"    # Ljavassist/compiler/ast/ASTree;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 296
    invoke-virtual {p0, p3}, Ljavassist/compiler/TypeChecker;->fieldAccess(Ljavassist/compiler/ast/ASTree;)Ljavassist/CtField;

    move-result-object v0

    .line 297
    .local v0, "f":Ljavassist/CtField;
    invoke-direct {p0, v0}, Ljavassist/compiler/TypeChecker;->atFieldRead(Ljavassist/CtField;)V

    .line 298
    iget v1, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    .line 299
    .local v1, "fType":I
    iget v2, p0, Ljavassist/compiler/TypeChecker;->arrayDim:I

    .line 300
    .local v2, "fDim":I
    iget-object v3, p0, Ljavassist/compiler/TypeChecker;->className:Ljava/lang/String;

    .line 301
    .local v3, "cname":Ljava/lang/String;
    invoke-virtual {p4, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 302
    iput v1, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    .line 303
    iput v2, p0, Ljavassist/compiler/TypeChecker;->arrayDim:I

    .line 304
    iput-object v3, p0, Ljavassist/compiler/TypeChecker;->className:Ljava/lang/String;

    .line 305
    return-void
.end method

.method protected atFieldPlusPlus(Ljavassist/compiler/ast/ASTree;)V
    .locals 4
    .param p1, "oprand"    # Ljavassist/compiler/ast/ASTree;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 1008
    invoke-virtual {p0, p1}, Ljavassist/compiler/TypeChecker;->fieldAccess(Ljavassist/compiler/ast/ASTree;)Ljavassist/CtField;

    move-result-object v0

    .line 1009
    .local v0, "f":Ljavassist/CtField;
    invoke-direct {p0, v0}, Ljavassist/compiler/TypeChecker;->atFieldRead(Ljavassist/CtField;)V

    .line 1010
    iget v1, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    .line 1011
    .local v1, "t":I
    const/16 v2, 0x144

    if-eq v1, v2, :cond_0

    const/16 v3, 0x12f

    if-eq v1, v3, :cond_0

    const/16 v3, 0x132

    if-eq v1, v3, :cond_0

    const/16 v3, 0x14e

    if-ne v1, v3, :cond_1

    .line 1012
    :cond_0
    iput v2, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    .line 1013
    :cond_1
    return-void
.end method

.method public atInstanceOfExpr(Ljavassist/compiler/ast/InstanceOfExpr;)V
    .locals 1
    .param p1, "expr"    # Ljavassist/compiler/ast/InstanceOfExpr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 580
    invoke-virtual {p1}, Ljavassist/compiler/ast/InstanceOfExpr;->getOprand()Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 581
    const/16 v0, 0x12d

    iput v0, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    .line 582
    const/4 v0, 0x0

    iput v0, p0, Ljavassist/compiler/TypeChecker;->arrayDim:I

    .line 583
    return-void
.end method

.method public atIntConst(Ljavassist/compiler/ast/IntConst;)V
    .locals 3
    .param p1, "i"    # Ljavassist/compiler/ast/IntConst;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 1062
    const/4 v0, 0x0

    iput v0, p0, Ljavassist/compiler/TypeChecker;->arrayDim:I

    .line 1063
    invoke-virtual {p1}, Ljavassist/compiler/ast/IntConst;->getType()I

    move-result v0

    .line 1064
    .local v0, "type":I
    const/16 v1, 0x192

    if-eq v0, v1, :cond_1

    const/16 v2, 0x191

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 1067
    :cond_0
    const/16 v1, 0x146

    iput v1, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    goto :goto_2

    .line 1065
    :cond_1
    :goto_0
    if-ne v0, v1, :cond_2

    const/16 v1, 0x144

    goto :goto_1

    :cond_2
    const/16 v1, 0x132

    :goto_1
    iput v1, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    .line 1068
    :goto_2
    return-void
.end method

.method public atKeyword(Ljavassist/compiler/ast/Keyword;)V
    .locals 2
    .param p1, "k"    # Ljavassist/compiler/ast/Keyword;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 1030
    const/4 v0, 0x0

    iput v0, p0, Ljavassist/compiler/TypeChecker;->arrayDim:I

    .line 1031
    invoke-virtual {p1}, Ljavassist/compiler/ast/Keyword;->get()I

    move-result v0

    .line 1032
    .local v0, "token":I
    sparse-switch v0, :sswitch_data_0

    .line 1049
    invoke-static {}, Ljavassist/compiler/TypeChecker;->fatal()V

    goto :goto_0

    .line 1038
    :sswitch_0
    const/16 v1, 0x19c

    iput v1, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    .line 1039
    goto :goto_0

    .line 1035
    :sswitch_1
    const/16 v1, 0x12d

    iput v1, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    .line 1036
    goto :goto_0

    .line 1042
    :sswitch_2
    const/16 v1, 0x133

    iput v1, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    .line 1043
    const/16 v1, 0x153

    if-ne v0, v1, :cond_0

    .line 1044
    invoke-virtual {p0}, Ljavassist/compiler/TypeChecker;->getThisName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljavassist/compiler/TypeChecker;->className:Ljava/lang/String;

    goto :goto_0

    .line 1046
    :cond_0
    invoke-virtual {p0}, Ljavassist/compiler/TypeChecker;->getSuperName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljavassist/compiler/TypeChecker;->className:Ljava/lang/String;

    .line 1047
    nop

    .line 1051
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x150 -> :sswitch_2
        0x153 -> :sswitch_2
        0x19a -> :sswitch_1
        0x19b -> :sswitch_1
        0x19c -> :sswitch_0
    .end sparse-switch
.end method

.method public atMember(Ljavassist/compiler/ast/Member;)V
    .locals 0
    .param p1, "mem"    # Ljavassist/compiler/ast/Member;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 1017
    invoke-direct {p0, p1}, Ljavassist/compiler/TypeChecker;->atFieldRead(Ljavassist/compiler/ast/ASTree;)V

    .line 1018
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

    .line 791
    const/4 v0, 0x0

    .line 792
    .local v0, "i":I
    :goto_0
    if-eqz p1, :cond_0

    .line 793
    invoke-virtual {p1}, Ljavassist/compiler/ast/ASTList;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object v1

    .line 794
    .local v1, "a":Ljavassist/compiler/ast/ASTree;
    invoke-virtual {v1, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 795
    iget v2, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    aput v2, p2, v0

    .line 796
    iget v2, p0, Ljavassist/compiler/TypeChecker;->arrayDim:I

    aput v2, p3, v0

    .line 797
    iget-object v2, p0, Ljavassist/compiler/TypeChecker;->className:Ljava/lang/String;

    aput-object v2, p4, v0

    .line 798
    add-int/lit8 v0, v0, 0x1

    .line 799
    invoke-virtual {p1}, Ljavassist/compiler/ast/ASTList;->tail()Ljavassist/compiler/ast/ASTList;

    move-result-object p1

    .line 800
    .end local v1    # "a":Ljavassist/compiler/ast/ASTree;
    goto :goto_0

    .line 801
    :cond_0
    return-void
.end method

.method public atMethodCallCore(Ljavassist/CtClass;Ljava/lang/String;Ljavassist/compiler/ast/ASTList;)Ljavassist/compiler/MemberResolver$Method;
    .locals 12
    .param p1, "targetClass"    # Ljavassist/CtClass;
    .param p2, "mname"    # Ljava/lang/String;
    .param p3, "args"    # Ljavassist/compiler/ast/ASTList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 759
    invoke-virtual {p0, p3}, Ljavassist/compiler/TypeChecker;->getMethodArgsLength(Ljavassist/compiler/ast/ASTList;)I

    move-result v0

    .line 760
    .local v0, "nargs":I
    new-array v9, v0, [I

    .line 761
    .local v9, "types":[I
    new-array v10, v0, [I

    .line 762
    .local v10, "dims":[I
    new-array v11, v0, [Ljava/lang/String;

    .line 763
    .local v11, "cnames":[Ljava/lang/String;
    invoke-virtual {p0, p3, v9, v10, v11}, Ljavassist/compiler/TypeChecker;->atMethodArgs(Ljavassist/compiler/ast/ASTList;[I[I[Ljava/lang/String;)V

    .line 765
    iget-object v1, p0, Ljavassist/compiler/TypeChecker;->resolver:Ljavassist/compiler/MemberResolver;

    iget-object v3, p0, Ljavassist/compiler/TypeChecker;->thisClass:Ljavassist/CtClass;

    iget-object v4, p0, Ljavassist/compiler/TypeChecker;->thisMethod:Ljavassist/bytecode/MethodInfo;

    .line 766
    move-object v2, p1

    move-object v5, p2

    move-object v6, v9

    move-object v7, v10

    move-object v8, v11

    invoke-virtual/range {v1 .. v8}, Ljavassist/compiler/MemberResolver;->lookupMethod(Ljavassist/CtClass;Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;Ljava/lang/String;[I[I[Ljava/lang/String;)Ljavassist/compiler/MemberResolver$Method;

    move-result-object v1

    .line 768
    .local v1, "found":Ljavassist/compiler/MemberResolver$Method;
    if-nez v1, :cond_1

    .line 769
    invoke-virtual {p1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v2

    .line 770
    .local v2, "clazz":Ljava/lang/String;
    invoke-static {v9, v10, v11}, Ljavassist/compiler/TypeChecker;->argTypesToString([I[I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 772
    .local v3, "signature":Ljava/lang/String;
    const-string v4, "<init>"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 773
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cannot find constructor "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .local v4, "msg":Ljava/lang/String;
    goto :goto_0

    .line 775
    .end local v4    # "msg":Ljava/lang/String;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not found in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 777
    .restart local v4    # "msg":Ljava/lang/String;
    :goto_0
    new-instance v5, Ljavassist/compiler/CompileError;

    invoke-direct {v5, v4}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v5

    .line 780
    .end local v2    # "clazz":Ljava/lang/String;
    .end local v3    # "signature":Ljava/lang/String;
    .end local v4    # "msg":Ljava/lang/String;
    :cond_1
    iget-object v2, v1, Ljavassist/compiler/MemberResolver$Method;->info:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {v2}, Ljavassist/bytecode/MethodInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v2

    .line 781
    .local v2, "desc":Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljavassist/compiler/TypeChecker;->setReturnType(Ljava/lang/String;)V

    .line 782
    return-object v1
.end method

.method protected atMultiNewArray(ILjavassist/compiler/ast/ASTList;Ljavassist/compiler/ast/ASTList;)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "classname"    # Ljavassist/compiler/ast/ASTList;
    .param p3, "size"    # Ljavassist/compiler/ast/ASTList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 218
    invoke-virtual {p3}, Ljavassist/compiler/ast/ASTList;->length()I

    move-result v0

    .line 219
    .local v0, "dim":I
    const/4 v1, 0x0

    .local v1, "count":I
    :goto_0
    if-eqz p3, :cond_1

    .line 220
    invoke-virtual {p3}, Ljavassist/compiler/ast/ASTList;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object v2

    .line 221
    .local v2, "s":Ljavassist/compiler/ast/ASTree;
    if-nez v2, :cond_0

    .line 222
    goto :goto_1

    .line 224
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 225
    invoke-virtual {v2, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 219
    .end local v2    # "s":Ljavassist/compiler/ast/ASTree;
    invoke-virtual {p3}, Ljavassist/compiler/ast/ASTList;->tail()Ljavassist/compiler/ast/ASTList;

    move-result-object p3

    goto :goto_0

    .line 228
    :cond_1
    :goto_1
    iput p1, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    .line 229
    iput v0, p0, Ljavassist/compiler/TypeChecker;->arrayDim:I

    .line 230
    const/16 v2, 0x133

    if-ne p1, v2, :cond_2

    .line 231
    invoke-virtual {p0, p2}, Ljavassist/compiler/TypeChecker;->resolveClassName(Ljavassist/compiler/ast/ASTList;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljavassist/compiler/TypeChecker;->className:Ljava/lang/String;

    goto :goto_2

    .line 233
    :cond_2
    const/4 v2, 0x0

    iput-object v2, p0, Ljavassist/compiler/TypeChecker;->className:Ljava/lang/String;

    .line 234
    :goto_2
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

    .line 179
    invoke-virtual {p1}, Ljavassist/compiler/ast/NewExpr;->getArrayType()I

    move-result v0

    .line 180
    .local v0, "type":I
    invoke-virtual {p1}, Ljavassist/compiler/ast/NewExpr;->getArraySize()Ljavassist/compiler/ast/ASTList;

    move-result-object v1

    .line 181
    .local v1, "size":Ljavassist/compiler/ast/ASTList;
    invoke-virtual {p1}, Ljavassist/compiler/ast/NewExpr;->getClassName()Ljavassist/compiler/ast/ASTList;

    move-result-object v2

    .line 182
    .local v2, "classname":Ljavassist/compiler/ast/ASTList;
    invoke-virtual {p1}, Ljavassist/compiler/ast/NewExpr;->getInitializer()Ljavassist/compiler/ast/ArrayInit;

    move-result-object v3

    .line 183
    .local v3, "init":Ljavassist/compiler/ast/ASTree;
    if-eqz v3, :cond_0

    .line 184
    invoke-virtual {v3, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 186
    :cond_0
    invoke-virtual {v1}, Ljavassist/compiler/ast/ASTList;->length()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    .line 187
    invoke-virtual {p0, v0, v2, v1}, Ljavassist/compiler/TypeChecker;->atMultiNewArray(ILjavassist/compiler/ast/ASTList;Ljavassist/compiler/ast/ASTList;)V

    goto :goto_0

    .line 189
    :cond_1
    invoke-virtual {v1}, Ljavassist/compiler/ast/ASTList;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object v4

    .line 190
    .local v4, "sizeExpr":Ljavassist/compiler/ast/ASTree;
    if-eqz v4, :cond_2

    .line 191
    invoke-virtual {v4, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 193
    :cond_2
    iput v0, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    .line 194
    iput v5, p0, Ljavassist/compiler/TypeChecker;->arrayDim:I

    .line 195
    const/16 v5, 0x133

    if-ne v0, v5, :cond_3

    .line 196
    invoke-virtual {p0, v2}, Ljavassist/compiler/TypeChecker;->resolveClassName(Ljavassist/compiler/ast/ASTList;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Ljavassist/compiler/TypeChecker;->className:Ljava/lang/String;

    goto :goto_0

    .line 198
    :cond_3
    const/4 v5, 0x0

    iput-object v5, p0, Ljavassist/compiler/TypeChecker;->className:Ljava/lang/String;

    .line 200
    .end local v4    # "sizeExpr":Ljavassist/compiler/ast/ASTree;
    :goto_0
    return-void
.end method

.method public atNewExpr(Ljavassist/compiler/ast/NewExpr;)V
    .locals 4
    .param p1, "expr"    # Ljavassist/compiler/ast/NewExpr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 165
    invoke-virtual {p1}, Ljavassist/compiler/ast/NewExpr;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {p0, p1}, Ljavassist/compiler/TypeChecker;->atNewArrayExpr(Ljavassist/compiler/ast/NewExpr;)V

    goto :goto_0

    .line 168
    :cond_0
    iget-object v0, p0, Ljavassist/compiler/TypeChecker;->resolver:Ljavassist/compiler/MemberResolver;

    invoke-virtual {p1}, Ljavassist/compiler/ast/NewExpr;->getClassName()Ljavassist/compiler/ast/ASTList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavassist/compiler/MemberResolver;->lookupClassByName(Ljavassist/compiler/ast/ASTList;)Ljavassist/CtClass;

    move-result-object v0

    .line 169
    .local v0, "clazz":Ljavassist/CtClass;
    invoke-virtual {v0}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v1

    .line 170
    .local v1, "cname":Ljava/lang/String;
    invoke-virtual {p1}, Ljavassist/compiler/ast/NewExpr;->getArguments()Ljavassist/compiler/ast/ASTList;

    move-result-object v2

    .line 171
    .local v2, "args":Ljavassist/compiler/ast/ASTList;
    const-string v3, "<init>"

    invoke-virtual {p0, v0, v3, v2}, Ljavassist/compiler/TypeChecker;->atMethodCallCore(Ljavassist/CtClass;Ljava/lang/String;Ljavassist/compiler/ast/ASTList;)Ljavassist/compiler/MemberResolver$Method;

    .line 172
    const/16 v3, 0x133

    iput v3, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    .line 173
    const/4 v3, 0x0

    iput v3, p0, Ljavassist/compiler/TypeChecker;->arrayDim:I

    .line 174
    invoke-static {v1}, Ljavassist/compiler/MemberResolver;->javaToJvmName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ljavassist/compiler/TypeChecker;->className:Ljava/lang/String;

    .line 176
    .end local v0    # "clazz":Ljavassist/CtClass;
    .end local v1    # "cname":Ljava/lang/String;
    .end local v2    # "args":Ljavassist/compiler/ast/ASTList;
    :goto_0
    return-void
.end method

.method public atStringL(Ljavassist/compiler/ast/StringL;)V
    .locals 1
    .param p1, "s"    # Ljavassist/compiler/ast/StringL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 1055
    const/16 v0, 0x133

    iput v0, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    .line 1056
    const/4 v0, 0x0

    iput v0, p0, Ljavassist/compiler/TypeChecker;->arrayDim:I

    .line 1057
    const-string v0, "java/lang/String"

    iput-object v0, p0, Ljavassist/compiler/TypeChecker;->className:Ljava/lang/String;

    .line 1058
    return-void
.end method

.method public atVariable(Ljavassist/compiler/ast/Variable;)V
    .locals 2
    .param p1, "v"    # Ljavassist/compiler/ast/Variable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 1022
    invoke-virtual {p1}, Ljavassist/compiler/ast/Variable;->getDeclarator()Ljavassist/compiler/ast/Declarator;

    move-result-object v0

    .line 1023
    .local v0, "d":Ljavassist/compiler/ast/Declarator;
    invoke-virtual {v0}, Ljavassist/compiler/ast/Declarator;->getType()I

    move-result v1

    iput v1, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    .line 1024
    invoke-virtual {v0}, Ljavassist/compiler/ast/Declarator;->getArrayDim()I

    move-result v1

    iput v1, p0, Ljavassist/compiler/TypeChecker;->arrayDim:I

    .line 1025
    invoke-virtual {v0}, Ljavassist/compiler/ast/Declarator;->getClassName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljavassist/compiler/TypeChecker;->className:Ljava/lang/String;

    .line 1026
    return-void
.end method

.method protected fieldAccess(Ljavassist/compiler/ast/ASTree;)Ljavassist/CtField;
    .locals 6
    .param p1, "expr"    # Ljavassist/compiler/ast/ASTree;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 861
    instance-of v0, p1, Ljavassist/compiler/ast/Member;

    if-eqz v0, :cond_1

    .line 862
    move-object v0, p1

    check-cast v0, Ljavassist/compiler/ast/Member;

    .line 863
    .local v0, "mem":Ljavassist/compiler/ast/Member;
    invoke-virtual {v0}, Ljavassist/compiler/ast/Member;->get()Ljava/lang/String;

    move-result-object v1

    .line 865
    .local v1, "name":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Ljavassist/compiler/TypeChecker;->thisClass:Ljavassist/CtClass;

    invoke-virtual {v2, v1}, Ljavassist/CtClass;->getField(Ljava/lang/String;)Ljavassist/CtField;

    move-result-object v2

    .line 866
    .local v2, "f":Ljavassist/CtField;
    invoke-virtual {v2}, Ljavassist/CtField;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljavassist/Modifier;->isStatic(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 867
    invoke-virtual {v0, v2}, Ljavassist/compiler/ast/Member;->setField(Ljavassist/CtField;)V
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 869
    :cond_0
    return-object v2

    .line 871
    .end local v2    # "f":Ljavassist/CtField;
    :catch_0
    move-exception v2

    .line 873
    .local v2, "e":Ljavassist/NotFoundException;
    new-instance v3, Ljavassist/compiler/NoFieldException;

    invoke-direct {v3, v1, p1}, Ljavassist/compiler/NoFieldException;-><init>(Ljava/lang/String;Ljavassist/compiler/ast/ASTree;)V

    throw v3

    .line 876
    .end local v0    # "mem":Ljavassist/compiler/ast/Member;
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "e":Ljavassist/NotFoundException;
    :cond_1
    instance-of v0, p1, Ljavassist/compiler/ast/Expr;

    if-eqz v0, :cond_6

    .line 877
    move-object v0, p1

    check-cast v0, Ljavassist/compiler/ast/Expr;

    .line 878
    .local v0, "e":Ljavassist/compiler/ast/Expr;
    invoke-virtual {v0}, Ljavassist/compiler/ast/Expr;->getOperator()I

    move-result v1

    .line 879
    .local v1, "op":I
    const/16 v2, 0x23

    if-ne v1, v2, :cond_2

    .line 880
    invoke-virtual {v0}, Ljavassist/compiler/ast/Expr;->oprand2()Ljavassist/compiler/ast/ASTree;

    move-result-object v2

    check-cast v2, Ljavassist/compiler/ast/Member;

    .line 881
    .local v2, "mem":Ljavassist/compiler/ast/Member;
    iget-object v3, p0, Ljavassist/compiler/TypeChecker;->resolver:Ljavassist/compiler/MemberResolver;

    .line 882
    invoke-virtual {v0}, Ljavassist/compiler/ast/Expr;->oprand1()Ljavassist/compiler/ast/ASTree;

    move-result-object v4

    check-cast v4, Ljavassist/compiler/ast/Symbol;

    invoke-virtual {v4}, Ljavassist/compiler/ast/Symbol;->get()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljavassist/compiler/MemberResolver;->lookupField(Ljava/lang/String;Ljavassist/compiler/ast/Symbol;)Ljavassist/CtField;

    move-result-object v3

    .line 883
    .local v3, "f":Ljavassist/CtField;
    invoke-virtual {v2, v3}, Ljavassist/compiler/ast/Member;->setField(Ljavassist/CtField;)V

    .line 884
    return-object v3

    .line 886
    .end local v2    # "mem":Ljavassist/compiler/ast/Member;
    .end local v3    # "f":Ljavassist/CtField;
    :cond_2
    const/16 v2, 0x2e

    if-ne v1, v2, :cond_6

    .line 888
    :try_start_1
    invoke-virtual {v0}, Ljavassist/compiler/ast/Expr;->oprand1()Ljavassist/compiler/ast/ASTree;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V
    :try_end_1
    .catch Ljavassist/compiler/NoFieldException; {:try_start_1 .. :try_end_1} :catch_2

    .line 899
    nop

    .line 901
    const/4 v2, 0x0

    .line 903
    .local v2, "err":Ljavassist/compiler/CompileError;
    :try_start_2
    iget v3, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    const/16 v4, 0x133

    if-ne v3, v4, :cond_3

    iget v3, p0, Ljavassist/compiler/TypeChecker;->arrayDim:I

    if-nez v3, :cond_3

    .line 904
    iget-object v3, p0, Ljavassist/compiler/TypeChecker;->resolver:Ljavassist/compiler/MemberResolver;

    iget-object v4, p0, Ljavassist/compiler/TypeChecker;->className:Ljava/lang/String;

    .line 905
    invoke-virtual {v0}, Ljavassist/compiler/ast/Expr;->oprand2()Ljavassist/compiler/ast/ASTree;

    move-result-object v5

    check-cast v5, Ljavassist/compiler/ast/Symbol;

    .line 904
    invoke-virtual {v3, v4, v5}, Ljavassist/compiler/MemberResolver;->lookupFieldByJvmName(Ljava/lang/String;Ljavassist/compiler/ast/Symbol;)Ljavassist/CtField;

    move-result-object v3
    :try_end_2
    .catch Ljavassist/compiler/CompileError; {:try_start_2 .. :try_end_2} :catch_1

    return-object v3

    .line 909
    :cond_3
    goto :goto_0

    .line 907
    :catch_1
    move-exception v3

    .line 908
    .local v3, "ce":Ljavassist/compiler/CompileError;
    move-object v2, v3

    .line 927
    .end local v3    # "ce":Ljavassist/compiler/CompileError;
    :goto_0
    invoke-virtual {v0}, Ljavassist/compiler/ast/Expr;->oprand1()Ljavassist/compiler/ast/ASTree;

    move-result-object v3

    .line 928
    .local v3, "oprnd1":Ljavassist/compiler/ast/ASTree;
    instance-of v4, v3, Ljavassist/compiler/ast/Symbol;

    if-eqz v4, :cond_4

    .line 929
    move-object v4, v3

    check-cast v4, Ljavassist/compiler/ast/Symbol;

    invoke-virtual {v4}, Ljavassist/compiler/ast/Symbol;->get()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Ljavassist/compiler/TypeChecker;->fieldAccess2(Ljavassist/compiler/ast/Expr;Ljava/lang/String;)Ljavassist/CtField;

    move-result-object v4

    return-object v4

    .line 931
    :cond_4
    if-eqz v2, :cond_6

    .line 932
    throw v2

    .line 890
    .end local v2    # "err":Ljavassist/compiler/CompileError;
    .end local v3    # "oprnd1":Ljavassist/compiler/ast/ASTree;
    :catch_2
    move-exception v2

    .line 891
    .local v2, "nfe":Ljavassist/compiler/NoFieldException;
    invoke-virtual {v2}, Ljavassist/compiler/NoFieldException;->getExpr()Ljavassist/compiler/ast/ASTree;

    move-result-object v3

    invoke-virtual {v0}, Ljavassist/compiler/ast/Expr;->oprand1()Ljavassist/compiler/ast/ASTree;

    move-result-object v4

    if-ne v3, v4, :cond_5

    .line 898
    invoke-virtual {v2}, Ljavassist/compiler/NoFieldException;->getField()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Ljavassist/compiler/TypeChecker;->fieldAccess2(Ljavassist/compiler/ast/Expr;Ljava/lang/String;)Ljavassist/CtField;

    move-result-object v3

    return-object v3

    .line 892
    :cond_5
    throw v2

    .line 936
    .end local v0    # "e":Ljavassist/compiler/ast/Expr;
    .end local v1    # "op":I
    .end local v2    # "nfe":Ljavassist/compiler/NoFieldException;
    :cond_6
    new-instance v0, Ljavassist/compiler/CompileError;

    const-string v1, "bad filed access"

    invoke-direct {v0, v1}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMethodArgsLength(Ljavassist/compiler/ast/ASTList;)I
    .locals 1
    .param p1, "args"    # Ljavassist/compiler/ast/ASTList;

    .line 786
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

    .line 143
    iget-object v0, p0, Ljavassist/compiler/TypeChecker;->thisClass:Ljavassist/CtClass;

    .line 144
    invoke-static {v0}, Ljavassist/compiler/MemberResolver;->getSuperclass(Ljavassist/CtClass;)Ljavassist/CtClass;

    move-result-object v0

    invoke-virtual {v0}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v0

    .line 143
    invoke-static {v0}, Ljavassist/compiler/MemberResolver;->javaToJvmName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getThisName()Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Ljavassist/compiler/TypeChecker;->thisClass:Ljavassist/CtClass;

    invoke-virtual {v0}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavassist/compiler/MemberResolver;->javaToJvmName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected resolveClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "jvmName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 160
    iget-object v0, p0, Ljavassist/compiler/TypeChecker;->resolver:Ljavassist/compiler/MemberResolver;

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

    .line 153
    iget-object v0, p0, Ljavassist/compiler/TypeChecker;->resolver:Ljavassist/compiler/MemberResolver;

    invoke-virtual {v0, p1}, Ljavassist/compiler/MemberResolver;->resolveClassName(Ljavassist/compiler/ast/ASTList;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method setReturnType(Ljava/lang/String;)V
    .locals 5
    .param p1, "desc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 804
    const/16 v0, 0x29

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 805
    .local v0, "i":I
    if-gez v0, :cond_0

    .line 806
    invoke-static {}, Ljavassist/compiler/TypeChecker;->badMethod()V

    .line 808
    :cond_0
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 809
    .local v1, "c":C
    const/4 v2, 0x0

    .line 810
    .local v2, "dim":I
    :goto_0
    const/16 v3, 0x5b

    if-ne v1, v3, :cond_1

    .line 811
    add-int/lit8 v2, v2, 0x1

    .line 812
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_0

    .line 815
    :cond_1
    iput v2, p0, Ljavassist/compiler/TypeChecker;->arrayDim:I

    .line 816
    const/16 v3, 0x4c

    if-ne v1, v3, :cond_3

    .line 817
    const/16 v3, 0x3b

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 818
    .local v3, "j":I
    if-gez v3, :cond_2

    .line 819
    invoke-static {}, Ljavassist/compiler/TypeChecker;->badMethod()V

    .line 821
    :cond_2
    const/16 v4, 0x133

    iput v4, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    .line 822
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Ljavassist/compiler/TypeChecker;->className:Ljava/lang/String;

    .line 823
    .end local v3    # "j":I
    goto :goto_1

    .line 825
    :cond_3
    invoke-static {v1}, Ljavassist/compiler/MemberResolver;->descToType(C)I

    move-result v3

    iput v3, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    .line 826
    const/4 v3, 0x0

    iput-object v3, p0, Ljavassist/compiler/TypeChecker;->className:Ljava/lang/String;

    .line 828
    :goto_1
    return-void
.end method

.method public setThisMethod(Ljavassist/bytecode/MethodInfo;)V
    .locals 0
    .param p1, "m"    # Ljavassist/bytecode/MethodInfo;

    .line 125
    iput-object p1, p0, Ljavassist/compiler/TypeChecker;->thisMethod:Ljavassist/bytecode/MethodInfo;

    .line 126
    return-void
.end method
