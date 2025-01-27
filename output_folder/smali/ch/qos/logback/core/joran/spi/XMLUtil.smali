.class public Lch/qos/logback/core/joran/spi/XMLUtil;
.super Ljava/lang/Object;
.source "XMLUtil.java"


# static fields
.field public static final ILL_FORMED:I = 0x1

.field public static final UNRECOVERABLE_ERROR:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkIfWellFormed(Ljava/net/URL;Lch/qos/logback/core/status/StatusManager;)I
    .locals 1
    .param p0, "url"    # Ljava/net/URL;
    .param p1, "sm"    # Lch/qos/logback/core/status/StatusManager;

    .line 26
    const/4 v0, 0x0

    return v0
.end method
