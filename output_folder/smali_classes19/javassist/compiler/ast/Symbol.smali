.class public Ljavassist/compiler/ast/Symbol;
.super Ljavassist/compiler/ast/ASTree;
.source "Symbol.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected identifier:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "sym"    # Ljava/lang/String;

    .line 29
    invoke-direct {p0}, Ljavassist/compiler/ast/ASTree;-><init>()V

    .line 30
    iput-object p1, p0, Ljavassist/compiler/ast/Symbol;->identifier:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public accept(Ljavassist/compiler/ast/Visitor;)V
    .locals 0
    .param p1, "v"    # Ljavassist/compiler/ast/Visitor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 39
    invoke-virtual {p1, p0}, Ljavassist/compiler/ast/Visitor;->atSymbol(Ljavassist/compiler/ast/Symbol;)V

    return-void
.end method

.method public get()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Ljavassist/compiler/ast/Symbol;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Ljavassist/compiler/ast/Symbol;->identifier:Ljava/lang/String;

    return-object v0
.end method
