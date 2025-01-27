.class public Ljavassist/compiler/ast/ASTList;
.super Ljavassist/compiler/ast/ASTree;
.source "ASTList.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private left:Ljavassist/compiler/ast/ASTree;

.field private right:Ljavassist/compiler/ast/ASTList;


# direct methods
.method public constructor <init>(Ljavassist/compiler/ast/ASTree;)V
    .locals 1
    .param p1, "_head"    # Ljavassist/compiler/ast/ASTree;

    .line 36
    invoke-direct {p0}, Ljavassist/compiler/ast/ASTree;-><init>()V

    .line 37
    iput-object p1, p0, Ljavassist/compiler/ast/ASTList;->left:Ljavassist/compiler/ast/ASTree;

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Ljavassist/compiler/ast/ASTList;->right:Ljavassist/compiler/ast/ASTList;

    .line 39
    return-void
.end method

.method public constructor <init>(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTList;)V
    .locals 0
    .param p1, "_head"    # Ljavassist/compiler/ast/ASTree;
    .param p2, "_tail"    # Ljavassist/compiler/ast/ASTList;

    .line 31
    invoke-direct {p0}, Ljavassist/compiler/ast/ASTree;-><init>()V

    .line 32
    iput-object p1, p0, Ljavassist/compiler/ast/ASTList;->left:Ljavassist/compiler/ast/ASTree;

    .line 33
    iput-object p2, p0, Ljavassist/compiler/ast/ASTList;->right:Ljavassist/compiler/ast/ASTList;

    .line 34
    return-void
.end method

