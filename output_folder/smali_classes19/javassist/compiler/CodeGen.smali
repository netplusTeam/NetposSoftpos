.class public abstract Ljavassist/compiler/CodeGen;
.super Ljavassist/compiler/ast/Visitor;
.source "CodeGen.java"

# interfaces
.implements Ljavassist/bytecode/Opcode;
.implements Ljavassist/compiler/TokenId;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavassist/compiler/CodeGen$ReturnHook;
    }
.end annotation


# static fields
.field private static final P_DOUBLE:I = 0x0

.field private static final P_FLOAT:I = 0x1

.field private static final P_INT:I = 0x3

.field private static final P_LONG:I = 0x2

.field private static final P_OTHER:I = -0x1

.field static final binOp:[I

.field private static final castOp:[I

.field private static final ifOp:[I

.field private static final ifOp2:[I

.field static final javaLangObject:Ljava/lang/String; = "java.lang.Object"

.field static final javaLangString:Ljava/lang/String; = "java.lang.String"

.field static final jvmJavaLangObject:Ljava/lang/String; = "java/lang/Object"

.field static final jvmJavaLangString:Ljava/lang/String; = "java/lang/String"


# instance fields
.field protected arrayDim:I

.field protected breakList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected bytecode:Ljavassist/bytecode/Bytecode;

.field protected className:Ljava/lang/String;

.field protected continueList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected exprType:I

.field protected hasReturned:Z

.field public inStaticMethod:Z

.field protected returnHooks:Ljavassist/compiler/CodeGen$ReturnHook;

.field private tempVar:I

.field typeChecker:Ljavassist/compiler/TypeChecker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1034
    const/16 v0, 0x37

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Ljavassist/compiler/CodeGen;->binOp:[I

    .line 1292
    const/16 v0, 0x12

    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Ljavassist/compiler/CodeGen;->ifOp:[I

    .line 1299
    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Ljavassist/compiler/CodeGen;->ifOp2:[I

    .line 1405
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Ljavassist/compiler/CodeGen;->castOp:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x2b
        0x63
        0x62
        0x61
        0x60
        0x2d
        0x67
        0x66
        0x65
        0x64
        0x2a
        0x6b
        0x6a
        0x69
        0x68
        0x2f
        0x6f
        0x6e
        0x6d
        0x6c
        0x25
        0x73
        0x72
        0x71
        0x70
        0x7c
        0x0
        0x0
        0x81
        0x80
        0x5e
        0x0
        0x0
        0x83
        0x82
        0x26
        0x0
        0x0
        0x7f
        0x7e
        0x16c
        0x0
        0x0
        0x79
        0x78
        0x16e
        0x0
        0x0
        0x7b
        0x7a
        0x172
        0x0
        0x0
        0x7d
        0x7c
    .end array-data

    :array_1
    .array-data 4
        0x166
        0x9f
        0xa0
        0x15e
        0xa0
        0x9f
        0x165
        0xa4
        0xa3
        0x167
        0xa2
        0xa1
        0x3c
        0xa1
        0xa2
        0x3e
        0xa3
        0xa4
    .end array-data

    :array_2
    .array-data 4
        0x166
        0x99
        0x9a
        0x15e
        0x9a
        0x99
        0x165
        0x9e
        0x9d
        0x167
        0x9c
        0x9b
        0x3c
        0x9b
        0x9c
        0x3e
        0x9d
        0x9e
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x90
        0x8f
        0x8e
        0x8d
        0x0
        0x8c
        0x8b
        0x8a
        0x89
        0x0
        0x88
        0x87
        0x86
        0x85
        0x0
    .end array-data
.end method

.method public constructor <init>(Ljavassist/bytecode/Bytecode;)V
    .locals 2
    .param p1, "b"    # Ljavassist/bytecode/Bytecode;

    .line 109
    invoke-direct {p0}, Ljavassist/compiler/ast/Visitor;-><init>()V

    .line 110
    iput-object p1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    .line 111
    const/4 v0, -0x1

    iput v0, p0, Ljavassist/compiler/CodeGen;->tempVar:I

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Ljavassist/compiler/CodeGen;->typeChecker:Ljavassist/compiler/TypeChecker;

    .line 113
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljavassist/compiler/CodeGen;->hasReturned:Z

    .line 114
    iput-boolean v1, p0, Ljavassist/compiler/CodeGen;->inStaticMethod:Z

    .line 115
    iput-object v0, p0, Ljavassist/compiler/CodeGen;->breakList:Ljava/util/List;

    .line 116
    iput-object v0, p0, Ljavassist/compiler/CodeGen;->continueList:Ljava/util/List;

    .line 117
    iput-object v0, p0, Ljavassist/compiler/CodeGen;->returnHooks:Ljavassist/compiler/CodeGen$ReturnHook;

    .line 118
    return-void
.end method

.method private atArithBinExpr(Ljavassist/compiler/ast/Expr;III)V
    .locals 6
    .param p1, "expr"    # Ljavassist/compiler/ast/Expr;
    .param p2, "token"    # I
    .param p3, "index"    # I
    .param p4, "type1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 1104
    iget v0, p0, Ljavassist/compiler/CodeGen;->arrayDim:I

    if-eqz v0, :cond_0

    .line 1105
    invoke-static {p1}, Ljavassist/compiler/CodeGen;->badTypes(Ljavassist/compiler/ast/Expr;)V

    .line 1107
    :cond_0
    iget v0, p0, Ljavassist/compiler/CodeGen;->exprType:I

    .line 1108
    .local v0, "type2":I
    const/16 v1, 0x16c

    const/16 v2, 0x144

    if-eq p2, v1, :cond_2

    const/16 v1, 0x16e

    if-eq p2, v1, :cond_2

    const/16 v1, 0x172

    if-ne p2, v1, :cond_1

    goto :goto_0

    .line 1115
    :cond_1
    invoke-direct {p0, p4, v0, p1}, Ljavassist/compiler/CodeGen;->convertOprandTypes(IILjavassist/compiler/ast/Expr;)V

    goto :goto_2

    .line 1109
    :cond_2
    :goto_0
    if-eq v0, v2, :cond_4

    const/16 v1, 0x14e

    if-eq v0, v1, :cond_4

    const/16 v1, 0x132

    if-eq v0, v1, :cond_4

    const/16 v1, 0x12f

    if-ne v0, v1, :cond_3

    goto :goto_1

    .line 1113
    :cond_3
    invoke-static {p1}, Ljavassist/compiler/CodeGen;->badTypes(Ljavassist/compiler/ast/Expr;)V

    goto :goto_2

    .line 1111
    :cond_4
    :goto_1
    iput p4, p0, Ljavassist/compiler/CodeGen;->exprType:I

    .line 1117
    :goto_2
    iget v1, p0, Ljavassist/compiler/CodeGen;->exprType:I

    invoke-static {v1}, Ljavassist/compiler/CodeGen;->typePrecedence(I)I

    move-result v1

    .line 1118
    .local v1, "p":I
    if-ltz v1, :cond_6

    .line 1119
    sget-object v3, Ljavassist/compiler/CodeGen;->binOp:[I

    add-int v4, p3, v1

    add-int/lit8 v4, v4, 0x1

    aget v3, v3, v4

    .line 1120
    .local v3, "op":I
    if-eqz v3, :cond_6

    .line 1121
    const/4 v4, 0x3

    if-ne v1, v4, :cond_5

    iget v4, p0, Ljavassist/compiler/CodeGen;->exprType:I

    const/16 v5, 0x12d

    if-eq v4, v5, :cond_5

    .line 1122
    iput v2, p0, Ljavassist/compiler/CodeGen;->exprType:I

    .line 1124
    :cond_5
    iget-object v2, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v2, v3}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1125
    return-void

    .line 1129
    .end local v3    # "op":I
    :cond_6
    invoke-static {p1}, Ljavassist/compiler/CodeGen;->badTypes(Ljavassist/compiler/ast/Expr;)V

    .line 1130
    return-void
.end method

.method private atArrayAssign(Ljavassist/compiler/ast/Expr;ILjavassist/compiler/ast/Expr;Ljavassist/compiler/ast/ASTree;Z)V
    .locals 10
    .param p1, "expr"    # Ljavassist/compiler/ast/Expr;
    .param p2, "op"    # I
    .param p3, "array"    # Ljavassist/compiler/ast/Expr;
    .param p4, "right"    # Ljavassist/compiler/ast/ASTree;
    .param p5, "doDup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 921
    invoke-virtual {p3}, Ljavassist/compiler/ast/Expr;->oprand1()Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    invoke-virtual {p3}, Ljavassist/compiler/ast/Expr;->oprand2()Ljavassist/compiler/ast/ASTree;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljavassist/compiler/CodeGen;->arrayAccess(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)V

    .line 923
    const/16 v0, 0x3d

    if-eq p2, v0, :cond_0

    .line 924
    iget-object v0, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v1, 0x5c

    invoke-virtual {v0, v1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 925
    iget-object v0, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    iget v1, p0, Ljavassist/compiler/CodeGen;->exprType:I

    iget v2, p0, Ljavassist/compiler/CodeGen;->arrayDim:I

    invoke-static {v1, v2}, Ljavassist/compiler/CodeGen;->getArrayReadOp(II)I

    move-result v1

    invoke-virtual {v0, v1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 928
    :cond_0
    iget v0, p0, Ljavassist/compiler/CodeGen;->exprType:I

    .line 929
    .local v0, "aType":I
    iget v1, p0, Ljavassist/compiler/CodeGen;->arrayDim:I

    .line 930
    .local v1, "aDim":I
    iget-object v9, p0, Ljavassist/compiler/CodeGen;->className:Ljava/lang/String;

    .line 932
    .local v9, "cname":Ljava/lang/String;
    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p4

    move v6, v0

    move v7, v1

    move-object v8, v9

    invoke-virtual/range {v2 .. v8}, Ljavassist/compiler/CodeGen;->atAssignCore(Ljavassist/compiler/ast/Expr;ILjavassist/compiler/ast/ASTree;IILjava/lang/String;)V

    .line 934
    if-eqz p5, :cond_2

    .line 935
    invoke-static {v0, v1}, Ljavassist/compiler/CodeGen;->is2word(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 936
    iget-object v2, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v3, 0x5e

    invoke-virtual {v2, v3}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    goto :goto_0

    .line 938
    :cond_1
    iget-object v2, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v3, 0x5b

    invoke-virtual {v2, v3}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 940
    :cond_2
    :goto_0
    iget-object v2, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-static {v0, v1}, Ljavassist/compiler/CodeGen;->getArrayWriteOp(II)I

    move-result v3

    invoke-virtual {v2, v3}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 941
    iput v0, p0, Ljavassist/compiler/CodeGen;->exprType:I

    .line 942
    iput v1, p0, Ljavassist/compiler/CodeGen;->arrayDim:I

    .line 943
    iput-object v9, p0, Ljavassist/compiler/CodeGen;->className:Ljava/lang/String;

    .line 944
    return-void
.end method

.method private atBreakStmnt(Ljavassist/compiler/ast/Stmnt;Z)V
    .locals 3
    .param p1, "st"    # Ljavassist/compiler/ast/Stmnt;
    .param p2, "notCont"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 667
    invoke-virtual {p1}, Ljavassist/compiler/ast/Stmnt;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    if-nez v0, :cond_1

    .line 671
    iget-object v0, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v1, 0xa7

    invoke-virtual {v0, v1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 672
    iget-object v0, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v0}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 673
    .local v0, "pc":Ljava/lang/Integer;
    iget-object v1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    .line 674
    if-eqz p2, :cond_0

    .line 675
    iget-object v1, p0, Ljavassist/compiler/CodeGen;->breakList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 677
    :cond_0
    iget-object v1, p0, Ljavassist/compiler/CodeGen;->continueList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 678
    :goto_0
    return-void

    .line 668
    .end local v0    # "pc":Ljava/lang/Integer;
    :cond_1
    new-instance v0, Ljavassist/compiler/CompileError;

    const-string v1, "sorry, not support labeled break or continue"

    invoke-direct {v0, v1}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private atForStmnt(Ljavassist/compiler/ast/Stmnt;)V
    .locals 14
    .param p1, "st"    # Ljavassist/compiler/ast/Stmnt;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 493
    iget-object v0, p0, Ljavassist/compiler/CodeGen;->breakList:Ljava/util/List;

    .line 494
    .local v0, "prevBreakList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v1, p0, Ljavassist/compiler/CodeGen;->continueList:Ljava/util/List;

    .line 495
    .local v1, "prevContList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Ljavassist/compiler/CodeGen;->breakList:Ljava/util/List;

    .line 496
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Ljavassist/compiler/CodeGen;->continueList:Ljava/util/List;

    .line 498
    invoke-virtual {p1}, Ljavassist/compiler/ast/Stmnt;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object v2

    check-cast v2, Ljavassist/compiler/ast/Stmnt;

    .line 499
    .local v2, "init":Ljavassist/compiler/ast/Stmnt;
    invoke-virtual {p1}, Ljavassist/compiler/ast/Stmnt;->tail()Ljavassist/compiler/ast/ASTList;

    move-result-object v3

    .line 500
    .local v3, "p":Ljavassist/compiler/ast/ASTList;
    invoke-virtual {v3}, Ljavassist/compiler/ast/ASTList;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object v4

    .line 501
    .local v4, "expr":Ljavassist/compiler/ast/ASTree;
    invoke-virtual {v3}, Ljavassist/compiler/ast/ASTList;->tail()Ljavassist/compiler/ast/ASTList;

    move-result-object v3

    .line 502
    invoke-virtual {v3}, Ljavassist/compiler/ast/ASTList;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object v5

    check-cast v5, Ljavassist/compiler/ast/Stmnt;

    .line 503
    .local v5, "update":Ljavassist/compiler/ast/Stmnt;
    invoke-virtual {v3}, Ljavassist/compiler/ast/ASTList;->tail()Ljavassist/compiler/ast/ASTList;

    move-result-object v6

    check-cast v6, Ljavassist/compiler/ast/Stmnt;

    .line 505
    .local v6, "body":Ljavassist/compiler/ast/Stmnt;
    if-eqz v2, :cond_0

    .line 506
    invoke-virtual {v2, p0}, Ljavassist/compiler/ast/Stmnt;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 508
    :cond_0
    iget-object v7, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v7}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result v7

    .line 509
    .local v7, "pc":I
    const/4 v8, 0x0

    .line 510
    .local v8, "pc2":I
    const/4 v9, 0x0

    if-eqz v4, :cond_2

    .line 511
    invoke-virtual {p0, v9, v4}, Ljavassist/compiler/CodeGen;->compileBooleanExpr(ZLjavassist/compiler/ast/ASTree;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 513
    iput-object v1, p0, Ljavassist/compiler/CodeGen;->continueList:Ljava/util/List;

    .line 514
    iput-object v0, p0, Ljavassist/compiler/CodeGen;->breakList:Ljava/util/List;

    .line 515
    iput-boolean v9, p0, Ljavassist/compiler/CodeGen;->hasReturned:Z

    .line 516
    return-void

    .line 519
    :cond_1
    iget-object v10, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v10}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result v8

    .line 520
    iget-object v10, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v10, v9}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    .line 523
    :cond_2
    if-eqz v6, :cond_3

    .line 524
    invoke-virtual {v6, p0}, Ljavassist/compiler/ast/Stmnt;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 526
    :cond_3
    iget-object v10, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v10}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result v10

    .line 527
    .local v10, "pc3":I
    if-eqz v5, :cond_4

    .line 528
    invoke-virtual {v5, p0}, Ljavassist/compiler/ast/Stmnt;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 530
    :cond_4
    iget-object v11, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v12, 0xa7

    invoke-virtual {v11, v12}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 531
    iget-object v11, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v11}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result v12

    sub-int v12, v7, v12

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v11, v12}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    .line 533
    iget-object v11, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v11}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result v11

    .line 534
    .local v11, "pc4":I
    if-eqz v4, :cond_5

    .line 535
    iget-object v12, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    sub-int v13, v11, v8

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v12, v8, v13}, Ljavassist/bytecode/Bytecode;->write16bit(II)V

    .line 537
    :cond_5
    iget-object v12, p0, Ljavassist/compiler/CodeGen;->breakList:Ljava/util/List;

    invoke-virtual {p0, v12, v11}, Ljavassist/compiler/CodeGen;->patchGoto(Ljava/util/List;I)V

    .line 538
    iget-object v12, p0, Ljavassist/compiler/CodeGen;->continueList:Ljava/util/List;

    invoke-virtual {p0, v12, v10}, Ljavassist/compiler/CodeGen;->patchGoto(Ljava/util/List;I)V

    .line 539
    iput-object v1, p0, Ljavassist/compiler/CodeGen;->continueList:Ljava/util/List;

    .line 540
    iput-object v0, p0, Ljavassist/compiler/CodeGen;->breakList:Ljava/util/List;

    .line 541
    iput-boolean v9, p0, Ljavassist/compiler/CodeGen;->hasReturned:Z

    .line 542
    return-void
.end method

.method private atIfStmnt(Ljavassist/compiler/ast/Stmnt;)V
    .locals 10
    .param p1, "st"    # Ljavassist/compiler/ast/Stmnt;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 411
    invoke-virtual {p1}, Ljavassist/compiler/ast/Stmnt;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    .line 412
    .local v0, "expr":Ljavassist/compiler/ast/ASTree;
    invoke-virtual {p1}, Ljavassist/compiler/ast/Stmnt;->tail()Ljavassist/compiler/ast/ASTList;

    move-result-object v1

    invoke-virtual {v1}, Ljavassist/compiler/ast/ASTList;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object v1

    check-cast v1, Ljavassist/compiler/ast/Stmnt;

    .line 413
    .local v1, "thenp":Ljavassist/compiler/ast/Stmnt;
    invoke-virtual {p1}, Ljavassist/compiler/ast/Stmnt;->tail()Ljavassist/compiler/ast/ASTList;

    move-result-object v2

    invoke-virtual {v2}, Ljavassist/compiler/ast/ASTList;->tail()Ljavassist/compiler/ast/ASTList;

    move-result-object v2

    invoke-virtual {v2}, Ljavassist/compiler/ast/ASTList;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object v2

    check-cast v2, Ljavassist/compiler/ast/Stmnt;

    .line 414
    .local v2, "elsep":Ljavassist/compiler/ast/Stmnt;
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v0}, Ljavassist/compiler/CodeGen;->compileBooleanExpr(ZLjavassist/compiler/ast/ASTree;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 415
    iput-boolean v3, p0, Ljavassist/compiler/CodeGen;->hasReturned:Z

    .line 416
    if-eqz v2, :cond_0

    .line 417
    invoke-virtual {v2, p0}, Ljavassist/compiler/ast/Stmnt;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 419
    :cond_0
    return-void

    .line 422
    :cond_1
    iget-object v4, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v4}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result v4

    .line 423
    .local v4, "pc":I
    const/4 v5, 0x0

    .line 424
    .local v5, "pc2":I
    iget-object v6, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v6, v3}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    .line 426
    iput-boolean v3, p0, Ljavassist/compiler/CodeGen;->hasReturned:Z

    .line 427
    if-eqz v1, :cond_2

    .line 428
    invoke-virtual {v1, p0}, Ljavassist/compiler/ast/Stmnt;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 430
    :cond_2
    iget-boolean v6, p0, Ljavassist/compiler/CodeGen;->hasReturned:Z

    .line 431
    .local v6, "thenHasReturned":Z
    iput-boolean v3, p0, Ljavassist/compiler/CodeGen;->hasReturned:Z

    .line 433
    if-eqz v2, :cond_3

    if-nez v6, :cond_3

    .line 434
    iget-object v7, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v8, 0xa7

    invoke-virtual {v7, v8}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 435
    iget-object v7, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v7}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result v5

    .line 436
    iget-object v7, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v7, v3}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    .line 439
    :cond_3
    iget-object v7, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v7}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result v8

    sub-int/2addr v8, v4

    const/4 v9, 0x1

    add-int/2addr v8, v9

    invoke-virtual {v7, v4, v8}, Ljavassist/bytecode/Bytecode;->write16bit(II)V

    .line 440
    if-eqz v2, :cond_6

    .line 441
    invoke-virtual {v2, p0}, Ljavassist/compiler/ast/Stmnt;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 442
    if-nez v6, :cond_4

    .line 443
    iget-object v7, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v7}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result v8

    sub-int/2addr v8, v5

    add-int/2addr v8, v9

    invoke-virtual {v7, v5, v8}, Ljavassist/bytecode/Bytecode;->write16bit(II)V

    .line 445
    :cond_4
    if-eqz v6, :cond_5

    iget-boolean v7, p0, Ljavassist/compiler/CodeGen;->hasReturned:Z

    if-eqz v7, :cond_5

    move v3, v9

    :cond_5
    iput-boolean v3, p0, Ljavassist/compiler/CodeGen;->hasReturned:Z

    .line 447
    :cond_6
    return-void
.end method

