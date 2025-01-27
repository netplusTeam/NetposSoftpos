.class Lbsh/BSHClassDeclaration;
.super Lbsh/SimpleNode;
.source "BSHClassDeclaration.java"


# static fields
.field static final CLASSINITNAME:Ljava/lang/String; = "_bshClassInit"


# instance fields
.field extend:Z

.field isInterface:Z

.field modifiers:Lbsh/Modifiers;

.field name:Ljava/lang/String;

.field numInterfaces:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "id"    # I

    .line 50
    invoke-direct {p0, p1}, Lbsh/SimpleNode;-><init>(I)V

    return-void
.end method


# virtual methods
.method public eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    .locals 13
    .param p1, "callstack"    # Lbsh/CallStack;
    .param p2, "interpreter"    # Lbsh/Interpreter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    .line 57
    const/4 v0, 0x0

    .line 60
    .local v0, "child":I
    const/4 v1, 0x0

    .line 61
    .local v1, "superClass":Ljava/lang/Class;
    iget-boolean v2, p0, Lbsh/BSHClassDeclaration;->extend:Z

    if-eqz v2, :cond_0

    .line 63
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "child":I
    .local v2, "child":I
    invoke-virtual {p0, v0}, Lbsh/BSHClassDeclaration;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/BSHAmbiguousName;

    .line 64
    .local v0, "superNode":Lbsh/BSHAmbiguousName;
    invoke-virtual {v0, p1, p2}, Lbsh/BSHAmbiguousName;->toClass(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Class;

    move-result-object v1

    move-object v10, v1

    move v0, v2

    goto :goto_0

    .line 61
    .end local v2    # "child":I
    .local v0, "child":I
    :cond_0
    move-object v10, v1

    .line 68
    .end local v1    # "superClass":Ljava/lang/Class;
    .local v10, "superClass":Ljava/lang/Class;
    :goto_0
    iget v1, p0, Lbsh/BSHClassDeclaration;->numInterfaces:I

    new-array v11, v1, [Ljava/lang/Class;

    .line 69
    .local v11, "interfaces":[Ljava/lang/Class;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v2, p0, Lbsh/BSHClassDeclaration;->numInterfaces:I

    if-ge v1, v2, :cond_2

    .line 70
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "child":I
    .restart local v2    # "child":I
    invoke-virtual {p0, v0}, Lbsh/BSHClassDeclaration;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/BSHAmbiguousName;

    .line 71
    .local v0, "node":Lbsh/BSHAmbiguousName;
    invoke-virtual {v0, p1, p2}, Lbsh/BSHAmbiguousName;->toClass(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v11, v1

    .line 72
    aget-object v3, v11, v1

    invoke-virtual {v3}, Ljava/lang/Class;->isInterface()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 69
    .end local v0    # "node":Lbsh/BSHAmbiguousName;
    add-int/lit8 v1, v1, 0x1

    move v0, v2

    goto :goto_1

    .line 73
    .restart local v0    # "node":Lbsh/BSHAmbiguousName;
    :cond_1
    new-instance v3, Lbsh/EvalError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lbsh/BSHAmbiguousName;->text:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not an interface!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, p0, p1}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v3

    .line 80
    .end local v1    # "i":I
    .end local v2    # "child":I
    .local v0, "child":I
    :cond_2
    invoke-virtual {p0}, Lbsh/BSHClassDeclaration;->jjtGetNumChildren()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 81
    invoke-virtual {p0, v0}, Lbsh/BSHClassDeclaration;->jjtGetChild(I)Lbsh/Node;

    move-result-object v1

    check-cast v1, Lbsh/BSHBlock;

    move-object v12, v1

    .local v1, "block":Lbsh/BSHBlock;
    goto :goto_2

    .line 83
    .end local v1    # "block":Lbsh/BSHBlock;
    :cond_3
    new-instance v1, Lbsh/BSHBlock;

    const/16 v2, 0x19

    invoke-direct {v1, v2}, Lbsh/BSHBlock;-><init>(I)V

    move-object v12, v1

    .line 86
    .local v12, "block":Lbsh/BSHBlock;
    :goto_2
    :try_start_0
    invoke-static {}, Lbsh/ClassGenerator;->getClassGenerator()Lbsh/ClassGenerator;

    move-result-object v1

    iget-object v2, p0, Lbsh/BSHClassDeclaration;->name:Ljava/lang/String;

    iget-object v3, p0, Lbsh/BSHClassDeclaration;->modifiers:Lbsh/Modifiers;

    iget-boolean v7, p0, Lbsh/BSHClassDeclaration;->isInterface:Z

    move-object v4, v11

    move-object v5, v10

    move-object v6, v12

    move-object v8, p1

    move-object v9, p2

    invoke-virtual/range {v1 .. v9}, Lbsh/ClassGenerator;->generateClass(Ljava/lang/String;Lbsh/Modifiers;[Ljava/lang/Class;Ljava/lang/Class;Lbsh/BSHBlock;ZLbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Lbsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 89
    :catch_0
    move-exception v1

    .line 90
    .local v1, "e":Lbsh/UtilEvalError;
    invoke-virtual {v1, p0, p1}, Lbsh/UtilEvalError;->toEvalError(Lbsh/SimpleNode;Lbsh/CallStack;)Lbsh/EvalError;

    move-result-object v2

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ClassDeclaration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbsh/BSHClassDeclaration;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
