.class public Ljavassist/compiler/ast/NewExpr;
.super Ljavassist/compiler/ast/ASTList;
.source "NewExpr.java"

# interfaces
.implements Ljavassist/compiler/TokenId;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected arrayType:I

.field protected newArray:Z


# direct methods
.method public constructor <init>(ILjavassist/compiler/ast/ASTList;Ljavassist/compiler/ast/ArrayInit;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "arraySize"    # Ljavassist/compiler/ast/ASTList;
    .param p3, "init"    # Ljavassist/compiler/ast/ArrayInit;

    .line 38
    new-instance v0, Ljavassist/compiler/ast/ASTList;

    invoke-direct {v0, p2}, Ljavassist/compiler/ast/ASTList;-><init>(Ljavassist/compiler/ast/ASTree;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Ljavassist/compiler/ast/ASTList;-><init>(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTList;)V

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavassist/compiler/ast/NewExpr;->newArray:Z

    .line 40
    iput p1, p0, Ljavassist/compiler/ast/NewExpr;->arrayType:I

    .line 41
    if-eqz p3, :cond_0

    .line 42
    invoke-static {p0, p3}, Ljavassist/compiler/ast/NewExpr;->append(Ljavassist/compiler/ast/ASTList;Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/ASTList;

    .line 43
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljavassist/compiler/ast/ASTList;Ljavassist/compiler/ast/ASTList;)V
    .locals 1
    .param p1, "className"    # Ljavassist/compiler/ast/ASTList;
    .param p2, "args"    # Ljavassist/compiler/ast/ASTList;

    .line 32
    new-instance v0, Ljavassist/compiler/ast/ASTList;

    invoke-direct {v0, p2}, Ljavassist/compiler/ast/ASTList;-><init>(Ljavassist/compiler/ast/ASTree;)V

    invoke-direct {p0, p1, v0}, Ljavassist/compiler/ast/ASTList;-><init>(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTList;)V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavassist/compiler/ast/NewExpr;->newArray:Z

    .line 34
    const/16 v0, 0x133

    iput v0, p0, Ljavassist/compiler/ast/NewExpr;->arrayType:I

    .line 35
    return-void
.end method

.method public static makeObjectArray(Ljavassist/compiler/ast/ASTList;Ljavassist/compiler/ast/ASTList;Ljavassist/compiler/ast/ArrayInit;)Ljavassist/compiler/ast/NewExpr;
    .locals 2
    .param p0, "className"    # Ljavassist/compiler/ast/ASTList;
    .param p1, "arraySize"    # Ljavassist/compiler/ast/ASTList;
    .param p2, "init"    # Ljavassist/compiler/ast/ArrayInit;

    .line 47
    new-instance v0, Ljavassist/compiler/ast/NewExpr;

    invoke-direct {v0, p0, p1}, Ljavassist/compiler/ast/NewExpr;-><init>(Ljavassist/compiler/ast/ASTList;Ljavassist/compiler/ast/ASTList;)V

    .line 48
    .local v0, "e":Ljavassist/compiler/ast/NewExpr;
    const/4 v1, 0x1

    iput-boolean v1, v0, Ljavassist/compiler/ast/NewExpr;->newArray:Z

    .line 49
    if-eqz p2, :cond_0

    .line 50
    invoke-static {v0, p2}, Ljavassist/compiler/ast/NewExpr;->append(Ljavassist/compiler/ast/ASTList;Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/ASTList;

    .line 52
    :cond_0
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

    .line 75
    invoke-virtual {p1, p0}, Ljavassist/compiler/ast/Visitor;->atNewExpr(Ljavassist/compiler/ast/NewExpr;)V

    return-void
.end method

.method public getArguments()Ljavassist/compiler/ast/ASTList;
    .locals 1

    .line 63
    invoke-virtual {p0}, Ljavassist/compiler/ast/NewExpr;->getRight()Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    invoke-virtual {v0}, Ljavassist/compiler/ast/ASTree;->getLeft()Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    check-cast v0, Ljavassist/compiler/ast/ASTList;

    return-object v0
.end method

.method public getArraySize()Ljavassist/compiler/ast/ASTList;
    .locals 1

    .line 65
    invoke-virtual {p0}, Ljavassist/compiler/ast/NewExpr;->getArguments()Ljavassist/compiler/ast/ASTList;

    move-result-object v0

    return-object v0
.end method

.method public getArrayType()I
    .locals 1

    .line 59
    iget v0, p0, Ljavassist/compiler/ast/NewExpr;->arrayType:I

    return v0
.end method

.method public getClassName()Ljavassist/compiler/ast/ASTList;
    .locals 1

    .line 61
    invoke-virtual {p0}, Ljavassist/compiler/ast/NewExpr;->getLeft()Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    check-cast v0, Ljavassist/compiler/ast/ASTList;

    return-object v0
.end method

.method public getInitializer()Ljavassist/compiler/ast/ArrayInit;
    .locals 2

    .line 68
    invoke-virtual {p0}, Ljavassist/compiler/ast/NewExpr;->getRight()Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    invoke-virtual {v0}, Ljavassist/compiler/ast/ASTree;->getRight()Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    .line 69
    .local v0, "t":Ljavassist/compiler/ast/ASTree;
    if-nez v0, :cond_0

    .line 70
    const/4 v1, 0x0

    return-object v1

    .line 71
    :cond_0
    invoke-virtual {v0}, Ljavassist/compiler/ast/ASTree;->getLeft()Ljavassist/compiler/ast/ASTree;

    move-result-object v1

    check-cast v1, Ljavassist/compiler/ast/ArrayInit;

    return-object v1
.end method

.method protected getTag()Ljava/lang/String;
    .locals 1

    .line 79
    iget-boolean v0, p0, Ljavassist/compiler/ast/NewExpr;->newArray:Z

    if-eqz v0, :cond_0

    const-string v0, "new[]"

    goto :goto_0

    :cond_0
    const-string v0, "new"

    :goto_0
    return-object v0
.end method

.method public isArray()Z
    .locals 1

    .line 55
    iget-boolean v0, p0, Ljavassist/compiler/ast/NewExpr;->newArray:Z

    return v0
.end method