.method private atPlusPlus(ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/Expr;Z)V
    .locals 10
    .param p1, "token"    # I
    .param p2, "oprand"    # Ljavassist/compiler/ast/ASTree;
    .param p3, "expr"    # Ljavassist/compiler/ast/Expr;
    .param p4, "doDup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 1805
    const/4 v0, 0x1

    if-nez p2, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1806
    .local v1, "isPost":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 1807
    invoke-virtual {p3}, Ljavassist/compiler/ast/Expr;->oprand2()Ljavassist/compiler/ast/ASTree;

    move-result-object p2

    .line 1809
    :cond_1
    instance-of v2, p2, Ljavassist/compiler/ast/Variable;

    if-eqz v2, :cond_15

    .line 1810
    move-object v2, p2

    check-cast v2, Ljavassist/compiler/ast/Variable;

    invoke-virtual {v2}, Ljavassist/compiler/ast/Variable;->getDeclarator()Ljavassist/compiler/ast/Declarator;

    move-result-object v2

    .line 1811
    .local v2, "d":Ljavassist/compiler/ast/Declarator;
    invoke-virtual {v2}, Ljavassist/compiler/ast/Declarator;->getType()I

    move-result v3

    iput v3, p0, Ljavassist/compiler/CodeGen;->exprType:I

    .line 1812
    .local v3, "t":I
    invoke-virtual {v2}, Ljavassist/compiler/ast/Declarator;->getArrayDim()I

    move-result v4

    iput v4, p0, Ljavassist/compiler/CodeGen;->arrayDim:I

    .line 1813
    invoke-virtual {p0, v2}, Ljavassist/compiler/CodeGen;->getLocalVar(Ljavassist/compiler/ast/Declarator;)I

    move-result v4

    .line 1814
    .local v4, "var":I
    iget v5, p0, Ljavassist/compiler/CodeGen;->arrayDim:I

    if-lez v5, :cond_2

    .line 1815
    invoke-static {p3}, Ljavassist/compiler/CodeGen;->badType(Ljavassist/compiler/ast/Expr;)V

    .line 1817
    :cond_2
    const/16 v5, 0x138

    const/16 v6, 0x5c

    const/16 v7, 0x16a

    if-ne v3, v5, :cond_6

    .line 1818
    iget-object v0, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v0, v4}, Ljavassist/bytecode/Bytecode;->addDload(I)V

    .line 1819
    if-eqz p4, :cond_3

    if-eqz v1, :cond_3

    .line 1820
    iget-object v0, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v0, v6}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1822
    :cond_3
    iget-object v0, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v0, v8, v9}, Ljavassist/bytecode/Bytecode;->addDconst(D)V

    .line 1823
    iget-object v0, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    if-ne p1, v7, :cond_4

    const/16 v5, 0x63

    goto :goto_1

    :cond_4
    const/16 v5, 0x67

    :goto_1
    invoke-virtual {v0, v5}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1824
    if-eqz p4, :cond_5

    if-nez v1, :cond_5

    .line 1825
    iget-object v0, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v0, v6}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1827
    :cond_5
    iget-object v0, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v0, v4}, Ljavassist/bytecode/Bytecode;->addDstore(I)V

    goto/16 :goto_7

    .line 1829
    :cond_6
    const/16 v5, 0x146

    if-ne v3, v5, :cond_a

    .line 1830
    iget-object v0, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v0, v4}, Ljavassist/bytecode/Bytecode;->addLload(I)V

    .line 1831
    if-eqz p4, :cond_7

    if-eqz v1, :cond_7

    .line 1832
    iget-object v0, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v0, v6}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1834
    :cond_7
    iget-object v0, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const-wide/16 v8, 0x1

    invoke-virtual {v0, v8, v9}, Ljavassist/bytecode/Bytecode;->addLconst(J)V

    .line 1835
    iget-object v0, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    if-ne p1, v7, :cond_8

    const/16 v5, 0x61

    goto :goto_2

    :cond_8
    const/16 v5, 0x65

    :goto_2
    invoke-virtual {v0, v5}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1836
    if-eqz p4, :cond_9

    if-nez v1, :cond_9

    .line 1837
    iget-object v0, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v0, v6}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1839
    :cond_9
    iget-object v0, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v0, v4}, Ljavassist/bytecode/Bytecode;->addLstore(I)V

    goto/16 :goto_7

    .line 1841
    :cond_a
    const/16 v5, 0x13d

    if-ne v3, v5, :cond_e

    .line 1842
    iget-object v0, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v0, v4}, Ljavassist/bytecode/Bytecode;->addFload(I)V

    .line 1843
    const/16 v0, 0x59

    if-eqz p4, :cond_b

    if-eqz v1, :cond_b

    .line 1844
    iget-object v5, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v5, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1846
    :cond_b
    iget-object v5, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6}, Ljavassist/bytecode/Bytecode;->addFconst(F)V

    .line 1847
    iget-object v5, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    if-ne p1, v7, :cond_c

    const/16 v6, 0x62

    goto :goto_3

    :cond_c
    const/16 v6, 0x66

    :goto_3
    invoke-virtual {v5, v6}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1848
    if-eqz p4, :cond_d

    if-nez v1, :cond_d

    .line 1849
    iget-object v5, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v5, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1851
    :cond_d
    iget-object v0, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v0, v4}, Ljavassist/bytecode/Bytecode;->addFstore(I)V

    goto :goto_7

    .line 1853
    :cond_e
    const/16 v5, 0x12f

    if-eq v3, v5, :cond_10

    const/16 v5, 0x132

    if-eq v3, v5, :cond_10

    const/16 v5, 0x14e

    if-eq v3, v5, :cond_10

    const/16 v5, 0x144

    if-ne v3, v5, :cond_f

    goto :goto_4

    .line 1874
    :cond_f
    invoke-static {p3}, Ljavassist/compiler/CodeGen;->badType(Ljavassist/compiler/ast/Expr;)V

    goto :goto_7

    .line 1854
    :cond_10
    :goto_4
    if-eqz p4, :cond_11

    if-eqz v1, :cond_11

    .line 1855
    iget-object v5, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v5, v4}, Ljavassist/bytecode/Bytecode;->addIload(I)V

    .line 1857
    :cond_11
    if-ne p1, v7, :cond_12

    goto :goto_5

    :cond_12
    const/4 v0, -0x1

    .line 1858
    .local v0, "delta":I
    :goto_5
    const/16 v5, 0xff

    const/16 v6, 0x84

    if-le v4, v5, :cond_13

    .line 1859
    iget-object v5, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v7, 0xc4

    invoke-virtual {v5, v7}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1860
    iget-object v5, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v5, v6}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1861
    iget-object v5, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v5, v4}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    .line 1862
    iget-object v5, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v5, v0}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    goto :goto_6

    .line 1865
    :cond_13
    iget-object v5, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v5, v6}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1866
    iget-object v5, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v5, v4}, Ljavassist/bytecode/Bytecode;->add(I)V

    .line 1867
    iget-object v5, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v5, v0}, Ljavassist/bytecode/Bytecode;->add(I)V

    .line 1870
    :goto_6
    if-eqz p4, :cond_14

    if-nez v1, :cond_14

    .line 1871
    iget-object v5, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v5, v4}, Ljavassist/bytecode/Bytecode;->addIload(I)V

    .line 1872
    .end local v0    # "delta":I
    :cond_14
    nop

    .line 1875
    .end local v2    # "d":Ljavassist/compiler/ast/Declarator;
    .end local v3    # "t":I
    .end local v4    # "var":I
    :goto_7
    goto :goto_8

    .line 1877
    :cond_15
    instance-of v0, p2, Ljavassist/compiler/ast/Expr;

    if-eqz v0, :cond_16

    .line 1878
    move-object v0, p2

    check-cast v0, Ljavassist/compiler/ast/Expr;

    .line 1879
    .local v0, "e":Ljavassist/compiler/ast/Expr;
    invoke-virtual {v0}, Ljavassist/compiler/ast/Expr;->getOperator()I

    move-result v2

    const/16 v3, 0x41

    if-ne v2, v3, :cond_16

    .line 1880
    invoke-virtual {p0, p1, v1, v0, p4}, Ljavassist/compiler/CodeGen;->atArrayPlusPlus(IZLjavassist/compiler/ast/Expr;Z)V

    .line 1881
    return-void

    .line 1885
    .end local v0    # "e":Ljavassist/compiler/ast/Expr;
    :cond_16
    move-object v2, p0

    move v3, p1

    move v4, v1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    invoke-virtual/range {v2 .. v7}, Ljavassist/compiler/CodeGen;->atFieldPlusPlus(IZLjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/Expr;Z)V

    .line 1887
    :goto_8
    return-void
.end method

.method private atStringConcatExpr(Ljavassist/compiler/ast/Expr;IILjava/lang/String;)V
    .locals 11
    .param p1, "expr"    # Ljavassist/compiler/ast/Expr;
    .param p2, "type1"    # I
    .param p3, "dim1"    # I
    .param p4, "cname1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 1135
    iget v0, p0, Ljavassist/compiler/CodeGen;->exprType:I

    .line 1136
    .local v0, "type2":I
    iget v1, p0, Ljavassist/compiler/CodeGen;->arrayDim:I

    .line 1137
    .local v1, "dim2":I
    invoke-static {v0, v1}, Ljavassist/compiler/CodeGen;->is2word(II)Z

    move-result v2

    .line 1138
    .local v2, "type2Is2":Z
    const-string v3, "java/lang/String"

    const/4 v4, 0x0

    const/16 v5, 0x133

    if-ne v0, v5, :cond_0

    iget-object v6, p0, Ljavassist/compiler/CodeGen;->className:Ljava/lang/String;

    .line 1139
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    move v6, v4

    .line 1141
    .local v6, "type2IsString":Z
    :goto_0
    if-eqz v2, :cond_1

    .line 1142
    invoke-direct {p0, v0, v1}, Ljavassist/compiler/CodeGen;->convToString(II)V

    .line 1144
    :cond_1
    invoke-static {p2, p3}, Ljavassist/compiler/CodeGen;->is2word(II)Z

    move-result v7

    const/16 v8, 0x5f

    if-eqz v7, :cond_2

    .line 1145
    iget-object v7, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v9, 0x5b

    invoke-virtual {v7, v9}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1146
    iget-object v7, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v9, 0x57

    invoke-virtual {v7, v9}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    goto :goto_1

    .line 1149
    :cond_2
    iget-object v7, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v7, v8}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1152
    :goto_1
    invoke-direct {p0, p2, p3}, Ljavassist/compiler/CodeGen;->convToString(II)V

    .line 1153
    iget-object v7, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v7, v8}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1155
    if-nez v2, :cond_3

    if-nez v6, :cond_3

    .line 1156
    invoke-direct {p0, v0, v1}, Ljavassist/compiler/CodeGen;->convToString(II)V

    .line 1158
    :cond_3
    iget-object v7, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const-string v8, "java.lang.String"

    const-string v9, "concat"

    const-string v10, "(Ljava/lang/String;)Ljava/lang/String;"

    invoke-virtual {v7, v8, v9, v10}, Ljavassist/bytecode/Bytecode;->addInvokevirtual(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1160
    iput v5, p0, Ljavassist/compiler/CodeGen;->exprType:I

    .line 1161
    iput v4, p0, Ljavassist/compiler/CodeGen;->arrayDim:I

    .line 1162
    iput-object v3, p0, Ljavassist/compiler/CodeGen;->className:Ljava/lang/String;

    .line 1163
    return-void
.end method

.method private atStringPlusEq(Ljavassist/compiler/ast/Expr;IILjava/lang/String;Ljavassist/compiler/ast/ASTree;)V
    .locals 5
    .param p1, "expr"    # Ljavassist/compiler/ast/Expr;
    .param p2, "type"    # I
    .param p3, "dim"    # I
    .param p4, "cname"    # Ljava/lang/String;
    .param p5, "right"    # Ljavassist/compiler/ast/ASTree;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 981
    const-string v0, "java/lang/String"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 982
    invoke-static {p1}, Ljavassist/compiler/CodeGen;->badAssign(Ljavassist/compiler/ast/Expr;)V

    .line 984
    :cond_0
    invoke-direct {p0, p2, p3}, Ljavassist/compiler/CodeGen;->convToString(II)V

    .line 985
    invoke-virtual {p5, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 986
    iget v1, p0, Ljavassist/compiler/CodeGen;->exprType:I

    iget v2, p0, Ljavassist/compiler/CodeGen;->arrayDim:I

    invoke-direct {p0, v1, v2}, Ljavassist/compiler/CodeGen;->convToString(II)V

    .line 987
    iget-object v1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const-string v2, "java.lang.String"

    const-string v3, "concat"

    const-string v4, "(Ljava/lang/String;)Ljava/lang/String;"

    invoke-virtual {v1, v2, v3, v4}, Ljavassist/bytecode/Bytecode;->addInvokevirtual(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    const/16 v1, 0x133

    iput v1, p0, Ljavassist/compiler/CodeGen;->exprType:I

    .line 990
    const/4 v1, 0x0

    iput v1, p0, Ljavassist/compiler/CodeGen;->arrayDim:I

    .line 991
    iput-object v0, p0, Ljavassist/compiler/CodeGen;->className:Ljava/lang/String;

    .line 992
    return-void
.end method

.method private atSwitchStmnt(Ljavassist/compiler/ast/Stmnt;)V
    .locals 27
    .param p1, "st"    # Ljavassist/compiler/ast/Stmnt;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 545
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 546
    .local v1, "isString":Z
    iget-object v2, v0, Ljavassist/compiler/CodeGen;->typeChecker:Ljavassist/compiler/TypeChecker;

    const-string v3, "java/lang/String"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_1

    .line 547
    invoke-virtual/range {p1 .. p1}, Ljavassist/compiler/ast/Stmnt;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljavassist/compiler/CodeGen;->doTypeCheck(Ljavassist/compiler/ast/ASTree;)V

    .line 548
    iget-object v2, v0, Ljavassist/compiler/CodeGen;->typeChecker:Ljavassist/compiler/TypeChecker;

    iget v2, v2, Ljavassist/compiler/TypeChecker;->exprType:I

    const/16 v6, 0x133

    if-ne v2, v6, :cond_0

    iget-object v2, v0, Ljavassist/compiler/CodeGen;->typeChecker:Ljavassist/compiler/TypeChecker;

    iget v2, v2, Ljavassist/compiler/TypeChecker;->arrayDim:I

    if-nez v2, :cond_0

    iget-object v2, v0, Ljavassist/compiler/CodeGen;->typeChecker:Ljavassist/compiler/TypeChecker;

    iget-object v2, v2, Ljavassist/compiler/TypeChecker;->className:Ljava/lang/String;

    .line 550
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v5

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    move v1, v2

    .line 553
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljavassist/compiler/ast/Stmnt;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljavassist/compiler/CodeGen;->compileExpr(Ljavassist/compiler/ast/ASTree;)V

    .line 554
    const/4 v2, -0x1

    .line 555
    .local v2, "tmpVar":I
    if-eqz v1, :cond_2

    .line 556
    invoke-virtual/range {p0 .. p0}, Ljavassist/compiler/CodeGen;->getMaxLocals()I

    move-result v2

    .line 557
    invoke-virtual {v0, v5}, Ljavassist/compiler/CodeGen;->incMaxLocals(I)V

    .line 558
    iget-object v6, v0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v6, v2}, Ljavassist/bytecode/Bytecode;->addAstore(I)V

    .line 559
    iget-object v6, v0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v6, v2}, Ljavassist/bytecode/Bytecode;->addAload(I)V

    .line 560
    iget-object v6, v0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const-string v7, "hashCode"

    const-string v8, "()I"

    invoke-virtual {v6, v3, v7, v8}, Ljavassist/bytecode/Bytecode;->addInvokevirtual(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    :cond_2
    iget-object v3, v0, Ljavassist/compiler/CodeGen;->breakList:Ljava/util/List;

    .line 564
    .local v3, "prevBreakList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v0, Ljavassist/compiler/CodeGen;->breakList:Ljava/util/List;

    .line 565
    iget-object v6, v0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v6}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result v6

    .line 566
    .local v6, "opcodePc":I
    iget-object v7, v0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v8, 0xab

    invoke-virtual {v7, v8}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 567
    and-int/lit8 v7, v6, 0x3

    rsub-int/lit8 v7, v7, 0x3

    .line 568
    .local v7, "npads":I
    :goto_1
    add-int/lit8 v8, v7, -0x1

    .end local v7    # "npads":I
    .local v8, "npads":I
    if-lez v7, :cond_3

    .line 569
    iget-object v7, v0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v7, v4}, Ljavassist/bytecode/Bytecode;->add(I)V

    move v7, v8

    goto :goto_1

    .line 571
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljavassist/compiler/ast/Stmnt;->tail()Ljavassist/compiler/ast/ASTList;

    move-result-object v7

    check-cast v7, Ljavassist/compiler/ast/Stmnt;

    .line 572
    .local v7, "body":Ljavassist/compiler/ast/Stmnt;
    const/4 v9, 0x0

    .line 573
    .local v9, "npairs":I
    move-object v10, v7

    .local v10, "list":Ljavassist/compiler/ast/ASTList;
    :goto_2
    const/16 v11, 0x130

    if-eqz v10, :cond_5

    .line 574
    invoke-virtual {v10}, Ljavassist/compiler/ast/ASTList;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object v12

    check-cast v12, Ljavassist/compiler/ast/Stmnt;

    invoke-virtual {v12}, Ljavassist/compiler/ast/Stmnt;->getOperator()I

    move-result v12

    if-ne v12, v11, :cond_4

    .line 575
    add-int/lit8 v9, v9, 0x1

    .line 573
    :cond_4
    invoke-virtual {v10}, Ljavassist/compiler/ast/ASTList;->tail()Ljavassist/compiler/ast/ASTList;

    move-result-object v10

    goto :goto_2

    .line 578
    .end local v10    # "list":Ljavassist/compiler/ast/ASTList;
    :cond_5
    iget-object v10, v0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v10}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result v10

    .line 579
    .local v10, "opcodePc2":I
    iget-object v12, v0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Ljavassist/bytecode/Bytecode;->addGap(I)V

    .line 580
    iget-object v12, v0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v12, v9}, Ljavassist/bytecode/Bytecode;->add32bit(I)V

    .line 581
    iget-object v12, v0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    mul-int/lit8 v13, v9, 0x8

    invoke-virtual {v12, v13}, Ljavassist/bytecode/Bytecode;->addGap(I)V

    .line 583
    new-array v12, v9, [J

    .line 584
    .local v12, "pairs":[J
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 585
    .local v13, "gotoDefaults":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v14, 0x0

    .line 586
    .local v14, "ipairs":I
    const/4 v15, -0x1

    .line 587
    .local v15, "defaultPc":I
    move-object/from16 v16, v7

    .local v16, "list":Ljavassist/compiler/ast/ASTList;
    :goto_3
    const/16 v17, 0x20

    if-eqz v16, :cond_9

    .line 588
    invoke-virtual/range {v16 .. v16}, Ljavassist/compiler/ast/ASTList;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object v18

    check-cast v18, Ljavassist/compiler/ast/Stmnt;

    .line 589
    .local v18, "label":Ljavassist/compiler/ast/Stmnt;
    invoke-virtual/range {v18 .. v18}, Ljavassist/compiler/ast/Stmnt;->getOperator()I

    move-result v5

    .line 590
    .local v5, "op":I
    const/16 v4, 0x136

    if-ne v5, v4, :cond_6

    .line 591
    iget-object v4, v0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v4}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result v4

    move/from16 v19, v1

    move/from16 v20, v2

    move v15, v4

    .end local v15    # "defaultPc":I
    .local v4, "defaultPc":I
    goto :goto_5

    .line 592
    .end local v4    # "defaultPc":I
    .restart local v15    # "defaultPc":I
    :cond_6
    if-eq v5, v11, :cond_7

    .line 593
    invoke-static {}, Ljavassist/compiler/CodeGen;->fatal()V

    move/from16 v19, v1

    move/from16 v20, v2

    goto :goto_5

    .line 595
    :cond_7
    iget-object v4, v0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v4}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result v4

    .line 597
    .local v4, "curPos":I
    if-eqz v1, :cond_8

    .line 599
    invoke-virtual/range {v18 .. v18}, Ljavassist/compiler/ast/Stmnt;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object v11

    invoke-direct {v0, v11, v2, v13}, Ljavassist/compiler/CodeGen;->computeStringLabel(Ljavassist/compiler/ast/ASTree;ILjava/util/List;)I

    move-result v11

    move/from16 v19, v1

    move/from16 v20, v2

    .end local v1    # "isString":Z
    .end local v2    # "tmpVar":I
    .local v19, "isString":Z
    .local v20, "tmpVar":I
    int-to-long v1, v11

    .local v1, "caseLabel":J
    goto :goto_4

    .line 602
    .end local v19    # "isString":Z
    .end local v20    # "tmpVar":I
    .local v1, "isString":Z
    .restart local v2    # "tmpVar":I
    :cond_8
    move/from16 v19, v1

    move/from16 v20, v2

    .end local v1    # "isString":Z
    .end local v2    # "tmpVar":I
    .restart local v19    # "isString":Z
    .restart local v20    # "tmpVar":I
    invoke-virtual/range {v18 .. v18}, Ljavassist/compiler/ast/Stmnt;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavassist/compiler/CodeGen;->computeLabel(Ljavassist/compiler/ast/ASTree;)I

    move-result v1

    int-to-long v1, v1

    .line 604
    .local v1, "caseLabel":J
    :goto_4
    add-int/lit8 v11, v14, 0x1

    .end local v14    # "ipairs":I
    .local v11, "ipairs":I
    shl-long v21, v1, v17

    move-wide/from16 v23, v1

    .end local v1    # "caseLabel":J
    .local v23, "caseLabel":J
    sub-int v1, v4, v6

    int-to-long v1, v1

    const-wide/16 v25, -0x1

    and-long v1, v1, v25

    add-long v21, v21, v1

    aput-wide v21, v12, v14

    move v14, v11

    .line 609
    .end local v4    # "curPos":I
    .end local v11    # "ipairs":I
    .end local v23    # "caseLabel":J
    .restart local v14    # "ipairs":I
    :goto_5
    const/4 v1, 0x0

    iput-boolean v1, v0, Ljavassist/compiler/CodeGen;->hasReturned:Z

    .line 610
    invoke-virtual/range {v18 .. v18}, Ljavassist/compiler/ast/Stmnt;->tail()Ljavassist/compiler/ast/ASTList;

    move-result-object v1

    check-cast v1, Ljavassist/compiler/ast/Stmnt;

    invoke-virtual {v1, v0}, Ljavassist/compiler/ast/Stmnt;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 587
    .end local v5    # "op":I
    .end local v18    # "label":Ljavassist/compiler/ast/Stmnt;
    invoke-virtual/range {v16 .. v16}, Ljavassist/compiler/ast/ASTList;->tail()Ljavassist/compiler/ast/ASTList;

    move-result-object v16

    move/from16 v1, v19

    move/from16 v2, v20

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/16 v11, 0x130

    goto :goto_3

    .end local v19    # "isString":Z
    .end local v20    # "tmpVar":I
    .local v1, "isString":Z
    .restart local v2    # "tmpVar":I
    :cond_9
    move/from16 v19, v1

    move/from16 v20, v2

    .line 613
    .end local v1    # "isString":Z
    .end local v2    # "tmpVar":I
    .end local v16    # "list":Ljavassist/compiler/ast/ASTList;
    .restart local v19    # "isString":Z
    .restart local v20    # "tmpVar":I
    invoke-static {v12}, Ljava/util/Arrays;->sort([J)V

    .line 614
    add-int/lit8 v1, v10, 0x8

    .line 615
    .local v1, "pc":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    if-ge v2, v9, :cond_a

    .line 616
    iget-object v4, v0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    aget-wide v21, v12, v2

    move-object v11, v7

    move v5, v8

    .end local v7    # "body":Ljavassist/compiler/ast/Stmnt;
    .end local v8    # "npads":I
    .local v5, "npads":I
    .local v11, "body":Ljavassist/compiler/ast/Stmnt;
    ushr-long v7, v21, v17

    long-to-int v7, v7

    invoke-virtual {v4, v1, v7}, Ljavassist/bytecode/Bytecode;->write32bit(II)V

    .line 617
    iget-object v4, v0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    add-int/lit8 v7, v1, 0x4

    move/from16 v16, v9

    .end local v9    # "npairs":I
    .local v16, "npairs":I
    aget-wide v8, v12, v2

    long-to-int v8, v8

    invoke-virtual {v4, v7, v8}, Ljavassist/bytecode/Bytecode;->write32bit(II)V

    .line 618
    add-int/lit8 v1, v1, 0x8

    .line 615
    add-int/lit8 v2, v2, 0x1

    move v8, v5

    move-object v7, v11

    move/from16 v9, v16

    goto :goto_6

    .end local v5    # "npads":I
    .end local v11    # "body":Ljavassist/compiler/ast/Stmnt;
    .end local v16    # "npairs":I
    .restart local v7    # "body":Ljavassist/compiler/ast/Stmnt;
    .restart local v8    # "npads":I
    .restart local v9    # "npairs":I
    :cond_a
    move-object v11, v7

    move v5, v8

    move/from16 v16, v9

    .line 621
    .end local v2    # "i":I
    .end local v7    # "body":Ljavassist/compiler/ast/Stmnt;
    .end local v8    # "npads":I
    .end local v9    # "npairs":I
    .restart local v5    # "npads":I
    .restart local v11    # "body":Ljavassist/compiler/ast/Stmnt;
    .restart local v16    # "npairs":I
    if-ltz v15, :cond_b

    iget-object v2, v0, Ljavassist/compiler/CodeGen;->breakList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_c

    .line 622
    :cond_b
    const/4 v2, 0x0

    iput-boolean v2, v0, Ljavassist/compiler/CodeGen;->hasReturned:Z

    .line 624
    :cond_c
    iget-object v2, v0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v2}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result v2

    .line 625
    .local v2, "endPc":I
    if-gez v15, :cond_d

    .line 626
    move v15, v2

    .line 628
    :cond_d
    iget-object v4, v0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    sub-int v7, v15, v6

    invoke-virtual {v4, v10, v7}, Ljavassist/bytecode/Bytecode;->write32bit(II)V

    .line 629
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 630
    .local v7, "addr":I
    iget-object v8, v0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    sub-int v9, v15, v7

    const/16 v17, 0x1

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v7, v9}, Ljavassist/bytecode/Bytecode;->write16bit(II)V

    .end local v7    # "addr":I
    goto :goto_7

    .line 632
    :cond_e
    iget-object v4, v0, Ljavassist/compiler/CodeGen;->breakList:Ljava/util/List;

    invoke-virtual {v0, v4, v2}, Ljavassist/compiler/CodeGen;->patchGoto(Ljava/util/List;I)V

    .line 633
    iput-object v3, v0, Ljavassist/compiler/CodeGen;->breakList:Ljava/util/List;

    .line 634
    return-void
