.class public Lch/qos/logback/core/joran/spi/ActionException;
.super Ljava/lang/Exception;
.source "ActionException.java"


# static fields
.field private static final serialVersionUID:J = 0x2612561e076809feL


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "rootCause"    # Ljava/lang/Throwable;

    .line 31
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 32
    return-void
.end method
