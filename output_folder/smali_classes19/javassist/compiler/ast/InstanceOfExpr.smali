.class public Ljavassist/compiler/ast/InstanceOfExpr;
.super Ljavassist/compiler/ast/CastExpr;
.source "InstanceOfExpr.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(IILjavassist/compiler/ast/ASTree;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "dim"    # I
    .param p3, "expr"    # Ljavassist/compiler/ast/ASTree;

    .line 33
    invoke-direct {p0, p1, p2, p3}, Ljavassist/compiler/ast/CastExpr;-><init>(IILjavassist/compiler/ast/ASTree;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Ljavassist/compiler/ast/ASTList;ILjavassist/compiler/ast/ASTree;)V
    .locals 0
    .param p1, "className"    # Ljavassist/compiler/ast/ASTList;
    .param p2, "dim"    # I
    .param p3, "expr"    # Ljavassist/compiler/ast/ASTree;

    .line 29
    invoke-direct {p0, p1, p2, p3}, Ljavassist/compiler/ast/CastExpr;-><init>(Ljavassist/compiler/ast/ASTList;ILjavassist/compiler/ast/ASTree;)V

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

    .line 43
    invoke-virtual {p1, p0}, Ljavassist/compiler/ast/Visitor;->atInstanceOfExpr(Ljavassist/compiler/ast/InstanceOfExpr;)V

    .line 44
    return-void
.end method

.method public getTag()Ljava/lang/String;
    .locals 2

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "instanceof:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljavassist/compiler/ast/InstanceOfExpr;->castType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljavassist/compiler/ast/InstanceOfExpr;->arrayDim:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
