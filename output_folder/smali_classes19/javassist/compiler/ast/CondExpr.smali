.class public Ljavassist/compiler/ast/CondExpr;
.super Ljavassist/compiler/ast/ASTList;
.source "CondExpr.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)V
    .locals 2
    .param p1, "cond"    # Ljavassist/compiler/ast/ASTree;
    .param p2, "thenp"    # Ljavassist/compiler/ast/ASTree;
    .param p3, "elsep"    # Ljavassist/compiler/ast/ASTree;

    .line 29
    new-instance v0, Ljavassist/compiler/ast/ASTList;

    new-instance v1, Ljavassist/compiler/ast/ASTList;

    invoke-direct {v1, p3}, Ljavassist/compiler/ast/ASTList;-><init>(Ljavassist/compiler/ast/ASTree;)V

    invoke-direct {v0, p2, v1}, Ljavassist/compiler/ast/ASTList;-><init>(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTList;)V

    invoke-direct {p0, p1, v0}, Ljavassist/compiler/ast/ASTList;-><init>(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTList;)V

    .line 30
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

    .line 48
    invoke-virtual {p1, p0}, Ljavassist/compiler/ast/Visitor;->atCondExpr(Ljavassist/compiler/ast/CondExpr;)V

    return-void
.end method

.method public condExpr()Ljavassist/compiler/ast/ASTree;
    .locals 1

    .line 32
    invoke-virtual {p0}, Ljavassist/compiler/ast/CondExpr;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    return-object v0
.end method

.method public elseExpr()Ljavassist/compiler/ast/ASTree;
    .locals 1

    .line 40
    invoke-virtual {p0}, Ljavassist/compiler/ast/CondExpr;->tail()Ljavassist/compiler/ast/ASTList;

    move-result-object v0

    invoke-virtual {v0}, Ljavassist/compiler/ast/ASTList;->tail()Ljavassist/compiler/ast/ASTList;

    move-result-object v0

    invoke-virtual {v0}, Ljavassist/compiler/ast/ASTList;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 45
    const-string v0, "?:"

    return-object v0
.end method

.method public setCond(Ljavassist/compiler/ast/ASTree;)V
    .locals 0
    .param p1, "t"    # Ljavassist/compiler/ast/ASTree;

    .line 34
    invoke-virtual {p0, p1}, Ljavassist/compiler/ast/CondExpr;->setHead(Ljavassist/compiler/ast/ASTree;)V

    return-void
.end method

.method public setElse(Ljavassist/compiler/ast/ASTree;)V
    .locals 1
    .param p1, "t"    # Ljavassist/compiler/ast/ASTree;

    .line 42
    invoke-virtual {p0}, Ljavassist/compiler/ast/CondExpr;->tail()Ljavassist/compiler/ast/ASTList;

    move-result-object v0

    invoke-virtual {v0}, Ljavassist/compiler/ast/ASTList;->tail()Ljavassist/compiler/ast/ASTList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavassist/compiler/ast/ASTList;->setHead(Ljavassist/compiler/ast/ASTree;)V

    return-void
.end method

.method public setThen(Ljavassist/compiler/ast/ASTree;)V
    .locals 1
    .param p1, "t"    # Ljavassist/compiler/ast/ASTree;

    .line 38
    invoke-virtual {p0}, Ljavassist/compiler/ast/CondExpr;->tail()Ljavassist/compiler/ast/ASTList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavassist/compiler/ast/ASTList;->setHead(Ljavassist/compiler/ast/ASTree;)V

    return-void
.end method

.method public thenExpr()Ljavassist/compiler/ast/ASTree;
    .locals 1

    .line 36
    invoke-virtual {p0}, Ljavassist/compiler/ast/CondExpr;->tail()Ljavassist/compiler/ast/ASTList;

    move-result-object v0

    invoke-virtual {v0}, Ljavassist/compiler/ast/ASTList;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    return-object v0
.end method
