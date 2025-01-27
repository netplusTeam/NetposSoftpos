.class public Lcom/sleepycat/je/util/LogVerificationException;
.super Ljava/io/IOException;
.source "LogVerificationException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 29
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 34
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0, p2}, Lcom/sleepycat/je/util/LogVerificationException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 36
    return-void
.end method
