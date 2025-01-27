.class public Ljavassist/compiler/ast/Member;
.super Ljavassist/compiler/ast/Symbol;
.source "Member.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private field:Ljavassist/CtField;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 33
    invoke-direct {p0, p1}, Ljavassist/compiler/ast/Symbol;-><init>(Ljava/lang/String;)V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Ljavassist/compiler/ast/Member;->field:Ljavassist/CtField;

    .line 35
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

    .line 42
    invoke-virtual {p1, p0}, Ljavassist/compiler/ast/Visitor;->atMember(Ljavassist/compiler/ast/Member;)V

    return-void
.end method

.method public getField()Ljavassist/CtField;
    .locals 1

    .line 39
    iget-object v0, p0, Ljavassist/compiler/ast/Member;->field:Ljavassist/CtField;

    return-object v0
.end method

.method public setField(Ljavassist/CtField;)V
    .locals 0
    .param p1, "f"    # Ljavassist/CtField;

    .line 37
    iput-object p1, p0, Ljavassist/compiler/ast/Member;->field:Ljavassist/CtField;

    return-void
.end method
