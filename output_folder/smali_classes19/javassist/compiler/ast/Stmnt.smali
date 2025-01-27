.class public Ljavassist/compiler/ast/Stmnt;
.super Ljavassist/compiler/ast/ASTList;
.source "Stmnt.java"

# interfaces
.implements Ljavassist/compiler/TokenId;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected operatorId:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "op"    # I

    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljavassist/compiler/ast/Stmnt;-><init>(ILjavassist/compiler/ast/ASTree;)V

    .line 42
    return-void
.end method

.method public constructor <init>(ILjavassist/compiler/ast/ASTree;)V
    .locals 0
    .param p1, "op"    # I
    .param p2, "_head"    # Ljavassist/compiler/ast/ASTree;

    .line 36
    invoke-direct {p0, p2}, Ljavassist/compiler/ast/ASTList;-><init>(Ljavassist/compiler/ast/ASTree;)V

    .line 37
    iput p1, p0, Ljavassist/compiler/ast/Stmnt;->operatorId:I

    .line 38
    return-void
.end method

.method public constructor <init>(ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTList;)V
    .locals 0
    .param p1, "op"    # I
    .param p2, "_head"    # Ljavassist/compiler/ast/ASTree;
    .param p3, "_tail"    # Ljavassist/compiler/ast/ASTList;

    .line 31
    invoke-direct {p0, p2, p3}, Ljavassist/compiler/ast/ASTList;-><init>(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTList;)V

    .line 32
    iput p1, p0, Ljavassist/compiler/ast/Stmnt;->operatorId:I

    .line 33
    return-void
.end method

.method public static make(ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/Stmnt;
    .locals 2
    .param p0, "op"    # I
    .param p1, "oprand1"    # Ljavassist/compiler/ast/ASTree;
    .param p2, "oprand2"    # Ljavassist/compiler/ast/ASTree;

    .line 45
    new-instance v0, Ljavassist/compiler/ast/Stmnt;

    new-instance v1, Ljavassist/compiler/ast/ASTList;

    invoke-direct {v1, p2}, Ljavassist/compiler/ast/ASTList;-><init>(Ljavassist/compiler/ast/ASTree;)V

    invoke-direct {v0, p0, p1, v1}, Ljavassist/compiler/ast/Stmnt;-><init>(ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTList;)V

    return-object v0
.end method

.method public static make(ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/Stmnt;
    .locals 3
    .param p0, "op"    # I
    .param p1, "op1"    # Ljavassist/compiler/ast/ASTree;
    .param p2, "op2"    # Ljavassist/compiler/ast/ASTree;
    .param p3, "op3"    # Ljavassist/compiler/ast/ASTree;

    .line 49
    new-instance v0, Ljavassist/compiler/ast/Stmnt;

    new-instance v1, Ljavassist/compiler/ast/ASTList;

    new-instance v2, Ljavassist/compiler/ast/ASTList;

    invoke-direct {v2, p3}, Ljavassist/compiler/ast/ASTList;-><init>(Ljavassist/compiler/ast/ASTree;)V

    invoke-direct {v1, p2, v2}, Ljavassist/compiler/ast/ASTList;-><init>(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTList;)V

    invoke-direct {v0, p0, p1, v1}, Ljavassist/compiler/ast/Stmnt;-><init>(ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTList;)V

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

    .line 53
    invoke-virtual {p1, p0}, Ljavassist/compiler/ast/Visitor;->atStmnt(Ljavassist/compiler/ast/Stmnt;)V

    return-void
.end method

.method public getOperator()I
    .locals 1

    .line 55
    iget v0, p0, Ljavassist/compiler/ast/Stmnt;->operatorId:I

    return v0
.end method

.method protected getTag()Ljava/lang/String;
    .locals 3

    .line 59
    iget v0, p0, Ljavassist/compiler/ast/Stmnt;->operatorId:I

    const-string v1, "stmnt:"

    const/16 v2, 0x80

    if-ge v0, v2, :cond_0

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljavassist/compiler/ast/Stmnt;->operatorId:I

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 61
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljavassist/compiler/ast/Stmnt;->operatorId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
