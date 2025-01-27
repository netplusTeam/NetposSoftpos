.class Lbsh/SimpleNode;
.super Ljava/lang/Object;
.source "SimpleNode.java"

# interfaces
.implements Lbsh/Node;


# static fields
.field public static JAVACODE:Lbsh/SimpleNode;


# instance fields
.field protected children:[Lbsh/Node;

.field firstToken:Lbsh/Token;

.field protected id:I

.field lastToken:Lbsh/Token;

.field protected parent:Lbsh/Node;

.field sourceFile:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 48
    new-instance v0, Lbsh/SimpleNode$1;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lbsh/SimpleNode$1;-><init>(I)V

    sput-object v0, Lbsh/SimpleNode;->JAVACODE:Lbsh/SimpleNode;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "i"    # I

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput p1, p0, Lbsh/SimpleNode;->id:I

    .line 73
    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;)V
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;

    .line 124
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0, p1}, Lbsh/SimpleNode;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lbsh/SimpleNode;->children:[Lbsh/Node;

    if-eqz v0, :cond_1

    .line 127
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lbsh/SimpleNode;->children:[Lbsh/Node;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 129
    aget-object v1, v1, v0

    check-cast v1, Lbsh/SimpleNode;

    .line 130
    .local v1, "n":Lbsh/SimpleNode;
    if-eqz v1, :cond_0

    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbsh/SimpleNode;->dump(Ljava/lang/String;)V

    .line 127
    .end local v1    # "n":Lbsh/SimpleNode;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    .locals 3
    .param p1, "callstack"    # Lbsh/CallStack;
    .param p2, "interpreter"    # Lbsh/Interpreter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    .line 155
    new-instance v0, Lbsh/InterpreterError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unimplemented or inappropriate for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 156
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getChild(I)Lbsh/SimpleNode;
    .locals 1
    .param p1, "i"    # I

    .line 101
    invoke-virtual {p0, p1}, Lbsh/SimpleNode;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/SimpleNode;

    return-object v0
.end method

.method public getLineNumber()I
    .locals 1

    .line 188
    iget-object v0, p0, Lbsh/SimpleNode;->firstToken:Lbsh/Token;

    iget v0, v0, Lbsh/Token;->beginLine:I

    return v0
.end method

.method public getSourceFile()Ljava/lang/String;
    .locals 1

    .line 175
    iget-object v0, p0, Lbsh/SimpleNode;->sourceFile:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 176
    iget-object v0, p0, Lbsh/SimpleNode;->parent:Lbsh/Node;

    if-eqz v0, :cond_0

    .line 177
    check-cast v0, Lbsh/SimpleNode;

    invoke-virtual {v0}, Lbsh/SimpleNode;->getSourceFile()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 179
    :cond_0
    const-string v0, "<unknown file>"

    return-object v0

    .line 181
    :cond_1
    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 4

    .line 203
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 204
    .local v0, "text":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lbsh/SimpleNode;->firstToken:Lbsh/Token;

    .line 205
    .local v1, "t":Lbsh/Token;
    :goto_0
    if-eqz v1, :cond_2

    .line 206
    iget-object v2, v1, Lbsh/Token;->image:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 207
    iget-object v2, v1, Lbsh/Token;->image:Ljava/lang/String;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 208
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 209
    :cond_0
    iget-object v2, p0, Lbsh/SimpleNode;->lastToken:Lbsh/Token;

    if-eq v1, v2, :cond_2

    iget-object v2, v1, Lbsh/Token;->image:Ljava/lang/String;

    .line 210
    const-string/jumbo v3, "{"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v1, Lbsh/Token;->image:Ljava/lang/String;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 211
    goto :goto_1

    .line 212
    :cond_1
    iget-object v1, v1, Lbsh/Token;->next:Lbsh/Token;

    goto :goto_0

    .line 215
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public jjtAddChild(Lbsh/Node;I)V
    .locals 4
    .param p1, "n"    # Lbsh/Node;
    .param p2, "i"    # I

    .line 84
    iget-object v0, p0, Lbsh/SimpleNode;->children:[Lbsh/Node;

    if-nez v0, :cond_0

    .line 85
    add-int/lit8 v0, p2, 0x1

    new-array v0, v0, [Lbsh/Node;

    iput-object v0, p0, Lbsh/SimpleNode;->children:[Lbsh/Node;

    goto :goto_0

    .line 87
    :cond_0
    array-length v1, v0

    if-lt p2, v1, :cond_1

    .line 89
    add-int/lit8 v1, p2, 0x1

    new-array v1, v1, [Lbsh/Node;

    .line 90
    .local v1, "c":[Lbsh/Node;
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 91
    iput-object v1, p0, Lbsh/SimpleNode;->children:[Lbsh/Node;

    .line 94
    .end local v1    # "c":[Lbsh/Node;
    :cond_1
    :goto_0
    iget-object v0, p0, Lbsh/SimpleNode;->children:[Lbsh/Node;

    aput-object p1, v0, p2

    .line 95
    return-void
.end method

.method public jjtClose()V
    .locals 0

    .line 76
    return-void
.end method

.method public jjtGetChild(I)Lbsh/Node;
    .locals 1
    .param p1, "i"    # I

    .line 98
    iget-object v0, p0, Lbsh/SimpleNode;->children:[Lbsh/Node;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public jjtGetNumChildren()I
    .locals 1

    .line 105
    iget-object v0, p0, Lbsh/SimpleNode;->children:[Lbsh/Node;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, v0

    :goto_0
    return v0
.end method

.method public jjtGetParent()Lbsh/Node;
    .locals 1

    .line 79
    iget-object v0, p0, Lbsh/SimpleNode;->parent:Lbsh/Node;

    return-object v0
.end method

.method public jjtOpen()V
    .locals 0

    .line 75
    return-void
.end method

.method public jjtSetParent(Lbsh/Node;)V
    .locals 0
    .param p1, "n"    # Lbsh/Node;

    .line 78
    iput-object p1, p0, Lbsh/SimpleNode;->parent:Lbsh/Node;

    return-void
.end method

.method public prune()V
    .locals 1

    .line 146
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbsh/SimpleNode;->jjtSetParent(Lbsh/Node;)V

    .line 147
    return-void
.end method

.method public setSourceFile(Ljava/lang/String;)V
    .locals 0
    .param p1, "sourceFile"    # Ljava/lang/String;

    .line 164
    iput-object p1, p0, Lbsh/SimpleNode;->sourceFile:Ljava/lang/String;

    .line 165
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 115
    sget-object v0, Lbsh/ParserTreeConstants;->jjtNodeName:[Ljava/lang/String;

    iget v1, p0, Lbsh/SimpleNode;->id:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lbsh/SimpleNode;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
