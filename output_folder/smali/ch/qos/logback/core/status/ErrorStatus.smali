.class public Lch/qos/logback/core/status/ErrorStatus;
.super Lch/qos/logback/core/status/StatusBase;
.source "ErrorStatus.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "origin"    # Ljava/lang/Object;

    .line 19
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2}, Lch/qos/logback/core/status/StatusBase;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "origin"    # Ljava/lang/Object;
    .param p3, "t"    # Ljava/lang/Throwable;

    .line 23
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2, p3}, Lch/qos/logback/core/status/StatusBase;-><init>(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 24
    return-void
.end method
