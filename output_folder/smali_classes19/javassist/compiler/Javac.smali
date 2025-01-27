.class public Ljavassist/compiler/Javac;
.super Ljava/lang/Object;
.source "Javac.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavassist/compiler/Javac$CtFieldWithInit;
    }
.end annotation


# static fields
.field public static final param0Name:Ljava/lang/String; = "$0"

.field public static final proceedName:Ljava/lang/String; = "$proceed"

.field public static final resultVarName:Ljava/lang/String; = "$_"


# instance fields
.field private bytecode:Ljavassist/bytecode/Bytecode;

.field gen:Ljavassist/compiler/JvstCodeGen;

.field stable:Ljavassist/compiler/SymbolTable;


# direct methods
.method public constructor <init>(Ljavassist/CtClass;)V
    .locals 3
    .param p1, "thisClass"    # Ljavassist/CtClass;

    .line 61
    new-instance v0, Ljavassist/bytecode/Bytecode;

    invoke-virtual {p1}, Ljavassist/CtClass;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v1

    invoke-virtual {v1}, Ljavassist/bytecode/ClassFile;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Ljavassist/bytecode/Bytecode;-><init>(Ljavassist/bytecode/ConstPool;II)V

    invoke-direct {p0, v0, p1}, Ljavassist/compiler/Javac;-><init>(Ljavassist/bytecode/Bytecode;Ljavassist/CtClass;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Ljavassist/bytecode/Bytecode;Ljavassist/CtClass;)V
    .locals 2
    .param p1, "b"    # Ljavassist/bytecode/Bytecode;
    .param p2, "thisClass"    # Ljavassist/CtClass;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljavassist/compiler/JvstCodeGen;

    invoke-virtual {p2}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Ljavassist/compiler/JvstCodeGen;-><init>(Ljavassist/bytecode/Bytecode;Ljavassist/CtClass;Ljavassist/ClassPool;)V

    iput-object v0, p0, Ljavassist/compiler/Javac;->gen:Ljavassist/compiler/JvstCodeGen;

    .line 75
    new-instance v0, Ljavassist/compiler/SymbolTable;

    invoke-direct {v0}, Ljavassist/compiler/SymbolTable;-><init>()V

    iput-object v0, p0, Ljavassist/compiler/Javac;->stable:Ljavassist/compiler/SymbolTable;

    .line 76
    iput-object p1, p0, Ljavassist/compiler/Javac;->bytecode:Ljavassist/bytecode/Bytecode;

    .line 77
    return-void
.end method

