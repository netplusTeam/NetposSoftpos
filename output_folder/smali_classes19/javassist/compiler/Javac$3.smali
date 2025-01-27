.class Ljavassist/compiler/Javac$3;
.super Ljava/lang/Object;
.source "Javac.java"

# interfaces
.implements Ljavassist/compiler/ProceedHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavassist/compiler/Javac;->recordSpecialProceed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavassist/compiler/Javac;

.field final synthetic val$classname:Ljava/lang/String;

.field final synthetic val$descriptor:Ljava/lang/String;

.field final synthetic val$methodIndex:I

.field final synthetic val$methodname:Ljava/lang/String;

.field final synthetic val$texpr:Ljavassist/compiler/ast/ASTree;


# direct methods
.method constructor <init>(Ljavassist/compiler/Javac;Ljavassist/compiler/ast/ASTree;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Ljavassist/compiler/Javac;

    .line 536
    iput-object p1, p0, Ljavassist/compiler/Javac$3;->this$0:Ljavassist/compiler/Javac;

    iput-object p2, p0, Ljavassist/compiler/Javac$3;->val$texpr:Ljavassist/compiler/ast/ASTree;

    iput p3, p0, Ljavassist/compiler/Javac$3;->val$methodIndex:I

    iput-object p4, p0, Ljavassist/compiler/Javac$3;->val$descriptor:Ljava/lang/String;

    iput-object p5, p0, Ljavassist/compiler/Javac$3;->val$classname:Ljava/lang/String;

    iput-object p6, p0, Ljavassist/compiler/Javac$3;->val$methodname:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doit(Ljavassist/compiler/JvstCodeGen;Ljavassist/bytecode/Bytecode;Ljavassist/compiler/ast/ASTList;)V
    .locals 3
    .param p1, "gen"    # Ljavassist/compiler/JvstCodeGen;
    .param p2, "b"    # Ljavassist/bytecode/Bytecode;
    .param p3, "args"    # Ljavassist/compiler/ast/ASTList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 541
    iget-object v0, p0, Ljavassist/compiler/Javac$3;->val$texpr:Ljavassist/compiler/ast/ASTree;

    iget v1, p0, Ljavassist/compiler/Javac$3;->val$methodIndex:I

    iget-object v2, p0, Ljavassist/compiler/Javac$3;->val$descriptor:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2, p3}, Ljavassist/compiler/JvstCodeGen;->compileInvokeSpecial(Ljavassist/compiler/ast/ASTree;ILjava/lang/String;Ljavassist/compiler/ast/ASTList;)V

    .line 542
    return-void
.end method

.method public setReturnType(Ljavassist/compiler/JvstTypeChecker;Ljavassist/compiler/ast/ASTList;)V
    .locals 6
    .param p1, "c"    # Ljavassist/compiler/JvstTypeChecker;
    .param p2, "args"    # Ljavassist/compiler/ast/ASTList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 548
    iget-object v1, p0, Ljavassist/compiler/Javac$3;->val$texpr:Ljavassist/compiler/ast/ASTree;

    iget-object v2, p0, Ljavassist/compiler/Javac$3;->val$classname:Ljava/lang/String;

    iget-object v3, p0, Ljavassist/compiler/Javac$3;->val$methodname:Ljava/lang/String;

    iget-object v4, p0, Ljavassist/compiler/Javac$3;->val$descriptor:Ljava/lang/String;

    move-object v0, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Ljavassist/compiler/JvstTypeChecker;->compileInvokeSpecial(Ljavassist/compiler/ast/ASTree;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljavassist/compiler/ast/ASTList;)V

    .line 549
    return-void
.end method
