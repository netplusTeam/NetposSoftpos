.class public Lch/qos/logback/core/status/InfoStatus;
.super Lch/qos/logback/core/status/StatusBase;
.source "InfoStatus.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "origin"    # Ljava/lang/Object;

    .line 18
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lch/qos/logback/core/status/StatusBase;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "origin"    # Ljava/lang/Object;
    .param p3, "t"    # Ljava/lang/Throwable;

    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lch/qos/logback/core/status/StatusBase;-><init>(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 23
    return-void
.end method
