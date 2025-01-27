.class public Lch/qos/logback/core/rolling/RolloverFailure;
.super Lch/qos/logback/core/LogbackException;
.source "RolloverFailure.java"


# static fields
.field private static final serialVersionUID:J = -0x3d2ab49379bf8922L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .line 28
    invoke-direct {p0, p1}, Lch/qos/logback/core/LogbackException;-><init>(Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 32
    invoke-direct {p0, p1, p2}, Lch/qos/logback/core/LogbackException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    return-void
.end method
