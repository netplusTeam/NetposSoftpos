.class public Ljavassist/compiler/NoFieldException;
.super Ljavassist/compiler/CompileError;
.source "NoFieldException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private expr:Ljavassist/compiler/ast/ASTree;

.field private fieldName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljavassist/compiler/ast/ASTree;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "e"    # Ljavassist/compiler/ast/ASTree;

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no such field: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    .line 31
    iput-object p1, p0, Ljavassist/compiler/NoFieldException;->fieldName:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Ljavassist/compiler/NoFieldException;->expr:Ljavassist/compiler/ast/ASTree;

    .line 33
    return-void
.end method


# virtual methods
.method public getExpr()Ljavassist/compiler/ast/ASTree;
    .locals 1

    .line 41
    iget-object v0, p0, Ljavassist/compiler/NoFieldException;->expr:Ljavassist/compiler/ast/ASTree;

    return-object v0
.end method

.method public getField()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Ljavassist/compiler/NoFieldException;->fieldName:Ljava/lang/String;

    return-object v0
.end method
