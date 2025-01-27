.class public abstract Lch/qos/logback/classic/turbo/MatchingFilter;
.super Lch/qos/logback/classic/turbo/TurboFilter;
.source "MatchingFilter.java"


# instance fields
.field protected onMatch:Lch/qos/logback/core/spi/FilterReply;

.field protected onMismatch:Lch/qos/logback/core/spi/FilterReply;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Lch/qos/logback/classic/turbo/TurboFilter;-><init>()V

    .line 26
    sget-object v0, Lch/qos/logback/core/spi/FilterReply;->NEUTRAL:Lch/qos/logback/core/spi/FilterReply;

    iput-object v0, p0, Lch/qos/logback/classic/turbo/MatchingFilter;->onMatch:Lch/qos/logback/core/spi/FilterReply;

    .line 27
    sget-object v0, Lch/qos/logback/core/spi/FilterReply;->NEUTRAL:Lch/qos/logback/core/spi/FilterReply;

    iput-object v0, p0, Lch/qos/logback/classic/turbo/MatchingFilter;->onMismatch:Lch/qos/logback/core/spi/FilterReply;

    return-void
.end method


# virtual methods
.method public final setOnMatch(Ljava/lang/String;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;

    .line 30
    const-string v0, "NEUTRAL"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    sget-object v0, Lch/qos/logback/core/spi/FilterReply;->NEUTRAL:Lch/qos/logback/core/spi/FilterReply;

    iput-object v0, p0, Lch/qos/logback/classic/turbo/MatchingFilter;->onMatch:Lch/qos/logback/core/spi/FilterReply;

    goto :goto_0

    .line 32
    :cond_0
    const-string v0, "ACCEPT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 33
    sget-object v0, Lch/qos/logback/core/spi/FilterReply;->ACCEPT:Lch/qos/logback/core/spi/FilterReply;

    iput-object v0, p0, Lch/qos/logback/classic/turbo/MatchingFilter;->onMatch:Lch/qos/logback/core/spi/FilterReply;

    goto :goto_0

    .line 34
    :cond_1
    const-string v0, "DENY"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 35
    sget-object v0, Lch/qos/logback/core/spi/FilterReply;->DENY:Lch/qos/logback/core/spi/FilterReply;

    iput-object v0, p0, Lch/qos/logback/classic/turbo/MatchingFilter;->onMatch:Lch/qos/logback/core/spi/FilterReply;

    .line 37
    :cond_2
    :goto_0
    return-void
.end method

.method public final setOnMismatch(Ljava/lang/String;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;

    .line 40
    const-string v0, "NEUTRAL"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    sget-object v0, Lch/qos/logback/core/spi/FilterReply;->NEUTRAL:Lch/qos/logback/core/spi/FilterReply;

    iput-object v0, p0, Lch/qos/logback/classic/turbo/MatchingFilter;->onMismatch:Lch/qos/logback/core/spi/FilterReply;

    goto :goto_0

    .line 42
    :cond_0
    const-string v0, "ACCEPT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    sget-object v0, Lch/qos/logback/core/spi/FilterReply;->ACCEPT:Lch/qos/logback/core/spi/FilterReply;

    iput-object v0, p0, Lch/qos/logback/classic/turbo/MatchingFilter;->onMismatch:Lch/qos/logback/core/spi/FilterReply;

    goto :goto_0

    .line 44
    :cond_1
    const-string v0, "DENY"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 45
    sget-object v0, Lch/qos/logback/core/spi/FilterReply;->DENY:Lch/qos/logback/core/spi/FilterReply;

    iput-object v0, p0, Lch/qos/logback/classic/turbo/MatchingFilter;->onMismatch:Lch/qos/logback/core/spi/FilterReply;

    .line 47
    :cond_2
    :goto_0
    return-void
.end method
