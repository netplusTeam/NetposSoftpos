.class public Lch/qos/logback/core/spi/ScanException;
.super Ljava/lang/Exception;
.source "ScanException.java"


# static fields
.field private static final serialVersionUID:J = -0x2b773e299e37500aL


# instance fields
.field cause:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .line 23
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "rootCause"    # Ljava/lang/Throwable;

    .line 27
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 28
    iput-object p2, p0, Lch/qos/logback/core/spi/ScanException;->cause:Ljava/lang/Throwable;

    .line 29
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .line 32
    iget-object v0, p0, Lch/qos/logback/core/spi/ScanException;->cause:Ljava/lang/Throwable;

    return-object v0
.end method
