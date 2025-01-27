.class public Ljavassist/compiler/ast/Variable;
.super Ljavassist/compiler/ast/Symbol;
.source "Variable.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected declarator:Ljavassist/compiler/ast/Declarator;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljavassist/compiler/ast/Declarator;)V
    .locals 0
    .param p1, "sym"    # Ljava/lang/String;
    .param p2, "d"    # Ljavassist/compiler/ast/Declarator;

    .line 30
    invoke-direct {p0, p1}, Ljavassist/compiler/ast/Symbol;-><init>(Ljava/lang/String;)V

    .line 31
    iput-object p2, p0, Ljavassist/compiler/ast/Variable;->declarator:Ljavassist/compiler/ast/Declarator;

    .line 32
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

    .line 42
    invoke-virtual {p1, p0}, Ljavassist/compiler/ast/Visitor;->atVariable(Ljavassist/compiler/ast/Variable;)V

    return-void
.end method

.method public getDeclarator()Ljavassist/compiler/ast/Declarator;
    .locals 1

    .line 34
    iget-object v0, p0, Ljavassist/compiler/ast/Variable;->declarator:Ljavassist/compiler/ast/Declarator;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljavassist/compiler/ast/Variable;->identifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljavassist/compiler/ast/Variable;->declarator:Ljavassist/compiler/ast/Declarator;

    invoke-virtual {v1}, Ljavassist/compiler/ast/Declarator;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