.end method

.method private atSyncStmnt(Ljavassist/compiler/ast/Stmnt;)V
    .locals 13
    .param p1, "st"    # Ljavassist/compiler/ast/Stmnt;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 734
    iget-object v0, p0, Ljavassist/compiler/CodeGen;->breakList:Ljava/util/List;

    invoke-static {v0}, Ljavassist/compiler/CodeGen;->getListSize(Ljava/util/List;)I

    move-result v0

    .line 735
    .local v0, "nbreaks":I
    iget-object v1, p0, Ljavassist/compiler/CodeGen;->continueList:Ljava/util/List;

    invoke-static {v1}, Ljavassist/compiler/CodeGen;->getListSize(Ljava/util/List;)I

    move-result v1

    .line 737
    .local v1, "ncontinues":I
    invoke-virtual {p1}, Ljavassist/compiler/ast/Stmnt;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljavassist/compiler/CodeGen;->compileExpr(Ljavassist/compiler/ast/ASTree;)V

    .line 738
    iget v2, p0, Ljavassist/compiler/CodeGen;->exprType:I

    const/16 v3, 0x133

    if-eq v2, v3, :cond_1

    iget v2, p0, Ljavassist/compiler/CodeGen;->arrayDim:I

    if-eqz v2, :cond_0

    goto :goto_0

    .line 739
    :cond_0
    new-instance v2, Ljavassist/compiler/CompileError;

    const-string v3, "bad type expr for synchronized block"

    invoke-direct {v2, v3}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 741
    :cond_1
    :goto_0
    iget-object v2, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    .line 742
    .local v2, "bc":Ljavassist/bytecode/Bytecode;
    invoke-virtual {v2}, Ljavassist/bytecode/Bytecode;->getMaxLocals()I

    move-result v3

    .line 743
    .local v3, "var":I
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljavassist/bytecode/Bytecode;->incMaxLocals(I)V

    .line 744
    const/16 v5, 0x59

    invoke-virtual {v2, v5}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 745
    invoke-virtual {v2, v3}, Ljavassist/bytecode/Bytecode;->addAstore(I)V

    .line 746
    const/16 v5, 0xc2

    invoke-virtual {v2, v5}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 748
    new-instance v5, Ljavassist/compiler/CodeGen$1;

    invoke-direct {v5, p0, p0, v3}, Ljavassist/compiler/CodeGen$1;-><init>(Ljavassist/compiler/CodeGen;Ljavassist/compiler/CodeGen;I)V

    .line 757
    .local v5, "rh":Ljavassist/compiler/CodeGen$ReturnHook;
    invoke-virtual {v2}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result v6

    .line 758
    .local v6, "pc":I
    invoke-virtual {p1}, Ljavassist/compiler/ast/Stmnt;->tail()Ljavassist/compiler/ast/ASTList;

    move-result-object v7

    check-cast v7, Ljavassist/compiler/ast/Stmnt;

    .line 759
    .local v7, "body":Ljavassist/compiler/ast/Stmnt;
    if-eqz v7, :cond_2

    .line 760
    invoke-virtual {v7, p0}, Ljavassist/compiler/ast/Stmnt;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 762
    :cond_2
    invoke-virtual {v2}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result v8

    .line 763
    .local v8, "pc2":I
    const/4 v9, 0x0

    .line 764
    .local v9, "pc3":I
    iget-boolean v10, p0, Ljavassist/compiler/CodeGen;->hasReturned:Z

    const/4 v11, 0x0

    if-nez v10, :cond_3

    .line 765
    invoke-virtual {v5, v2, v11}, Ljavassist/compiler/CodeGen$ReturnHook;->doit(Ljavassist/bytecode/Bytecode;I)Z

    .line 766
    const/16 v10, 0xa7

    invoke-virtual {v2, v10}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 767
    invoke-virtual {v2}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result v9

    .line 768
    invoke-virtual {v2, v11}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    .line 771
    :cond_3
    if-ge v6, v8, :cond_4

    .line 772
    invoke-virtual {v2}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result v10

    .line 773
    .local v10, "pc4":I
    invoke-virtual {v5, v2, v11}, Ljavassist/compiler/CodeGen$ReturnHook;->doit(Ljavassist/bytecode/Bytecode;I)Z

    .line 774
    const/16 v12, 0xbf

    invoke-virtual {v2, v12}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 775
    invoke-virtual {v2, v6, v8, v10, v11}, Ljavassist/bytecode/Bytecode;->addExceptionHandler(IIII)V

    .line 778
    .end local v10    # "pc4":I
    :cond_4
    iget-boolean v10, p0, Ljavassist/compiler/CodeGen;->hasReturned:Z

    if-nez v10, :cond_5

    .line 779
    invoke-virtual {v2}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result v10

    sub-int/2addr v10, v9

    add-int/2addr v10, v4

    invoke-virtual {v2, v9, v10}, Ljavassist/bytecode/Bytecode;->write16bit(II)V

    .line 781
    :cond_5
    invoke-virtual {v5, p0}, Ljavassist/compiler/CodeGen$ReturnHook;->remove(Ljavassist/compiler/CodeGen;)V

    .line 783
    iget-object v4, p0, Ljavassist/compiler/CodeGen;->breakList:Ljava/util/List;

    invoke-static {v4}, Ljavassist/compiler/CodeGen;->getListSize(Ljava/util/List;)I

    move-result v4

    if-ne v4, v0, :cond_6

    iget-object v4, p0, Ljavassist/compiler/CodeGen;->continueList:Ljava/util/List;

    .line 784
    invoke-static {v4}, Ljavassist/compiler/CodeGen;->getListSize(Ljava/util/List;)I

    move-result v4

    if-ne v4, v1, :cond_6

    .line 787
    return-void

    .line 785
    :cond_6
    new-instance v4, Ljavassist/compiler/CompileError;

    const-string v10, "sorry, cannot break/continue in synchronized block"

    invoke-direct {v4, v10}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private atThrowStmnt(Ljavassist/compiler/ast/Stmnt;)V
    .locals 3
    .param p1, "st"    # Ljavassist/compiler/ast/Stmnt;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 718
    invoke-virtual {p1}, Ljavassist/compiler/ast/Stmnt;->getLeft()Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    .line 719
    .local v0, "e":Ljavassist/compiler/ast/ASTree;
    invoke-virtual {p0, v0}, Ljavassist/compiler/CodeGen;->compileExpr(Ljavassist/compiler/ast/ASTree;)V

    .line 720
    iget v1, p0, Ljavassist/compiler/CodeGen;->exprType:I

    const/16 v2, 0x133

    if-ne v1, v2, :cond_0

    iget v1, p0, Ljavassist/compiler/CodeGen;->arrayDim:I

    if-gtz v1, :cond_0

    .line 723
    iget-object v1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v2, 0xbf

    invoke-virtual {v1, v2}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 724
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljavassist/compiler/CodeGen;->hasReturned:Z

    .line 725
    return-void

    .line 721
    :cond_0
    new-instance v1, Ljavassist/compiler/CompileError;

    const-string v2, "bad throw statement"

    invoke-direct {v1, v2}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private atVariableAssign(Ljavassist/compiler/ast/Expr;ILjavassist/compiler/ast/Variable;Ljavassist/compiler/ast/Declarator;Ljavassist/compiler/ast/ASTree;Z)V
    .locals 16
    .param p1, "expr"    # Ljavassist/compiler/ast/Expr;
    .param p2, "op"    # I
    .param p3, "var"    # Ljavassist/compiler/ast/Variable;
    .param p4, "d"    # Ljavassist/compiler/ast/Declarator;
    .param p5, "right"    # Ljavassist/compiler/ast/ASTree;
    .param p6, "doDup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 877
    move-object/from16 v7, p0

    move-object/from16 v8, p5

    invoke-virtual/range {p4 .. p4}, Ljavassist/compiler/ast/Declarator;->getType()I

    move-result v9

    .line 878
    .local v9, "varType":I
    invoke-virtual/range {p4 .. p4}, Ljavassist/compiler/ast/Declarator;->getArrayDim()I

    move-result v10

    .line 879
    .local v10, "varArray":I
    invoke-virtual/range {p4 .. p4}, Ljavassist/compiler/ast/Declarator;->getClassName()Ljava/lang/String;

    move-result-object v11

    .line 880
    .local v11, "varClass":Ljava/lang/String;
    move-object/from16 v12, p4

    invoke-virtual {v7, v12}, Ljavassist/compiler/CodeGen;->getLocalVar(Ljavassist/compiler/ast/Declarator;)I

    move-result v13

    .line 882
    .local v13, "varNo":I
    const/16 v0, 0x3d

    move/from16 v14, p2

    if-eq v14, v0, :cond_0

    .line 883
    move-object/from16 v15, p3

    invoke-virtual {v7, v15}, Ljavassist/compiler/CodeGen;->atVariable(Ljavassist/compiler/ast/Variable;)V

    goto :goto_0

    .line 882
    :cond_0
    move-object/from16 v15, p3

    .line 886
    :goto_0
    if-nez p1, :cond_1

    instance-of v0, v8, Ljavassist/compiler/ast/ArrayInit;

    if-eqz v0, :cond_1

    .line 887
    move-object v0, v8

    check-cast v0, Ljavassist/compiler/ast/ArrayInit;

    invoke-virtual {v7, v0, v9, v10, v11}, Ljavassist/compiler/CodeGen;->atArrayVariableAssign(Ljavassist/compiler/ast/ArrayInit;IILjava/lang/String;)V

    goto :goto_1

    .line 889
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p5

    move v4, v9

    move v5, v10

    move-object v6, v11

    invoke-virtual/range {v0 .. v6}, Ljavassist/compiler/CodeGen;->atAssignCore(Ljavassist/compiler/ast/Expr;ILjavassist/compiler/ast/ASTree;IILjava/lang/String;)V

    .line 891
    :goto_1
    if-eqz p6, :cond_3

    .line 892
    invoke-static {v9, v10}, Ljavassist/compiler/CodeGen;->is2word(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 893
    iget-object v0, v7, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v1, 0x5c

    invoke-virtual {v0, v1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    goto :goto_2

    .line 895
    :cond_2
    iget-object v0, v7, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v1, 0x59

    invoke-virtual {v0, v1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 897
    :cond_3
    :goto_2
    if-lez v10, :cond_4

    .line 898
    iget-object v0, v7, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v0, v13}, Ljavassist/bytecode/Bytecode;->addAstore(I)V

    goto :goto_3

    .line 899
    :cond_4
    const/16 v0, 0x138

    if-ne v9, v0, :cond_5

    .line 900
    iget-object v0, v7, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v0, v13}, Ljavassist/bytecode/Bytecode;->addDstore(I)V

    goto :goto_3

    .line 901
    :cond_5
    const/16 v0, 0x13d

    if-ne v9, v0, :cond_6

    .line 902
    iget-object v0, v7, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v0, v13}, Ljavassist/bytecode/Bytecode;->addFstore(I)V

    goto :goto_3

    .line 903
    :cond_6
    const/16 v0, 0x146

    if-ne v9, v0, :cond_7

    .line 904
    iget-object v0, v7, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v0, v13}, Ljavassist/bytecode/Bytecode;->addLstore(I)V

    goto :goto_3

    .line 905
    :cond_7
    invoke-static {v9}, Ljavassist/compiler/CodeGen;->isRefType(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 906
    iget-object v0, v7, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v0, v13}, Ljavassist/bytecode/Bytecode;->addAstore(I)V

    goto :goto_3

    .line 908
    :cond_8
    iget-object v0, v7, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v0, v13}, Ljavassist/bytecode/Bytecode;->addIstore(I)V

    .line 910
    :goto_3
    iput v9, v7, Ljavassist/compiler/CodeGen;->exprType:I

    .line 911
    iput v10, v7, Ljavassist/compiler/CodeGen;->arrayDim:I

    .line 912
    iput-object v11, v7, Ljavassist/compiler/CodeGen;->className:Ljava/lang/String;

    .line 913
    return-void
.end method

.method private atWhileStmnt(Ljavassist/compiler/ast/Stmnt;Z)V
    .locals 12
    .param p1, "st"    # Ljavassist/compiler/ast/Stmnt;
    .param p2, "notDo"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 450
    iget-object v0, p0, Ljavassist/compiler/CodeGen;->breakList:Ljava/util/List;

    .line 451
    .local v0, "prevBreakList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v1, p0, Ljavassist/compiler/CodeGen;->continueList:Ljava/util/List;

    .line 452
    .local v1, "prevContList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Ljavassist/compiler/CodeGen;->breakList:Ljava/util/List;

    .line 453
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Ljavassist/compiler/CodeGen;->continueList:Ljava/util/List;

    .line 455
    invoke-virtual {p1}, Ljavassist/compiler/ast/Stmnt;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object v2

    .line 456
    .local v2, "expr":Ljavassist/compiler/ast/ASTree;
    invoke-virtual {p1}, Ljavassist/compiler/ast/Stmnt;->tail()Ljavassist/compiler/ast/ASTList;

    move-result-object v3

    check-cast v3, Ljavassist/compiler/ast/Stmnt;

    .line 458
    .local v3, "body":Ljavassist/compiler/ast/Stmnt;
    const/4 v4, 0x0

    .line 459
    .local v4, "pc":I
    const/4 v5, 0x0

    const/16 v6, 0xa7

    if-eqz p2, :cond_0

    .line 460
    iget-object v7, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v7, v6}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 461
    iget-object v7, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v7}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result v4

    .line 462
    iget-object v7, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v7, v5}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    .line 465
    :cond_0
    iget-object v7, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v7}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result v7

    .line 466
    .local v7, "pc2":I
    if-eqz v3, :cond_1

    .line 467
    invoke-virtual {v3, p0}, Ljavassist/compiler/ast/Stmnt;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 469
    :cond_1
    iget-object v8, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v8}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result v8

    .line 470
    .local v8, "pc3":I
    const/4 v9, 0x1

    if-eqz p2, :cond_2

    .line 471
    iget-object v10, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    sub-int v11, v8, v4

    add-int/2addr v11, v9

    invoke-virtual {v10, v4, v11}, Ljavassist/bytecode/Bytecode;->write16bit(II)V

    .line 473
    :cond_2
    invoke-virtual {p0, v9, v2}, Ljavassist/compiler/CodeGen;->compileBooleanExpr(ZLjavassist/compiler/ast/ASTree;)Z

    move-result v10

    .line 474
    .local v10, "alwaysBranch":Z
    if-eqz v10, :cond_4

    .line 475
    iget-object v11, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v11, v6}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 476
    iget-object v6, p0, Ljavassist/compiler/CodeGen;->breakList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_3

    move v5, v9

    :cond_3
    move v10, v5

    .line 479
    :cond_4
    iget-object v5, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v5}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result v6

    sub-int v6, v7, v6

    add-int/2addr v6, v9

    invoke-virtual {v5, v6}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    .line 480
    iget-object v5, p0, Ljavassist/compiler/CodeGen;->breakList:Ljava/util/List;

    iget-object v6, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v6}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result v6

    invoke-virtual {p0, v5, v6}, Ljavassist/compiler/CodeGen;->patchGoto(Ljava/util/List;I)V

    .line 481
    iget-object v5, p0, Ljavassist/compiler/CodeGen;->continueList:Ljava/util/List;

    invoke-virtual {p0, v5, v8}, Ljavassist/compiler/CodeGen;->patchGoto(Ljava/util/List;I)V

    .line 482
    iput-object v1, p0, Ljavassist/compiler/CodeGen;->continueList:Ljava/util/List;

    .line 483
    iput-object v0, p0, Ljavassist/compiler/CodeGen;->breakList:Ljava/util/List;

    .line 484
    iput-boolean v10, p0, Ljavassist/compiler/CodeGen;->hasReturned:Z

    .line 485
    return-void
.end method

.method protected static badAssign(Ljavassist/compiler/ast/Expr;)V
    .locals 2
    .param p0, "expr"    # Ljavassist/compiler/ast/Expr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 861
    if-nez p0, :cond_0

    .line 862
    const-string v0, "incompatible type for assignment"

    .local v0, "msg":Ljava/lang/String;
    goto :goto_0

    .line 864
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "incompatible type for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljavassist/compiler/ast/Expr;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 866
    .restart local v0    # "msg":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljavassist/compiler/CompileError;

    invoke-direct {v1, v0}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected static badType(Ljavassist/compiler/ast/Expr;)V
    .locals 3
    .param p0, "expr"    # Ljavassist/compiler/ast/Expr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 1641
    new-instance v0, Ljavassist/compiler/CompileError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid type for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljavassist/compiler/ast/Expr;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static badTypes(Ljavassist/compiler/ast/Expr;)V
    .locals 3
    .param p0, "expr"    # Ljavassist/compiler/ast/Expr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 1365
    new-instance v0, Ljavassist/compiler/CompileError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid types for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljavassist/compiler/ast/Expr;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private booleanExpr(ZLjavassist/compiler/ast/ASTree;)Z
    .locals 9
    .param p1, "branchIf"    # Z
    .param p2, "expr"    # Ljavassist/compiler/ast/ASTree;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 1203
    invoke-static {p2}, Ljavassist/compiler/CodeGen;->getCompOperator(Ljavassist/compiler/ast/ASTree;)I

    move-result v0

    .line 1204
    .local v0, "op":I
    const/16 v1, 0x12d

    const/4 v2, 0x0

    const/16 v3, 0x166

    if-ne v0, v3, :cond_0

    .line 1205
    move-object v3, p2

    check-cast v3, Ljavassist/compiler/ast/BinExpr;

    .line 1206
    .local v3, "bexpr":Ljavassist/compiler/ast/BinExpr;
    invoke-direct {p0, v3}, Ljavassist/compiler/CodeGen;->compileOprands(Ljavassist/compiler/ast/BinExpr;)I

    move-result v4

    .line 1209
    .local v4, "type1":I
    invoke-virtual {v3}, Ljavassist/compiler/ast/BinExpr;->getOperator()I

    move-result v5

    invoke-direct {p0, p1, v5, v4, v3}, Ljavassist/compiler/CodeGen;->compareExpr(ZIILjavassist/compiler/ast/BinExpr;)V

    .line 1210
    .end local v3    # "bexpr":Ljavassist/compiler/ast/BinExpr;
    .end local v4    # "type1":I
    goto/16 :goto_4

    .line 1211
    :cond_0
    const/16 v3, 0x21

    if-ne v0, v3, :cond_1

    .line 1212
    xor-int/lit8 v1, p1, 0x1

    move-object v2, p2

    check-cast v2, Ljavassist/compiler/ast/Expr;

    invoke-virtual {v2}, Ljavassist/compiler/ast/Expr;->oprand1()Ljavassist/compiler/ast/ASTree;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Ljavassist/compiler/CodeGen;->booleanExpr(ZLjavassist/compiler/ast/ASTree;)Z

    move-result v1

    return v1

    .line 1213
    :cond_1
    const/16 v3, 0x171

    const/4 v4, 0x1

    if-ne v0, v3, :cond_2

    move v3, v4

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    move v5, v3

    .local v5, "isAndAnd":Z
    if-nez v3, :cond_7

    const/16 v3, 0x170

    if-ne v0, v3, :cond_3

    goto :goto_2

    .line 1231
    :cond_3
    invoke-static {p2, p1}, Ljavassist/compiler/CodeGen;->isAlwaysBranch(Ljavassist/compiler/ast/ASTree;Z)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1233
    iput v1, p0, Ljavassist/compiler/CodeGen;->exprType:I

    .line 1234
    iput v2, p0, Ljavassist/compiler/CodeGen;->arrayDim:I

    .line 1235
    return v4

    .line 1238
    :cond_4
    invoke-virtual {p2, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 1239
    iget v3, p0, Ljavassist/compiler/CodeGen;->exprType:I

    if-ne v3, v1, :cond_6

    iget v3, p0, Ljavassist/compiler/CodeGen;->arrayDim:I

    if-nez v3, :cond_6

    .line 1242
    iget-object v3, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    if-eqz p1, :cond_5

    const/16 v4, 0x9a

    goto :goto_1

    :cond_5
    const/16 v4, 0x99

    :goto_1
    invoke-virtual {v3, v4}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    goto :goto_4

    .line 1240
    :cond_6
    new-instance v1, Ljavassist/compiler/CompileError;

    const-string v2, "boolean expr is required"

    invoke-direct {v1, v2}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1214
    :cond_7
    :goto_2
    move-object v3, p2

    check-cast v3, Ljavassist/compiler/ast/BinExpr;

    .line 1215
    .restart local v3    # "bexpr":Ljavassist/compiler/ast/BinExpr;
    if-nez v5, :cond_8

    move v6, v4

    goto :goto_3

    :cond_8
    move v6, v2

    :goto_3
    invoke-virtual {v3}, Ljavassist/compiler/ast/BinExpr;->oprand1()Ljavassist/compiler/ast/ASTree;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Ljavassist/compiler/CodeGen;->booleanExpr(ZLjavassist/compiler/ast/ASTree;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1216
    iput v1, p0, Ljavassist/compiler/CodeGen;->exprType:I

    .line 1217
    iput v2, p0, Ljavassist/compiler/CodeGen;->arrayDim:I

    .line 1218
    return v4

    .line 1220
    :cond_9
    iget-object v4, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v4}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result v4

    .line 1221
    .local v4, "pc":I
    iget-object v6, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v6, v2}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    .line 1222
    invoke-virtual {v3}, Ljavassist/compiler/ast/BinExpr;->oprand2()Ljavassist/compiler/ast/ASTree;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Ljavassist/compiler/CodeGen;->booleanExpr(ZLjavassist/compiler/ast/ASTree;)Z

    move-result v6

    const/16 v7, 0xa7

    if-eqz v6, :cond_a

    .line 1223
    iget-object v6, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v6, v7}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1225
    :cond_a
    iget-object v6, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v6}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result v8

    sub-int/2addr v8, v4

    add-int/lit8 v8, v8, 0x3

    invoke-virtual {v6, v4, v8}, Ljavassist/bytecode/Bytecode;->write16bit(II)V

    .line 1226
    if-eq p1, v5, :cond_b

    .line 1227
    iget-object v6, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/4 v8, 0x6

    invoke-virtual {v6, v8}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    .line 1228
    iget-object v6, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v6, v7}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1230
    .end local v3    # "bexpr":Ljavassist/compiler/ast/BinExpr;
    .end local v4    # "pc":I
    :cond_b
    nop

    .line 1245
    .end local v5    # "isAndAnd":Z
    :goto_4
    iput v1, p0, Ljavassist/compiler/CodeGen;->exprType:I

    .line 1246
    iput v2, p0, Ljavassist/compiler/CodeGen;->arrayDim:I

    .line 1247
    return v2
