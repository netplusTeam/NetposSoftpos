.class Ljavassist/CtField$CodeInitializer;
.super Ljavassist/CtField$CodeInitializer0;
.source "CtField.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/CtField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CodeInitializer"
.end annotation


# instance fields
.field private expression:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "expr"    # Ljava/lang/String;

    .line 936
    invoke-direct {p0}, Ljavassist/CtField$CodeInitializer0;-><init>()V

    iput-object p1, p0, Ljavassist/CtField$CodeInitializer;->expression:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method compileExpr(Ljavassist/compiler/Javac;)V
    .locals 1
    .param p1, "drv"    # Ljavassist/compiler/Javac;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 940
    iget-object v0, p0, Ljavassist/CtField$CodeInitializer;->expression:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljavassist/compiler/Javac;->compileExpr(Ljava/lang/String;)V

    .line 941
    return-void
.end method

.method getConstantValue(Ljavassist/bytecode/ConstPool;Ljavassist/CtClass;)I
    .locals 2
    .param p1, "cp"    # Ljavassist/bytecode/ConstPool;
    .param p2, "type"    # Ljavassist/CtClass;

    .line 946
    :try_start_0
    iget-object v0, p0, Ljavassist/CtField$CodeInitializer;->expression:Ljava/lang/String;

    new-instance v1, Ljavassist/compiler/SymbolTable;

    invoke-direct {v1}, Ljavassist/compiler/SymbolTable;-><init>()V

    invoke-static {v0, v1}, Ljavassist/compiler/Javac;->parseExpr(Ljava/lang/String;Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    .line 947
    .local v0, "t":Ljavassist/compiler/ast/ASTree;
    invoke-virtual {p0, p1, p2, v0}, Ljavassist/CtField$CodeInitializer;->getConstantValue2(Ljavassist/bytecode/ConstPool;Ljavassist/CtClass;Ljavassist/compiler/ast/ASTree;)I

    move-result v1
    :try_end_0
    .catch Ljavassist/compiler/CompileError; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 949
    .end local v0    # "t":Ljavassist/compiler/ast/ASTree;
    :catch_0
    move-exception v0

    .line 950
    .local v0, "e":Ljavassist/compiler/CompileError;
    const/4 v1, 0x0

    return v1
.end method
