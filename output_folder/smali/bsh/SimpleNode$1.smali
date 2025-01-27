.class final Lbsh/SimpleNode$1;
.super Lbsh/SimpleNode;
.source "SimpleNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbsh/SimpleNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "i"    # I

    .line 49
    invoke-direct {p0, p1}, Lbsh/SimpleNode;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getLineNumber()I
    .locals 1

    .line 55
    const/4 v0, -0x1

    return v0
.end method

.method public getSourceFile()Ljava/lang/String;
    .locals 1

    .line 51
    const-string v0, "<Called from Java Code>"

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 59
    const-string v0, "<Compiled Java Code>"

    return-object v0
.end method