.end method

.method private checkCastExpr(Ljavassist/compiler/ast/CastExpr;Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .param p1, "expr"    # Ljavassist/compiler/ast/CastExpr;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 1497
    move-object v8, p0

    const-string v9, "invalid cast"

    .line 1498
    .local v9, "msg":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljavassist/compiler/ast/CastExpr;->getOprand()Ljavassist/compiler/ast/ASTree;

    move-result-object v10

    .line 1499
    .local v10, "oprand":Ljavassist/compiler/ast/ASTree;
    invoke-virtual/range {p1 .. p1}, Ljavassist/compiler/ast/CastExpr;->getArrayDim()I

    move-result v11

    .line 1500
    .local v11, "dim":I
    invoke-virtual/range {p1 .. p1}, Ljavassist/compiler/ast/CastExpr;->getType()I

    move-result v12

    .line 1501
    .local v12, "type":I
    invoke-virtual {v10, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 1502
    iget v13, v8, Ljavassist/compiler/CodeGen;->exprType:I

    .line 1503
    .local v13, "srcType":I
    iget v14, v8, Ljavassist/compiler/CodeGen;->arrayDim:I

    .line 1504
    .local v14, "srcDim":I
    iget v2, v8, Ljavassist/compiler/CodeGen;->arrayDim:I

    iget-object v3, v8, Ljavassist/compiler/CodeGen;->className:Ljava/lang/String;

    const/4 v7, 0x1

    move-object v0, p0

    move v1, v13

    move v4, v12

    move v5, v11

    move-object/from16 v6, p2

    invoke-direct/range {v0 .. v7}, Ljavassist/compiler/CodeGen;->invalidDim(IILjava/lang/String;IILjava/lang/String;Z)Z

    move-result v0

    const-string v1, "invalid cast"

    if-nez v0, :cond_4

    const/16 v0, 0x158

    if-eq v13, v0, :cond_4

    if-eq v12, v0, :cond_4

    .line 1508
    const/16 v0, 0x133

    if-ne v12, v0, :cond_2

    .line 1509
    invoke-static {v13}, Ljavassist/compiler/CodeGen;->isRefType(I)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v14, :cond_0

    goto :goto_0

    .line 1510
    :cond_0
    new-instance v0, Ljavassist/compiler/CompileError;

    invoke-direct {v0, v1}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1512
    :cond_1
    :goto_0
    move-object/from16 v0, p2

    invoke-static {v0, v11}, Ljavassist/compiler/CodeGen;->toJvmArrayName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1515
    :cond_2
    move-object/from16 v0, p2

    if-lez v11, :cond_3

    .line 1516
    invoke-static {v12, v11}, Ljavassist/compiler/CodeGen;->toJvmTypeName(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1518
    :cond_3
    const/4 v1, 0x0

    return-object v1

    .line 1504
    :cond_4
    move-object/from16 v0, p2

    .line 1506
    new-instance v2, Ljavassist/compiler/CompileError;

    invoke-direct {v2, v1}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private compareExpr(ZIILjavassist/compiler/ast/BinExpr;)V
    .locals 6
    .param p1, "branchIf"    # Z
    .param p2, "token"    # I
    .param p3, "type1"    # I
    .param p4, "expr"    # Ljavassist/compiler/ast/BinExpr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 1315
    iget v0, p0, Ljavassist/compiler/CodeGen;->arrayDim:I

    if-nez v0, :cond_0

    .line 1316
    iget v0, p0, Ljavassist/compiler/CodeGen;->exprType:I

    invoke-direct {p0, p3, v0, p4}, Ljavassist/compiler/CodeGen;->convertOprandTypes(IILjavassist/compiler/ast/Expr;)V

    .line 1318
    :cond_0
    iget v0, p0, Ljavassist/compiler/CodeGen;->exprType:I

    invoke-static {v0}, Ljavassist/compiler/CodeGen;->typePrecedence(I)I

    move-result v0

    .line 1319
    .local v0, "p":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_10

    iget v1, p0, Ljavassist/compiler/CodeGen;->arrayDim:I

    if-lez v1, :cond_1

    goto/16 :goto_5

    .line 1327
    :cond_1
    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-ne v0, v3, :cond_5

    .line 1328
    sget-object v3, Ljavassist/compiler/CodeGen;->ifOp:[I

    .line 1329
    .local v3, "op":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_4

    .line 1330
    aget v5, v3, v4

    if-ne v5, p2, :cond_3

    .line 1331
    iget-object v5, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    if-eqz p1, :cond_2

    move v1, v2

    :cond_2
    add-int/2addr v1, v4

    aget v1, v3, v1

    invoke-virtual {v5, v1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1332
    return-void

    .line 1329
    :cond_3
    add-int/lit8 v4, v4, 0x3

    goto :goto_0

    .line 1335
    .end local v4    # "i":I
    :cond_4
    invoke-static {p4}, Ljavassist/compiler/CodeGen;->badTypes(Ljavassist/compiler/ast/Expr;)V

    .line 1336
    .end local v3    # "op":[I
    goto/16 :goto_7

    .line 1338
    :cond_5
    const/16 v3, 0x165

    const/16 v4, 0x3c

    if-nez v0, :cond_8

    .line 1339
    if-eq p2, v4, :cond_7

    if-ne p2, v3, :cond_6

    goto :goto_1

    .line 1342
    :cond_6
    iget-object v3, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v4, 0x97

    invoke-virtual {v3, v4}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    goto :goto_3

    .line 1340
    :cond_7
    :goto_1
    iget-object v3, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v4, 0x98

    invoke-virtual {v3, v4}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    goto :goto_3

    .line 1343
    :cond_8
    if-ne v0, v2, :cond_b

    .line 1344
    if-eq p2, v4, :cond_a

    if-ne p2, v3, :cond_9

    goto :goto_2

    .line 1347
    :cond_9
    iget-object v3, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v4, 0x95

    invoke-virtual {v3, v4}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    goto :goto_3

    .line 1345
    :cond_a
    :goto_2
    iget-object v3, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v4, 0x96

    invoke-virtual {v3, v4}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    goto :goto_3

    .line 1348
    :cond_b
    if-ne v0, v1, :cond_c

    .line 1349
    iget-object v3, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v4, 0x94

    invoke-virtual {v3, v4}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    goto :goto_3

    .line 1351
    :cond_c
    invoke-static {}, Ljavassist/compiler/CodeGen;->fatal()V

    .line 1353
    :goto_3
    sget-object v3, Ljavassist/compiler/CodeGen;->ifOp2:[I

    .line 1354
    .restart local v3    # "op":[I
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_4
    array-length v5, v3

    if-ge v4, v5, :cond_f

    .line 1355
    aget v5, v3, v4

    if-ne v5, p2, :cond_e

    .line 1356
    iget-object v5, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    if-eqz p1, :cond_d

    move v1, v2

    :cond_d
    add-int/2addr v1, v4

    aget v1, v3, v1

    invoke-virtual {v5, v1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1357
    return-void

    .line 1354
    :cond_e
    add-int/lit8 v4, v4, 0x3

    goto :goto_4

    .line 1360
    .end local v4    # "i":I
    :cond_f
    invoke-static {p4}, Ljavassist/compiler/CodeGen;->badTypes(Ljavassist/compiler/ast/Expr;)V

    goto :goto_7

    .line 1320
    .end local v3    # "op":[I
    :cond_10
    :goto_5
    const/16 v1, 0x166

    const/16 v2, 0xa5

    const/16 v3, 0xa6

    if-ne p2, v1, :cond_12

    .line 1321
    iget-object v1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    if-eqz p1, :cond_11

    goto :goto_6

    :cond_11
    move v2, v3

    :goto_6
    invoke-virtual {v1, v2}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    goto :goto_7

    .line 1322
    :cond_12
    const/16 v1, 0x15e

    if-ne p2, v1, :cond_14

    .line 1323
    iget-object v1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    if-eqz p1, :cond_13

    move v2, v3

    :cond_13
    invoke-virtual {v1, v2}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    goto :goto_7

    .line 1325
    :cond_14
    invoke-static {p4}, Ljavassist/compiler/CodeGen;->badTypes(Ljavassist/compiler/ast/Expr;)V

    .line 1362
    :goto_7
    return-void
.end method

.method private compileOprands(Ljavassist/compiler/ast/BinExpr;)I
    .locals 4
    .param p1, "expr"    # Ljavassist/compiler/ast/BinExpr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 1277
    invoke-virtual {p1}, Ljavassist/compiler/ast/BinExpr;->oprand1()Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 1278
    iget v0, p0, Ljavassist/compiler/CodeGen;->exprType:I

    .line 1279
    .local v0, "type1":I
    iget v1, p0, Ljavassist/compiler/CodeGen;->arrayDim:I

    .line 1280
    .local v1, "dim1":I
    invoke-virtual {p1}, Ljavassist/compiler/ast/BinExpr;->oprand2()Ljavassist/compiler/ast/ASTree;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 1281
    iget v2, p0, Ljavassist/compiler/CodeGen;->arrayDim:I

    const/16 v3, 0x19c

    if-eq v1, v2, :cond_2

    .line 1282
    if-eq v0, v3, :cond_1

    iget v2, p0, Ljavassist/compiler/CodeGen;->exprType:I

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 1283
    :cond_0
    new-instance v2, Ljavassist/compiler/CompileError;

    const-string v3, "incompatible array types"

    invoke-direct {v2, v3}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1284
    :cond_1
    :goto_0
    iget v2, p0, Ljavassist/compiler/CodeGen;->exprType:I

    if-ne v2, v3, :cond_2

    .line 1285
    iput v1, p0, Ljavassist/compiler/CodeGen;->arrayDim:I

    .line 1287
    :cond_2
    if-ne v0, v3, :cond_3

    .line 1288
    iget v2, p0, Ljavassist/compiler/CodeGen;->exprType:I

    return v2

    .line 1289
    :cond_3
    return v0
.end method

.method private computeLabel(Ljavassist/compiler/ast/ASTree;)I
    .locals 2
    .param p1, "expr"    # Ljavassist/compiler/ast/ASTree;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 637
    invoke-virtual {p0, p1}, Ljavassist/compiler/CodeGen;->doTypeCheck(Ljavassist/compiler/ast/ASTree;)V

    .line 638
    invoke-static {p1}, Ljavassist/compiler/TypeChecker;->stripPlusExpr(Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/ASTree;

    move-result-object p1

    .line 639
    instance-of v0, p1, Ljavassist/compiler/ast/IntConst;

    if-eqz v0, :cond_0

    .line 640
    move-object v0, p1

    check-cast v0, Ljavassist/compiler/ast/IntConst;

    invoke-virtual {v0}, Ljavassist/compiler/ast/IntConst;->get()J

    move-result-wide v0

    long-to-int v0, v0

    return v0

    .line 641
    :cond_0
    new-instance v0, Ljavassist/compiler/CompileError;

    const-string v1, "bad case label"

    invoke-direct {v0, v1}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private computeStringLabel(Ljavassist/compiler/ast/ASTree;ILjava/util/List;)I
    .locals 5
    .param p1, "expr"    # Ljavassist/compiler/ast/ASTree;
    .param p2, "tmpVar"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavassist/compiler/ast/ASTree;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 647
    .local p3, "gotoDefaults":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {p0, p1}, Ljavassist/compiler/CodeGen;->doTypeCheck(Ljavassist/compiler/ast/ASTree;)V

    .line 648
    invoke-static {p1}, Ljavassist/compiler/TypeChecker;->stripPlusExpr(Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/ASTree;

    move-result-object p1

    .line 649
    instance-of v0, p1, Ljavassist/compiler/ast/StringL;

    if-eqz v0, :cond_0

    .line 650
    move-object v0, p1

    check-cast v0, Ljavassist/compiler/ast/StringL;

    invoke-virtual {v0}, Ljavassist/compiler/ast/StringL;->get()Ljava/lang/String;

    move-result-object v0

    .line 651
    .local v0, "label":Ljava/lang/String;
    iget-object v1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v1, p2}, Ljavassist/bytecode/Bytecode;->addAload(I)V

    .line 652
    iget-object v1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v1, v0}, Ljavassist/bytecode/Bytecode;->addLdc(Ljava/lang/String;)V

    .line 653
    iget-object v1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const-string v2, "java/lang/String"

    const-string v3, "equals"

    const-string v4, "(Ljava/lang/Object;)Z"

    invoke-virtual {v1, v2, v3, v4}, Ljavassist/bytecode/Bytecode;->addInvokevirtual(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    iget-object v1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v2, 0x99

    invoke-virtual {v1, v2}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 656
    iget-object v1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v1}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 657
    .local v1, "pc":Ljava/lang/Integer;
    iget-object v2, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    .line 658
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 659
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    return v2

    .line 661
    .end local v0    # "label":Ljava/lang/String;
    .end local v1    # "pc":Ljava/lang/Integer;
    :cond_0
    new-instance v0, Ljavassist/compiler/CompileError;

    const-string v1, "bad case label"

    invoke-direct {v0, v1}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private convToString(II)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "dim"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 1166
    const-string v0, "valueOf"

    .line 1168
    .local v0, "method":Ljava/lang/String;
    invoke-static {p1}, Ljavassist/compiler/CodeGen;->isRefType(I)Z

    move-result v1

    const-string v2, "valueOf"

    const-string v3, "java.lang.String"

    if-nez v1, :cond_7

    if-lez p2, :cond_0

    goto :goto_0

    .line 1171
    :cond_0
    const/16 v1, 0x138

    if-ne p1, v1, :cond_1

    .line 1172
    iget-object v1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const-string v4, "(D)Ljava/lang/String;"

    invoke-virtual {v1, v3, v2, v4}, Ljavassist/bytecode/Bytecode;->addInvokestatic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1174
    :cond_1
    const/16 v1, 0x13d

    if-ne p1, v1, :cond_2

    .line 1175
    iget-object v1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const-string v4, "(F)Ljava/lang/String;"

    invoke-virtual {v1, v3, v2, v4}, Ljavassist/bytecode/Bytecode;->addInvokestatic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1177
    :cond_2
    const/16 v1, 0x146

    if-ne p1, v1, :cond_3

    .line 1178
    iget-object v1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const-string v4, "(J)Ljava/lang/String;"

    invoke-virtual {v1, v3, v2, v4}, Ljavassist/bytecode/Bytecode;->addInvokestatic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1180
    :cond_3
    const/16 v1, 0x12d

    if-ne p1, v1, :cond_4

    .line 1181
    iget-object v1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const-string v4, "(Z)Ljava/lang/String;"

    invoke-virtual {v1, v3, v2, v4}, Ljavassist/bytecode/Bytecode;->addInvokestatic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1183
    :cond_4
    const/16 v1, 0x132

    if-ne p1, v1, :cond_5

    .line 1184
    iget-object v1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const-string v4, "(C)Ljava/lang/String;"

    invoke-virtual {v1, v3, v2, v4}, Ljavassist/bytecode/Bytecode;->addInvokestatic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1186
    :cond_5
    const/16 v1, 0x158

    if-eq p1, v1, :cond_6

    .line 1189
    iget-object v1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const-string v4, "(I)Ljava/lang/String;"

    invoke-virtual {v1, v3, v2, v4}, Ljavassist/bytecode/Bytecode;->addInvokestatic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1187
    :cond_6
    new-instance v1, Ljavassist/compiler/CompileError;

    const-string v2, "void type expression"

    invoke-direct {v1, v2}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1169
    :cond_7
    :goto_0
    iget-object v1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const-string v4, "(Ljava/lang/Object;)Ljava/lang/String;"

    invoke-virtual {v1, v3, v2, v4}, Ljavassist/bytecode/Bytecode;->addInvokestatic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1191
    :goto_1
    return-void
.end method

.method private convertOprandTypes(IILjavassist/compiler/ast/Expr;)V
    .locals 8
    .param p1, "type1"    # I
    .param p2, "type2"    # I
    .param p3, "expr"    # Ljavassist/compiler/ast/Expr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 1419
    invoke-static {p1}, Ljavassist/compiler/CodeGen;->typePrecedence(I)I

    move-result v0

    .line 1420
    .local v0, "type1_p":I
    invoke-static {p2}, Ljavassist/compiler/CodeGen;->typePrecedence(I)I

    move-result v1

    .line 1422
    .local v1, "type2_p":I
    if-gez v1, :cond_0

    if-gez v0, :cond_0

    .line 1423
    return-void

    .line 1425
    :cond_0
    if-ltz v1, :cond_1

    if-gez v0, :cond_2

    .line 1426
    :cond_1
    invoke-static {p3}, Ljavassist/compiler/CodeGen;->badTypes(Ljavassist/compiler/ast/Expr;)V

    .line 1429
    :cond_2
    if-gt v0, v1, :cond_3

    .line 1430
    const/4 v2, 0x0

    .line 1431
    .local v2, "rightStrong":Z
    iput p1, p0, Ljavassist/compiler/CodeGen;->exprType:I

    .line 1432
    sget-object v3, Ljavassist/compiler/CodeGen;->castOp:[I

    mul-int/lit8 v4, v1, 0x4

    add-int/2addr v4, v0

    aget v3, v3, v4

    .line 1433
    .local v3, "op":I
    move v4, v0

    .local v4, "result_type":I
    goto :goto_0

    .line 1436
    .end local v2    # "rightStrong":Z
    .end local v3    # "op":I
    .end local v4    # "result_type":I
    :cond_3
    const/4 v2, 0x1

    .line 1437
    .restart local v2    # "rightStrong":Z
    sget-object v3, Ljavassist/compiler/CodeGen;->castOp:[I

    mul-int/lit8 v4, v0, 0x4

    add-int/2addr v4, v1

    aget v3, v3, v4

    .line 1438
    .restart local v3    # "op":I
    move v4, v1

    .line 1441
    .restart local v4    # "result_type":I
    :goto_0
    if-eqz v2, :cond_a

    .line 1442
    const/4 v5, 0x2

    if-eqz v4, :cond_7

    if-ne v4, v5, :cond_4

    goto :goto_2

    .line 1453
    :cond_4
    const/4 v6, 0x1

    if-ne v4, v6, :cond_6

    .line 1454
    const/16 v6, 0x5f

    if-ne v0, v5, :cond_5

    .line 1455
    iget-object v5, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v7, 0x5b

    invoke-virtual {v5, v7}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1456
    iget-object v5, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v7, 0x57

    invoke-virtual {v5, v7}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    goto :goto_1

    .line 1459
    :cond_5
    iget-object v5, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v5, v6}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1461
    :goto_1
    iget-object v5, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v5, v3}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1462
    iget-object v5, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v5, v6}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    goto :goto_5

    .line 1465
    :cond_6
    invoke-static {}, Ljavassist/compiler/CodeGen;->fatal()V

    goto :goto_5

    .line 1443
    :cond_7
    :goto_2
    const/16 v6, 0x5e

    if-eqz v0, :cond_9

    if-ne v0, v5, :cond_8

    goto :goto_3

    .line 1446
    :cond_8
    iget-object v5, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v7, 0x5d

    invoke-virtual {v5, v7}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    goto :goto_4

    .line 1444
    :cond_9
    :goto_3
    iget-object v5, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v5, v6}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1448
    :goto_4
    iget-object v5, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v7, 0x58

    invoke-virtual {v5, v7}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1449
    iget-object v5, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v5, v3}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1450
    iget-object v5, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v5, v6}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1451
    iget-object v5, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v5, v7}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    goto :goto_5

    .line 1467
    :cond_a
    if-eqz v3, :cond_b

    .line 1468
    iget-object v5, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v5, v3}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1469
    :cond_b
    :goto_5
    return-void
.end method

.method protected static fatal()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 125
    new-instance v0, Ljavassist/compiler/CompileError;

    const-string v1, "fatal"

    invoke-direct {v0, v1}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static getArrayReadOp(II)I
    .locals 1
    .param p0, "type"    # I
    .param p1, "dim"    # I

    .line 1753
    const/16 v0, 0x32

    if-lez p1, :cond_0

    .line 1754
    return v0

    .line 1756
    :cond_0
    sparse-switch p0, :sswitch_data_0

    .line 1773
    return v0

    .line 1766
    :sswitch_0
    const/16 v0, 0x35

    return v0

    .line 1762
    :sswitch_1
    const/16 v0, 0x2f

    return v0

    .line 1764
    :sswitch_2
    const/16 v0, 0x2e

    return v0

    .line 1760
    :sswitch_3
    const/16 v0, 0x30

    return v0

    .line 1758
    :sswitch_4
    const/16 v0, 0x31

    return v0

    .line 1768
    :sswitch_5
    const/16 v0, 0x34

    return v0

    .line 1771
    :sswitch_6
    const/16 v0, 0x33

    return v0

    :sswitch_data_0
    .sparse-switch
        0x12d -> :sswitch_6
        0x12f -> :sswitch_6
        0x132 -> :sswitch_5
        0x138 -> :sswitch_4
        0x13d -> :sswitch_3
        0x144 -> :sswitch_2
        0x146 -> :sswitch_1
        0x14e -> :sswitch_0
    .end sparse-switch
.end method

.method protected static getArrayWriteOp(II)I
    .locals 1
    .param p0, "type"    # I
    .param p1, "dim"    # I

    .line 1778
    const/16 v0, 0x53

    if-lez p1, :cond_0

    .line 1779
    return v0

    .line 1781
    :cond_0
    sparse-switch p0, :sswitch_data_0

    .line 1798
    return v0

    .line 1791
    :sswitch_0
    const/16 v0, 0x56

    return v0

    .line 1787
    :sswitch_1
    const/16 v0, 0x50

    return v0

    .line 1789
    :sswitch_2
    const/16 v0, 0x4f

    return v0

    .line 1785
    :sswitch_3
    const/16 v0, 0x51

    return v0

    .line 1783
    :sswitch_4
    const/16 v0, 0x52

    return v0

    .line 1793
    :sswitch_5
    const/16 v0, 0x55

    return v0

    .line 1796
    :sswitch_6
    const/16 v0, 0x54

    return v0

    :sswitch_data_0
    .sparse-switch
        0x12d -> :sswitch_6
        0x12f -> :sswitch_6
        0x132 -> :sswitch_5
        0x138 -> :sswitch_4
        0x13d -> :sswitch_3
        0x144 -> :sswitch_2
        0x146 -> :sswitch_1
        0x14e -> :sswitch_0
    .end sparse-switch
.end method

.method static getCompOperator(Ljavassist/compiler/ast/ASTree;)I
    .locals 3
    .param p0, "expr"    # Ljavassist/compiler/ast/ASTree;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 1260
    instance-of v0, p0, Ljavassist/compiler/ast/Expr;

    if-eqz v0, :cond_2

    .line 1261
    move-object v0, p0

    check-cast v0, Ljavassist/compiler/ast/Expr;

    .line 1262
    .local v0, "bexpr":Ljavassist/compiler/ast/Expr;
    invoke-virtual {v0}, Ljavassist/compiler/ast/Expr;->getOperator()I

    move-result v1

    .line 1263
    .local v1, "token":I
    const/16 v2, 0x21

    if-ne v1, v2, :cond_0

    .line 1264
    return v2

    .line 1265
    :cond_0
    instance-of v2, v0, Ljavassist/compiler/ast/BinExpr;

    if-eqz v2, :cond_1

    const/16 v2, 0x170

    if-eq v1, v2, :cond_1

    const/16 v2, 0x171

    if-eq v1, v2, :cond_1

    const/16 v2, 0x26

    if-eq v1, v2, :cond_1

    const/16 v2, 0x7c

    if-eq v1, v2, :cond_1

    .line 1268
    const/16 v2, 0x166

    return v2

    .line 1270
    :cond_1
    return v1

    .line 1273
    .end local v0    # "bexpr":Ljavassist/compiler/ast/Expr;
    .end local v1    # "token":I
    :cond_2
    const/16 v0, 0x20

    return v0
.end method

.method private static getListSize(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 790
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method private invalidDim(IILjava/lang/String;IILjava/lang/String;Z)Z
    .locals 4
    .param p1, "srcType"    # I
    .param p2, "srcDim"    # I
    .param p3, "srcClass"    # Ljava/lang/String;
    .param p4, "destType"    # I
    .param p5, "destDim"    # I
    .param p6, "destClass"    # Ljava/lang/String;
    .param p7, "isCast"    # Z

    .line 998
    const/4 v0, 0x0

    if-eq p2, p5, :cond_3

    .line 999
    const/16 v1, 0x19c

    if-ne p1, v1, :cond_0

    .line 1000
    return v0

    .line 1001
    :cond_0
    const-string v1, "java/lang/Object"

    const/16 v2, 0x133

    if-nez p5, :cond_1

    if-ne p4, v2, :cond_1

    .line 1002
    invoke-virtual {v1, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1003
    return v0

    .line 1004
    :cond_1
    if-eqz p7, :cond_2

    if-nez p2, :cond_2

    if-ne p1, v2, :cond_2

    .line 1005
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1006
    return v0

    .line 1008
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 1010
    :cond_3
    return v0
.end method

.method public static is2word(II)Z
    .locals 1
    .param p0, "type"    # I
    .param p1, "dim"    # I

    .line 129
    if-nez p1, :cond_1

    const/16 v0, 0x138

    if-eq p0, v0, :cond_0

    const/16 v0, 0x146

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isAlwaysBranch(Ljavassist/compiler/ast/ASTree;Z)Z
    .locals 4
    .param p0, "expr"    # Ljavassist/compiler/ast/ASTree;
    .param p1, "branchIf"    # Z

    .line 1251
    instance-of v0, p0, Ljavassist/compiler/ast/Keyword;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1252
    move-object v0, p0

    check-cast v0, Ljavassist/compiler/ast/Keyword;

    invoke-virtual {v0}, Ljavassist/compiler/ast/Keyword;->get()I

    move-result v0

    .line 1253
    .local v0, "t":I
    const/4 v2, 0x1

    if-eqz p1, :cond_0

    const/16 v3, 0x19a

    if-ne v0, v3, :cond_1

    goto :goto_0

    :cond_0
    const/16 v3, 0x19b

    if-ne v0, v3, :cond_1

    :goto_0
    move v1, v2

    :cond_1
    return v1

    .line 1256
    .end local v0    # "t":I
    :cond_2
    return v1
.end method

.method static isP_INT(I)Z
    .locals 2
    .param p0, "type"    # I

    .line 1395
    invoke-static {p0}, Ljavassist/compiler/CodeGen;->typePrecedence(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isPlusPlusExpr(Ljavassist/compiler/ast/ASTree;)Z
    .locals 3
    .param p0, "expr"    # Ljavassist/compiler/ast/ASTree;

    .line 794
    instance-of v0, p0, Ljavassist/compiler/ast/Expr;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 795
    move-object v0, p0

    check-cast v0, Ljavassist/compiler/ast/Expr;

    invoke-virtual {v0}, Ljavassist/compiler/ast/Expr;->getOperator()I

    move-result v0

    .line 796
    .local v0, "op":I
    const/16 v2, 0x16a

    if-eq v0, v2, :cond_0

    const/16 v2, 0x16b

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1

    .line 799
    .end local v0    # "op":I
    :cond_2
    return v1
.end method

.method protected static isRefType(I)Z
    .locals 1
    .param p0, "type"    # I

    .line 1375
    const/16 v0, 0x133

    if-eq p0, v0, :cond_1

    const/16 v0, 0x19c

    if-ne p0, v0, :cond_0

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

.method static lookupBinOp(I)I
    .locals 4
    .param p0, "token"    # I

    .line 1048
    sget-object v0, Ljavassist/compiler/CodeGen;->binOp:[I

    .line 1049
    .local v0, "code":[I
    array-length v1, v0

    .line 1050
    .local v1, "s":I
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1051
    aget v3, v0, v2

    if-ne v3, p0, :cond_0

    .line 1052
    return v2

    .line 1050
    :cond_0
    add-int/lit8 v2, v2, 0x5

    goto :goto_0

    .line 1054
    .end local v2    # "k":I
    :cond_1
    const/4 v2, -0x1

    return v2
.end method

.method private needsSuperCall(Ljavassist/compiler/ast/Stmnt;)Z
    .locals 5
    .param p1, "body"    # Ljavassist/compiler/ast/Stmnt;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 332
    invoke-virtual {p1}, Ljavassist/compiler/ast/Stmnt;->getOperator()I

    move-result v0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_0

    .line 333
    invoke-virtual {p1}, Ljavassist/compiler/ast/Stmnt;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    move-object p1, v0

    check-cast p1, Ljavassist/compiler/ast/Stmnt;

    .line 335
    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljavassist/compiler/ast/Stmnt;->getOperator()I

    move-result v1

    const/16 v2, 0x45

    if-ne v1, v2, :cond_2

    .line 336
    invoke-virtual {p1}, Ljavassist/compiler/ast/Stmnt;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object v1

    .line 337
    .local v1, "expr":Ljavassist/compiler/ast/ASTree;
    if-eqz v1, :cond_2

    instance-of v2, v1, Ljavassist/compiler/ast/Expr;

    if-eqz v2, :cond_2

    move-object v2, v1

    check-cast v2, Ljavassist/compiler/ast/Expr;

    .line 338
    invoke-virtual {v2}, Ljavassist/compiler/ast/Expr;->getOperator()I

    move-result v2

    const/16 v3, 0x43

    if-ne v2, v3, :cond_2

    .line 339
    move-object v2, v1

    check-cast v2, Ljavassist/compiler/ast/Expr;

    invoke-virtual {v2}, Ljavassist/compiler/ast/Expr;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object v2

    .line 340
    .local v2, "target":Ljavassist/compiler/ast/ASTree;
    instance-of v3, v2, Ljavassist/compiler/ast/Keyword;

    if-eqz v3, :cond_2

    .line 341
    move-object v3, v2

    check-cast v3, Ljavassist/compiler/ast/Keyword;

    invoke-virtual {v3}, Ljavassist/compiler/ast/Keyword;->get()I

    move-result v3

    .line 342
    .local v3, "token":I
    const/16 v4, 0x153

    if-eq v3, v4, :cond_1

    const/16 v4, 0x150

    if-eq v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 347
    .end local v1    # "expr":Ljavassist/compiler/ast/ASTree;
    .end local v2    # "target":Ljavassist/compiler/ast/ASTree;
    .end local v3    # "token":I
    :cond_2
    return v0
.end method

.method static rightIsStrong(II)Z
    .locals 3
    .param p0, "type1"    # I
    .param p1, "type2"    # I

    .line 1400
    invoke-static {p0}, Ljavassist/compiler/CodeGen;->typePrecedence(I)I

    move-result v0

    .line 1401
    .local v0, "type1_p":I
    invoke-static {p1}, Ljavassist/compiler/CodeGen;->typePrecedence(I)I

    move-result v1

    .line 1402
    .local v1, "type2_p":I
    if-ltz v0, :cond_0

    if-ltz v1, :cond_0

    if-le v0, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method protected static toJvmArrayName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "dim"    # I

    .line 195
    if-nez p0, :cond_0

    .line 196
    const/4 v0, 0x0

    return-object v0

    .line 198
    :cond_0
    if-nez p1, :cond_1

    .line 199
    return-object p0

    .line 200
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 201
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    move v1, p1

    .line 202
    .local v1, "d":I
    :goto_0
    add-int/lit8 v2, v1, -0x1

    .end local v1    # "d":I
    .local v2, "d":I
    if-lez v1, :cond_2

    .line 203
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v1, v2

    goto :goto_0

    .line 205
    :cond_2
    const/16 v1, 0x4c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 206
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 207
    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 209
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected static toJvmTypeName(II)Ljava/lang/String;
    .locals 3
    .param p0, "type"    # I
    .param p1, "dim"    # I

    .line 213
    const/16 v0, 0x49

    .line 214
    .local v0, "c":C
    sparse-switch p0, :sswitch_data_0

    goto :goto_0

    .line 240
    :sswitch_0
    const/16 v0, 0x56

    goto :goto_0

    .line 225
    :sswitch_1
    const/16 v0, 0x53

    .line 226
    goto :goto_0

    .line 231
    :sswitch_2
    const/16 v0, 0x4a

    .line 232
    goto :goto_0

    .line 228
    :sswitch_3
    const/16 v0, 0x49

    .line 229
    goto :goto_0

    .line 234
    :sswitch_4
    const/16 v0, 0x46

    .line 235
    goto :goto_0

    .line 237
    :sswitch_5
    const/16 v0, 0x44

    .line 238
    goto :goto_0

    .line 222
    :sswitch_6
    const/16 v0, 0x43

    .line 223
    goto :goto_0

    .line 219
    :sswitch_7
    const/16 v0, 0x42

    .line 220
    goto :goto_0

    .line 216
    :sswitch_8
    const/16 v0, 0x5a

    .line 217
    nop

    .line 244
    :goto_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 245
    .local v1, "sbuf":Ljava/lang/StringBuffer;
    :goto_1
    add-int/lit8 v2, p1, -0x1

    .end local p1    # "dim":I
    .local v2, "dim":I
    if-lez p1, :cond_0

    .line 246
    const/16 p1, 0x5b

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move p1, v2

    goto :goto_1

    .line 248
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 249
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x12d -> :sswitch_8
        0x12f -> :sswitch_7
        0x132 -> :sswitch_6
        0x138 -> :sswitch_5
        0x13d -> :sswitch_4
        0x144 -> :sswitch_3
        0x146 -> :sswitch_2
        0x14e -> :sswitch_1
        0x158 -> :sswitch_0
    .end sparse-switch
.end method

.method private static typePrecedence(I)I
    .locals 2
    .param p0, "type"    # I

    .line 1379
    const/16 v0, 0x138

    if-ne p0, v0, :cond_0

    .line 1380
    const/4 v0, 0x0

    return v0

    .line 1381
    :cond_0
    const/16 v0, 0x13d

    if-ne p0, v0, :cond_1

    .line 1382
    const/4 v0, 0x1

    return v0

    .line 1383
    :cond_1
    const/16 v0, 0x146

    if-ne p0, v0, :cond_2

    .line 1384
    const/4 v0, 0x2

    return v0

    .line 1385
    :cond_2
    invoke-static {p0}, Ljavassist/compiler/CodeGen;->isRefType(I)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_3

    .line 1386
    return v1

    .line 1387
    :cond_3
    const/16 v0, 0x158

    if-ne p0, v0, :cond_4

    .line 1388
    return v1

    .line 1390
    :cond_4
    const/4 v0, 0x3

    return v0
.end method


# virtual methods
.method protected arrayAccess(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)V
    .locals 5
    .param p1, "array"    # Ljavassist/compiler/ast/ASTree;
    .param p2, "index"    # Ljavassist/compiler/ast/ASTree;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 1735
    invoke-virtual {p1, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 1736
    iget v0, p0, Ljavassist/compiler/CodeGen;->exprType:I

    .line 1737
    .local v0, "type":I
    iget v1, p0, Ljavassist/compiler/CodeGen;->arrayDim:I

    .line 1738
    .local v1, "dim":I
    if-eqz v1, :cond_1

    .line 1741
    iget-object v2, p0, Ljavassist/compiler/CodeGen;->className:Ljava/lang/String;

    .line 1743
    .local v2, "cname":Ljava/lang/String;
    invoke-virtual {p2, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 1744
    iget v3, p0, Ljavassist/compiler/CodeGen;->exprType:I

    invoke-static {v3}, Ljavassist/compiler/CodeGen;->typePrecedence(I)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    iget v3, p0, Ljavassist/compiler/CodeGen;->arrayDim:I

    if-gtz v3, :cond_0

    .line 1747
    iput v0, p0, Ljavassist/compiler/CodeGen;->exprType:I

    .line 1748
    add-int/lit8 v3, v1, -0x1

    iput v3, p0, Ljavassist/compiler/CodeGen;->arrayDim:I

    .line 1749
    iput-object v2, p0, Ljavassist/compiler/CodeGen;->className:Ljava/lang/String;

    .line 1750
    return-void

    .line 1745
    :cond_0
    new-instance v3, Ljavassist/compiler/CompileError;

    const-string v4, "bad array index"

    invoke-direct {v3, v4}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1739
    .end local v2    # "cname":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljavassist/compiler/CompileError;

    const-string v3, "bad array access"

    invoke-direct {v2, v3}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public atASTList(Ljavassist/compiler/ast/ASTList;)V
    .locals 0
    .param p1, "n"    # Ljavassist/compiler/ast/ASTList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 270
    invoke-static {}, Ljavassist/compiler/CodeGen;->fatal()V

    return-void
.end method

.method public abstract atArrayInit(Ljavassist/compiler/ast/ArrayInit;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation
.end method

.method public atArrayPlusPlus(IZLjavassist/compiler/ast/Expr;Z)V
    .locals 9
    .param p1, "token"    # I
    .param p2, "isPost"    # Z
    .param p3, "expr"    # Ljavassist/compiler/ast/Expr;
    .param p4, "doDup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 1892
    invoke-virtual {p3}, Ljavassist/compiler/ast/Expr;->oprand1()Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    invoke-virtual {p3}, Ljavassist/compiler/ast/Expr;->oprand2()Ljavassist/compiler/ast/ASTree;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljavassist/compiler/CodeGen;->arrayAccess(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)V

    .line 1893
    iget v0, p0, Ljavassist/compiler/CodeGen;->exprType:I

    .line 1894
    .local v0, "t":I
    iget v1, p0, Ljavassist/compiler/CodeGen;->arrayDim:I

    .line 1895
    .local v1, "dim":I
    if-lez v1, :cond_0

    .line 1896
    invoke-static {p3}, Ljavassist/compiler/CodeGen;->badType(Ljavassist/compiler/ast/Expr;)V

    .line 1898
    :cond_0
    iget-object v2, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v3, 0x5c

    invoke-virtual {v2, v3}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1899
    iget-object v2, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    iget v3, p0, Ljavassist/compiler/CodeGen;->arrayDim:I

    invoke-static {v0, v3}, Ljavassist/compiler/CodeGen;->getArrayReadOp(II)I

    move-result v3

    invoke-virtual {v2, v3}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1900
    invoke-static {v0, v1}, Ljavassist/compiler/CodeGen;->is2word(II)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x5e

    goto :goto_0

    :cond_1
    const/16 v2, 0x5b

    :goto_0
    move v4, v2

    .line 1901
    .local v4, "dup_code":I
    move-object v3, p0

    move v5, p4

    move v6, p1

    move v7, p2

    move-object v8, p3

    invoke-virtual/range {v3 .. v8}, Ljavassist/compiler/CodeGen;->atPlusPlusCore(IZIZLjavassist/compiler/ast/Expr;)V

    .line 1902
    iget-object v2, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-static {v0, v1}, Ljavassist/compiler/CodeGen;->getArrayWriteOp(II)I

    move-result v3

    invoke-virtual {v2, v3}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1903
    return-void
.end method

.method public atArrayRead(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)V
    .locals 3
    .param p1, "array"    # Ljavassist/compiler/ast/ASTree;
    .param p2, "index"    # Ljavassist/compiler/ast/ASTree;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 1728
    invoke-virtual {p0, p1, p2}, Ljavassist/compiler/CodeGen;->arrayAccess(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)V

    .line 1729
    iget-object v0, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    iget v1, p0, Ljavassist/compiler/CodeGen;->exprType:I

    iget v2, p0, Ljavassist/compiler/CodeGen;->arrayDim:I

    invoke-static {v1, v2}, Ljavassist/compiler/CodeGen;->getArrayReadOp(II)I

    move-result v1

    invoke-virtual {v0, v1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1730
    return-void
.end method

.method protected abstract atArrayVariableAssign(Ljavassist/compiler/ast/ArrayInit;IILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation
.end method

.method protected atAssignCore(Ljavassist/compiler/ast/Expr;ILjavassist/compiler/ast/ASTree;IILjava/lang/String;)V
    .locals 13
    .param p1, "expr"    # Ljavassist/compiler/ast/Expr;
    .param p2, "op"    # I
    .param p3, "right"    # Ljavassist/compiler/ast/ASTree;
    .param p4, "type"    # I
    .param p5, "dim"    # I
    .param p6, "cname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 953
    move-object v8, p0

    move v9, p2

    move/from16 v10, p4

    const/16 v11, 0x3d

    const/16 v0, 0x162

    if-ne v9, v0, :cond_0

    if-nez p5, :cond_0

    const/16 v0, 0x133

    if-ne v10, v0, :cond_0

    .line 954
    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p4

    move/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Ljavassist/compiler/CodeGen;->atStringPlusEq(Ljavassist/compiler/ast/Expr;IILjava/lang/String;Ljavassist/compiler/ast/ASTree;)V

    move-object v2, p1

    move-object/from16 v12, p3

    goto :goto_0

    .line 956
    :cond_0
    move-object/from16 v12, p3

    invoke-virtual {v12, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 957
    iget v1, v8, Ljavassist/compiler/CodeGen;->exprType:I

    iget v2, v8, Ljavassist/compiler/CodeGen;->arrayDim:I

    iget-object v3, v8, Ljavassist/compiler/CodeGen;->className:Ljava/lang/String;

    const/4 v7, 0x0

    move-object v0, p0

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v7}, Ljavassist/compiler/CodeGen;->invalidDim(IILjava/lang/String;IILjava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    if-eq v9, v11, :cond_2

    if-lez p5, :cond_2

    .line 959
    :cond_1
    invoke-static {p1}, Ljavassist/compiler/CodeGen;->badAssign(Ljavassist/compiler/ast/Expr;)V

    .line 961
    :cond_2
    if-eq v9, v11, :cond_4

    .line 962
    sget-object v0, Ljavassist/compiler/CodeGen;->assignOps:[I

    add-int/lit16 v1, v9, -0x15f

    aget v0, v0, v1

    .line 963
    .local v0, "token":I
    invoke-static {v0}, Ljavassist/compiler/CodeGen;->lookupBinOp(I)I

    move-result v1

    .line 964
    .local v1, "k":I
    if-gez v1, :cond_3

    .line 965
    invoke-static {}, Ljavassist/compiler/CodeGen;->fatal()V

    .line 967
    :cond_3
    move-object v2, p1

    invoke-direct {p0, p1, v0, v1, v10}, Ljavassist/compiler/CodeGen;->atArithBinExpr(Ljavassist/compiler/ast/Expr;III)V

    goto :goto_0

    .line 961
    .end local v0    # "token":I
    .end local v1    # "k":I
    :cond_4
    move-object v2, p1

    .line 971
    :goto_0
    if-ne v9, v11, :cond_5

    if-nez p5, :cond_6

    invoke-static/range {p4 .. p4}, Ljavassist/compiler/CodeGen;->isRefType(I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 972
    :cond_5
    iget v0, v8, Ljavassist/compiler/CodeGen;->exprType:I

    invoke-virtual {p0, v0, v10}, Ljavassist/compiler/CodeGen;->atNumCastExpr(II)V

    .line 975
    :cond_6
    return-void
.end method

.method public atAssignExpr(Ljavassist/compiler/ast/AssignExpr;)V
    .locals 1
    .param p1, "expr"    # Ljavassist/compiler/ast/AssignExpr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 832
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ljavassist/compiler/CodeGen;->atAssignExpr(Ljavassist/compiler/ast/AssignExpr;Z)V

    .line 833
    return-void
.end method

.method protected atAssignExpr(Ljavassist/compiler/ast/AssignExpr;Z)V
    .locals 10
    .param p1, "expr"    # Ljavassist/compiler/ast/AssignExpr;
    .param p2, "doDup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 839
    invoke-virtual {p1}, Ljavassist/compiler/ast/AssignExpr;->getOperator()I

    move-result v7

    .line 840
    .local v7, "op":I
    invoke-virtual {p1}, Ljavassist/compiler/ast/AssignExpr;->oprand1()Ljavassist/compiler/ast/ASTree;

    move-result-object v8

    .line 841
    .local v8, "left":Ljavassist/compiler/ast/ASTree;
    invoke-virtual {p1}, Ljavassist/compiler/ast/AssignExpr;->oprand2()Ljavassist/compiler/ast/ASTree;

    move-result-object v9

    .line 842
    .local v9, "right":Ljavassist/compiler/ast/ASTree;
    instance-of v0, v8, Ljavassist/compiler/ast/Variable;

    if-eqz v0, :cond_0

    .line 843
    move-object v3, v8

    check-cast v3, Ljavassist/compiler/ast/Variable;

    move-object v0, v8

    check-cast v0, Ljavassist/compiler/ast/Variable;

    .line 844
    invoke-virtual {v0}, Ljavassist/compiler/ast/Variable;->getDeclarator()Ljavassist/compiler/ast/Declarator;

    move-result-object v4

    .line 843
    move-object v0, p0

    move-object v1, p1

    move v2, v7

    move-object v5, v9

    move v6, p2

    invoke-direct/range {v0 .. v6}, Ljavassist/compiler/CodeGen;->atVariableAssign(Ljavassist/compiler/ast/Expr;ILjavassist/compiler/ast/Variable;Ljavassist/compiler/ast/Declarator;Ljavassist/compiler/ast/ASTree;Z)V

    goto :goto_0

    .line 847
    :cond_0
    instance-of v0, v8, Ljavassist/compiler/ast/Expr;

    if-eqz v0, :cond_1

    .line 848
    move-object v6, v8

    check-cast v6, Ljavassist/compiler/ast/Expr;

    .line 849
    .local v6, "e":Ljavassist/compiler/ast/Expr;
    invoke-virtual {v6}, Ljavassist/compiler/ast/Expr;->getOperator()I

    move-result v0

    const/16 v1, 0x41

    if-ne v0, v1, :cond_1

    .line 850
    move-object v3, v8

    check-cast v3, Ljavassist/compiler/ast/Expr;

    move-object v0, p0

    move-object v1, p1

    move v2, v7

    move-object v4, v9

    move v5, p2

    invoke-direct/range {v0 .. v5}, Ljavassist/compiler/CodeGen;->atArrayAssign(Ljavassist/compiler/ast/Expr;ILjavassist/compiler/ast/Expr;Ljavassist/compiler/ast/ASTree;Z)V

    .line 851
    return-void

    .line 855
    .end local v6    # "e":Ljavassist/compiler/ast/Expr;
    :cond_1
    move-object v0, p0

    move-object v1, p1

    move v2, v7

    move-object v3, v8

    move-object v4, v9

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Ljavassist/compiler/CodeGen;->atFieldAssign(Ljavassist/compiler/ast/Expr;ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;Z)V

    .line 857
    :goto_0
    return-void
.end method

.method public atBinExpr(Ljavassist/compiler/ast/BinExpr;)V
    .locals 8
    .param p1, "expr"    # Ljavassist/compiler/ast/BinExpr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 1059
    invoke-virtual {p1}, Ljavassist/compiler/ast/BinExpr;->getOperator()I

    move-result v0

    .line 1063
    .local v0, "token":I
    invoke-static {v0}, Ljavassist/compiler/CodeGen;->lookupBinOp(I)I

    move-result v1

    .line 1064
    .local v1, "k":I
    if-ltz v1, :cond_4

    .line 1065
    invoke-virtual {p1}, Ljavassist/compiler/ast/BinExpr;->oprand1()Ljavassist/compiler/ast/ASTree;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 1066
    invoke-virtual {p1}, Ljavassist/compiler/ast/BinExpr;->oprand2()Ljavassist/compiler/ast/ASTree;

    move-result-object v2

    .line 1067
    .local v2, "right":Ljavassist/compiler/ast/ASTree;
    if-nez v2, :cond_0

    .line 1068
    return-void

    .line 1070
    :cond_0
    iget v3, p0, Ljavassist/compiler/CodeGen;->exprType:I

    .line 1071
    .local v3, "type1":I
    iget v4, p0, Ljavassist/compiler/CodeGen;->arrayDim:I

    .line 1072
    .local v4, "dim1":I
    iget-object v5, p0, Ljavassist/compiler/CodeGen;->className:Ljava/lang/String;

    .line 1073
    .local v5, "cname1":Ljava/lang/String;
    invoke-virtual {v2, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 1074
    iget v6, p0, Ljavassist/compiler/CodeGen;->arrayDim:I

    if-ne v4, v6, :cond_3

    .line 1077
    const/16 v6, 0x2b

    if-ne v0, v6, :cond_2

    if-nez v4, :cond_2

    const/16 v6, 0x133

    if-eq v3, v6, :cond_1

    iget v7, p0, Ljavassist/compiler/CodeGen;->exprType:I

    if-ne v7, v6, :cond_2

    .line 1079
    :cond_1
    invoke-direct {p0, p1, v3, v4, v5}, Ljavassist/compiler/CodeGen;->atStringConcatExpr(Ljavassist/compiler/ast/Expr;IILjava/lang/String;)V

    goto :goto_0

    .line 1081
    :cond_2
    invoke-direct {p0, p1, v0, v1, v3}, Ljavassist/compiler/CodeGen;->atArithBinExpr(Ljavassist/compiler/ast/Expr;III)V

    .line 1082
    .end local v2    # "right":Ljavassist/compiler/ast/ASTree;
    .end local v3    # "type1":I
    .end local v4    # "dim1":I
    .end local v5    # "cname1":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 1075
    .restart local v2    # "right":Ljavassist/compiler/ast/ASTree;
    .restart local v3    # "type1":I
    .restart local v4    # "dim1":I
    .restart local v5    # "cname1":Ljava/lang/String;
    :cond_3
    new-instance v6, Ljavassist/compiler/CompileError;

    const-string v7, "incompatible array types"

    invoke-direct {v6, v7}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1086
    .end local v2    # "right":Ljavassist/compiler/ast/ASTree;
    .end local v3    # "type1":I
    .end local v4    # "dim1":I
    .end local v5    # "cname1":Ljava/lang/String;
    :cond_4
    const/4 v2, 0x1

    invoke-direct {p0, v2, p1}, Ljavassist/compiler/CodeGen;->booleanExpr(ZLjavassist/compiler/ast/ASTree;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1087
    iget-object v3, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    .line 1088
    iget-object v3, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljavassist/bytecode/Bytecode;->addIconst(I)V

    .line 1089
    iget-object v3, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v4, 0xa7

    invoke-virtual {v3, v4}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1090
    iget-object v3, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    .line 1093
    :cond_5
    iget-object v3, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v3, v2}, Ljavassist/bytecode/Bytecode;->addIconst(I)V

    .line 1095
    :goto_1
    return-void
.end method

.method public abstract atCallExpr(Ljavassist/compiler/ast/CallExpr;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation
.end method

.method public atCastExpr(Ljavassist/compiler/ast/CastExpr;)V
    .locals 4
    .param p1, "expr"    # Ljavassist/compiler/ast/CastExpr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 1473
    invoke-virtual {p1}, Ljavassist/compiler/ast/CastExpr;->getClassName()Ljavassist/compiler/ast/ASTList;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavassist/compiler/CodeGen;->resolveClassName(Ljavassist/compiler/ast/ASTList;)Ljava/lang/String;

    move-result-object v0

    .line 1474
    .local v0, "cname":Ljava/lang/String;
    invoke-direct {p0, p1, v0}, Ljavassist/compiler/CodeGen;->checkCastExpr(Ljavassist/compiler/ast/CastExpr;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1475
    .local v1, "toClass":Ljava/lang/String;
    iget v2, p0, Ljavassist/compiler/CodeGen;->exprType:I

    .line 1476
    .local v2, "srcType":I
    invoke-virtual {p1}, Ljavassist/compiler/ast/CastExpr;->getType()I

    move-result v3

    iput v3, p0, Ljavassist/compiler/CodeGen;->exprType:I

    .line 1477
    invoke-virtual {p1}, Ljavassist/compiler/ast/CastExpr;->getArrayDim()I

    move-result v3

    iput v3, p0, Ljavassist/compiler/CodeGen;->arrayDim:I

    .line 1478
    iput-object v0, p0, Ljavassist/compiler/CodeGen;->className:Ljava/lang/String;

    .line 1479
    if-nez v1, :cond_0

    .line 1480
    iget v3, p0, Ljavassist/compiler/CodeGen;->exprType:I

    invoke-virtual {p0, v2, v3}, Ljavassist/compiler/CodeGen;->atNumCastExpr(II)V

    goto :goto_0

    .line 1482
    :cond_0
    iget-object v3, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v3, v1}, Ljavassist/bytecode/Bytecode;->addCheckcast(Ljava/lang/String;)V

    .line 1483
    :goto_0
    return-void
.end method

.method public atClassObject(Ljavassist/compiler/ast/Expr;)V
    .locals 8
    .param p1, "expr"    # Ljavassist/compiler/ast/Expr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 1650
    invoke-virtual {p1}, Ljavassist/compiler/ast/Expr;->oprand1()Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    .line 1651
    .local v0, "op1":Ljavassist/compiler/ast/ASTree;
    instance-of v1, v0, Ljavassist/compiler/ast/Symbol;

    if-eqz v1, :cond_3

    .line 1654
    move-object v1, v0

    check-cast v1, Ljavassist/compiler/ast/Symbol;

    invoke-virtual {v1}, Ljavassist/compiler/ast/Symbol;->get()Ljava/lang/String;

    move-result-object v1

    .line 1655
    .local v1, "cname":Ljava/lang/String;
    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1656
    const-string v2, "[L"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 1657
    .local v2, "i":I
    if-ltz v2, :cond_1

    .line 1658
    add-int/lit8 v3, v2, 0x2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1659
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {p0, v3}, Ljavassist/compiler/CodeGen;->resolveClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1660
    .local v4, "name2":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1665
    invoke-static {v4}, Ljavassist/compiler/MemberResolver;->jvmToJavaName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1666
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 1667
    .local v5, "sbuf":Ljava/lang/StringBuffer;
    :goto_0
    add-int/lit8 v6, v2, -0x1

    .end local v2    # "i":I
    .local v6, "i":I
    if-ltz v2, :cond_0

    .line 1668
    const/16 v2, 0x5b

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v2, v6

    goto :goto_0

    .line 1670
    :cond_0
    const/16 v2, 0x4c

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v7, 0x3b

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1671
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1674
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "name2":Ljava/lang/String;
    .end local v5    # "sbuf":Ljava/lang/StringBuffer;
    .end local v6    # "i":I
    :cond_1
    goto :goto_1

    .line 1676
    :cond_2
    invoke-static {v1}, Ljavassist/compiler/MemberResolver;->javaToJvmName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljavassist/compiler/CodeGen;->resolveClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1677
    invoke-static {v1}, Ljavassist/compiler/MemberResolver;->jvmToJavaName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1680
    :goto_1
    invoke-virtual {p0, v1}, Ljavassist/compiler/CodeGen;->atClassObject2(Ljava/lang/String;)V

    .line 1681
    const/16 v2, 0x133

    iput v2, p0, Ljavassist/compiler/CodeGen;->exprType:I

    .line 1682
    const/4 v2, 0x0

    iput v2, p0, Ljavassist/compiler/CodeGen;->arrayDim:I

    .line 1683
    const-string v2, "java/lang/Class"

    iput-object v2, p0, Ljavassist/compiler/CodeGen;->className:Ljava/lang/String;

    .line 1684
    return-void

    .line 1652
    .end local v1    # "cname":Ljava/lang/String;
    :cond_3
    new-instance v1, Ljavassist/compiler/CompileError;

    const-string v2, "fatal error: badly parsed .class expr"

    invoke-direct {v1, v2}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected atClassObject2(Ljava/lang/String;)V
    .locals 8
    .param p1, "cname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 1689
    iget-object v0, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v0}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result v0

    .line 1690
    .local v0, "start":I
    iget-object v1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v1, p1}, Ljavassist/bytecode/Bytecode;->addLdc(Ljava/lang/String;)V

    .line 1691
    iget-object v1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const-string v2, "java.lang.Class"

    const-string v3, "forName"

    const-string v4, "(Ljava/lang/String;)Ljava/lang/Class;"

    invoke-virtual {v1, v2, v3, v4}, Ljavassist/bytecode/Bytecode;->addInvokestatic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1693
    iget-object v1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v1}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result v1

    .line 1694
    .local v1, "end":I
    iget-object v2, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v3, 0xa7

    invoke-virtual {v2, v3}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1695
    iget-object v2, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v2}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result v2

    .line 1696
    .local v2, "pc":I
    iget-object v3, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    .line 1698
    iget-object v3, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v3}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result v4

    const-string v5, "java.lang.ClassNotFoundException"

    invoke-virtual {v3, v0, v1, v4, v5}, Ljavassist/bytecode/Bytecode;->addExceptionHandler(IIILjava/lang/String;)V

    .line 1717
    iget-object v3, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljavassist/bytecode/Bytecode;->growStack(I)V

    .line 1718
    iget-object v3, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const-string v5, "javassist.runtime.DotClass"

    const-string v6, "fail"

    const-string v7, "(Ljava/lang/ClassNotFoundException;)Ljava/lang/NoClassDefFoundError;"

    invoke-virtual {v3, v5, v6, v7}, Ljavassist/bytecode/Bytecode;->addInvokestatic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1721
    iget-object v3, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v5, 0xbf

    invoke-virtual {v3, v5}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1722
    iget-object v3, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v3}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result v5

    sub-int/2addr v5, v2

    add-int/2addr v5, v4

    invoke-virtual {v3, v2, v5}, Ljavassist/bytecode/Bytecode;->write16bit(II)V

    .line 1723
    return-void
.end method

.method public atCondExpr(Ljavassist/compiler/ast/CondExpr;)V
    .locals 5
    .param p1, "expr"    # Ljavassist/compiler/ast/CondExpr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 1015
    invoke-virtual {p1}, Ljavassist/compiler/ast/CondExpr;->condExpr()Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Ljavassist/compiler/CodeGen;->booleanExpr(ZLjavassist/compiler/ast/ASTree;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1016
    invoke-virtual {p1}, Ljavassist/compiler/ast/CondExpr;->elseExpr()Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    goto :goto_0

    .line 1018
    :cond_0
    iget-object v0, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v0}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result v0

    .line 1019
    .local v0, "pc":I
    iget-object v2, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v2, v1}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    .line 1020
    invoke-virtual {p1}, Ljavassist/compiler/ast/CondExpr;->thenExpr()Ljavassist/compiler/ast/ASTree;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 1021
    iget v2, p0, Ljavassist/compiler/CodeGen;->arrayDim:I

    .line 1022
    .local v2, "dim1":I
    iget-object v3, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v4, 0xa7

    invoke-virtual {v3, v4}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1023
    iget-object v3, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v3}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result v3

    .line 1024
    .local v3, "pc2":I
    iget-object v4, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v4, v1}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    .line 1025
    iget-object v1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v1}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result v4

    sub-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v1, v0, v4}, Ljavassist/bytecode/Bytecode;->write16bit(II)V

    .line 1026
    invoke-virtual {p1}, Ljavassist/compiler/ast/CondExpr;->elseExpr()Ljavassist/compiler/ast/ASTree;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 1027
    iget v1, p0, Ljavassist/compiler/CodeGen;->arrayDim:I

    if-ne v2, v1, :cond_1

    .line 1030
    iget-object v1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v1}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result v4

    sub-int/2addr v4, v3

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v1, v3, v4}, Ljavassist/bytecode/Bytecode;->write16bit(II)V

    .line 1032
    .end local v0    # "pc":I
    .end local v2    # "dim1":I
    .end local v3    # "pc2":I
    :goto_0
    return-void

    .line 1028
    .restart local v0    # "pc":I
    .restart local v2    # "dim1":I
    .restart local v3    # "pc2":I
    :cond_1
    new-instance v1, Ljavassist/compiler/CompileError;

    const-string v4, "type mismatch in ?:"

    invoke-direct {v1, v4}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public atDeclarator(Ljavassist/compiler/ast/Declarator;)V
    .locals 9
    .param p1, "d"    # Ljavassist/compiler/ast/Declarator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 804
    invoke-virtual {p0}, Ljavassist/compiler/CodeGen;->getMaxLocals()I

    move-result v0

    invoke-virtual {p1, v0}, Ljavassist/compiler/ast/Declarator;->setLocalVar(I)V

    .line 805
    invoke-virtual {p1}, Ljavassist/compiler/ast/Declarator;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavassist/compiler/CodeGen;->resolveClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavassist/compiler/ast/Declarator;->setClassName(Ljava/lang/String;)V

    .line 808
    invoke-virtual {p1}, Ljavassist/compiler/ast/Declarator;->getType()I

    move-result v0

    invoke-virtual {p1}, Ljavassist/compiler/ast/Declarator;->getArrayDim()I

    move-result v1

    invoke-static {v0, v1}, Ljavassist/compiler/CodeGen;->is2word(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 809
    const/4 v0, 0x2

    .local v0, "size":I
    goto :goto_0

    .line 811
    .end local v0    # "size":I
    :cond_0
    const/4 v0, 0x1

    .line 813
    .restart local v0    # "size":I
    :goto_0
    invoke-virtual {p0, v0}, Ljavassist/compiler/CodeGen;->incMaxLocals(I)V

    .line 817
    invoke-virtual {p1}, Ljavassist/compiler/ast/Declarator;->getInitializer()Ljavassist/compiler/ast/ASTree;

    move-result-object v8

    .line 818
    .local v8, "init":Ljavassist/compiler/ast/ASTree;
    if-eqz v8, :cond_1

    .line 819
    invoke-virtual {p0, v8}, Ljavassist/compiler/CodeGen;->doTypeCheck(Ljavassist/compiler/ast/ASTree;)V

    .line 820
    const/4 v2, 0x0

    const/16 v3, 0x3d

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v5, p1

    move-object v6, v8

    invoke-direct/range {v1 .. v7}, Ljavassist/compiler/CodeGen;->atVariableAssign(Ljavassist/compiler/ast/Expr;ILjavassist/compiler/ast/Variable;Ljavassist/compiler/ast/Declarator;Ljavassist/compiler/ast/ASTree;Z)V

    .line 822
    :cond_1
    return-void
.end method

.method public atDoubleConst(Ljavassist/compiler/ast/DoubleConst;)V
    .locals 3
    .param p1, "d"    # Ljavassist/compiler/ast/DoubleConst;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 2034
    const/4 v0, 0x0

    iput v0, p0, Ljavassist/compiler/CodeGen;->arrayDim:I

    .line 2035
    invoke-virtual {p1}, Ljavassist/compiler/ast/DoubleConst;->getType()I

    move-result v0

    const/16 v1, 0x195

    if-ne v0, v1, :cond_0

    .line 2036
    const/16 v0, 0x138

    iput v0, p0, Ljavassist/compiler/CodeGen;->exprType:I

    .line 2037
    iget-object v0, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {p1}, Ljavassist/compiler/ast/DoubleConst;->get()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljavassist/bytecode/Bytecode;->addDconst(D)V

    goto :goto_0

    .line 2040
    :cond_0
    const/16 v0, 0x13d

    iput v0, p0, Ljavassist/compiler/CodeGen;->exprType:I

    .line 2041
    iget-object v0, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {p1}, Ljavassist/compiler/ast/DoubleConst;->get()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Ljavassist/bytecode/Bytecode;->addFconst(F)V

    .line 2043
    :goto_0
    return-void
.end method

.method public atExpr(Ljavassist/compiler/ast/Expr;)V
    .locals 8
    .param p1, "expr"    # Ljavassist/compiler/ast/Expr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 1563
    invoke-virtual {p1}, Ljavassist/compiler/ast/Expr;->getOperator()I

    move-result v0

    .line 1564
    .local v0, "token":I
    invoke-virtual {p1}, Ljavassist/compiler/ast/Expr;->oprand1()Ljavassist/compiler/ast/ASTree;

    move-result-object v1

    .line 1565
    .local v1, "oprand":Ljavassist/compiler/ast/ASTree;
    const/16 v2, 0x2e

    if-ne v0, v2, :cond_1

    .line 1566
    invoke-virtual {p1}, Ljavassist/compiler/ast/Expr;->oprand2()Ljavassist/compiler/ast/ASTree;

    move-result-object v2

    check-cast v2, Ljavassist/compiler/ast/Symbol;

    invoke-virtual {v2}, Ljavassist/compiler/ast/Symbol;->get()Ljava/lang/String;

    move-result-object v2

    .line 1567
    .local v2, "member":Ljava/lang/String;
    const-string v3, "class"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1568
    invoke-virtual {p0, p1}, Ljavassist/compiler/CodeGen;->atClassObject(Ljavassist/compiler/ast/Expr;)V

    goto :goto_0

    .line 1570
    :cond_0
    invoke-virtual {p0, p1}, Ljavassist/compiler/CodeGen;->atFieldRead(Ljavassist/compiler/ast/ASTree;)V

    .line 1571
    .end local v2    # "member":Ljava/lang/String;
    :goto_0
    goto/16 :goto_2

    .line 1572
    :cond_1
    const/16 v2, 0x23

    if-ne v0, v2, :cond_2

    .line 1577
    invoke-virtual {p0, p1}, Ljavassist/compiler/CodeGen;->atFieldRead(Ljavassist/compiler/ast/ASTree;)V

    goto/16 :goto_2

    .line 1579
    :cond_2
    const/16 v2, 0x41

    if-ne v0, v2, :cond_3

    .line 1580
    invoke-virtual {p1}, Ljavassist/compiler/ast/Expr;->oprand2()Ljavassist/compiler/ast/ASTree;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljavassist/compiler/CodeGen;->atArrayRead(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)V

    goto/16 :goto_2

    .line 1581
    :cond_3
    const/16 v2, 0x16a

    const/4 v3, 0x1

    if-eq v0, v2, :cond_12

    const/16 v2, 0x16b

    if-ne v0, v2, :cond_4

    goto/16 :goto_1

    .line 1583
    :cond_4
    const/16 v2, 0x21

    if-ne v0, v2, :cond_6

    .line 1584
    const/4 v2, 0x0

    invoke-direct {p0, v2, p1}, Ljavassist/compiler/CodeGen;->booleanExpr(ZLjavassist/compiler/ast/ASTree;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1585
    iget-object v4, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    .line 1586
    iget-object v4, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v4, v3}, Ljavassist/bytecode/Bytecode;->addIconst(I)V

    .line 1587
    iget-object v3, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v4, 0xa7

    invoke-virtual {v3, v4}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1588
    iget-object v3, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    .line 1591
    :cond_5
    iget-object v3, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v3, v2}, Ljavassist/bytecode/Bytecode;->addIconst(I)V

    goto/16 :goto_2

    .line 1593
    :cond_6
    const/16 v2, 0x43

    if-ne v0, v2, :cond_7

    .line 1594
    invoke-static {}, Ljavassist/compiler/CodeGen;->fatal()V

    goto/16 :goto_2

    .line 1596
    :cond_7
    invoke-virtual {p1}, Ljavassist/compiler/ast/Expr;->oprand1()Ljavassist/compiler/ast/ASTree;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 1597
    iget v2, p0, Ljavassist/compiler/CodeGen;->exprType:I

    invoke-static {v2}, Ljavassist/compiler/CodeGen;->typePrecedence(I)I

    move-result v2

    .line 1598
    .local v2, "type":I
    iget v4, p0, Ljavassist/compiler/CodeGen;->arrayDim:I

    if-lez v4, :cond_8

    .line 1599
    invoke-static {p1}, Ljavassist/compiler/CodeGen;->badType(Ljavassist/compiler/ast/Expr;)V

    .line 1601
    :cond_8
    const/16 v4, 0x2d

    const/16 v5, 0x144

    const/4 v6, 0x2

    const/4 v7, 0x3

    if-ne v0, v4, :cond_d

    .line 1602
    if-nez v2, :cond_9

    .line 1603
    iget-object v3, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v4, 0x77

    invoke-virtual {v3, v4}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    goto :goto_2

    .line 1604
    :cond_9
    if-ne v2, v3, :cond_a

    .line 1605
    iget-object v3, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v4, 0x76

    invoke-virtual {v3, v4}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    goto :goto_2

    .line 1606
    :cond_a
    if-ne v2, v6, :cond_b

    .line 1607
    iget-object v3, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v4, 0x75

    invoke-virtual {v3, v4}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    goto :goto_2

    .line 1608
    :cond_b
    if-ne v2, v7, :cond_c

    .line 1609
    iget-object v3, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v4, 0x74

    invoke-virtual {v3, v4}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1610
    iput v5, p0, Ljavassist/compiler/CodeGen;->exprType:I

    goto :goto_2

    .line 1613
    :cond_c
    invoke-static {p1}, Ljavassist/compiler/CodeGen;->badType(Ljavassist/compiler/ast/Expr;)V

    goto :goto_2

    .line 1615
    :cond_d
    const/16 v3, 0x7e

    const/4 v4, -0x1

    if-ne v0, v3, :cond_10

    .line 1616
    if-ne v2, v7, :cond_e

    .line 1617
    iget-object v3, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v3, v4}, Ljavassist/bytecode/Bytecode;->addIconst(I)V

    .line 1618
    iget-object v3, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v4, 0x82

    invoke-virtual {v3, v4}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1619
    iput v5, p0, Ljavassist/compiler/CodeGen;->exprType:I

    goto :goto_2

    .line 1621
    :cond_e
    if-ne v2, v6, :cond_f

    .line 1622
    iget-object v3, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const-wide/16 v4, -0x1

    invoke-virtual {v3, v4, v5}, Ljavassist/bytecode/Bytecode;->addLconst(J)V

    .line 1623
    iget-object v3, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v4, 0x83

    invoke-virtual {v3, v4}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    goto :goto_2

    .line 1626
    :cond_f
    invoke-static {p1}, Ljavassist/compiler/CodeGen;->badType(Ljavassist/compiler/ast/Expr;)V

    goto :goto_2

    .line 1629
    :cond_10
    const/16 v3, 0x2b

    if-ne v0, v3, :cond_11

    .line 1630
    if-ne v2, v4, :cond_13

    .line 1631
    invoke-static {p1}, Ljavassist/compiler/CodeGen;->badType(Ljavassist/compiler/ast/Expr;)V

    goto :goto_2

    .line 1636
    :cond_11
    invoke-static {}, Ljavassist/compiler/CodeGen;->fatal()V

    goto :goto_2

    .line 1582
    .end local v2    # "type":I
    :cond_12
    :goto_1
    invoke-direct {p0, v0, v1, p1, v3}, Ljavassist/compiler/CodeGen;->atPlusPlus(ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/Expr;Z)V

    .line 1638
    :cond_13
    :goto_2
    return-void
.end method

.method protected abstract atFieldAssign(Ljavassist/compiler/ast/Expr;ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation
.end method

.method public atFieldDecl(Ljavassist/compiler/ast/FieldDecl;)V
    .locals 1
    .param p1, "field"    # Ljavassist/compiler/ast/FieldDecl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 280
    invoke-virtual {p1}, Ljavassist/compiler/ast/FieldDecl;->getInit()Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 281
    return-void
.end method

.method protected abstract atFieldPlusPlus(IZLjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/Expr;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation
.end method

.method protected abstract atFieldRead(Ljavassist/compiler/ast/ASTree;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation
.end method

.method public atInstanceOfExpr(Ljavassist/compiler/ast/InstanceOfExpr;)V
    .locals 3
    .param p1, "expr"    # Ljavassist/compiler/ast/InstanceOfExpr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 1487
    invoke-virtual {p1}, Ljavassist/compiler/ast/InstanceOfExpr;->getClassName()Ljavassist/compiler/ast/ASTList;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavassist/compiler/CodeGen;->resolveClassName(Ljavassist/compiler/ast/ASTList;)Ljava/lang/String;

    move-result-object v0

    .line 1488
    .local v0, "cname":Ljava/lang/String;
    invoke-direct {p0, p1, v0}, Ljavassist/compiler/CodeGen;->checkCastExpr(Ljavassist/compiler/ast/CastExpr;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1489
    .local v1, "toClass":Ljava/lang/String;
    iget-object v2, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v2, v1}, Ljavassist/bytecode/Bytecode;->addInstanceof(Ljava/lang/String;)V

    .line 1490
    const/16 v2, 0x12d

    iput v2, p0, Ljavassist/compiler/CodeGen;->exprType:I

    .line 1491
    const/4 v2, 0x0

    iput v2, p0, Ljavassist/compiler/CodeGen;->arrayDim:I

    .line 1492
    return-void
.end method

.method public atIntConst(Ljavassist/compiler/ast/IntConst;)V
    .locals 5
    .param p1, "i"    # Ljavassist/compiler/ast/IntConst;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 2019
    const/4 v0, 0x0

    iput v0, p0, Ljavassist/compiler/CodeGen;->arrayDim:I

    .line 2020
    invoke-virtual {p1}, Ljavassist/compiler/ast/IntConst;->get()J

    move-result-wide v0

    .line 2021
    .local v0, "value":J
    invoke-virtual {p1}, Ljavassist/compiler/ast/IntConst;->getType()I

    move-result v2

    .line 2022
    .local v2, "type":I
    const/16 v3, 0x192

    if-eq v2, v3, :cond_1

    const/16 v4, 0x191

    if-ne v2, v4, :cond_0

    goto :goto_0

    .line 2027
    :cond_0
    const/16 v3, 0x146

    iput v3, p0, Ljavassist/compiler/CodeGen;->exprType:I

    .line 2028
    iget-object v3, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v3, v0, v1}, Ljavassist/bytecode/Bytecode;->addLconst(J)V

    goto :goto_2

    .line 2023
    :cond_1
    :goto_0
    if-ne v2, v3, :cond_2

    const/16 v3, 0x144

    goto :goto_1

    :cond_2
    const/16 v3, 0x132

    :goto_1
    iput v3, p0, Ljavassist/compiler/CodeGen;->exprType:I

    .line 2024
    iget-object v3, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    long-to-int v4, v0

    invoke-virtual {v3, v4}, Ljavassist/bytecode/Bytecode;->addIconst(I)V

    .line 2030
    :goto_2
    return-void
.end method

.method public atKeyword(Ljavassist/compiler/ast/Keyword;)V
    .locals 5
    .param p1, "k"    # Ljavassist/compiler/ast/Keyword;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 1976
    const/4 v0, 0x0

    iput v0, p0, Ljavassist/compiler/CodeGen;->arrayDim:I

    .line 1977
    invoke-virtual {p1}, Ljavassist/compiler/ast/Keyword;->get()I

    move-result v1

    .line 1978
    .local v1, "token":I
    const/16 v2, 0x12d

    const/4 v3, 0x1

    sparse-switch v1, :sswitch_data_0

    .line 2005
    invoke-static {}, Ljavassist/compiler/CodeGen;->fatal()V

    goto :goto_1

    .line 1988
    :sswitch_0
    iget-object v0, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v0, v3}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1989
    const/16 v0, 0x19c

    iput v0, p0, Ljavassist/compiler/CodeGen;->exprType:I

    .line 1990
    goto :goto_1

    .line 1984
    :sswitch_1
    iget-object v3, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v3, v0}, Ljavassist/bytecode/Bytecode;->addIconst(I)V

    .line 1985
    iput v2, p0, Ljavassist/compiler/CodeGen;->exprType:I

    .line 1986
    goto :goto_1

    .line 1980
    :sswitch_2
    iget-object v0, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v0, v3}, Ljavassist/bytecode/Bytecode;->addIconst(I)V

    .line 1981
    iput v2, p0, Ljavassist/compiler/CodeGen;->exprType:I

    .line 1982
    goto :goto_1

    .line 1993
    :sswitch_3
    iget-boolean v2, p0, Ljavassist/compiler/CodeGen;->inStaticMethod:Z

    const/16 v3, 0x153

    if-eqz v2, :cond_1

    .line 1994
    new-instance v0, Ljavassist/compiler/CompileError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not-available: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1995
    if-ne v1, v3, :cond_0

    const-string v3, "this"

    goto :goto_0

    :cond_0
    const-string v3, "super"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1997
    :cond_1
    iget-object v2, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v2, v0}, Ljavassist/bytecode/Bytecode;->addAload(I)V

    .line 1998
    const/16 v0, 0x133

    iput v0, p0, Ljavassist/compiler/CodeGen;->exprType:I

    .line 1999
    if-ne v1, v3, :cond_2

    .line 2000
    invoke-virtual {p0}, Ljavassist/compiler/CodeGen;->getThisName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavassist/compiler/CodeGen;->className:Ljava/lang/String;

    goto :goto_1

    .line 2002
    :cond_2
    invoke-virtual {p0}, Ljavassist/compiler/CodeGen;->getSuperName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavassist/compiler/CodeGen;->className:Ljava/lang/String;

    .line 2003
    nop

    .line 2007
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x150 -> :sswitch_3
        0x153 -> :sswitch_3
        0x19a -> :sswitch_2
        0x19b -> :sswitch_1
        0x19c -> :sswitch_0
    .end sparse-switch
