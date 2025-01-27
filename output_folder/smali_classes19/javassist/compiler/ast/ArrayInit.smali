.class public Ljavassist/compiler/ast/ArrayInit;
.super Ljavassist/compiler/ast/ASTList;
.source "ArrayInit.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljavassist/compiler/ast/ASTree;)V
    .locals 0
    .param p1, "firstElement"    # Ljavassist/compiler/ast/ASTree;

    .line 33
    invoke-direct {p0, p1}, Ljavassist/compiler/ast/ASTList;-><init>(Ljavassist/compiler/ast/ASTree;)V

    .line 34
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

    .line 50
    invoke-virtual {p1, p0}, Ljavassist/compiler/ast/Visitor;->atArrayInit(Ljavassist/compiler/ast/ArrayInit;)V

    return-void
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 53
    const-string v0, "array"

    return-object v0
.end method

.method public size()I
    .locals 2

    .line 42
    invoke-virtual {p0}, Ljavassist/compiler/ast/ArrayInit;->length()I

    move-result v0

    .line 43
    .local v0, "s":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Ljavassist/compiler/ast/ArrayInit;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object v1

    if-nez v1, :cond_0

    .line 44
    const/4 v1, 0x0

    return v1

    .line 46
    :cond_0
    return v0
.end method
