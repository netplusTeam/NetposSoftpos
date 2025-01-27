.class Ljavassist/CtField$PtreeInitializer;
.super Ljavassist/CtField$CodeInitializer0;
.source "CtField.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/CtField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PtreeInitializer"
.end annotation


# instance fields
.field private expression:Ljavassist/compiler/ast/ASTree;


# direct methods
.method constructor <init>(Ljavassist/compiler/ast/ASTree;)V
    .locals 0
    .param p1, "expr"    # Ljavassist/compiler/ast/ASTree;

    .line 958
    invoke-direct {p0}, Ljavassist/CtField$CodeInitializer0;-><init>()V

    iput-object p1, p0, Ljavassist/CtField$PtreeInitializer;->expression:Ljavassist/compiler/ast/ASTree;

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

    .line 962
    iget-object v0, p0, Ljavassist/CtField$PtreeInitializer;->expression:Ljavassist/compiler/ast/ASTree;

    invoke-virtual {p1, v0}, Ljavassist/compiler/Javac;->compileExpr(Ljavassist/compiler/ast/ASTree;)V

    .line 963
    return-void
.end method

.method getConstantValue(Ljavassist/bytecode/ConstPool;Ljavassist/CtClass;)I
    .locals 1
    .param p1, "cp"    # Ljavassist/bytecode/ConstPool;
    .param p2, "type"    # Ljavassist/CtClass;

    .line 967
    iget-object v0, p0, Ljavassist/CtField$PtreeInitializer;->expression:Ljavassist/compiler/ast/ASTree;

    invoke-virtual {p0, p1, p2, v0}, Ljavassist/CtField$PtreeInitializer;->getConstantValue2(Ljavassist/bytecode/ConstPool;Ljavassist/CtClass;Ljavassist/compiler/ast/ASTree;)I

    move-result v0

    return v0
.end method