.end method

.method public abstract atMember(Ljavassist/compiler/ast/Member;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation
.end method

.method public atMethodBody(Ljavassist/compiler/ast/Stmnt;ZZ)V
    .locals 2
    .param p1, "s"    # Ljavassist/compiler/ast/Stmnt;
    .param p2, "isCons"    # Z
    .param p3, "isVoid"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 314
    if-nez p1, :cond_0

    .line 315
    return-void

    .line 317
    :cond_0
    if-eqz p2, :cond_1

    invoke-direct {p0, p1}, Ljavassist/compiler/CodeGen;->needsSuperCall(Ljavassist/compiler/ast/Stmnt;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 318
    invoke-virtual {p0}, Ljavassist/compiler/CodeGen;->insertDefaultSuperCall()V

    .line 320
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavassist/compiler/CodeGen;->hasReturned:Z

    .line 321
    invoke-virtual {p1, p0}, Ljavassist/compiler/ast/Stmnt;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 322
    iget-boolean v0, p0, Ljavassist/compiler/CodeGen;->hasReturned:Z

    if-nez v0, :cond_3

    .line 323
    if-eqz p3, :cond_2

    .line 324
    iget-object v0, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v1, 0xb1

    invoke-virtual {v0, v1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 325
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavassist/compiler/CodeGen;->hasReturned:Z

    goto :goto_0

    .line 328
    :cond_2
    new-instance v0, Ljavassist/compiler/CompileError;

    const-string v1, "no return statement"

    invoke-direct {v0, v1}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 329
    :cond_3
    :goto_0
    return-void
.end method

.method public atMethodDecl(Ljavassist/compiler/ast/MethodDecl;)V
    .locals 8
    .param p1, "method"    # Ljavassist/compiler/ast/MethodDecl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 285
    invoke-virtual {p1}, Ljavassist/compiler/ast/MethodDecl;->getModifiers()Ljavassist/compiler/ast/ASTList;

    move-result-object v0

    .line 286
    .local v0, "mods":Ljavassist/compiler/ast/ASTList;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljavassist/compiler/CodeGen;->setMaxLocals(I)V

    .line 287
    :goto_0
    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 288
    invoke-virtual {v0}, Ljavassist/compiler/ast/ASTList;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object v3

    check-cast v3, Ljavassist/compiler/ast/Keyword;

    .line 289
    .local v3, "k":Ljavassist/compiler/ast/Keyword;
    invoke-virtual {v0}, Ljavassist/compiler/ast/ASTList;->tail()Ljavassist/compiler/ast/ASTList;

    move-result-object v0

    .line 290
    invoke-virtual {v3}, Ljavassist/compiler/ast/Keyword;->get()I

    move-result v4

    const/16 v5, 0x14f

    if-ne v4, v5, :cond_0

    .line 291
    invoke-virtual {p0, v2}, Ljavassist/compiler/CodeGen;->setMaxLocals(I)V

    .line 292
    iput-boolean v1, p0, Ljavassist/compiler/CodeGen;->inStaticMethod:Z

    .line 294
    .end local v3    # "k":Ljavassist/compiler/ast/Keyword;
    :cond_0
    goto :goto_0

    .line 296
    :cond_1
    invoke-virtual {p1}, Ljavassist/compiler/ast/MethodDecl;->getParams()Ljavassist/compiler/ast/ASTList;

    move-result-object v3

    .line 297
    .local v3, "params":Ljavassist/compiler/ast/ASTList;
    :goto_1
    if-eqz v3, :cond_2

    .line 298
    invoke-virtual {v3}, Ljavassist/compiler/ast/ASTList;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object v4

    check-cast v4, Ljavassist/compiler/ast/Declarator;

    invoke-virtual {p0, v4}, Ljavassist/compiler/CodeGen;->atDeclarator(Ljavassist/compiler/ast/Declarator;)V

    .line 299
    invoke-virtual {v3}, Ljavassist/compiler/ast/ASTList;->tail()Ljavassist/compiler/ast/ASTList;

    move-result-object v3

    goto :goto_1

    .line 302
    :cond_2
    invoke-virtual {p1}, Ljavassist/compiler/ast/MethodDecl;->getBody()Ljavassist/compiler/ast/Stmnt;

    move-result-object v4

    .line 303
    .local v4, "s":Ljavassist/compiler/ast/Stmnt;
    invoke-virtual {p1}, Ljavassist/compiler/ast/MethodDecl;->isConstructor()Z

    move-result v5

    .line 304
    invoke-virtual {p1}, Ljavassist/compiler/ast/MethodDecl;->getReturn()Ljavassist/compiler/ast/Declarator;

    move-result-object v6

    invoke-virtual {v6}, Ljavassist/compiler/ast/Declarator;->getType()I

    move-result v6

    const/16 v7, 0x158

    if-ne v6, v7, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    .line 303
    :goto_2
    invoke-virtual {p0, v4, v5, v1}, Ljavassist/compiler/CodeGen;->atMethodBody(Ljavassist/compiler/ast/Stmnt;ZZ)V

    .line 305
    return-void
.end method

.method public abstract atNewExpr(Ljavassist/compiler/ast/NewExpr;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation
.end method

.method atNumCastExpr(II)V
    .locals 5
    .param p1, "srcType"    # I
    .param p2, "destType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 1524
    if-ne p1, p2, :cond_0

    .line 1525
    return-void

    .line 1528
    :cond_0
    invoke-static {p1}, Ljavassist/compiler/CodeGen;->typePrecedence(I)I

    move-result v0

    .line 1529
    .local v0, "stype":I
    invoke-static {p2}, Ljavassist/compiler/CodeGen;->typePrecedence(I)I

    move-result v1

    .line 1530
    .local v1, "dtype":I
    if-ltz v0, :cond_1

    const/4 v2, 0x3

    if-ge v0, v2, :cond_1

    .line 1531
    sget-object v2, Ljavassist/compiler/CodeGen;->castOp:[I

    mul-int/lit8 v3, v0, 0x4

    add-int/2addr v3, v1

    aget v2, v2, v3

    .local v2, "op":I
    goto :goto_0

    .line 1533
    .end local v2    # "op":I
    :cond_1
    const/4 v2, 0x0

    .line 1535
    .restart local v2    # "op":I
    :goto_0
    const/16 v3, 0x138

    if-ne p2, v3, :cond_2

    .line 1536
    const/16 v3, 0x87

    .local v3, "op2":I
    goto :goto_1

    .line 1537
    .end local v3    # "op2":I
    :cond_2
    const/16 v3, 0x13d

    if-ne p2, v3, :cond_3

    .line 1538
    const/16 v3, 0x86

    .restart local v3    # "op2":I
    goto :goto_1

    .line 1539
    .end local v3    # "op2":I
    :cond_3
    const/16 v3, 0x146

    if-ne p2, v3, :cond_4

    .line 1540
    const/16 v3, 0x85

    .restart local v3    # "op2":I
    goto :goto_1

    .line 1541
    .end local v3    # "op2":I
    :cond_4
    const/16 v3, 0x14e

    if-ne p2, v3, :cond_5

    .line 1542
    const/16 v3, 0x93

    .restart local v3    # "op2":I
    goto :goto_1

    .line 1543
    .end local v3    # "op2":I
    :cond_5
    const/16 v3, 0x132

    if-ne p2, v3, :cond_6

    .line 1544
    const/16 v3, 0x92

    .restart local v3    # "op2":I
    goto :goto_1

    .line 1545
    .end local v3    # "op2":I
    :cond_6
    const/16 v3, 0x12f

    if-ne p2, v3, :cond_7

    .line 1546
    const/16 v3, 0x91

    .restart local v3    # "op2":I
    goto :goto_1

    .line 1548
    .end local v3    # "op2":I
    :cond_7
    const/4 v3, 0x0

    .line 1550
    .restart local v3    # "op2":I
    :goto_1
    if-eqz v2, :cond_8

    .line 1551
    iget-object v4, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v4, v2}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1553
    :cond_8
    if-eqz v2, :cond_9

    const/16 v4, 0x88

    if-eq v2, v4, :cond_9

    const/16 v4, 0x8b

    if-eq v2, v4, :cond_9

    const/16 v4, 0x8e

    if-ne v2, v4, :cond_a

    .line 1554
    :cond_9
    if-eqz v3, :cond_a

    .line 1555
    iget-object v4, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v4, v3}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1556
    :cond_a
    return-void
.end method

.method public atPair(Ljavassist/compiler/ast/Pair;)V
    .locals 0
    .param p1, "n"    # Ljavassist/compiler/ast/Pair;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 273
    invoke-static {}, Ljavassist/compiler/CodeGen;->fatal()V

    return-void
.end method

.method protected atPlusPlusCore(IZIZLjavassist/compiler/ast/Expr;)V
    .locals 5
    .param p1, "dup_code"    # I
    .param p2, "doDup"    # Z
    .param p3, "token"    # I
    .param p4, "isPost"    # Z
    .param p5, "expr"    # Ljavassist/compiler/ast/Expr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 1909
    iget v0, p0, Ljavassist/compiler/CodeGen;->exprType:I

    .line 1911
    .local v0, "t":I
    if-eqz p2, :cond_0

    if-eqz p4, :cond_0

    .line 1912
    iget-object v1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v1, p1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1914
    :cond_0
    const/16 v1, 0x144

    const/16 v2, 0x16a

    if-eq v0, v1, :cond_8

    const/16 v3, 0x12f

    if-eq v0, v3, :cond_8

    const/16 v3, 0x132

    if-eq v0, v3, :cond_8

    const/16 v3, 0x14e

    if-ne v0, v3, :cond_1

    goto :goto_3

    .line 1919
    :cond_1
    const/16 v1, 0x146

    if-ne v0, v1, :cond_3

    .line 1920
    iget-object v1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const-wide/16 v3, 0x1

    invoke-virtual {v1, v3, v4}, Ljavassist/bytecode/Bytecode;->addLconst(J)V

    .line 1921
    iget-object v1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    if-ne p3, v2, :cond_2

    const/16 v2, 0x61

    goto :goto_0

    :cond_2
    const/16 v2, 0x65

    :goto_0
    invoke-virtual {v1, v2}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    goto :goto_5

    .line 1923
    :cond_3
    const/16 v1, 0x13d

    if-ne v0, v1, :cond_5

    .line 1924
    iget-object v1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3}, Ljavassist/bytecode/Bytecode;->addFconst(F)V

    .line 1925
    iget-object v1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    if-ne p3, v2, :cond_4

    const/16 v2, 0x62

    goto :goto_1

    :cond_4
    const/16 v2, 0x66

    :goto_1
    invoke-virtual {v1, v2}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    goto :goto_5

    .line 1927
    :cond_5
    const/16 v1, 0x138

    if-ne v0, v1, :cond_7

    .line 1928
    iget-object v1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v1, v3, v4}, Ljavassist/bytecode/Bytecode;->addDconst(D)V

    .line 1929
    iget-object v1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    if-ne p3, v2, :cond_6

    const/16 v2, 0x63

    goto :goto_2

    :cond_6
    const/16 v2, 0x67

    :goto_2
    invoke-virtual {v1, v2}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    goto :goto_5

    .line 1932
    :cond_7
    invoke-static {p5}, Ljavassist/compiler/CodeGen;->badType(Ljavassist/compiler/ast/Expr;)V

    goto :goto_5

    .line 1915
    :cond_8
    :goto_3
    iget-object v3, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljavassist/bytecode/Bytecode;->addIconst(I)V

    .line 1916
    iget-object v3, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    if-ne p3, v2, :cond_9

    const/16 v2, 0x60

    goto :goto_4

    :cond_9
    const/16 v2, 0x64

    :goto_4
    invoke-virtual {v3, v2}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1917
    iput v1, p0, Ljavassist/compiler/CodeGen;->exprType:I

    .line 1934
    :goto_5
    if-eqz p2, :cond_a

    if-nez p4, :cond_a

    .line 1935
    iget-object v1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v1, p1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1936
    :cond_a
    return-void
.end method

.method protected atReturnStmnt(Ljavassist/compiler/ast/Stmnt;)V
    .locals 1
    .param p1, "st"    # Ljavassist/compiler/ast/Stmnt;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 681
    invoke-virtual {p1}, Ljavassist/compiler/ast/Stmnt;->getLeft()Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavassist/compiler/CodeGen;->atReturnStmnt2(Ljavassist/compiler/ast/ASTree;)V

    .line 682
    return-void
.end method

.method protected final atReturnStmnt2(Ljavassist/compiler/ast/ASTree;)V
    .locals 4
    .param p1, "result"    # Ljavassist/compiler/ast/ASTree;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 686
    if-nez p1, :cond_0

    .line 687
    const/16 v0, 0xb1

    .local v0, "op":I
    goto :goto_0

    .line 689
    .end local v0    # "op":I
    :cond_0
    invoke-virtual {p0, p1}, Ljavassist/compiler/CodeGen;->compileExpr(Ljavassist/compiler/ast/ASTree;)V

    .line 690
    iget v0, p0, Ljavassist/compiler/CodeGen;->arrayDim:I

    if-lez v0, :cond_1

    .line 691
    const/16 v0, 0xb0

    .restart local v0    # "op":I
    goto :goto_0

    .line 693
    .end local v0    # "op":I
    :cond_1
    iget v0, p0, Ljavassist/compiler/CodeGen;->exprType:I

    .line 694
    .local v0, "type":I
    const/16 v1, 0x138

    if-ne v0, v1, :cond_2

    .line 695
    const/16 v1, 0xaf

    move v0, v1

    .local v1, "op":I
    goto :goto_0

    .line 696
    .end local v1    # "op":I
    :cond_2
    const/16 v1, 0x13d

    if-ne v0, v1, :cond_3

    .line 697
    const/16 v1, 0xae

    move v0, v1

    .restart local v1    # "op":I
    goto :goto_0

    .line 698
    .end local v1    # "op":I
    :cond_3
    const/16 v1, 0x146

    if-ne v0, v1, :cond_4

    .line 699
    const/16 v1, 0xad

    move v0, v1

    .restart local v1    # "op":I
    goto :goto_0

    .line 700
    .end local v1    # "op":I
    :cond_4
    invoke-static {v0}, Ljavassist/compiler/CodeGen;->isRefType(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 701
    const/16 v1, 0xb0

    move v0, v1

    .restart local v1    # "op":I
    goto :goto_0

    .line 703
    .end local v1    # "op":I
    :cond_5
    const/16 v1, 0xac

    move v0, v1

    .line 707
    .local v0, "op":I
    :goto_0
    iget-object v1, p0, Ljavassist/compiler/CodeGen;->returnHooks:Ljavassist/compiler/CodeGen$ReturnHook;

    .local v1, "har":Ljavassist/compiler/CodeGen$ReturnHook;
    :goto_1
    const/4 v2, 0x1

    if-eqz v1, :cond_7

    .line 708
    iget-object v3, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v1, v3, v0}, Ljavassist/compiler/CodeGen$ReturnHook;->doit(Ljavassist/bytecode/Bytecode;I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 709
    iput-boolean v2, p0, Ljavassist/compiler/CodeGen;->hasReturned:Z

    .line 710
    return-void

    .line 707
    :cond_6
    iget-object v1, v1, Ljavassist/compiler/CodeGen$ReturnHook;->next:Ljavassist/compiler/CodeGen$ReturnHook;

    goto :goto_1

    .line 713
    .end local v1    # "har":Ljavassist/compiler/CodeGen$ReturnHook;
    :cond_7
    iget-object v1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v1, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 714
    iput-boolean v2, p0, Ljavassist/compiler/CodeGen;->hasReturned:Z

    .line 715
    return-void
.end method

.method public atStmnt(Ljavassist/compiler/ast/Stmnt;)V
    .locals 6
    .param p1, "st"    # Ljavassist/compiler/ast/Stmnt;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 354
    if-nez p1, :cond_0

    .line 355
    return-void

    .line 357
    :cond_0
    invoke-virtual {p1}, Ljavassist/compiler/ast/Stmnt;->getOperator()I

    move-result v0

    .line 358
    .local v0, "op":I
    const/16 v1, 0x45

    const/4 v2, 0x0

    if-ne v0, v1, :cond_5

    .line 359
    invoke-virtual {p1}, Ljavassist/compiler/ast/Stmnt;->getLeft()Ljavassist/compiler/ast/ASTree;

    move-result-object v1

    .line 360
    .local v1, "expr":Ljavassist/compiler/ast/ASTree;
    invoke-virtual {p0, v1}, Ljavassist/compiler/CodeGen;->doTypeCheck(Ljavassist/compiler/ast/ASTree;)V

    .line 361
    instance-of v3, v1, Ljavassist/compiler/ast/AssignExpr;

    if-eqz v3, :cond_1

    .line 362
    move-object v3, v1

    check-cast v3, Ljavassist/compiler/ast/AssignExpr;

    invoke-virtual {p0, v3, v2}, Ljavassist/compiler/CodeGen;->atAssignExpr(Ljavassist/compiler/ast/AssignExpr;Z)V

    goto :goto_0

    .line 363
    :cond_1
    invoke-static {v1}, Ljavassist/compiler/CodeGen;->isPlusPlusExpr(Ljavassist/compiler/ast/ASTree;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 364
    move-object v3, v1

    check-cast v3, Ljavassist/compiler/ast/Expr;

    .line 365
    .local v3, "e":Ljavassist/compiler/ast/Expr;
    invoke-virtual {v3}, Ljavassist/compiler/ast/Expr;->getOperator()I

    move-result v4

    invoke-virtual {v3}, Ljavassist/compiler/ast/Expr;->oprand1()Ljavassist/compiler/ast/ASTree;

    move-result-object v5

    invoke-direct {p0, v4, v5, v3, v2}, Ljavassist/compiler/CodeGen;->atPlusPlus(ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/Expr;Z)V

    .line 366
    .end local v3    # "e":Ljavassist/compiler/ast/Expr;
    goto :goto_0

    .line 368
    :cond_2
    invoke-virtual {v1, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 369
    iget v2, p0, Ljavassist/compiler/CodeGen;->exprType:I

    iget v3, p0, Ljavassist/compiler/CodeGen;->arrayDim:I

    invoke-static {v2, v3}, Ljavassist/compiler/CodeGen;->is2word(II)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 370
    iget-object v2, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v3, 0x58

    invoke-virtual {v2, v3}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    goto :goto_0

    .line 371
    :cond_3
    iget v2, p0, Ljavassist/compiler/CodeGen;->exprType:I

    const/16 v3, 0x158

    if-eq v2, v3, :cond_4

    .line 372
    iget-object v2, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v3, 0x57

    invoke-virtual {v2, v3}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 374
    .end local v1    # "expr":Ljavassist/compiler/ast/ASTree;
    :cond_4
    :goto_0
    goto/16 :goto_5

    .line 375
    :cond_5
    const/16 v1, 0x44

    if-eq v0, v1, :cond_14

    const/16 v1, 0x42

    if-ne v0, v1, :cond_6

    goto/16 :goto_3

    .line 384
    :cond_6
    const/16 v1, 0x140

    if-ne v0, v1, :cond_7

    .line 385
    invoke-direct {p0, p1}, Ljavassist/compiler/CodeGen;->atIfStmnt(Ljavassist/compiler/ast/Stmnt;)V

    goto/16 :goto_5

    .line 386
    :cond_7
    const/4 v1, 0x1

    const/16 v3, 0x15a

    if-eq v0, v3, :cond_12

    const/16 v4, 0x137

    if-ne v0, v4, :cond_8

    goto :goto_2

    .line 388
    :cond_8
    const/16 v3, 0x13e

    if-ne v0, v3, :cond_9

    .line 389
    invoke-direct {p0, p1}, Ljavassist/compiler/CodeGen;->atForStmnt(Ljavassist/compiler/ast/Stmnt;)V

    goto/16 :goto_5

    .line 390
    :cond_9
    const/16 v3, 0x12e

    if-eq v0, v3, :cond_10

    const/16 v4, 0x135

    if-ne v0, v4, :cond_a

    goto :goto_1

    .line 392
    :cond_a
    const/16 v1, 0x14d

    if-ne v0, v1, :cond_b

    .line 393
    invoke-virtual {p0, p1}, Ljavassist/compiler/CodeGen;->atReturnStmnt(Ljavassist/compiler/ast/Stmnt;)V

    goto :goto_5

    .line 394
    :cond_b
    const/16 v1, 0x154

    if-ne v0, v1, :cond_c

    .line 395
    invoke-direct {p0, p1}, Ljavassist/compiler/CodeGen;->atThrowStmnt(Ljavassist/compiler/ast/Stmnt;)V

    goto :goto_5

    .line 396
    :cond_c
    const/16 v1, 0x157

    if-ne v0, v1, :cond_d

    .line 397
    invoke-virtual {p0, p1}, Ljavassist/compiler/CodeGen;->atTryStmnt(Ljavassist/compiler/ast/Stmnt;)V

    goto :goto_5

    .line 398
    :cond_d
    const/16 v1, 0x151

    if-ne v0, v1, :cond_e

    .line 399
    invoke-direct {p0, p1}, Ljavassist/compiler/CodeGen;->atSwitchStmnt(Ljavassist/compiler/ast/Stmnt;)V

    goto :goto_5

    .line 400
    :cond_e
    const/16 v1, 0x152

    if-ne v0, v1, :cond_f

    .line 401
    invoke-direct {p0, p1}, Ljavassist/compiler/CodeGen;->atSyncStmnt(Ljavassist/compiler/ast/Stmnt;)V

    goto :goto_5

    .line 404
    :cond_f
    iput-boolean v2, p0, Ljavassist/compiler/CodeGen;->hasReturned:Z

    .line 405
    new-instance v1, Ljavassist/compiler/CompileError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sorry, not supported statement: TokenId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 391
    :cond_10
    :goto_1
    if-ne v0, v3, :cond_11

    move v2, v1

    :cond_11
    invoke-direct {p0, p1, v2}, Ljavassist/compiler/CodeGen;->atBreakStmnt(Ljavassist/compiler/ast/Stmnt;Z)V

    goto :goto_5

    .line 387
    :cond_12
    :goto_2
    if-ne v0, v3, :cond_13

    move v2, v1

    :cond_13
    invoke-direct {p0, p1, v2}, Ljavassist/compiler/CodeGen;->atWhileStmnt(Ljavassist/compiler/ast/Stmnt;Z)V

    goto :goto_5

    .line 376
    :cond_14
    :goto_3
    move-object v1, p1

    .line 377
    .local v1, "list":Ljavassist/compiler/ast/ASTList;
    :goto_4
    if-eqz v1, :cond_16

    .line 378
    invoke-virtual {v1}, Ljavassist/compiler/ast/ASTList;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object v2

    .line 379
    .local v2, "h":Ljavassist/compiler/ast/ASTree;
    invoke-virtual {v1}, Ljavassist/compiler/ast/ASTList;->tail()Ljavassist/compiler/ast/ASTList;

    move-result-object v1

    .line 380
    if-eqz v2, :cond_15

    .line 381
    invoke-virtual {v2, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 382
    .end local v2    # "h":Ljavassist/compiler/ast/ASTree;
    :cond_15
    goto :goto_4

    .line 383
    .end local v1    # "list":Ljavassist/compiler/ast/ASTList;
    :cond_16
    nop

    .line 408
    :goto_5
    return-void
.end method

.method public atStringL(Ljavassist/compiler/ast/StringL;)V
    .locals 2
    .param p1, "s"    # Ljavassist/compiler/ast/StringL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 2011
    const/16 v0, 0x133

    iput v0, p0, Ljavassist/compiler/CodeGen;->exprType:I

    .line 2012
    const/4 v0, 0x0

    iput v0, p0, Ljavassist/compiler/CodeGen;->arrayDim:I

    .line 2013
    const-string v0, "java/lang/String"

    iput-object v0, p0, Ljavassist/compiler/CodeGen;->className:Ljava/lang/String;

    .line 2014
    iget-object v0, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {p1}, Ljavassist/compiler/ast/StringL;->get()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavassist/bytecode/Bytecode;->addLdc(Ljava/lang/String;)V

    .line 2015
    return-void
.end method

.method public atSymbol(Ljavassist/compiler/ast/Symbol;)V
    .locals 0
    .param p1, "n"    # Ljavassist/compiler/ast/Symbol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 276
    invoke-static {}, Ljavassist/compiler/CodeGen;->fatal()V

    return-void
.end method

.method protected atTryStmnt(Ljavassist/compiler/ast/Stmnt;)V
    .locals 1
    .param p1, "st"    # Ljavassist/compiler/ast/Stmnt;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 730
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavassist/compiler/CodeGen;->hasReturned:Z

    .line 731
    return-void
.end method

.method public atVariable(Ljavassist/compiler/ast/Variable;)V
    .locals 3
    .param p1, "v"    # Ljavassist/compiler/ast/Variable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 1946
    invoke-virtual {p1}, Ljavassist/compiler/ast/Variable;->getDeclarator()Ljavassist/compiler/ast/Declarator;

    move-result-object v0

    .line 1947
    .local v0, "d":Ljavassist/compiler/ast/Declarator;
    invoke-virtual {v0}, Ljavassist/compiler/ast/Declarator;->getType()I

    move-result v1

    iput v1, p0, Ljavassist/compiler/CodeGen;->exprType:I

    .line 1948
    invoke-virtual {v0}, Ljavassist/compiler/ast/Declarator;->getArrayDim()I

    move-result v1

    iput v1, p0, Ljavassist/compiler/CodeGen;->arrayDim:I

    .line 1949
    invoke-virtual {v0}, Ljavassist/compiler/ast/Declarator;->getClassName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljavassist/compiler/CodeGen;->className:Ljava/lang/String;

    .line 1950
    invoke-virtual {p0, v0}, Ljavassist/compiler/CodeGen;->getLocalVar(Ljavassist/compiler/ast/Declarator;)I

    move-result v1

    .line 1952
    .local v1, "var":I
    iget v2, p0, Ljavassist/compiler/CodeGen;->arrayDim:I

    if-lez v2, :cond_0

    .line 1953
    iget-object v2, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v2, v1}, Ljavassist/bytecode/Bytecode;->addAload(I)V

    goto :goto_0

    .line 1955
    :cond_0
    iget v2, p0, Ljavassist/compiler/CodeGen;->exprType:I

    sparse-switch v2, :sswitch_data_0

    .line 1969
    iget-object v2, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v2, v1}, Ljavassist/bytecode/Bytecode;->addIload(I)V

    goto :goto_0

    .line 1960
    :sswitch_0
    iget-object v2, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v2, v1}, Ljavassist/bytecode/Bytecode;->addLload(I)V

    .line 1961
    goto :goto_0

    .line 1963
    :sswitch_1
    iget-object v2, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v2, v1}, Ljavassist/bytecode/Bytecode;->addFload(I)V

    .line 1964
    goto :goto_0

    .line 1966
    :sswitch_2
    iget-object v2, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v2, v1}, Ljavassist/bytecode/Bytecode;->addDload(I)V

    .line 1967
    goto :goto_0

    .line 1957
    :sswitch_3
    iget-object v2, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v2, v1}, Ljavassist/bytecode/Bytecode;->addAload(I)V

    .line 1958
    nop

    .line 1972
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x133 -> :sswitch_3
        0x138 -> :sswitch_2
        0x13d -> :sswitch_1
        0x146 -> :sswitch_0
    .end sparse-switch
