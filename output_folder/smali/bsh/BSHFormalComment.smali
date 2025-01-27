.class public Lbsh/BSHFormalComment;
.super Lbsh/SimpleNode;
.source "BSHFormalComment.java"


# instance fields
.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "id"    # I

    .line 35
    invoke-direct {p0, p1}, Lbsh/SimpleNode;-><init>(I)V

    .line 36
    return-void
.end method


# virtual methods
.method public bridge synthetic dump(Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-super {p0, p1}, Lbsh/SimpleNode;->dump(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    .line 30
    invoke-super {p0, p1, p2}, Lbsh/SimpleNode;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getChild(I)Lbsh/SimpleNode;
    .locals 0

    .line 30
    invoke-super {p0, p1}, Lbsh/SimpleNode;->getChild(I)Lbsh/SimpleNode;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getLineNumber()I
    .locals 1

    .line 30
    invoke-super {p0}, Lbsh/SimpleNode;->getLineNumber()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getSourceFile()Ljava/lang/String;
    .locals 1

    .line 30
    invoke-super {p0}, Lbsh/SimpleNode;->getSourceFile()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getText()Ljava/lang/String;
    .locals 1

    .line 30
    invoke-super {p0}, Lbsh/SimpleNode;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic jjtAddChild(Lbsh/Node;I)V
    .locals 0

    .line 30
    invoke-super {p0, p1, p2}, Lbsh/SimpleNode;->jjtAddChild(Lbsh/Node;I)V

    return-void
.end method

.method public bridge synthetic jjtClose()V
    .locals 0

    .line 30
    invoke-super {p0}, Lbsh/SimpleNode;->jjtClose()V

    return-void
.end method

.method public bridge synthetic jjtGetChild(I)Lbsh/Node;
    .locals 0

    .line 30
    invoke-super {p0, p1}, Lbsh/SimpleNode;->jjtGetChild(I)Lbsh/Node;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic jjtGetNumChildren()I
    .locals 1

    .line 30
    invoke-super {p0}, Lbsh/SimpleNode;->jjtGetNumChildren()I

    move-result v0

    return v0
.end method

.method public bridge synthetic jjtGetParent()Lbsh/Node;
    .locals 1

    .line 30
    invoke-super {p0}, Lbsh/SimpleNode;->jjtGetParent()Lbsh/Node;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic jjtOpen()V
    .locals 0

    .line 30
    invoke-super {p0}, Lbsh/SimpleNode;->jjtOpen()V

    return-void
.end method

.method public bridge synthetic jjtSetParent(Lbsh/Node;)V
    .locals 0

    .line 30
    invoke-super {p0, p1}, Lbsh/SimpleNode;->jjtSetParent(Lbsh/Node;)V

    return-void
.end method

.method public bridge synthetic prune()V
    .locals 0

    .line 30
    invoke-super {p0}, Lbsh/SimpleNode;->prune()V

    return-void
.end method

.method public bridge synthetic setSourceFile(Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-super {p0, p1}, Lbsh/SimpleNode;->setSourceFile(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 30
    invoke-super {p0}, Lbsh/SimpleNode;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 30
    invoke-super {p0, p1}, Lbsh/SimpleNode;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
