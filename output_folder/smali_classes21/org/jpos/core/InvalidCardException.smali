.class public Lorg/jpos/core/InvalidCardException;
.super Ljava/lang/Exception;
.source "InvalidCardException.java"


# static fields
.field private static final serialVersionUID:J = -0x6cd777dd5361777bL


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .line 33
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 34
    return-void
.end method
