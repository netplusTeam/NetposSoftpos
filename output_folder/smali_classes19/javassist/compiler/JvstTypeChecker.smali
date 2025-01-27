.class public Ljavassist/compiler/JvstTypeChecker;
.super Ljavassist/compiler/TypeChecker;
.source "JvstTypeChecker.java"


# instance fields
.field private codeGen:Ljavassist/compiler/JvstCodeGen;


# direct methods
.method public constructor <init>(Ljavassist/CtClass;Ljavassist/ClassPool;Ljavassist/compiler/JvstCodeGen;)V
    .locals 0
    .param p1, "cc"    # Ljavassist/CtClass;
    .param p2, "cp"    # Ljavassist/ClassPool;
    .param p3, "gen"    # Ljavassist/compiler/JvstCodeGen;

    .line 38
    invoke-direct {p0, p1, p2}, Ljavassist/compiler/TypeChecker;-><init>(Ljavassist/CtClass;Ljavassist/ClassPool;)V

    .line 39
    iput-object p3, p0, Ljavassist/compiler/JvstTypeChecker;->codeGen:Ljavassist/compiler/JvstCodeGen;

    .line 40
    return-void
.end method

.method private setType(Ljavassist/CtClass;I)V
    .locals 4
    .param p1, "type"    # Ljavassist/CtClass;
    .param p2, "dim"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 277
    invoke-virtual {p1}, Ljavassist/CtClass;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    move-object v0, p1

    check-cast v0, Ljavassist/CtPrimitiveType;

    .line 279
    .local v0, "pt":Ljavassist/CtPrimitiveType;
    invoke-virtual {v0}, Ljavassist/CtPrimitiveType;->getDescriptor()C

    move-result v1

    invoke-static {v1}, Ljavassist/compiler/MemberResolver;->descToType(C)I

    move-result v1

    iput v1, p0, Ljavassist/compiler/JvstTypeChecker;->exprType:I

    .line 280
    iput p2, p0, Ljavassist/compiler/JvstTypeChecker;->arrayDim:I

    .line 281
    const/4 v1, 0x0

    iput-object v1, p0, Ljavassist/compiler/JvstTypeChecker;->className:Ljava/lang/String;

    .line 282
    .end local v0    # "pt":Ljavassist/CtPrimitiveType;
    goto :goto_0

    .line 283
    :cond_0
    invoke-virtual {p1}, Ljavassist/CtClass;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 285
    :try_start_0
    invoke-virtual {p1}, Ljavassist/CtClass;->getComponentType()Ljavassist/CtClass;

    move-result-object v0

    add-int/lit8 v1, p2, 0x1

    invoke-direct {p0, v0, v1}, Ljavassist/compiler/JvstTypeChecker;->setType(Ljavassist/CtClass;I)V
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    goto :goto_0

    .line 287
    :catch_0
    move-exception v0

    .line 288
    .local v0, "e":Ljavassist/NotFoundException;
    new-instance v1, Ljavassist/compiler/CompileError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "undefined type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 291
    .end local v0    # "e":Ljavassist/NotFoundException;
    :cond_1
    const/16 v0, 0x133

    iput v0, p0, Ljavassist/compiler/JvstTypeChecker;->exprType:I

    .line 292
    iput p2, p0, Ljavassist/compiler/JvstTypeChecker;->arrayDim:I

    .line 293
    invoke-virtual {p1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavassist/compiler/MemberResolver;->javaToJvmName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavassist/compiler/JvstTypeChecker;->className:Ljava/lang/String;

    .line 295
    :goto_0
    return-void
.end method


# virtual methods
.method public addNullIfVoid()V
    .locals 2

    .line 46
    iget v0, p0, Ljavassist/compiler/JvstTypeChecker;->exprType:I

    const/16 v1, 0x158

    if-ne v0, v1, :cond_0

    .line 47
    const/16 v0, 0x133

    iput v0, p0, Ljavassist/compiler/JvstTypeChecker;->exprType:I

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Ljavassist/compiler/JvstTypeChecker;->arrayDim:I

    .line 49
    const-string v0, "java/lang/Object"

    iput-object v0, p0, Ljavassist/compiler/JvstTypeChecker;->className:Ljava/lang/String;

    .line 51
    :cond_0
    return-void
.end method

.method public atCallExpr(Ljavassist/compiler/ast/CallExpr;)V
    .locals 4
    .param p1, "expr"    # Ljavassist/compiler/ast/CallExpr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 155
    invoke-virtual {p1}, Ljavassist/compiler/ast/CallExpr;->oprand1()Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    .line 156
    .local v0, "method":Ljavassist/compiler/ast/ASTree;
    instance-of v1, v0, Ljavassist/compiler/ast/Member;

    if-eqz v1, :cond_1

    .line 157
    move-object v1, v0

    check-cast v1, Ljavassist/compiler/ast/Member;

    invoke-virtual {v1}, Ljavassist/compiler/ast/Member;->get()Ljava/lang/String;

    move-result-object v1

    .line 158
    .local v1, "name":Ljava/lang/String;
    iget-object v2, p0, Ljavassist/compiler/JvstTypeChecker;->codeGen:Ljavassist/compiler/JvstCodeGen;

    iget-object v2, v2, Ljavassist/compiler/JvstCodeGen;->procHandler:Ljavassist/compiler/ProceedHandler;

    if-eqz v2, :cond_0

    iget-object v2, p0, Ljavassist/compiler/JvstTypeChecker;->codeGen:Ljavassist/compiler/JvstCodeGen;

    iget-object v2, v2, Ljavassist/compiler/JvstCodeGen;->proceedName:Ljava/lang/String;

    .line 159
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 160
    iget-object v2, p0, Ljavassist/compiler/JvstTypeChecker;->codeGen:Ljavassist/compiler/JvstCodeGen;

    iget-object v2, v2, Ljavassist/compiler/JvstCodeGen;->procHandler:Ljavassist/compiler/ProceedHandler;

    .line 161
    invoke-virtual {p1}, Ljavassist/compiler/ast/CallExpr;->oprand2()Ljavassist/compiler/ast/ASTree;

    move-result-object v3

    check-cast v3, Ljavassist/compiler/ast/ASTList;

    .line 160
    invoke-interface {v2, p0, v3}, Ljavassist/compiler/ProceedHandler;->setReturnType(Ljavassist/compiler/JvstTypeChecker;Ljavassist/compiler/ast/ASTList;)V

    .line 162
    return-void

    .line 164
    :cond_0
    const-string v2, "$cflow"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 165
    invoke-virtual {p1}, Ljavassist/compiler/ast/CallExpr;->oprand2()Ljavassist/compiler/ast/ASTree;

    move-result-object v2

    check-cast v2, Ljavassist/compiler/ast/ASTList;

    invoke-virtual {p0, v2}, Ljavassist/compiler/JvstTypeChecker;->atCflow(Ljavassist/compiler/ast/ASTList;)V

    .line 166
    return-void

    .line 170
    .end local v1    # "name":Ljava/lang/String;
    :cond_1
    invoke-super {p0, p1}, Ljavassist/compiler/TypeChecker;->atCallExpr(Ljavassist/compiler/ast/CallExpr;)V

    .line 171
    return-void
.end method

.method public atCastExpr(Ljavassist/compiler/ast/CastExpr;)V
    .locals 4
    .param p1, "expr"    # Ljavassist/compiler/ast/CastExpr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 100
    invoke-virtual {p1}, Ljavassist/compiler/ast/CastExpr;->getClassName()Ljavassist/compiler/ast/ASTList;

    move-result-object v0

    .line 101
    .local v0, "classname":Ljavassist/compiler/ast/ASTList;
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljavassist/compiler/ast/CastExpr;->getArrayDim()I

    move-result v1

    if-nez v1, :cond_1

    .line 102
    invoke-virtual {v0}, Ljavassist/compiler/ast/ASTList;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object v1

    .line 103
    .local v1, "p":Ljavassist/compiler/ast/ASTree;
    instance-of v2, v1, Ljavassist/compiler/ast/Symbol;

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljavassist/compiler/ast/ASTList;->tail()Ljavassist/compiler/ast/ASTList;

    move-result-object v2

    if-nez v2, :cond_1

    .line 104
    move-object v2, v1

    check-cast v2, Ljavassist/compiler/ast/Symbol;

    invoke-virtual {v2}, Ljavassist/compiler/ast/Symbol;->get()Ljava/lang/String;

    move-result-object v2

    .line 105
    .local v2, "typename":Ljava/lang/String;
    iget-object v3, p0, Ljavassist/compiler/JvstTypeChecker;->codeGen:Ljavassist/compiler/JvstCodeGen;

    iget-object v3, v3, Ljavassist/compiler/JvstCodeGen;->returnCastName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 106
    invoke-virtual {p0, p1}, Ljavassist/compiler/JvstTypeChecker;->atCastToRtype(Ljavassist/compiler/ast/CastExpr;)V

    .line 107
    return-void

    .line 109
    :cond_0
    const-string v3, "$w"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 110
    invoke-virtual {p0, p1}, Ljavassist/compiler/JvstTypeChecker;->atCastToWrapper(Ljavassist/compiler/ast/CastExpr;)V

    .line 111
    return-void

    .line 116
    .end local v1    # "p":Ljavassist/compiler/ast/ASTree;
    .end local v2    # "typename":Ljava/lang/String;
    :cond_1
    invoke-super {p0, p1}, Ljavassist/compiler/TypeChecker;->atCastExpr(Ljavassist/compiler/ast/CastExpr;)V

    .line 117
    return-void
.end method

.method protected atCastToRtype(Ljavassist/compiler/ast/CastExpr;)V
    .locals 4
    .param p1, "expr"    # Ljavassist/compiler/ast/CastExpr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 124
    iget-object v0, p0, Ljavassist/compiler/JvstTypeChecker;->codeGen:Ljavassist/compiler/JvstCodeGen;

    iget-object v0, v0, Ljavassist/compiler/JvstCodeGen;->returnType:Ljavassist/CtClass;

    .line 125
    .local v0, "returnType":Ljavassist/CtClass;
    invoke-virtual {p1}, Ljavassist/compiler/ast/CastExpr;->getOprand()Ljavassist/compiler/ast/ASTree;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 126
    iget v1, p0, Ljavassist/compiler/JvstTypeChecker;->exprType:I

    const/16 v2, 0x158

    if-eq v1, v2, :cond_1

    iget v1, p0, Ljavassist/compiler/JvstTypeChecker;->exprType:I

    invoke-static {v1}, Ljavassist/compiler/CodeGen;->isRefType(I)Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Ljavassist/compiler/JvstTypeChecker;->arrayDim:I

    if-lez v1, :cond_0

    goto :goto_0

    .line 128
    :cond_0
    instance-of v1, v0, Ljavassist/CtPrimitiveType;

    if-eqz v1, :cond_2

    .line 129
    move-object v1, v0

    check-cast v1, Ljavassist/CtPrimitiveType;

    .line 130
    .local v1, "pt":Ljavassist/CtPrimitiveType;
    invoke-virtual {v1}, Ljavassist/CtPrimitiveType;->getDescriptor()C

    move-result v2

    invoke-static {v2}, Ljavassist/compiler/MemberResolver;->descToType(C)I

    move-result v2

    .line 131
    .local v2, "destType":I
    iput v2, p0, Ljavassist/compiler/JvstTypeChecker;->exprType:I

    .line 132
    const/4 v3, 0x0

    iput v3, p0, Ljavassist/compiler/JvstTypeChecker;->arrayDim:I

    .line 133
    const/4 v3, 0x0

    iput-object v3, p0, Ljavassist/compiler/JvstTypeChecker;->className:Ljava/lang/String;

    goto :goto_1

    .line 127
    .end local v1    # "pt":Ljavassist/CtPrimitiveType;
    .end local v2    # "destType":I
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Ljavassist/compiler/JvstTypeChecker;->compileUnwrapValue(Ljavassist/CtClass;)V

    .line 135
    :cond_2
    :goto_1
    return-void
.end method

.method protected atCastToWrapper(Ljavassist/compiler/ast/CastExpr;)V
    .locals 4
    .param p1, "expr"    # Ljavassist/compiler/ast/CastExpr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 138
    invoke-virtual {p1}, Ljavassist/compiler/ast/CastExpr;->getOprand()Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 139
    iget v0, p0, Ljavassist/compiler/JvstTypeChecker;->exprType:I

    invoke-static {v0}, Ljavassist/compiler/CodeGen;->isRefType(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Ljavassist/compiler/JvstTypeChecker;->arrayDim:I

    if-lez v0, :cond_0

    goto :goto_0

    .line 142
    :cond_0
    iget-object v0, p0, Ljavassist/compiler/JvstTypeChecker;->resolver:Ljavassist/compiler/MemberResolver;

    iget v1, p0, Ljavassist/compiler/JvstTypeChecker;->exprType:I

    iget v2, p0, Ljavassist/compiler/JvstTypeChecker;->arrayDim:I

    iget-object v3, p0, Ljavassist/compiler/JvstTypeChecker;->className:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Ljavassist/compiler/MemberResolver;->lookupClass(IILjava/lang/String;)Ljavassist/CtClass;

    move-result-object v0

    .line 143
    .local v0, "clazz":Ljavassist/CtClass;
    instance-of v1, v0, Ljavassist/CtPrimitiveType;

    if-eqz v1, :cond_1

    .line 144
    const/16 v1, 0x133

    iput v1, p0, Ljavassist/compiler/JvstTypeChecker;->exprType:I

    .line 145
    const/4 v1, 0x0

    iput v1, p0, Ljavassist/compiler/JvstTypeChecker;->arrayDim:I

    .line 146
    const-string v1, "java/lang/Object"

    iput-object v1, p0, Ljavassist/compiler/JvstTypeChecker;->className:Ljava/lang/String;

    .line 148
    :cond_1
    return-void

    .line 140
    .end local v0    # "clazz":Ljavassist/CtClass;
    :cond_2
    :goto_0
    return-void
.end method

.method protected atCflow(Ljavassist/compiler/ast/ASTList;)V
    .locals 1
    .param p1, "cname"    # Ljavassist/compiler/ast/ASTList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 176
    const/16 v0, 0x144

    iput v0, p0, Ljavassist/compiler/JvstTypeChecker;->exprType:I

    .line 177
    const/4 v0, 0x0

    iput v0, p0, Ljavassist/compiler/JvstTypeChecker;->arrayDim:I

    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Ljavassist/compiler/JvstTypeChecker;->className:Ljava/lang/String;

    .line 179
    return-void
.end method

.method protected atFieldAssign(Ljavassist/compiler/ast/Expr;ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)V
    .locals 4
    .param p1, "expr"    # Ljavassist/compiler/ast/Expr;
    .param p2, "op"    # I
    .param p3, "left"    # Ljavassist/compiler/ast/ASTree;
    .param p4, "right"    # Ljavassist/compiler/ast/ASTree;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 83
    instance-of v0, p3, Ljavassist/compiler/ast/Member;

    if-eqz v0, :cond_2

    move-object v0, p3

    check-cast v0, Ljavassist/compiler/ast/Member;

    .line 84
    invoke-virtual {v0}, Ljavassist/compiler/ast/Member;->get()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljavassist/compiler/JvstTypeChecker;->codeGen:Ljavassist/compiler/JvstCodeGen;

    iget-object v1, v1, Ljavassist/compiler/JvstCodeGen;->paramArrayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 85
    invoke-virtual {p4, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 86
    iget-object v0, p0, Ljavassist/compiler/JvstTypeChecker;->codeGen:Ljavassist/compiler/JvstCodeGen;

    iget-object v0, v0, Ljavassist/compiler/JvstCodeGen;->paramTypeList:[Ljavassist/CtClass;

    .line 87
    .local v0, "params":[Ljavassist/CtClass;
    if-nez v0, :cond_0

    .line 88
    return-void

    .line 90
    :cond_0
    array-length v1, v0

    .line 91
    .local v1, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 92
    aget-object v3, v0, v2

    invoke-virtual {p0, v3}, Ljavassist/compiler/JvstTypeChecker;->compileUnwrapValue(Ljavassist/CtClass;)V

    .line 91
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 93
    .end local v0    # "params":[Ljavassist/CtClass;
    .end local v1    # "n":I
    .end local v2    # "i":I
    :cond_1
    goto :goto_1

    .line 95
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Ljavassist/compiler/TypeChecker;->atFieldAssign(Ljavassist/compiler/ast/Expr;ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)V

    .line 96
    :goto_1
    return-void
.end method

.method public atMember(Ljavassist/compiler/ast/Member;)V
    .locals 5
    .param p1, "mem"    # Ljavassist/compiler/ast/Member;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 58
    invoke-virtual {p1}, Ljavassist/compiler/ast/Member;->get()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Ljavassist/compiler/JvstTypeChecker;->codeGen:Ljavassist/compiler/JvstCodeGen;

    iget-object v1, v1, Ljavassist/compiler/JvstCodeGen;->paramArrayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/16 v3, 0x133

    if-eqz v1, :cond_0

    .line 60
    iput v3, p0, Ljavassist/compiler/JvstTypeChecker;->exprType:I

    .line 61
    iput v2, p0, Ljavassist/compiler/JvstTypeChecker;->arrayDim:I

    .line 62
    const-string v1, "java/lang/Object"

    iput-object v1, p0, Ljavassist/compiler/JvstTypeChecker;->className:Ljava/lang/String;

    goto :goto_1

    .line 64
    :cond_0
    const-string v1, "$sig"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v4, "java/lang/Class"

    if-eqz v1, :cond_1

    .line 65
    iput v3, p0, Ljavassist/compiler/JvstTypeChecker;->exprType:I

    .line 66
    iput v2, p0, Ljavassist/compiler/JvstTypeChecker;->arrayDim:I

    .line 67
    iput-object v4, p0, Ljavassist/compiler/JvstTypeChecker;->className:Ljava/lang/String;

    goto :goto_1

    .line 69
    :cond_1
    const-string v1, "$type"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 70
    const-string v1, "$class"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 76
    :cond_2
    invoke-super {p0, p1}, Ljavassist/compiler/TypeChecker;->atMember(Ljavassist/compiler/ast/Member;)V

    goto :goto_1

    .line 71
    :cond_3
    :goto_0
    iput v3, p0, Ljavassist/compiler/JvstTypeChecker;->exprType:I

    .line 72
    const/4 v1, 0x0

    iput v1, p0, Ljavassist/compiler/JvstTypeChecker;->arrayDim:I

    .line 73
    iput-object v4, p0, Ljavassist/compiler/JvstTypeChecker;->className:Ljava/lang/String;

    .line 77
    :goto_1
    return-void
.end method

.method public atMethodArgs(Ljavassist/compiler/ast/ASTList;[I[I[Ljava/lang/String;)V
    .locals 8
    .param p1, "args"    # Ljavassist/compiler/ast/ASTList;
    .param p2, "types"    # [I
    .param p3, "dims"    # [I
    .param p4, "cnames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 216
    iget-object v0, p0, Ljavassist/compiler/JvstTypeChecker;->codeGen:Ljavassist/compiler/JvstCodeGen;

    iget-object v0, v0, Ljavassist/compiler/JvstCodeGen;->paramTypeList:[Ljavassist/CtClass;

    .line 217
    .local v0, "params":[Ljavassist/CtClass;
    iget-object v1, p0, Ljavassist/compiler/JvstTypeChecker;->codeGen:Ljavassist/compiler/JvstCodeGen;

    iget-object v1, v1, Ljavassist/compiler/JvstCodeGen;->paramListName:Ljava/lang/String;

    .line 218
    .local v1, "pname":Ljava/lang/String;
    const/4 v2, 0x0

    .line 219
    .local v2, "i":I
    :goto_0
    if-eqz p1, :cond_3

    .line 220
    invoke-virtual {p1}, Ljavassist/compiler/ast/ASTList;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object v3

    .line 221
    .local v3, "a":Ljavassist/compiler/ast/ASTree;
    instance-of v4, v3, Ljavassist/compiler/ast/Member;

    if-eqz v4, :cond_1

    move-object v4, v3

    check-cast v4, Ljavassist/compiler/ast/Member;

    invoke-virtual {v4}, Ljavassist/compiler/ast/Member;->get()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 222
    if-eqz v0, :cond_2

    .line 223
    array-length v4, v0

    .line 224
    .local v4, "n":I
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_1
    if-ge v5, v4, :cond_0

    .line 225
    aget-object v6, v0, v5

    .line 226
    .local v6, "p":Ljavassist/CtClass;
    invoke-virtual {p0, v6}, Ljavassist/compiler/JvstTypeChecker;->setType(Ljavassist/CtClass;)V

    .line 227
    iget v7, p0, Ljavassist/compiler/JvstTypeChecker;->exprType:I

    aput v7, p2, v2

    .line 228
    iget v7, p0, Ljavassist/compiler/JvstTypeChecker;->arrayDim:I

    aput v7, p3, v2

    .line 229
    iget-object v7, p0, Ljavassist/compiler/JvstTypeChecker;->className:Ljava/lang/String;

    aput-object v7, p4, v2

    .line 230
    nop

    .end local v6    # "p":Ljavassist/CtClass;
    add-int/lit8 v2, v2, 0x1

    .line 224
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 232
    .end local v4    # "n":I
    .end local v5    # "k":I
    :cond_0
    goto :goto_2

    .line 235
    :cond_1
    invoke-virtual {v3, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 236
    iget v4, p0, Ljavassist/compiler/JvstTypeChecker;->exprType:I

    aput v4, p2, v2

    .line 237
    iget v4, p0, Ljavassist/compiler/JvstTypeChecker;->arrayDim:I

    aput v4, p3, v2

    .line 238
    iget-object v4, p0, Ljavassist/compiler/JvstTypeChecker;->className:Ljava/lang/String;

    aput-object v4, p4, v2

    .line 239
    add-int/lit8 v2, v2, 0x1

    .line 242
    :cond_2
    :goto_2
    invoke-virtual {p1}, Ljavassist/compiler/ast/ASTList;->tail()Ljavassist/compiler/ast/ASTList;

    move-result-object p1

    .line 243
    .end local v3    # "a":Ljavassist/compiler/ast/ASTree;
    goto :goto_0

    .line 244
    :cond_3
    return-void
.end method

.method compileInvokeSpecial(Ljavassist/compiler/ast/ASTree;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljavassist/compiler/ast/ASTList;)V
    .locals 4
    .param p1, "target"    # Ljavassist/compiler/ast/ASTree;
    .param p2, "classname"    # Ljava/lang/String;
    .param p3, "methodname"    # Ljava/lang/String;
    .param p4, "descriptor"    # Ljava/lang/String;
    .param p5, "args"    # Ljavassist/compiler/ast/ASTList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 253
    invoke-virtual {p1, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 254
    invoke-virtual {p0, p5}, Ljavassist/compiler/JvstTypeChecker;->getMethodArgsLength(Ljavassist/compiler/ast/ASTList;)I

    move-result v0

    .line 255
    .local v0, "nargs":I
    new-array v1, v0, [I

    new-array v2, v0, [I

    new-array v3, v0, [Ljava/lang/String;

    invoke-virtual {p0, p5, v1, v2, v3}, Ljavassist/compiler/JvstTypeChecker;->atMethodArgs(Ljavassist/compiler/ast/ASTList;[I[I[Ljava/lang/String;)V

    .line 257
    invoke-virtual {p0, p4}, Ljavassist/compiler/JvstTypeChecker;->setReturnType(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p0}, Ljavassist/compiler/JvstTypeChecker;->addNullIfVoid()V

    .line 259
    return-void
.end method

.method protected compileUnwrapValue(Ljavassist/CtClass;)V
    .locals 1
    .param p1, "type"    # Ljavassist/CtClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 263
    sget-object v0, Ljavassist/CtClass;->voidType:Ljavassist/CtClass;

    if-ne p1, v0, :cond_0

    .line 264
    invoke-virtual {p0}, Ljavassist/compiler/JvstTypeChecker;->addNullIfVoid()V

    goto :goto_0

    .line 266
    :cond_0
    invoke-virtual {p0, p1}, Ljavassist/compiler/JvstTypeChecker;->setType(Ljavassist/CtClass;)V

    .line 267
    :goto_0
    return-void
.end method

.method public getMethodArgsLength(Ljavassist/compiler/ast/ASTList;)I
    .locals 4
    .param p1, "args"    # Ljavassist/compiler/ast/ASTList;

    .line 196
    iget-object v0, p0, Ljavassist/compiler/JvstTypeChecker;->codeGen:Ljavassist/compiler/JvstCodeGen;

    iget-object v0, v0, Ljavassist/compiler/JvstCodeGen;->paramListName:Ljava/lang/String;

    .line 197
    .local v0, "pname":Ljava/lang/String;
    const/4 v1, 0x0

    .line 198
    .local v1, "n":I
    :goto_0
    if-eqz p1, :cond_2

    .line 199
    invoke-virtual {p1}, Ljavassist/compiler/ast/ASTList;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object v2

    .line 200
    .local v2, "a":Ljavassist/compiler/ast/ASTree;
    instance-of v3, v2, Ljavassist/compiler/ast/Member;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Ljavassist/compiler/ast/Member;

    invoke-virtual {v3}, Ljavassist/compiler/ast/Member;->get()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 201
    iget-object v3, p0, Ljavassist/compiler/JvstTypeChecker;->codeGen:Ljavassist/compiler/JvstCodeGen;

    iget-object v3, v3, Ljavassist/compiler/JvstCodeGen;->paramTypeList:[Ljavassist/CtClass;

    if-eqz v3, :cond_1

    .line 202
    iget-object v3, p0, Ljavassist/compiler/JvstTypeChecker;->codeGen:Ljavassist/compiler/JvstCodeGen;

    iget-object v3, v3, Ljavassist/compiler/JvstCodeGen;->paramTypeList:[Ljavassist/CtClass;

    array-length v3, v3

    add-int/2addr v1, v3

    goto :goto_1

    .line 205
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 207
    :cond_1
    :goto_1
    invoke-virtual {p1}, Ljavassist/compiler/ast/ASTList;->tail()Ljavassist/compiler/ast/ASTList;

    move-result-object p1

    .line 208
    .end local v2    # "a":Ljavassist/compiler/ast/ASTree;
    goto :goto_0

    .line 210
    :cond_2
    return v1
.end method

.method public isParamListName(Ljavassist/compiler/ast/ASTList;)Z
    .locals 4
    .param p1, "args"    # Ljavassist/compiler/ast/ASTList;

    .line 185
    iget-object v0, p0, Ljavassist/compiler/JvstTypeChecker;->codeGen:Ljavassist/compiler/JvstCodeGen;

    iget-object v0, v0, Ljavassist/compiler/JvstCodeGen;->paramTypeList:[Ljavassist/CtClass;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 186
    invoke-virtual {p1}, Ljavassist/compiler/ast/ASTList;->tail()Ljavassist/compiler/ast/ASTList;

    move-result-object v0

    if-nez v0, :cond_1

    .line 187
    invoke-virtual {p1}, Ljavassist/compiler/ast/ASTList;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    .line 188
    .local v0, "left":Ljavassist/compiler/ast/ASTree;
    instance-of v2, v0, Ljavassist/compiler/ast/Member;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Ljavassist/compiler/ast/Member;

    .line 189
    invoke-virtual {v2}, Ljavassist/compiler/ast/Member;->get()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ljavassist/compiler/JvstTypeChecker;->codeGen:Ljavassist/compiler/JvstCodeGen;

    iget-object v3, v3, Ljavassist/compiler/JvstCodeGen;->paramListName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 188
    :goto_0
    return v1

    .line 191
    .end local v0    # "left":Ljavassist/compiler/ast/ASTree;
    :cond_1
    return v1
.end method

.method public setType(Ljavassist/CtClass;)V
    .locals 1
    .param p1, "type"    # Ljavassist/CtClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 273
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljavassist/compiler/JvstTypeChecker;->setType(Ljavassist/CtClass;I)V

    .line 274
    return-void
.end method
