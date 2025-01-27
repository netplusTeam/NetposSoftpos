.class public Ljavassist/tools/reflect/CannotReflectException;
.super Ljavassist/CannotCompileException;
.source "CannotReflectException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .line 37
    invoke-direct {p0, p1}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/String;)V

    .line 38
    return-void
.end method