.end method

.method public compileBooleanExpr(ZLjavassist/compiler/ast/ASTree;)Z
    .locals 1
    .param p1, "branchIf"    # Z
    .param p2, "expr"    # Ljavassist/compiler/ast/ASTree;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 260
    invoke-virtual {p0, p2}, Ljavassist/compiler/CodeGen;->doTypeCheck(Ljavassist/compiler/ast/ASTree;)V

    .line 261
    invoke-direct {p0, p1, p2}, Ljavassist/compiler/CodeGen;->booleanExpr(ZLjavassist/compiler/ast/ASTree;)Z

    move-result v0

    return v0
.end method

.method public compileExpr(Ljavassist/compiler/ast/ASTree;)V
    .locals 0
    .param p1, "expr"    # Ljavassist/compiler/ast/ASTree;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 253
    invoke-virtual {p0, p1}, Ljavassist/compiler/CodeGen;->doTypeCheck(Ljavassist/compiler/ast/ASTree;)V

    .line 254
    invoke-virtual {p1, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 255
    return-void
.end method

.method public doTypeCheck(Ljavassist/compiler/ast/ASTree;)V
    .locals 1
    .param p1, "expr"    # Ljavassist/compiler/ast/ASTree;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 265
    iget-object v0, p0, Ljavassist/compiler/CodeGen;->typeChecker:Ljavassist/compiler/TypeChecker;

    if-eqz v0, :cond_0

    .line 266
    invoke-virtual {p1, v0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 267
    :cond_0
    return-void
.end method

.method protected getLocalVar(Ljavassist/compiler/ast/Declarator;)I
    .locals 2
    .param p1, "d"    # Ljavassist/compiler/ast/Declarator;

    .line 156
    invoke-virtual {p1}, Ljavassist/compiler/ast/Declarator;->getLocalVar()I

    move-result v0

    .line 157
    .local v0, "v":I
    if-gez v0, :cond_0

    .line 158
    invoke-virtual {p0}, Ljavassist/compiler/CodeGen;->getMaxLocals()I

    move-result v0

    .line 159
    invoke-virtual {p1, v0}, Ljavassist/compiler/ast/Declarator;->setLocalVar(I)V

    .line 160
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljavassist/compiler/CodeGen;->incMaxLocals(I)V

    .line 163
    :cond_0
    return v0
.end method

.method public getMaxLocals()I
    .locals 1

    .line 132
    iget-object v0, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v0}, Ljavassist/bytecode/Bytecode;->getMaxLocals()I

    move-result v0

    return v0
.end method

.method protected abstract getSuperName()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation
.end method

.method protected getTempVar()I
    .locals 1

    .line 147
    iget v0, p0, Ljavassist/compiler/CodeGen;->tempVar:I

    if-gez v0, :cond_0

    .line 148
    invoke-virtual {p0}, Ljavassist/compiler/CodeGen;->getMaxLocals()I

    move-result v0

    iput v0, p0, Ljavassist/compiler/CodeGen;->tempVar:I

    .line 149
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljavassist/compiler/CodeGen;->incMaxLocals(I)V

    .line 152
    :cond_0
    iget v0, p0, Ljavassist/compiler/CodeGen;->tempVar:I

    return v0
.end method

.method protected abstract getThisName()Ljava/lang/String;
.end method

.method protected incMaxLocals(I)V
    .locals 1
    .param p1, "size"    # I

    .line 139
    iget-object v0, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/Bytecode;->incMaxLocals(I)V

    .line 140
    return-void
.end method

.method protected abstract insertDefaultSuperCall()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation
.end method

.method protected patchGoto(Ljava/util/List;I)V
    .locals 4
    .param p2, "targetPc"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .line 488
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 489
    .local v1, "pc":I
    iget-object v2, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    sub-int v3, p2, v1

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v1, v3}, Ljavassist/bytecode/Bytecode;->write16bit(II)V

    .end local v1    # "pc":I
    goto :goto_0

    .line 490
    :cond_0
    return-void
.end method

.method protected abstract resolveClassName(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation
.end method

.method protected abstract resolveClassName(Ljavassist/compiler/ast/ASTList;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation
.end method

.method public setMaxLocals(I)V
    .locals 1
    .param p1, "n"    # I

    .line 135
    iget-object v0, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/Bytecode;->setMaxLocals(I)V

    .line 136
    return-void
.end method

.method public setTypeChecker(Ljavassist/compiler/TypeChecker;)V
    .locals 0
    .param p1, "checker"    # Ljavassist/compiler/TypeChecker;

    .line 121
    iput-object p1, p0, Ljavassist/compiler/CodeGen;->typeChecker:Ljavassist/compiler/TypeChecker;

    .line 122
    return-void
.end method
