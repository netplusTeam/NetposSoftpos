.class Lbsh/BlockNameSpace;
.super Lbsh/NameSpace;
.source "BlockNameSpace.java"


# direct methods
.method public constructor <init>(Lbsh/NameSpace;)V
    .locals 2
    .param p1, "parent"    # Lbsh/NameSpace;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lbsh/NameSpace;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/BlockNameSpace"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lbsh/NameSpace;-><init>(Lbsh/NameSpace;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method private getNonBlockParent()Lbsh/NameSpace;
    .locals 2

    .line 141
    invoke-super {p0}, Lbsh/NameSpace;->getParent()Lbsh/NameSpace;

    move-result-object v0

    .line 142
    .local v0, "parent":Lbsh/NameSpace;
    instance-of v1, v0, Lbsh/BlockNameSpace;

    if-eqz v1, :cond_0

    .line 143
    move-object v1, v0

    check-cast v1, Lbsh/BlockNameSpace;

    invoke-direct {v1}, Lbsh/BlockNameSpace;->getNonBlockParent()Lbsh/NameSpace;

    move-result-object v1

    return-object v1

    .line 145
    :cond_0
    return-object v0
.end method

.method private weHaveVar(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 102
    const/4 v0, 0x0

    :try_start_0
    invoke-super {p0, p1, v0}, Lbsh/NameSpace;->getVariableImpl(Ljava/lang/String;Z)Lbsh/Variable;

    move-result-object v1
    :try_end_0
    .catch Lbsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 103
    :catch_0
    move-exception v1

    .local v1, "e":Lbsh/UtilEvalError;
    return v0
.end method


# virtual methods
.method public getSuper(Lbsh/Interpreter;)Lbsh/This;
    .locals 1
    .param p1, "declaringInterpreter"    # Lbsh/Interpreter;

    .line 163
    invoke-direct {p0}, Lbsh/BlockNameSpace;->getNonBlockParent()Lbsh/NameSpace;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbsh/NameSpace;->getSuper(Lbsh/Interpreter;)Lbsh/This;

    move-result-object v0

    return-object v0
.end method

.method public getThis(Lbsh/Interpreter;)Lbsh/This;
    .locals 1
    .param p1, "declaringInterpreter"    # Lbsh/Interpreter;

    .line 156
    invoke-direct {p0}, Lbsh/BlockNameSpace;->getNonBlockParent()Lbsh/NameSpace;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbsh/NameSpace;->getThis(Lbsh/Interpreter;)Lbsh/This;

    move-result-object v0

    return-object v0
.end method

.method public importClass(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 170
    invoke-virtual {p0}, Lbsh/BlockNameSpace;->getParent()Lbsh/NameSpace;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbsh/NameSpace;->importClass(Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method public importPackage(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 177
    invoke-virtual {p0}, Lbsh/BlockNameSpace;->getParent()Lbsh/NameSpace;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbsh/NameSpace;->importPackage(Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method public setBlockVariable(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    .line 90
    const/4 v0, 0x0

    invoke-super {p0, p1, p2, v0, v0}, Lbsh/NameSpace;->setVariable(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 91
    return-void
.end method

.method public setMethod(Ljava/lang/String;Lbsh/BshMethod;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "method"    # Lbsh/BshMethod;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    .line 183
    invoke-virtual {p0}, Lbsh/BlockNameSpace;->getParent()Lbsh/NameSpace;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lbsh/NameSpace;->setMethod(Ljava/lang/String;Lbsh/BshMethod;)V

    .line 184
    return-void
.end method

.method public setVariable(Ljava/lang/String;Ljava/lang/Object;ZZ)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "strictJava"    # Z
    .param p4, "recurse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    .line 73
    invoke-direct {p0, p1}, Lbsh/BlockNameSpace;->weHaveVar(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    const/4 v0, 0x0

    invoke-super {p0, p1, p2, p3, v0}, Lbsh/NameSpace;->setVariable(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {p0}, Lbsh/BlockNameSpace;->getParent()Lbsh/NameSpace;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lbsh/NameSpace;->setVariable(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 79
    :goto_0
    return-void
.end method
