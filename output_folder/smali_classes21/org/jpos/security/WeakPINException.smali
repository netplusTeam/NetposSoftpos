.class public Lorg/jpos/security/WeakPINException;
.super Lorg/jpos/security/SMException;
.source "WeakPINException.java"


# static fields
.field private static final serialVersionUID:J = 0x4f894b18f641a151L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lorg/jpos/security/SMException;-><init>()V

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Exception;

    .line 39
    invoke-direct {p0, p1}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/Exception;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .line 35
    invoke-direct {p0, p1}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .line 43
    invoke-direct {p0, p1, p2}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 44
    return-void
.end method