.method private compileField(Ljavassist/compiler/ast/FieldDecl;)Ljavassist/CtField;
    .locals 5
    .param p1, "fd"    # Ljavassist/compiler/ast/FieldDecl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;,
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 139
    invoke-virtual {p1}, Ljavassist/compiler/ast/FieldDecl;->getDeclarator()Ljavassist/compiler/ast/Declarator;

    move-result-object v0

    .line 140
    .local v0, "d":Ljavassist/compiler/ast/Declarator;
    new-instance v1, Ljavassist/compiler/Javac$CtFieldWithInit;

    iget-object v2, p0, Ljavassist/compiler/Javac;->gen:Ljavassist/compiler/JvstCodeGen;

    iget-object v2, v2, Ljavassist/compiler/JvstCodeGen;->resolver:Ljavassist/compiler/MemberResolver;

    invoke-virtual {v2, v0}, Ljavassist/compiler/MemberResolver;->lookupClass(Ljavassist/compiler/ast/Declarator;)Ljavassist/CtClass;

    move-result-object v2

    .line 141
    invoke-virtual {v0}, Ljavassist/compiler/ast/Declarator;->getVariable()Ljavassist/compiler/ast/Symbol;

    move-result-object v3

    invoke-virtual {v3}, Ljavassist/compiler/ast/Symbol;->get()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Ljavassist/compiler/Javac;->gen:Ljavassist/compiler/JvstCodeGen;

    invoke-virtual {v4}, Ljavassist/compiler/JvstCodeGen;->getThisClass()Ljavassist/CtClass;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Ljavassist/compiler/Javac$CtFieldWithInit;-><init>(Ljavassist/CtClass;Ljava/lang/String;Ljavassist/CtClass;)V

    .line 142
    .local v1, "f":Ljavassist/compiler/Javac$CtFieldWithInit;
    invoke-virtual {p1}, Ljavassist/compiler/ast/FieldDecl;->getModifiers()Ljavassist/compiler/ast/ASTList;

    move-result-object v2

    invoke-static {v2}, Ljavassist/compiler/MemberResolver;->getModifiers(Ljavassist/compiler/ast/ASTList;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljavassist/compiler/Javac$CtFieldWithInit;->setModifiers(I)V

    .line 143
    invoke-virtual {p1}, Ljavassist/compiler/ast/FieldDecl;->getInit()Ljavassist/compiler/ast/ASTree;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 144
    invoke-virtual {p1}, Ljavassist/compiler/ast/FieldDecl;->getInit()Ljavassist/compiler/ast/ASTree;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavassist/compiler/Javac$CtFieldWithInit;->setInit(Ljavassist/compiler/ast/ASTree;)V

    .line 146
    :cond_0
    return-object v1
.end method

.method private compileMethod(Ljavassist/compiler/Parser;Ljavassist/compiler/ast/MethodDecl;)Ljavassist/CtBehavior;
    .locals 8
    .param p1, "p"    # Ljavassist/compiler/Parser;
    .param p2, "md"    # Ljavassist/compiler/ast/MethodDecl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 152
    invoke-virtual {p2}, Ljavassist/compiler/ast/MethodDecl;->getModifiers()Ljavassist/compiler/ast/ASTList;

    move-result-object v0

    invoke-static {v0}, Ljavassist/compiler/MemberResolver;->getModifiers(Ljavassist/compiler/ast/ASTList;)I

    move-result v0

    .line 153
    .local v0, "mod":I
    iget-object v1, p0, Ljavassist/compiler/Javac;->gen:Ljavassist/compiler/JvstCodeGen;

    invoke-virtual {v1, p2}, Ljavassist/compiler/JvstCodeGen;->makeParamList(Ljavassist/compiler/ast/MethodDecl;)[Ljavassist/CtClass;

    move-result-object v1

    .line 154
    .local v1, "plist":[Ljavassist/CtClass;
    iget-object v2, p0, Ljavassist/compiler/Javac;->gen:Ljavassist/compiler/JvstCodeGen;

    invoke-virtual {v2, p2}, Ljavassist/compiler/JvstCodeGen;->makeThrowsList(Ljavassist/compiler/ast/MethodDecl;)[Ljavassist/CtClass;

    move-result-object v2

    .line 155
    .local v2, "tlist":[Ljavassist/CtClass;
    invoke-static {v0}, Ljavassist/Modifier;->isStatic(I)Z

    move-result v3

    invoke-virtual {p0, v1, v3}, Ljavassist/compiler/Javac;->recordParams([Ljavassist/CtClass;Z)I

    .line 156
    iget-object v3, p0, Ljavassist/compiler/Javac;->stable:Ljavassist/compiler/SymbolTable;

    invoke-virtual {p1, v3, p2}, Ljavassist/compiler/Parser;->parseMethod2(Ljavassist/compiler/SymbolTable;Ljavassist/compiler/ast/MethodDecl;)Ljavassist/compiler/ast/MethodDecl;

    move-result-object p2

    .line 158
    :try_start_0
    invoke-virtual {p2}, Ljavassist/compiler/ast/MethodDecl;->isConstructor()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 159
    new-instance v3, Ljavassist/CtConstructor;

    iget-object v4, p0, Ljavassist/compiler/Javac;->gen:Ljavassist/compiler/JvstCodeGen;

    .line 160
    invoke-virtual {v4}, Ljavassist/compiler/JvstCodeGen;->getThisClass()Ljavassist/CtClass;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Ljavassist/CtConstructor;-><init>([Ljavassist/CtClass;Ljavassist/CtClass;)V

    .line 161
    .local v3, "cons":Ljavassist/CtConstructor;
    invoke-virtual {v3, v0}, Ljavassist/CtConstructor;->setModifiers(I)V

    .line 162
    iget-object v4, p0, Ljavassist/compiler/Javac;->gen:Ljavassist/compiler/JvstCodeGen;

    invoke-virtual {p2, v4}, Ljavassist/compiler/ast/MethodDecl;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 163
    invoke-virtual {v3}, Ljavassist/CtConstructor;->getMethodInfo()Ljavassist/bytecode/MethodInfo;

    move-result-object v4

    iget-object v5, p0, Ljavassist/compiler/Javac;->bytecode:Ljavassist/bytecode/Bytecode;

    .line 164
    invoke-virtual {v5}, Ljavassist/bytecode/Bytecode;->toCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object v5

    .line 163
    invoke-virtual {v4, v5}, Ljavassist/bytecode/MethodInfo;->setCodeAttribute(Ljavassist/bytecode/CodeAttribute;)V

    .line 165
    invoke-virtual {v3, v2}, Ljavassist/CtConstructor;->setExceptionTypes([Ljavassist/CtClass;)V

    .line 166
    return-object v3

    .line 168
    .end local v3    # "cons":Ljavassist/CtConstructor;
    :cond_0
    invoke-virtual {p2}, Ljavassist/compiler/ast/MethodDecl;->getReturn()Ljavassist/compiler/ast/Declarator;

    move-result-object v3

    .line 169
    .local v3, "r":Ljavassist/compiler/ast/Declarator;
    iget-object v4, p0, Ljavassist/compiler/Javac;->gen:Ljavassist/compiler/JvstCodeGen;

    iget-object v4, v4, Ljavassist/compiler/JvstCodeGen;->resolver:Ljavassist/compiler/MemberResolver;

    invoke-virtual {v4, v3}, Ljavassist/compiler/MemberResolver;->lookupClass(Ljavassist/compiler/ast/Declarator;)Ljavassist/CtClass;

    move-result-object v4

    .line 170
    .local v4, "rtype":Ljavassist/CtClass;
    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Ljavassist/compiler/Javac;->recordReturnType(Ljavassist/CtClass;Z)I

    .line 171
    new-instance v5, Ljavassist/CtMethod;

    invoke-virtual {v3}, Ljavassist/compiler/ast/Declarator;->getVariable()Ljavassist/compiler/ast/Symbol;

    move-result-object v6

    invoke-virtual {v6}, Ljavassist/compiler/ast/Symbol;->get()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Ljavassist/compiler/Javac;->gen:Ljavassist/compiler/JvstCodeGen;

    .line 172
    invoke-virtual {v7}, Ljavassist/compiler/JvstCodeGen;->getThisClass()Ljavassist/CtClass;

    move-result-object v7

    invoke-direct {v5, v4, v6, v1, v7}, Ljavassist/CtMethod;-><init>(Ljavassist/CtClass;Ljava/lang/String;[Ljavassist/CtClass;Ljavassist/CtClass;)V

    .line 173
    .local v5, "method":Ljavassist/CtMethod;
    invoke-virtual {v5, v0}, Ljavassist/CtMethod;->setModifiers(I)V

    .line 174
    iget-object v6, p0, Ljavassist/compiler/Javac;->gen:Ljavassist/compiler/JvstCodeGen;

    invoke-virtual {v6, v5}, Ljavassist/compiler/JvstCodeGen;->setThisMethod(Ljavassist/CtMethod;)V

    .line 175
    iget-object v6, p0, Ljavassist/compiler/Javac;->gen:Ljavassist/compiler/JvstCodeGen;

    invoke-virtual {p2, v6}, Ljavassist/compiler/ast/MethodDecl;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 176
    invoke-virtual {p2}, Ljavassist/compiler/ast/MethodDecl;->getBody()Ljavassist/compiler/ast/Stmnt;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 177
    invoke-virtual {v5}, Ljavassist/CtMethod;->getMethodInfo()Ljavassist/bytecode/MethodInfo;

    move-result-object v6

    iget-object v7, p0, Ljavassist/compiler/Javac;->bytecode:Ljavassist/bytecode/Bytecode;

    .line 178
    invoke-virtual {v7}, Ljavassist/bytecode/Bytecode;->toCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object v7

    .line 177
    invoke-virtual {v6, v7}, Ljavassist/bytecode/MethodInfo;->setCodeAttribute(Ljavassist/bytecode/CodeAttribute;)V

    goto :goto_0

    .line 180
    :cond_1
    or-int/lit16 v6, v0, 0x400

    invoke-virtual {v5, v6}, Ljavassist/CtMethod;->setModifiers(I)V

    .line 182
    :goto_0
    invoke-virtual {v5, v2}, Ljavassist/CtMethod;->setExceptionTypes([Ljavassist/CtClass;)V
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    return-object v5

    .line 185
    .end local v3    # "r":Ljavassist/compiler/ast/Declarator;
    .end local v4    # "rtype":Ljavassist/CtClass;
    .end local v5    # "method":Ljavassist/CtMethod;
    :catch_0
    move-exception v3

    .line 186
    .local v3, "e":Ljavassist/NotFoundException;
    new-instance v4, Ljavassist/compiler/CompileError;

    invoke-virtual {v3}, Ljavassist/NotFoundException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private static makeDefaultBody(Ljavassist/bytecode/Bytecode;Ljavassist/CtClass;)V
    .locals 3
    .param p0, "b"    # Ljavassist/bytecode/Bytecode;
    .param p1, "type"    # Ljavassist/CtClass;

    .line 241
    instance-of v0, p1, Ljavassist/CtPrimitiveType;

    if-eqz v0, :cond_4

    .line 242
    move-object v0, p1

    check-cast v0, Ljavassist/CtPrimitiveType;

    .line 243
    .local v0, "pt":Ljavassist/CtPrimitiveType;
    invoke-virtual {v0}, Ljavassist/CtPrimitiveType;->getReturnOp()I

    move-result v1

    .line 244
    .local v1, "op":I
    const/16 v2, 0xaf

    if-ne v1, v2, :cond_0

    .line 245
    const/16 v2, 0xe

    .local v2, "value":I
    goto :goto_0

    .line 246
    .end local v2    # "value":I
    :cond_0
    const/16 v2, 0xae

    if-ne v1, v2, :cond_1

    .line 247
    const/16 v2, 0xb

    .restart local v2    # "value":I
    goto :goto_0

    .line 248
    .end local v2    # "value":I
    :cond_1
    const/16 v2, 0xad

    if-ne v1, v2, :cond_2

    .line 249
    const/16 v2, 0x9

    .restart local v2    # "value":I
    goto :goto_0

    .line 250
    .end local v2    # "value":I
    :cond_2
    const/16 v2, 0xb1

    if-ne v1, v2, :cond_3

    .line 251
    const/4 v2, 0x0

    .restart local v2    # "value":I
    goto :goto_0

    .line 253
    .end local v2    # "value":I
    :cond_3
    const/4 v2, 0x3

    .line 254
    .end local v0    # "pt":Ljavassist/CtPrimitiveType;
    .restart local v2    # "value":I
    :goto_0
    goto :goto_1

    .line 256
    .end local v1    # "op":I
    .end local v2    # "value":I
    :cond_4
    const/16 v1, 0xb0

    .line 257
    .restart local v1    # "op":I
    const/4 v2, 0x1

    .line 260
    .restart local v2    # "value":I
    :goto_1
    if-eqz v2, :cond_5

    .line 261
    invoke-virtual {p0, v2}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 263
    :cond_5
    invoke-virtual {p0, v1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 264
    return-void
.end method

.method public static parseExpr(Ljava/lang/String;Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTree;
    .locals 2
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "st"    # Ljavassist/compiler/SymbolTable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 602
    new-instance v0, Ljavassist/compiler/Parser;

    new-instance v1, Ljavassist/compiler/Lex;

    invoke-direct {v1, p0}, Ljavassist/compiler/Lex;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljavassist/compiler/Parser;-><init>(Ljavassist/compiler/Lex;)V

    .line 603
    .local v0, "p":Ljavassist/compiler/Parser;
    invoke-virtual {v0, p1}, Ljavassist/compiler/Parser;->parseExpression(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTree;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public compile(Ljava/lang/String;)Ljavassist/CtMember;
    .locals 7
    .param p1, "src"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 97
    new-instance v0, Ljavassist/compiler/Parser;

    new-instance v1, Ljavassist/compiler/Lex;

    invoke-direct {v1, p1}, Ljavassist/compiler/Lex;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljavassist/compiler/Parser;-><init>(Ljavassist/compiler/Lex;)V

    .line 98
    .local v0, "p":Ljavassist/compiler/Parser;
    iget-object v1, p0, Ljavassist/compiler/Javac;->stable:Ljavassist/compiler/SymbolTable;

    invoke-virtual {v0, v1}, Ljavassist/compiler/Parser;->parseMember1(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTList;

    move-result-object v1

    .line 100
    .local v1, "mem":Ljavassist/compiler/ast/ASTList;
    :try_start_0
    instance-of v2, v1, Ljavassist/compiler/ast/FieldDecl;

    if-eqz v2, :cond_0

    .line 101
    move-object v2, v1

    check-cast v2, Ljavassist/compiler/ast/FieldDecl;

    invoke-direct {p0, v2}, Ljavassist/compiler/Javac;->compileField(Ljavassist/compiler/ast/FieldDecl;)Ljavassist/CtField;

    move-result-object v2

    return-object v2

    .line 102
    :cond_0
    move-object v2, v1

    check-cast v2, Ljavassist/compiler/ast/MethodDecl;

    invoke-direct {p0, v0, v2}, Ljavassist/compiler/Javac;->compileMethod(Ljavassist/compiler/Parser;Ljavassist/compiler/ast/MethodDecl;)Ljavassist/CtBehavior;

    move-result-object v2

    .line 103
    .local v2, "cb":Ljavassist/CtBehavior;
    invoke-virtual {v2}, Ljavassist/CtBehavior;->getDeclaringClass()Ljavassist/CtClass;

    move-result-object v3

    .line 104
    .local v3, "decl":Ljavassist/CtClass;
    invoke-virtual {v2}, Ljavassist/CtBehavior;->getMethodInfo2()Ljavassist/bytecode/MethodInfo;

    move-result-object v4

    .line 105
    invoke-virtual {v3}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object v5

    .line 106
    invoke-virtual {v3}, Ljavassist/CtClass;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v6

    .line 105
    invoke-virtual {v4, v5, v6}, Ljavassist/bytecode/MethodInfo;->rebuildStackMapIf6(Ljavassist/ClassPool;Ljavassist/bytecode/ClassFile;)V
    :try_end_0
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavassist/CannotCompileException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    return-object v2

    .line 112
    .end local v2    # "cb":Ljavassist/CtBehavior;
    .end local v3    # "decl":Ljavassist/CtClass;
    :catch_0
    move-exception v2

    .line 113
    .local v2, "e":Ljavassist/CannotCompileException;
    new-instance v3, Ljavassist/compiler/CompileError;

    invoke-virtual {v2}, Ljavassist/CannotCompileException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v3

    .line 109
    .end local v2    # "e":Ljavassist/CannotCompileException;
    :catch_1
    move-exception v2

    .line 110
    .local v2, "bb":Ljavassist/bytecode/BadBytecode;
    new-instance v3, Ljavassist/compiler/CompileError;

    invoke-virtual {v2}, Ljavassist/bytecode/BadBytecode;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public compileBody(Ljavassist/CtBehavior;Ljava/lang/String;)Ljavassist/bytecode/Bytecode;
    .locals 9
    .param p1, "method"    # Ljavassist/CtBehavior;
    .param p2, "src"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 200
    :try_start_0
    invoke-virtual {p1}, Ljavassist/CtBehavior;->getModifiers()I

    move-result v0

    .line 201
    .local v0, "mod":I
    invoke-virtual {p1}, Ljavassist/CtBehavior;->getParameterTypes()[Ljavassist/CtClass;

    move-result-object v1

    invoke-static {v0}, Ljavassist/Modifier;->isStatic(I)Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljavassist/compiler/Javac;->recordParams([Ljavassist/CtClass;Z)I

    .line 204
    instance-of v1, p1, Ljavassist/CtMethod;

    if-eqz v1, :cond_0

    .line 205
    iget-object v1, p0, Ljavassist/compiler/Javac;->gen:Ljavassist/compiler/JvstCodeGen;

    move-object v2, p1

    check-cast v2, Ljavassist/CtMethod;

    invoke-virtual {v1, v2}, Ljavassist/compiler/JvstCodeGen;->setThisMethod(Ljavassist/CtMethod;)V

    .line 206
    move-object v1, p1

    check-cast v1, Ljavassist/CtMethod;

    invoke-virtual {v1}, Ljavassist/CtMethod;->getReturnType()Ljavassist/CtClass;

    move-result-object v1

    .local v1, "rtype":Ljavassist/CtClass;
    goto :goto_0

    .line 209
    .end local v1    # "rtype":Ljavassist/CtClass;
    :cond_0
    sget-object v1, Ljavassist/CtClass;->voidType:Ljavassist/CtClass;

    .line 211
    .restart local v1    # "rtype":Ljavassist/CtClass;
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljavassist/compiler/Javac;->recordReturnType(Ljavassist/CtClass;Z)I

    .line 212
    sget-object v3, Ljavassist/CtClass;->voidType:Ljavassist/CtClass;

    const/4 v4, 0x1

    if-ne v1, v3, :cond_1

    move v2, v4

    .line 214
    .local v2, "isVoid":Z
    :cond_1
    if-nez p2, :cond_2

    .line 215
    iget-object v3, p0, Ljavassist/compiler/Javac;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-static {v3, v1}, Ljavassist/compiler/Javac;->makeDefaultBody(Ljavassist/bytecode/Bytecode;Ljavassist/CtClass;)V

    goto :goto_1

    .line 217
    :cond_2
    new-instance v3, Ljavassist/compiler/Parser;

    new-instance v5, Ljavassist/compiler/Lex;

    invoke-direct {v5, p2}, Ljavassist/compiler/Lex;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljavassist/compiler/Parser;-><init>(Ljavassist/compiler/Lex;)V

    .line 218
    .local v3, "p":Ljavassist/compiler/Parser;
    new-instance v5, Ljavassist/compiler/SymbolTable;

    iget-object v6, p0, Ljavassist/compiler/Javac;->stable:Ljavassist/compiler/SymbolTable;

    invoke-direct {v5, v6}, Ljavassist/compiler/SymbolTable;-><init>(Ljavassist/compiler/SymbolTable;)V

    .line 219
    .local v5, "stb":Ljavassist/compiler/SymbolTable;
    invoke-virtual {v3, v5}, Ljavassist/compiler/Parser;->parseStatement(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/Stmnt;

    move-result-object v6

    .line 220
    .local v6, "s":Ljavassist/compiler/ast/Stmnt;
    invoke-virtual {v3}, Ljavassist/compiler/Parser;->hasMore()Z

    move-result v7

    if-nez v7, :cond_4

    .line 224
    const/4 v7, 0x0

    .line 225
    .local v7, "callSuper":Z
    instance-of v8, p1, Ljavassist/CtConstructor;

    if-eqz v8, :cond_3

    .line 226
    move-object v8, p1

    check-cast v8, Ljavassist/CtConstructor;

    invoke-virtual {v8}, Ljavassist/CtConstructor;->isClassInitializer()Z

    move-result v8

    xor-int/2addr v4, v8

    move v7, v4

    .line 228
    :cond_3
    iget-object v4, p0, Ljavassist/compiler/Javac;->gen:Ljavassist/compiler/JvstCodeGen;

    invoke-virtual {v4, v6, v7, v2}, Ljavassist/compiler/JvstCodeGen;->atMethodBody(Ljavassist/compiler/ast/Stmnt;ZZ)V

    .line 231
    .end local v3    # "p":Ljavassist/compiler/Parser;
    .end local v5    # "stb":Ljavassist/compiler/SymbolTable;
    .end local v6    # "s":Ljavassist/compiler/ast/Stmnt;
    .end local v7    # "callSuper":Z
    :goto_1
    iget-object v3, p0, Ljavassist/compiler/Javac;->bytecode:Ljavassist/bytecode/Bytecode;

    return-object v3

    .line 221
    .restart local v3    # "p":Ljavassist/compiler/Parser;
    .restart local v5    # "stb":Ljavassist/compiler/SymbolTable;
    .restart local v6    # "s":Ljavassist/compiler/ast/Stmnt;
    :cond_4
    new-instance v4, Ljavassist/compiler/CompileError;

    const-string v7, "the method/constructor body must be surrounded by {}"

    invoke-direct {v4, v7}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    .end local p1    # "method":Ljavassist/CtBehavior;
    .end local p2    # "src":Ljava/lang/String;
    throw v4
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    .end local v0    # "mod":I
    .end local v1    # "rtype":Ljavassist/CtClass;
    .end local v2    # "isVoid":Z
    .end local v3    # "p":Ljavassist/compiler/Parser;
    .end local v5    # "stb":Ljavassist/compiler/SymbolTable;
    .end local v6    # "s":Ljavassist/compiler/ast/Stmnt;
    .restart local p1    # "method":Ljavassist/CtBehavior;
    .restart local p2    # "src":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 234
    .local v0, "e":Ljavassist/NotFoundException;
    new-instance v1, Ljavassist/compiler/CompileError;

    invoke-virtual {v0}, Ljavassist/NotFoundException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public compileExpr(Ljava/lang/String;)V
    .locals 1
    .param p1, "src"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 592
    iget-object v0, p0, Ljavassist/compiler/Javac;->stable:Ljavassist/compiler/SymbolTable;

    invoke-static {p1, v0}, Ljavassist/compiler/Javac;->parseExpr(Ljava/lang/String;Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    .line 593
    .local v0, "e":Ljavassist/compiler/ast/ASTree;
    invoke-virtual {p0, v0}, Ljavassist/compiler/Javac;->compileExpr(Ljavassist/compiler/ast/ASTree;)V

    .line 594
    return-void
.end method

.method public compileExpr(Ljavassist/compiler/ast/ASTree;)V
    .locals 1
    .param p1, "e"    # Ljavassist/compiler/ast/ASTree;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 616
    if-eqz p1, :cond_0

    .line 617
    iget-object v0, p0, Ljavassist/compiler/Javac;->gen:Ljavassist/compiler/JvstCodeGen;

    invoke-virtual {v0, p1}, Ljavassist/compiler/JvstCodeGen;->compileExpr(Ljavassist/compiler/ast/ASTree;)V

    .line 618
    :cond_0
    return-void
.end method

.method public compileStmnt(Ljava/lang/String;)V
    .locals 4
    .param p1, "src"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 573
    new-instance v0, Ljavassist/compiler/Parser;

    new-instance v1, Ljavassist/compiler/Lex;

    invoke-direct {v1, p1}, Ljavassist/compiler/Lex;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljavassist/compiler/Parser;-><init>(Ljavassist/compiler/Lex;)V

    .line 574
    .local v0, "p":Ljavassist/compiler/Parser;
    new-instance v1, Ljavassist/compiler/SymbolTable;

    iget-object v2, p0, Ljavassist/compiler/Javac;->stable:Ljavassist/compiler/SymbolTable;

    invoke-direct {v1, v2}, Ljavassist/compiler/SymbolTable;-><init>(Ljavassist/compiler/SymbolTable;)V

    .line 575
    .local v1, "stb":Ljavassist/compiler/SymbolTable;
    :goto_0
    invoke-virtual {v0}, Ljavassist/compiler/Parser;->hasMore()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 576
    invoke-virtual {v0, v1}, Ljavassist/compiler/Parser;->parseStatement(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/Stmnt;

    move-result-object v2

    .line 577
    .local v2, "s":Ljavassist/compiler/ast/Stmnt;
    if-eqz v2, :cond_0

    .line 578
    iget-object v3, p0, Ljavassist/compiler/Javac;->gen:Ljavassist/compiler/JvstCodeGen;

    invoke-virtual {v2, v3}, Ljavassist/compiler/ast/Stmnt;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 579
    .end local v2    # "s":Ljavassist/compiler/ast/Stmnt;
    :cond_0
    goto :goto_0

    .line 580
    :cond_1
    return-void
.end method

.method public getBytecode()Ljavassist/bytecode/Bytecode;
    .locals 1

    .line 82
    iget-object v0, p0, Ljavassist/compiler/Javac;->bytecode:Ljavassist/bytecode/Bytecode;

    return-object v0
.end method

.method public recordLocalVariables(Ljavassist/bytecode/CodeAttribute;I)Z
    .locals 10
    .param p1, "ca"    # Ljavassist/bytecode/CodeAttribute;
    .param p2, "pc"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 278
    nop

    .line 280
    const-string v0, "LocalVariableTable"

    invoke-virtual {p1, v0}, Ljavassist/bytecode/CodeAttribute;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/LocalVariableAttribute;

    .line 281
    .local v0, "va":Ljavassist/bytecode/LocalVariableAttribute;
    if-nez v0, :cond_0

    .line 282
    const/4 v1, 0x0

    return v1

    .line 284
    :cond_0
    invoke-virtual {v0}, Ljavassist/bytecode/LocalVariableAttribute;->tableLength()I

    move-result v1

    .line 285
    .local v1, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 286
    invoke-virtual {v0, v2}, Ljavassist/bytecode/LocalVariableAttribute;->startPc(I)I

    move-result v3

    .line 287
    .local v3, "start":I
    invoke-virtual {v0, v2}, Ljavassist/bytecode/LocalVariableAttribute;->codeLength(I)I

    move-result v4

    .line 288
    .local v4, "len":I
    if-gt v3, p2, :cond_1

    add-int v5, v3, v4

    if-ge p2, v5, :cond_1

    .line 289
    iget-object v5, p0, Ljavassist/compiler/Javac;->gen:Ljavassist/compiler/JvstCodeGen;

    invoke-virtual {v0, v2}, Ljavassist/bytecode/LocalVariableAttribute;->descriptor(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v2}, Ljavassist/bytecode/LocalVariableAttribute;->variableName(I)Ljava/lang/String;

    move-result-object v7

    .line 290
    invoke-virtual {v0, v2}, Ljavassist/bytecode/LocalVariableAttribute;->index(I)I

    move-result v8

    iget-object v9, p0, Ljavassist/compiler/Javac;->stable:Ljavassist/compiler/SymbolTable;

    .line 289
    invoke-virtual {v5, v6, v7, v8, v9}, Ljavassist/compiler/JvstCodeGen;->recordVariable(Ljava/lang/String;Ljava/lang/String;ILjavassist/compiler/SymbolTable;)V

    .line 285
    .end local v3    # "start":I
    .end local v4    # "len":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 293
    .end local v2    # "i":I
    :cond_2
    const/4 v2, 0x1

    return v2
.end method

.method public recordParamNames(Ljavassist/bytecode/CodeAttribute;I)Z
    .locals 8
    .param p1, "ca"    # Ljavassist/bytecode/CodeAttribute;
    .param p2, "numOfLocalVars"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 308
    nop

    .line 310
    const-string v0, "LocalVariableTable"

    invoke-virtual {p1, v0}, Ljavassist/bytecode/CodeAttribute;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/LocalVariableAttribute;

    .line 311
    .local v0, "va":Ljavassist/bytecode/LocalVariableAttribute;
    if-nez v0, :cond_0

    .line 312
    const/4 v1, 0x0

    return v1

    .line 314
    :cond_0
    invoke-virtual {v0}, Ljavassist/bytecode/LocalVariableAttribute;->tableLength()I

    move-result v1

    .line 315
    .local v1, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 316
    invoke-virtual {v0, v2}, Ljavassist/bytecode/LocalVariableAttribute;->index(I)I

    move-result v3

    .line 317
    .local v3, "index":I
    if-ge v3, p2, :cond_1

    .line 318
    iget-object v4, p0, Ljavassist/compiler/Javac;->gen:Ljavassist/compiler/JvstCodeGen;

    invoke-virtual {v0, v2}, Ljavassist/bytecode/LocalVariableAttribute;->descriptor(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2}, Ljavassist/bytecode/LocalVariableAttribute;->variableName(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Ljavassist/compiler/Javac;->stable:Ljavassist/compiler/SymbolTable;

    invoke-virtual {v4, v5, v6, v3, v7}, Ljavassist/compiler/JvstCodeGen;->recordVariable(Ljava/lang/String;Ljava/lang/String;ILjavassist/compiler/SymbolTable;)V

    .line 315
    .end local v3    # "index":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 322
    .end local v2    # "i":I
    :cond_2
    const/4 v2, 0x1

    return v2
.end method

.method public recordParams(Ljava/lang/String;[Ljavassist/CtClass;ZIZ)I
    .locals 10
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "params"    # [Ljavassist/CtClass;
    .param p3, "use0"    # Z
    .param p4, "varNo"    # I
    .param p5, "isStatic"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 367
    iget-object v0, p0, Ljavassist/compiler/Javac;->gen:Ljavassist/compiler/JvstCodeGen;

    iget-object v9, p0, Ljavassist/compiler/Javac;->stable:Ljavassist/compiler/SymbolTable;

    const-string v3, "$"

    const-string v4, "$args"

    const-string v5, "$$"

    move-object v1, p2

    move v2, p5

    move v6, p3

    move v7, p4

    move-object v8, p1

    invoke-virtual/range {v0 .. v9}, Ljavassist/compiler/JvstCodeGen;->recordParams([Ljavassist/CtClass;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Ljavassist/compiler/SymbolTable;)I

    move-result v0

    return v0
.end method

.method public recordParams([Ljavassist/CtClass;Z)I
    .locals 7
    .param p1, "params"    # [Ljavassist/CtClass;
    .param p2, "isStatic"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 339
    iget-object v0, p0, Ljavassist/compiler/Javac;->gen:Ljavassist/compiler/JvstCodeGen;

    iget-object v6, p0, Ljavassist/compiler/Javac;->stable:Ljavassist/compiler/SymbolTable;

    const-string v3, "$"

    const-string v4, "$args"

    const-string v5, "$$"

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Ljavassist/compiler/JvstCodeGen;->recordParams([Ljavassist/CtClass;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljavassist/compiler/SymbolTable;)I

    move-result v0

    return v0
.end method

.method public recordProceed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 440
    new-instance v0, Ljavassist/compiler/Parser;

    new-instance v1, Ljavassist/compiler/Lex;

    invoke-direct {v1, p1}, Ljavassist/compiler/Lex;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljavassist/compiler/Parser;-><init>(Ljavassist/compiler/Lex;)V

    .line 441
    .local v0, "p":Ljavassist/compiler/Parser;
    iget-object v1, p0, Ljavassist/compiler/Javac;->stable:Ljavassist/compiler/SymbolTable;

    invoke-virtual {v0, v1}, Ljavassist/compiler/Parser;->parseExpression(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTree;

    move-result-object v1

    .line 442
    .local v1, "texpr":Ljavassist/compiler/ast/ASTree;
    move-object v2, p2

    .line 444
    .local v2, "m":Ljava/lang/String;
    new-instance v3, Ljavassist/compiler/Javac$1;

    invoke-direct {v3, p0, v2, v1}, Ljavassist/compiler/Javac$1;-><init>(Ljavassist/compiler/Javac;Ljava/lang/String;Ljavassist/compiler/ast/ASTree;)V

    .line 472
    .local v3, "h":Ljavassist/compiler/ProceedHandler;
    iget-object v4, p0, Ljavassist/compiler/Javac;->gen:Ljavassist/compiler/JvstCodeGen;

    const-string v5, "$proceed"

    invoke-virtual {v4, v3, v5}, Ljavassist/compiler/JvstCodeGen;->setProceedHandler(Ljavassist/compiler/ProceedHandler;Ljava/lang/String;)V

    .line 473
    return-void
.end method

.method public recordProceed(Ljavassist/compiler/ProceedHandler;)V
    .locals 2
    .param p1, "h"    # Ljavassist/compiler/ProceedHandler;

    .line 560
    iget-object v0, p0, Ljavassist/compiler/Javac;->gen:Ljavassist/compiler/JvstCodeGen;

    const-string v1, "$proceed"

    invoke-virtual {v0, p1, v1}, Ljavassist/compiler/JvstCodeGen;->setProceedHandler(Ljavassist/compiler/ProceedHandler;Ljava/lang/String;)V

    .line 561
    return-void
.end method

.method public recordReturnType(Ljavassist/CtClass;Z)I
    .locals 4
    .param p1, "type"    # Ljavassist/CtClass;
    .param p2, "useResultVar"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 401
    iget-object v0, p0, Ljavassist/compiler/Javac;->gen:Ljavassist/compiler/JvstCodeGen;

    invoke-virtual {v0, p1}, Ljavassist/compiler/JvstCodeGen;->recordType(Ljavassist/CtClass;)V

    .line 402
    iget-object v0, p0, Ljavassist/compiler/Javac;->gen:Ljavassist/compiler/JvstCodeGen;

    .line 403
    if-eqz p2, :cond_0

    const-string v1, "$_"

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Ljavassist/compiler/Javac;->stable:Ljavassist/compiler/SymbolTable;

    .line 402
    const-string v3, "$r"

    invoke-virtual {v0, p1, v3, v1, v2}, Ljavassist/compiler/JvstCodeGen;->recordReturnType(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;Ljavassist/compiler/SymbolTable;)I

    move-result v0

    return v0
.end method

.method public recordSpecialProceed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 10
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "classname"    # Ljava/lang/String;
    .param p3, "methodname"    # Ljava/lang/String;
    .param p4, "descriptor"    # Ljava/lang/String;
    .param p5, "methodIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 533
    new-instance v0, Ljavassist/compiler/Parser;

    new-instance v1, Ljavassist/compiler/Lex;

    invoke-direct {v1, p1}, Ljavassist/compiler/Lex;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljavassist/compiler/Parser;-><init>(Ljavassist/compiler/Lex;)V

    .line 534
    .local v0, "p":Ljavassist/compiler/Parser;
    iget-object v1, p0, Ljavassist/compiler/Javac;->stable:Ljavassist/compiler/SymbolTable;

    invoke-virtual {v0, v1}, Ljavassist/compiler/Parser;->parseExpression(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTree;

    move-result-object v1

    .line 536
    .local v1, "texpr":Ljavassist/compiler/ast/ASTree;
    new-instance v9, Ljavassist/compiler/Javac$3;

    move-object v2, v9

    move-object v3, p0

    move-object v4, v1

    move v5, p5

    move-object v6, p4

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v2 .. v8}, Ljavassist/compiler/Javac$3;-><init>(Ljavassist/compiler/Javac;Ljavassist/compiler/ast/ASTree;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    .local v2, "h":Ljavassist/compiler/ProceedHandler;
    iget-object v3, p0, Ljavassist/compiler/Javac;->gen:Ljavassist/compiler/JvstCodeGen;

    const-string v4, "$proceed"

    invoke-virtual {v3, v2, v4}, Ljavassist/compiler/JvstCodeGen;->setProceedHandler(Ljavassist/compiler/ProceedHandler;Ljava/lang/String;)V

    .line 554
    return-void
.end method

.method public recordStaticProceed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "targetClass"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 487
    move-object v0, p1

    .line 488
    .local v0, "c":Ljava/lang/String;
    move-object v1, p2

    .line 490
    .local v1, "m":Ljava/lang/String;
    new-instance v2, Ljavassist/compiler/Javac$2;

    invoke-direct {v2, p0, v0, v1}, Ljavassist/compiler/Javac$2;-><init>(Ljavassist/compiler/Javac;Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    .local v2, "h":Ljavassist/compiler/ProceedHandler;
    iget-object v3, p0, Ljavassist/compiler/Javac;->gen:Ljavassist/compiler/JvstCodeGen;

    const-string v4, "$proceed"

    invoke-virtual {v3, v2, v4}, Ljavassist/compiler/JvstCodeGen;->setProceedHandler(Ljavassist/compiler/ProceedHandler;Ljava/lang/String;)V

    .line 515
    return-void
.end method

.method public recordType(Ljavassist/CtClass;)V
    .locals 1
    .param p1, "t"    # Ljavassist/CtClass;

    .line 413
    iget-object v0, p0, Ljavassist/compiler/Javac;->gen:Ljavassist/compiler/JvstCodeGen;

    invoke-virtual {v0, p1}, Ljavassist/compiler/JvstCodeGen;->recordType(Ljavassist/CtClass;)V

    .line 414
    return-void
.end method

.method public recordVariable(Ljavassist/CtClass;Ljava/lang/String;)I
    .locals 2
    .param p1, "type"    # Ljavassist/CtClass;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 425
    iget-object v0, p0, Ljavassist/compiler/Javac;->gen:Ljavassist/compiler/JvstCodeGen;

    iget-object v1, p0, Ljavassist/compiler/Javac;->stable:Ljavassist/compiler/SymbolTable;

    invoke-virtual {v0, p1, p2, v1}, Ljavassist/compiler/JvstCodeGen;->recordVariable(Ljavassist/CtClass;Ljava/lang/String;Ljavassist/compiler/SymbolTable;)I

    move-result v0

    return v0
.end method

.method public setMaxLocals(I)V
    .locals 1
    .param p1, "max"    # I

    .line 381
    iget-object v0, p0, Ljavassist/compiler/Javac;->gen:Ljavassist/compiler/JvstCodeGen;

    invoke-virtual {v0, p1}, Ljavassist/compiler/JvstCodeGen;->setMaxLocals(I)V

    .line 382
    return-void
.end method
