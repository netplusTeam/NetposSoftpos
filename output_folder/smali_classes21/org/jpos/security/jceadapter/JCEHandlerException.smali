.class public Lorg/jpos/security/jceadapter/JCEHandlerException;
.super Lorg/jpos/security/SMException;
.source "JCEHandlerException.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lorg/jpos/security/SMException;-><init>()V

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Exception;

    .line 40
    invoke-direct {p0, p1}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/Exception;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .line 36
    invoke-direct {p0, p1}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .line 44
    invoke-direct {p0, p1, p2}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 45
    return-void
.end method
