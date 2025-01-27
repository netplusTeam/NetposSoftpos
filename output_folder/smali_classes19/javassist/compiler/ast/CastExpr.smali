.class public Ljavassist/compiler/ast/CastExpr;
.super Ljavassist/compiler/ast/ASTList;
.source "CastExpr.java"

# interfaces
.implements Ljavassist/compiler/TokenId;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected arrayDim:I

.field protected castType:I


# direct methods
.method public constructor <init>(IILjavassist/compiler/ast/ASTree;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "dim"    # I
    .param p3, "expr"    # Ljavassist/compiler/ast/ASTree;

    .line 38
    new-instance v0, Ljavassist/compiler/ast/ASTList;

    invoke-direct {v0, p3}, Ljavassist/compiler/ast/ASTList;-><init>(Ljavassist/compiler/ast/ASTree;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Ljavassist/compiler/ast/ASTList;-><init>(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTList;)V

    .line 39
    iput p1, p0, Ljavassist/compiler/ast/CastExpr;->castType:I

    .line 40
    iput p2, p0, Ljavassist/compiler/ast/CastExpr;->arrayDim:I

    .line 41
    return-void
.end method

.method public constructor <init>(Ljavassist/compiler/ast/ASTList;ILjavassist/compiler/ast/ASTree;)V
    .locals 1
    .param p1, "className"    # Ljavassist/compiler/ast/ASTList;
    .param p2, "dim"    # I
    .param p3, "expr"    # Ljavassist/compiler/ast/ASTree;

    .line 32
    new-instance v0, Ljavassist/compiler/ast/ASTList;

    invoke-direct {v0, p3}, Ljavassist/compiler/ast/ASTList;-><init>(Ljavassist/compiler/ast/ASTree;)V

    invoke-direct {p0, p1, v0}, Ljavassist/compiler/ast/ASTList;-><init>(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTList;)V

    .line 33
    const/16 v0, 0x133

    iput v0, p0, Ljavassist/compiler/ast/CastExpr;->castType:I

    .line 34
    iput p2, p0, Ljavassist/compiler/ast/CastExpr;->arrayDim:I

    .line 35
    return-void
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

    .line 59
    invoke-virtual {p1, p0}, Ljavassist/compiler/ast/Visitor;->atCastExpr(Ljavassist/compiler/ast/CastExpr;)V

    return-void
.end method

.method public getArrayDim()I
    .locals 1

    .line 47
    iget v0, p0, Ljavassist/compiler/ast/CastExpr;->arrayDim:I

    return v0
.end method

.method public getClassName()Ljavassist/compiler/ast/ASTList;
    .locals 1

    .line 49
    invoke-virtual {p0}, Ljavassist/compiler/ast/CastExpr;->getLeft()Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    check-cast v0, Ljavassist/compiler/ast/ASTList;

    return-object v0
.end method

.method public getOprand()Ljavassist/compiler/ast/ASTree;
    .locals 1

    .line 51
    invoke-virtual {p0}, Ljavassist/compiler/ast/CastExpr;->getRight()Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    invoke-virtual {v0}, Ljavassist/compiler/ast/ASTree;->getLeft()Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 2

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cast:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljavassist/compiler/ast/CastExpr;->castType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljavassist/compiler/ast/CastExpr;->arrayDim:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 45
    iget v0, p0, Ljavassist/compiler/ast/CastExpr;->castType:I

    return v0
.end method

.method public setOprand(Ljavassist/compiler/ast/ASTree;)V
    .locals 1
    .param p1, "t"    # Ljavassist/compiler/ast/ASTree;

    .line 53
    invoke-virtual {p0}, Ljavassist/compiler/ast/CastExpr;->getRight()Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavassist/compiler/ast/ASTree;->setLeft(Ljavassist/compiler/ast/ASTree;)V

    return-void
.end method
