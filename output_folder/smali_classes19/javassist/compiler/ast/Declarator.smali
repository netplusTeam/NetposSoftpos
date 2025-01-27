.class public Ljavassist/compiler/ast/Declarator;
.super Ljavassist/compiler/ast/ASTList;
.source "Declarator.java"

# interfaces
.implements Ljavassist/compiler/TokenId;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected arrayDim:I

.field protected localVar:I

.field protected qualifiedClass:Ljava/lang/String;

.field protected varType:I


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "dim"    # I

    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljavassist/compiler/ast/ASTList;-><init>(Ljavassist/compiler/ast/ASTree;)V

    .line 35
    iput p1, p0, Ljavassist/compiler/ast/Declarator;->varType:I

    .line 36
    iput p2, p0, Ljavassist/compiler/ast/Declarator;->arrayDim:I

    .line 37
    const/4 v1, -0x1

    iput v1, p0, Ljavassist/compiler/ast/Declarator;->localVar:I

    .line 38
    iput-object v0, p0, Ljavassist/compiler/ast/Declarator;->qualifiedClass:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IILjavassist/compiler/ast/Symbol;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "jvmClassName"    # Ljava/lang/String;
    .param p3, "dim"    # I
    .param p4, "var"    # I
    .param p5, "sym"    # Ljavassist/compiler/ast/Symbol;

    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljavassist/compiler/ast/ASTList;-><init>(Ljavassist/compiler/ast/ASTree;)V

    .line 54
    iput p1, p0, Ljavassist/compiler/ast/Declarator;->varType:I

    .line 55
    iput p3, p0, Ljavassist/compiler/ast/Declarator;->arrayDim:I

    .line 56
    iput p4, p0, Ljavassist/compiler/ast/Declarator;->localVar:I

    .line 57
    iput-object p2, p0, Ljavassist/compiler/ast/Declarator;->qualifiedClass:Ljava/lang/String;

    .line 58
    invoke-virtual {p0, p5}, Ljavassist/compiler/ast/Declarator;->setLeft(Ljavassist/compiler/ast/ASTree;)V

    .line 59
    invoke-static {p0, v0}, Ljavassist/compiler/ast/Declarator;->append(Ljavassist/compiler/ast/ASTList;Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/ASTList;

    .line 60
    return-void
.end method

.method public constructor <init>(Ljavassist/compiler/ast/ASTList;I)V
    .locals 1
    .param p1, "className"    # Ljavassist/compiler/ast/ASTList;
    .param p2, "dim"    # I

    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljavassist/compiler/ast/ASTList;-><init>(Ljavassist/compiler/ast/ASTree;)V

    .line 43
    const/16 v0, 0x133

    iput v0, p0, Ljavassist/compiler/ast/Declarator;->varType:I

    .line 44
    iput p2, p0, Ljavassist/compiler/ast/Declarator;->arrayDim:I

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Ljavassist/compiler/ast/Declarator;->localVar:I

    .line 46
    const/16 v0, 0x2f

    invoke-static {p1, v0}, Ljavassist/compiler/ast/Declarator;->astToClassName(Ljavassist/compiler/ast/ASTList;C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavassist/compiler/ast/Declarator;->qualifiedClass:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public static astToClassName(Ljavassist/compiler/ast/ASTList;C)Ljava/lang/String;
    .locals 2
    .param p0, "name"    # Ljavassist/compiler/ast/ASTList;
    .param p1, "sep"    # C

    .line 107
    if-nez p0, :cond_0

    .line 108
    const/4 v0, 0x0

    return-object v0

    .line 110
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 111
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    invoke-static {v0, p0, p1}, Ljavassist/compiler/ast/Declarator;->astToClassName(Ljava/lang/StringBuffer;Ljavassist/compiler/ast/ASTList;C)V

    .line 112
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static astToClassName(Ljava/lang/StringBuffer;Ljavassist/compiler/ast/ASTList;C)V
    .locals 2
    .param p0, "sbuf"    # Ljava/lang/StringBuffer;
    .param p1, "name"    # Ljavassist/compiler/ast/ASTList;
    .param p2, "sep"    # C

    .line 118
    :goto_0
    invoke-virtual {p1}, Ljavassist/compiler/ast/ASTList;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    .line 119
    .local v0, "h":Ljavassist/compiler/ast/ASTree;
    instance-of v1, v0, Ljavassist/compiler/ast/Symbol;

    if-eqz v1, :cond_0

    .line 120
    move-object v1, v0

    check-cast v1, Ljavassist/compiler/ast/Symbol;

    invoke-virtual {v1}, Ljavassist/compiler/ast/Symbol;->get()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 121
    :cond_0
    instance-of v1, v0, Ljavassist/compiler/ast/ASTList;

    if-eqz v1, :cond_1

    .line 122
    move-object v1, v0

    check-cast v1, Ljavassist/compiler/ast/ASTList;

    invoke-static {p0, v1, p2}, Ljavassist/compiler/ast/Declarator;->astToClassName(Ljava/lang/StringBuffer;Ljavassist/compiler/ast/ASTList;C)V

    .line 124
    :cond_1
    :goto_1
    invoke-virtual {p1}, Ljavassist/compiler/ast/ASTList;->tail()Ljavassist/compiler/ast/ASTList;

    move-result-object p1

    .line 125
    if-nez p1, :cond_2

    .line 126
    nop

    .line 130
    .end local v0    # "h":Ljavassist/compiler/ast/ASTree;
    return-void

    .line 128
    .restart local v0    # "h":Ljavassist/compiler/ast/ASTree;
    :cond_2
    invoke-virtual {p0, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 129
    .end local v0    # "h":Ljavassist/compiler/ast/ASTree;
    goto :goto_0
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

    .line 103
    invoke-virtual {p1, p0}, Ljavassist/compiler/ast/Visitor;->atDeclarator(Ljavassist/compiler/ast/Declarator;)V

    .line 104
    return-void
.end method

.method public addArrayDim(I)V
    .locals 1
    .param p1, "d"    # I

    .line 77
    iget v0, p0, Ljavassist/compiler/ast/Declarator;->arrayDim:I

    add-int/2addr v0, p1

    iput v0, p0, Ljavassist/compiler/ast/Declarator;->arrayDim:I

    return-void
.end method

.method public getArrayDim()I
    .locals 1

    .line 75
    iget v0, p0, Ljavassist/compiler/ast/Declarator;->arrayDim:I

    return v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Ljavassist/compiler/ast/Declarator;->qualifiedClass:Ljava/lang/String;

    return-object v0
.end method

.method public getInitializer()Ljavassist/compiler/ast/ASTree;
    .locals 2

    .line 88
    invoke-virtual {p0}, Ljavassist/compiler/ast/Declarator;->tail()Ljavassist/compiler/ast/ASTList;

    move-result-object v0

    .line 89
    .local v0, "t":Ljavassist/compiler/ast/ASTList;
    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {v0}, Ljavassist/compiler/ast/ASTList;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object v1

    return-object v1

    .line 91
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getLocalVar()I
    .locals 1

    .line 96
    iget v0, p0, Ljavassist/compiler/ast/Declarator;->localVar:I

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 99
    const-string v0, "decl"

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 73
    iget v0, p0, Ljavassist/compiler/ast/Declarator;->varType:I

    return v0
.end method

.method public getVariable()Ljavassist/compiler/ast/Symbol;
    .locals 1

    .line 83
    invoke-virtual {p0}, Ljavassist/compiler/ast/Declarator;->getLeft()Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    check-cast v0, Ljavassist/compiler/ast/Symbol;

    return-object v0
.end method

.method public make(Ljavassist/compiler/ast/Symbol;ILjavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/Declarator;
    .locals 3
    .param p1, "sym"    # Ljavassist/compiler/ast/Symbol;
    .param p2, "dim"    # I
    .param p3, "init"    # Ljavassist/compiler/ast/ASTree;

    .line 63
    new-instance v0, Ljavassist/compiler/ast/Declarator;

    iget v1, p0, Ljavassist/compiler/ast/Declarator;->varType:I

    iget v2, p0, Ljavassist/compiler/ast/Declarator;->arrayDim:I

    add-int/2addr v2, p2

    invoke-direct {v0, v1, v2}, Ljavassist/compiler/ast/Declarator;-><init>(II)V

    .line 64
    .local v0, "d":Ljavassist/compiler/ast/Declarator;
    iget-object v1, p0, Ljavassist/compiler/ast/Declarator;->qualifiedClass:Ljava/lang/String;

    iput-object v1, v0, Ljavassist/compiler/ast/Declarator;->qualifiedClass:Ljava/lang/String;

    .line 65
    invoke-virtual {v0, p1}, Ljavassist/compiler/ast/Declarator;->setLeft(Ljavassist/compiler/ast/ASTree;)V

    .line 66
    invoke-static {v0, p3}, Ljavassist/compiler/ast/Declarator;->append(Ljavassist/compiler/ast/ASTList;Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/ASTList;

    .line 67
    return-object v0
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .line 81
    iput-object p1, p0, Ljavassist/compiler/ast/Declarator;->qualifiedClass:Ljava/lang/String;

    return-void
.end method

.method public setLocalVar(I)V
    .locals 0
    .param p1, "n"    # I

    .line 94
    iput p1, p0, Ljavassist/compiler/ast/Declarator;->localVar:I

    return-void
.end method

.method public setVariable(Ljavassist/compiler/ast/Symbol;)V
    .locals 0
    .param p1, "sym"    # Ljavassist/compiler/ast/Symbol;

    .line 85
    invoke-virtual {p0, p1}, Ljavassist/compiler/ast/Declarator;->setLeft(Ljavassist/compiler/ast/ASTree;)V

    return-void
.end method
