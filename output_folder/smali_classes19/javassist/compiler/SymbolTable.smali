.class public final Ljavassist/compiler/SymbolTable;
.super Ljava/util/HashMap;
.source "SymbolTable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljavassist/compiler/ast/Declarator;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private parent:Ljavassist/compiler/SymbolTable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljavassist/compiler/SymbolTable;-><init>(Ljavassist/compiler/SymbolTable;)V

    return-void
.end method

.method public constructor <init>(Ljavassist/compiler/SymbolTable;)V
    .locals 0
    .param p1, "p"    # Ljavassist/compiler/SymbolTable;

    .line 31
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 32
    iput-object p1, p0, Ljavassist/compiler/SymbolTable;->parent:Ljavassist/compiler/SymbolTable;

    .line 33
    return-void
.end method


# virtual methods
.method public append(Ljava/lang/String;Ljavassist/compiler/ast/Declarator;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljavassist/compiler/ast/Declarator;

    .line 45
    invoke-virtual {p0, p1, p2}, Ljavassist/compiler/SymbolTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    return-void
.end method

.method public getParent()Ljavassist/compiler/SymbolTable;
    .locals 1

    .line 35
    iget-object v0, p0, Ljavassist/compiler/SymbolTable;->parent:Ljavassist/compiler/SymbolTable;

    return-object v0
.end method

.method public lookup(Ljava/lang/String;)Ljavassist/compiler/ast/Declarator;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 38
    invoke-virtual {p0, p1}, Ljavassist/compiler/SymbolTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavassist/compiler/ast/Declarator;

    .line 39
    .local v0, "found":Ljavassist/compiler/ast/Declarator;
    if-nez v0, :cond_0

    iget-object v1, p0, Ljavassist/compiler/SymbolTable;->parent:Ljavassist/compiler/SymbolTable;

    if-eqz v1, :cond_0

    .line 40
    invoke-virtual {v1, p1}, Ljavassist/compiler/SymbolTable;->lookup(Ljava/lang/String;)Ljavassist/compiler/ast/Declarator;

    move-result-object v1

    return-object v1

    .line 41
    :cond_0
    return-object v0
.end method
