.class public Ljavassist/bytecode/DuplicateMemberException;
.super Ljavassist/CannotCompileException;
.source "DuplicateMemberException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .line 32
    invoke-direct {p0, p1}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/String;)V

    .line 33
    return-void
.end method