.method public static append(Ljavassist/compiler/ast/ASTList;Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/ASTList;
    .locals 1
    .param p0, "a"    # Ljavassist/compiler/ast/ASTList;
    .param p1, "b"    # Ljavassist/compiler/ast/ASTree;

    .line 150
    new-instance v0, Ljavassist/compiler/ast/ASTList;

    invoke-direct {v0, p1}, Ljavassist/compiler/ast/ASTList;-><init>(Ljavassist/compiler/ast/ASTree;)V

    invoke-static {p0, v0}, Ljavassist/compiler/ast/ASTList;->concat(Ljavassist/compiler/ast/ASTList;Ljavassist/compiler/ast/ASTList;)Ljavassist/compiler/ast/ASTList;

    move-result-object v0

    return-object v0
.end method

.method public static concat(Ljavassist/compiler/ast/ASTList;Ljavassist/compiler/ast/ASTList;)Ljavassist/compiler/ast/ASTList;
    .locals 2
    .param p0, "a"    # Ljavassist/compiler/ast/ASTList;
    .param p1, "b"    # Ljavassist/compiler/ast/ASTList;

    .line 157
    if-nez p0, :cond_0

    .line 158
    return-object p1

    .line 159
    :cond_0
    move-object v0, p0

    .line 160
    .local v0, "list":Ljavassist/compiler/ast/ASTList;
    :goto_0
    iget-object v1, v0, Ljavassist/compiler/ast/ASTList;->right:Ljavassist/compiler/ast/ASTList;

    if-eqz v1, :cond_1

    .line 161
    iget-object v0, v0, Ljavassist/compiler/ast/ASTList;->right:Ljavassist/compiler/ast/ASTList;

    goto :goto_0

    .line 163
    :cond_1
    iput-object p1, v0, Ljavassist/compiler/ast/ASTList;->right:Ljavassist/compiler/ast/ASTList;

    .line 164
    return-object p0
.end method

.method public static length(Ljavassist/compiler/ast/ASTList;)I
    .locals 1
    .param p0, "list"    # Ljavassist/compiler/ast/ASTList;

    .line 106
    if-nez p0, :cond_0

    .line 107
    const/4 v0, 0x0

    return v0

    .line 109
    :cond_0
    const/4 v0, 0x0

    .line 110
    .local v0, "n":I
    :goto_0
    if-eqz p0, :cond_1

    .line 111
    iget-object p0, p0, Ljavassist/compiler/ast/ASTList;->right:Ljavassist/compiler/ast/ASTList;

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 115
    :cond_1
    return v0
.end method

.method public static make(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/ASTList;
    .locals 3
    .param p0, "e1"    # Ljavassist/compiler/ast/ASTree;
    .param p1, "e2"    # Ljavassist/compiler/ast/ASTree;
    .param p2, "e3"    # Ljavassist/compiler/ast/ASTree;

    .line 42
    new-instance v0, Ljavassist/compiler/ast/ASTList;

    new-instance v1, Ljavassist/compiler/ast/ASTList;

    new-instance v2, Ljavassist/compiler/ast/ASTList;

    invoke-direct {v2, p2}, Ljavassist/compiler/ast/ASTList;-><init>(Ljavassist/compiler/ast/ASTree;)V

    invoke-direct {v1, p1, v2}, Ljavassist/compiler/ast/ASTList;-><init>(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTList;)V

    invoke-direct {v0, p0, v1}, Ljavassist/compiler/ast/ASTList;-><init>(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTList;)V

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

    .line 78
    invoke-virtual {p1, p0}, Ljavassist/compiler/ast/Visitor;->atASTList(Ljavassist/compiler/ast/ASTList;)V

    return-void
.end method

.method public getLeft()Ljavassist/compiler/ast/ASTree;
    .locals 1

    .line 46
    iget-object v0, p0, Ljavassist/compiler/ast/ASTList;->left:Ljavassist/compiler/ast/ASTree;

    return-object v0
.end method

.method public getRight()Ljavassist/compiler/ast/ASTree;
    .locals 1

    .line 49
    iget-object v0, p0, Ljavassist/compiler/ast/ASTList;->right:Ljavassist/compiler/ast/ASTList;

    return-object v0
.end method

.method public head()Ljavassist/compiler/ast/ASTree;
    .locals 1

    .line 62
    iget-object v0, p0, Ljavassist/compiler/ast/ASTList;->left:Ljavassist/compiler/ast/ASTree;

    return-object v0
.end method

.method public length()I
    .locals 1

    .line 102
    invoke-static {p0}, Ljavassist/compiler/ast/ASTList;->length(Ljavassist/compiler/ast/ASTList;)I

    move-result v0

    return v0
.end method

.method public setHead(Ljavassist/compiler/ast/ASTree;)V
    .locals 0
    .param p1, "_head"    # Ljavassist/compiler/ast/ASTree;

    .line 65
    iput-object p1, p0, Ljavassist/compiler/ast/ASTList;->left:Ljavassist/compiler/ast/ASTree;

    .line 66
    return-void
.end method

.method public setLeft(Ljavassist/compiler/ast/ASTree;)V
    .locals 0
    .param p1, "_left"    # Ljavassist/compiler/ast/ASTree;

    .line 52
    iput-object p1, p0, Ljavassist/compiler/ast/ASTList;->left:Ljavassist/compiler/ast/ASTree;

    return-void
.end method

.method public setRight(Ljavassist/compiler/ast/ASTree;)V
    .locals 1
    .param p1, "_right"    # Ljavassist/compiler/ast/ASTree;

    .line 56
    move-object v0, p1

    check-cast v0, Ljavassist/compiler/ast/ASTList;

    iput-object v0, p0, Ljavassist/compiler/ast/ASTList;->right:Ljavassist/compiler/ast/ASTList;

    .line 57
    return-void
.end method

.method public setTail(Ljavassist/compiler/ast/ASTList;)V
    .locals 0
    .param p1, "_tail"    # Ljavassist/compiler/ast/ASTList;

    .line 74
    iput-object p1, p0, Ljavassist/compiler/ast/ASTList;->right:Ljavassist/compiler/ast/ASTList;

    .line 75
    return-void
.end method

.method public sublist(I)Ljavassist/compiler/ast/ASTList;
    .locals 2
    .param p1, "nth"    # I

    .line 125
    move-object v0, p0

    .line 126
    .local v0, "list":Ljavassist/compiler/ast/ASTList;
    :goto_0
    add-int/lit8 v1, p1, -0x1

    .end local p1    # "nth":I
    .local v1, "nth":I
    if-lez p1, :cond_0

    .line 127
    iget-object v0, v0, Ljavassist/compiler/ast/ASTList;->right:Ljavassist/compiler/ast/ASTList;

    move p1, v1

    goto :goto_0

    .line 129
    :cond_0
    return-object v0
.end method

.method public subst(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)Z
    .locals 2
    .param p1, "newObj"    # Ljavassist/compiler/ast/ASTree;
    .param p2, "oldObj"    # Ljavassist/compiler/ast/ASTree;

    .line 137
    move-object v0, p0

    .local v0, "list":Ljavassist/compiler/ast/ASTList;
    :goto_0
    if-eqz v0, :cond_1

    .line 138
    iget-object v1, v0, Ljavassist/compiler/ast/ASTList;->left:Ljavassist/compiler/ast/ASTree;

    if-ne v1, p2, :cond_0

    .line 139
    iput-object p1, v0, Ljavassist/compiler/ast/ASTList;->left:Ljavassist/compiler/ast/ASTree;

    .line 140
    const/4 v1, 0x1

    return v1

    .line 137
    :cond_0
    iget-object v0, v0, Ljavassist/compiler/ast/ASTList;->right:Ljavassist/compiler/ast/ASTList;

    goto :goto_0

    .line 143
    .end local v0    # "list":Ljavassist/compiler/ast/ASTList;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public tail()Ljavassist/compiler/ast/ASTList;
    .locals 1

    .line 71
    iget-object v0, p0, Ljavassist/compiler/ast/ASTList;->right:Ljavassist/compiler/ast/ASTList;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 82
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 83
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    const-string v1, "(<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    invoke-virtual {p0}, Ljavassist/compiler/ast/ASTList;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 86
    move-object v1, p0

    .line 87
    .local v1, "list":Ljavassist/compiler/ast/ASTList;
    :goto_0
    if-eqz v1, :cond_1

    .line 88
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 89
    iget-object v2, v1, Ljavassist/compiler/ast/ASTList;->left:Ljavassist/compiler/ast/ASTree;

    .line 90
    .local v2, "a":Ljavassist/compiler/ast/ASTree;
    if-nez v2, :cond_0

    const-string v3, "<null>"

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Ljavassist/compiler/ast/ASTree;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    iget-object v1, v1, Ljavassist/compiler/ast/ASTList;->right:Ljavassist/compiler/ast/ASTList;

    .line 92
    .end local v2    # "a":Ljavassist/compiler/ast/ASTree;
    goto :goto_0

    .line 94
    :cond_1
    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 95
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
