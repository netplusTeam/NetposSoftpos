.class public Ljavassist/compiler/CompileError;
.super Ljava/lang/Exception;
.source "CompileError.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private lex:Ljavassist/compiler/Lex;

.field private reason:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 33
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 34
    iput-object p1, p0, Ljavassist/compiler/CompileError;->reason:Ljava/lang/String;

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Ljavassist/compiler/CompileError;->lex:Ljavassist/compiler/Lex;

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljavassist/compiler/Lex;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "l"    # Ljavassist/compiler/Lex;

    .line 28
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 29
    iput-object p1, p0, Ljavassist/compiler/CompileError;->reason:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Ljavassist/compiler/CompileError;->lex:Ljavassist/compiler/Lex;

    .line 31
    return-void
.end method

.method public constructor <init>(Ljavassist/CannotCompileException;)V
    .locals 1
    .param p1, "e"    # Ljavassist/CannotCompileException;

    .line 39
    invoke-virtual {p1}, Ljavassist/CannotCompileException;->getReason()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljavassist/NotFoundException;)V
    .locals 2
    .param p1, "e"    # Ljavassist/NotFoundException;

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cannot find "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljavassist/NotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    .line 44
    return-void
.end method


# virtual methods
.method public getLex()Ljavassist/compiler/Lex;
    .locals 1

    .line 46
    iget-object v0, p0, Ljavassist/compiler/CompileError;->lex:Ljavassist/compiler/Lex;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Ljavassist/compiler/CompileError;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "compile error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljavassist/compiler/CompileError;->reason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
