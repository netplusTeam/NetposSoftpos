.class public Ljavassist/compiler/ast/CallExpr;
.super Ljavassist/compiler/ast/Expr;
.source "CallExpr.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private method:Ljavassist/compiler/MemberResolver$Method;


# direct methods
.method private constructor <init>(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTList;)V
    .locals 1
    .param p1, "_head"    # Ljavassist/compiler/ast/ASTree;
    .param p2, "_tail"    # Ljavassist/compiler/ast/ASTList;

    .line 32
    const/16 v0, 0x43

    invoke-direct {p0, v0, p1, p2}, Ljavassist/compiler/ast/Expr;-><init>(ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTList;)V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Ljavassist/compiler/ast/CallExpr;->method:Ljavassist/compiler/MemberResolver$Method;

    .line 34
    return-void
.end method

.method public static makeCall(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/CallExpr;
    .locals 2
    .param p0, "target"    # Ljavassist/compiler/ast/ASTree;
    .param p1, "args"    # Ljavassist/compiler/ast/ASTree;

    .line 45
    new-instance v0, Ljavassist/compiler/ast/CallExpr;

    new-instance v1, Ljavassist/compiler/ast/ASTList;

    invoke-direct {v1, p1}, Ljavassist/compiler/ast/ASTList;-><init>(Ljavassist/compiler/ast/ASTree;)V

    invoke-direct {v0, p0, v1}, Ljavassist/compiler/ast/CallExpr;-><init>(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTList;)V

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

    .line 49
    invoke-virtual {p1, p0}, Ljavassist/compiler/ast/Visitor;->atCallExpr(Ljavassist/compiler/ast/CallExpr;)V

    return-void
.end method

.method public getMethod()Ljavassist/compiler/MemberResolver$Method;
    .locals 1

    .line 41
    iget-object v0, p0, Ljavassist/compiler/ast/CallExpr;->method:Ljavassist/compiler/MemberResolver$Method;

    return-object v0
.end method

.method public setMethod(Ljavassist/compiler/MemberResolver$Method;)V
    .locals 0
    .param p1, "m"    # Ljavassist/compiler/MemberResolver$Method;

    .line 37
    iput-object p1, p0, Ljavassist/compiler/ast/CallExpr;->method:Ljavassist/compiler/MemberResolver$Method;

    .line 38
    return-void
.end method
