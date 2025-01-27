.class abstract Ljavassist/CtField$CodeInitializer0;
.super Ljavassist/CtField$Initializer;
.source "CtField.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/CtField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "CodeInitializer0"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 871
    invoke-direct {p0}, Ljavassist/CtField$Initializer;-><init>()V

    return-void
.end method


# virtual methods
.method compile(Ljavassist/CtClass;Ljava/lang/String;Ljavassist/bytecode/Bytecode;[Ljavassist/CtClass;Ljavassist/compiler/Javac;)I
    .locals 2
    .param p1, "type"    # Ljavassist/CtClass;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "code"    # Ljavassist/bytecode/Bytecode;
    .param p4, "parameters"    # [Ljavassist/CtClass;
    .param p5, "drv"    # Ljavassist/compiler/Javac;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 880
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p3, v0}, Ljavassist/bytecode/Bytecode;->addAload(I)V

    .line 881
    invoke-virtual {p0, p5}, Ljavassist/CtField$CodeInitializer0;->compileExpr(Ljavassist/compiler/Javac;)V

    .line 882
    sget-object v0, Ljavassist/bytecode/Bytecode;->THIS:Ljavassist/CtClass;

    invoke-static {p1}, Ljavassist/bytecode/Descriptor;->of(Ljavassist/CtClass;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, p2, v1}, Ljavassist/bytecode/Bytecode;->addPutfield(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    invoke-virtual {p3}, Ljavassist/bytecode/Bytecode;->getMaxStack()I

    move-result v0
    :try_end_0
    .catch Ljavassist/compiler/CompileError; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 885
    :catch_0
    move-exception v0

    .line 886
    .local v0, "e":Ljavassist/compiler/CompileError;
    new-instance v1, Ljavassist/CannotCompileException;

    invoke-direct {v1, v0}, Ljavassist/CannotCompileException;-><init>(Ljavassist/compiler/CompileError;)V

    throw v1
.end method

.method abstract compileExpr(Ljavassist/compiler/Javac;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation
.end method

.method compileIfStatic(Ljavassist/CtClass;Ljava/lang/String;Ljavassist/bytecode/Bytecode;Ljavassist/compiler/Javac;)I
    .locals 2
    .param p1, "type"    # Ljavassist/CtClass;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "code"    # Ljavassist/bytecode/Bytecode;
    .param p4, "drv"    # Ljavassist/compiler/Javac;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 895
    :try_start_0
    invoke-virtual {p0, p4}, Ljavassist/CtField$CodeInitializer0;->compileExpr(Ljavassist/compiler/Javac;)V

    .line 896
    sget-object v0, Ljavassist/bytecode/Bytecode;->THIS:Ljavassist/CtClass;

    invoke-static {p1}, Ljavassist/bytecode/Descriptor;->of(Ljavassist/CtClass;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, p2, v1}, Ljavassist/bytecode/Bytecode;->addPutstatic(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    invoke-virtual {p3}, Ljavassist/bytecode/Bytecode;->getMaxStack()I

    move-result v0
    :try_end_0
    .catch Ljavassist/compiler/CompileError; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 899
    :catch_0
    move-exception v0

    .line 900
    .local v0, "e":Ljavassist/compiler/CompileError;
    new-instance v1, Ljavassist/CannotCompileException;

    invoke-direct {v1, v0}, Ljavassist/CannotCompileException;-><init>(Ljavassist/compiler/CompileError;)V

    throw v1
.end method

.method getConstantValue2(Ljavassist/bytecode/ConstPool;Ljavassist/CtClass;Ljavassist/compiler/ast/ASTree;)I
    .locals 4
    .param p1, "cp"    # Ljavassist/bytecode/ConstPool;
    .param p2, "type"    # Ljavassist/CtClass;
    .param p3, "tree"    # Ljavassist/compiler/ast/ASTree;

    .line 905
    invoke-virtual {p2}, Ljavassist/CtClass;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 906
    instance-of v0, p3, Ljavassist/compiler/ast/IntConst;

    if-eqz v0, :cond_4

    .line 907
    move-object v0, p3

    check-cast v0, Ljavassist/compiler/ast/IntConst;

    invoke-virtual {v0}, Ljavassist/compiler/ast/IntConst;->get()J

    move-result-wide v0

    .line 908
    .local v0, "value":J
    sget-object v2, Ljavassist/CtClass;->doubleType:Ljavassist/CtClass;

    if-ne p2, v2, :cond_0

    .line 909
    long-to-double v2, v0

    invoke-virtual {p1, v2, v3}, Ljavassist/bytecode/ConstPool;->addDoubleInfo(D)I

    move-result v2

    return v2

    .line 910
    :cond_0
    sget-object v2, Ljavassist/CtClass;->floatType:Ljavassist/CtClass;

    if-ne p2, v2, :cond_1

    .line 911
    long-to-float v2, v0

    invoke-virtual {p1, v2}, Ljavassist/bytecode/ConstPool;->addFloatInfo(F)I

    move-result v2

    return v2

    .line 912
    :cond_1
    sget-object v2, Ljavassist/CtClass;->longType:Ljavassist/CtClass;

    if-ne p2, v2, :cond_2

    .line 913
    invoke-virtual {p1, v0, v1}, Ljavassist/bytecode/ConstPool;->addLongInfo(J)I

    move-result v2

    return v2

    .line 914
    :cond_2
    sget-object v2, Ljavassist/CtClass;->voidType:Ljavassist/CtClass;

    if-eq p2, v2, :cond_3

    .line 915
    long-to-int v2, v0

    invoke-virtual {p1, v2}, Ljavassist/bytecode/ConstPool;->addIntegerInfo(I)I

    move-result v2

    return v2

    .line 916
    .end local v0    # "value":J
    :cond_3
    goto :goto_0

    .line 917
    :cond_4
    instance-of v0, p3, Ljavassist/compiler/ast/DoubleConst;

    if-eqz v0, :cond_8

    .line 918
    move-object v0, p3

    check-cast v0, Ljavassist/compiler/ast/DoubleConst;

    invoke-virtual {v0}, Ljavassist/compiler/ast/DoubleConst;->get()D

    move-result-wide v0

    .line 919
    .local v0, "value":D
    sget-object v2, Ljavassist/CtClass;->floatType:Ljavassist/CtClass;

    if-ne p2, v2, :cond_5

    .line 920
    double-to-float v2, v0

    invoke-virtual {p1, v2}, Ljavassist/bytecode/ConstPool;->addFloatInfo(F)I

    move-result v2

    return v2

    .line 921
    :cond_5
    sget-object v2, Ljavassist/CtClass;->doubleType:Ljavassist/CtClass;

    if-ne p2, v2, :cond_6

    .line 922
    invoke-virtual {p1, v0, v1}, Ljavassist/bytecode/ConstPool;->addDoubleInfo(D)I

    move-result v2

    return v2

    .line 923
    .end local v0    # "value":D
    :cond_6
    goto :goto_0

    .line 925
    :cond_7
    instance-of v0, p3, Ljavassist/compiler/ast/StringL;

    if-eqz v0, :cond_8

    .line 926
    invoke-virtual {p2}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.lang.String"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 927
    move-object v0, p3

    check-cast v0, Ljavassist/compiler/ast/StringL;

    invoke-virtual {v0}, Ljavassist/compiler/ast/StringL;->get()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavassist/bytecode/ConstPool;->addStringInfo(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 929
    :cond_8
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
