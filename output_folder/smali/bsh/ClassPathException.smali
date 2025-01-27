.class public Lbsh/ClassPathException;
.super Lbsh/UtilEvalError;
.source "ClassPathException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .line 31
    invoke-direct {p0, p1}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    return-void
.end method
