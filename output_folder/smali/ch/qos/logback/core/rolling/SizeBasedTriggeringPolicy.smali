.class public Lch/qos/logback/core/rolling/SizeBasedTriggeringPolicy;
.super Lch/qos/logback/core/rolling/TriggeringPolicyBase;
.source "SizeBasedTriggeringPolicy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lch/qos/logback/core/rolling/TriggeringPolicyBase<",
        "TE;>;"
    }
.end annotation


# static fields
.field public static final DEFAULT_MAX_FILE_SIZE:J = 0xa00000L

.field public static final SEE_SIZE_FORMAT:Ljava/lang/String; = "http://logback.qos.ch/codes.html#sbtp_size_format"


# instance fields
.field invocationGate:Lch/qos/logback/core/util/InvocationGate;

.field maxFileSize:Lch/qos/logback/core/util/FileSize;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 43
    .local p0, "this":Lch/qos/logback/core/rolling/SizeBasedTriggeringPolicy;, "Lch/qos/logback/core/rolling/SizeBasedTriggeringPolicy<TE;>;"
    invoke-direct {p0}, Lch/qos/logback/core/rolling/TriggeringPolicyBase;-><init>()V

    .line 41
    new-instance v0, Lch/qos/logback/core/util/FileSize;

    const-wide/32 v1, 0xa00000

    invoke-direct {v0, v1, v2}, Lch/qos/logback/core/util/FileSize;-><init>(J)V

    iput-object v0, p0, Lch/qos/logback/core/rolling/SizeBasedTriggeringPolicy;->maxFileSize:Lch/qos/logback/core/util/FileSize;

    .line 46
    new-instance v0, Lch/qos/logback/core/util/DefaultInvocationGate;

    invoke-direct {v0}, Lch/qos/logback/core/util/DefaultInvocationGate;-><init>()V

    iput-object v0, p0, Lch/qos/logback/core/rolling/SizeBasedTriggeringPolicy;->invocationGate:Lch/qos/logback/core/util/InvocationGate;

    .line 44
    return-void
.end method


# virtual methods
.method public isTriggeringEvent(Ljava/io/File;Ljava/lang/Object;)Z
    .locals 8
    .param p1, "activeFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "TE;)Z"
        }
    .end annotation

    .line 49
    .local p0, "this":Lch/qos/logback/core/rolling/SizeBasedTriggeringPolicy;, "Lch/qos/logback/core/rolling/SizeBasedTriggeringPolicy<TE;>;"
    .local p2, "event":Ljava/lang/Object;, "TE;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 50
    .local v0, "now":J
    iget-object v2, p0, Lch/qos/logback/core/rolling/SizeBasedTriggeringPolicy;->invocationGate:Lch/qos/logback/core/util/InvocationGate;

    invoke-interface {v2, v0, v1}, Lch/qos/logback/core/util/InvocationGate;->isTooSoon(J)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 51
    return v3

    .line 53
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    iget-object v2, p0, Lch/qos/logback/core/rolling/SizeBasedTriggeringPolicy;->maxFileSize:Lch/qos/logback/core/util/FileSize;

    invoke-virtual {v2}, Lch/qos/logback/core/util/FileSize;->getSize()J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-ltz v2, :cond_1

    const/4 v3, 0x1

    :cond_1
    return v3
.end method

.method public setMaxFileSize(Lch/qos/logback/core/util/FileSize;)V
    .locals 0
    .param p1, "aMaxFileSize"    # Lch/qos/logback/core/util/FileSize;

    .line 57
    .local p0, "this":Lch/qos/logback/core/rolling/SizeBasedTriggeringPolicy;, "Lch/qos/logback/core/rolling/SizeBasedTriggeringPolicy<TE;>;"
    iput-object p1, p0, Lch/qos/logback/core/rolling/SizeBasedTriggeringPolicy;->maxFileSize:Lch/qos/logback/core/util/FileSize;

    .line 58
    return-void
.end method
