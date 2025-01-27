.class public Ljavassist/compiler/ast/Expr;
.super Ljavassist/compiler/ast/ASTList;
.source "Expr.java"

# interfaces
.implements Ljavassist/compiler/TokenId;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected operatorId:I


# direct methods
.method constructor <init>(ILjavassist/compiler/ast/ASTree;)V
    .locals 0
    .param p1, "op"    # I
    .param p2, "_head"    # Ljavassist/compiler/ast/ASTree;

    .line 42
    invoke-direct {p0, p2}, Ljavassist/compiler/ast/ASTList;-><init>(Ljavassist/compiler/ast/ASTree;)V

    .line 43
    iput p1, p0, Ljavassist/compiler/ast/Expr;->operatorId:I

    .line 44
    return-void
.end method

.method constructor <init>(ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTList;)V
    .locals 0
    .param p1, "op"    # I
    .param p2, "_head"    # Ljavassist/compiler/ast/ASTree;
    .param p3, "_tail"    # Ljavassist/compiler/ast/ASTList;

    .line 37
    invoke-direct {p0, p2, p3}, Ljavassist/compiler/ast/ASTList;-><init>(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTList;)V

    .line 38
    iput p1, p0, Ljavassist/compiler/ast/Expr;->operatorId:I

    .line 39
    return-void
.end method

.method public static make(ILjavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/Expr;
    .locals 1
    .param p0, "op"    # I
    .param p1, "oprand1"    # Ljavassist/compiler/ast/ASTree;

    .line 51
    new-instance v0, Ljavassist/compiler/ast/Expr;

    invoke-direct {v0, p0, p1}, Ljavassist/compiler/ast/Expr;-><init>(ILjavassist/compiler/ast/ASTree;)V

    return-object v0
.end method

.method public static make(ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/Expr;
    .locals 2
    .param p0, "op"    # I
    .param p1, "oprand1"    # Ljavassist/compiler/ast/ASTree;
    .param p2, "oprand2"    # Ljavassist/compiler/ast/ASTree;

    .line 47
    new-instance v0, Ljavassist/compiler/ast/Expr;

    new-instance v1, Ljavassist/compiler/ast/ASTList;

    invoke-direct {v1, p2}, Ljavassist/compiler/ast/ASTList;-><init>(Ljavassist/compiler/ast/ASTree;)V

    invoke-direct {v0, p0, p1, v1}, Ljavassist/compiler/ast/Expr;-><init>(ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTList;)V

    return-object v0
.end method


# virtual methods
.method public accept(Ljavassist/compiler/ast/Visitor;)V
    .locals 0
    .param p1, "v"    # Ljavassist/compiler/ast/Visitor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 71
    invoke-virtual {p1, p0}, Ljavassist/compiler/ast/Visitor;->atExpr(Ljavassist/compiler/ast/Expr;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .line 74
    iget v0, p0, Ljavassist/compiler/ast/Expr;->operatorId:I

    .line 75
    .local v0, "id":I
    const/16 v1, 0x80

    if-ge v0, v1, :cond_0

    .line 76
    int-to-char v1, v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 77
    :cond_0
    const/16 v1, 0x15e

    if-gt v1, v0, :cond_1

    const/16 v1, 0x173

    if-gt v0, v1, :cond_1

    .line 78
    sget-object v1, Ljavassist/compiler/ast/Expr;->opNames:[Ljava/lang/String;

    add-int/lit16 v2, v0, -0x15e

    aget-object v1, v1, v2

    return-object v1

    .line 79
    :cond_1
    const/16 v1, 0x143

    if-ne v0, v1, :cond_2

    .line 80
    const-string v1, "instanceof"

    return-object v1

    .line 82
    :cond_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getOperator()I
    .locals 1

    .line 54
    iget v0, p0, Ljavassist/compiler/ast/Expr;->operatorId:I

    return v0
.end method

.method protected getTag()Ljava/lang/String;
    .locals 2

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "op:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljavassist/compiler/ast/Expr;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public oprand1()Ljavassist/compiler/ast/ASTree;
    .locals 1

    .line 58
    invoke-virtual {p0}, Ljavassist/compiler/ast/Expr;->getLeft()Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    return-object v0
.end method

.method public oprand2()Ljavassist/compiler/ast/ASTree;
    .locals 1

    .line 64
    invoke-virtual {p0}, Ljavassist/compiler/ast/Expr;->getRight()Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    invoke-virtual {v0}, Ljavassist/compiler/ast/ASTree;->getLeft()Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    return-object v0
.end method

.method public setOperator(I)V
    .locals 0
    .param p1, "op"    # I

    .line 56
    iput p1, p0, Ljavassist/compiler/ast/Expr;->operatorId:I

    return-void
.end method

.method public setOprand1(Ljavassist/compiler/ast/ASTree;)V
    .locals 0
    .param p1, "expr"    # Ljavassist/compiler/ast/ASTree;

    .line 61
    invoke-virtual {p0, p1}, Ljavassist/compiler/ast/Expr;->setLeft(Ljavassist/compiler/ast/ASTree;)V

    .line 62
    return-void
.end method

.method public setOprand2(Ljavassist/compiler/ast/ASTree;)V
    .locals 1
    .param p1, "expr"    # Ljavassist/compiler/ast/ASTree;

    .line 67
    invoke-virtual {p0}, Ljavassist/compiler/ast/Expr;->getRight()Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavassist/compiler/ast/ASTree;->setLeft(Ljavassist/compiler/ast/ASTree;)V

    .line 68
    return-void
.end method
