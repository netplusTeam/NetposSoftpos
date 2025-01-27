.class public abstract Lch/qos/logback/core/filter/AbstractMatcherFilter;
.super Lch/qos/logback/core/filter/Filter;
.source "AbstractMatcherFilter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lch/qos/logback/core/filter/Filter<",
        "TE;>;"
    }
.end annotation


# instance fields
.field protected onMatch:Lch/qos/logback/core/spi/FilterReply;

.field protected onMismatch:Lch/qos/logback/core/spi/FilterReply;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    .local p0, "this":Lch/qos/logback/core/filter/AbstractMatcherFilter;, "Lch/qos/logback/core/filter/AbstractMatcherFilter<TE;>;"
    invoke-direct {p0}, Lch/qos/logback/core/filter/Filter;-><init>()V

    .line 20
    sget-object v0, Lch/qos/logback/core/spi/FilterReply;->NEUTRAL:Lch/qos/logback/core/spi/FilterReply;

    iput-object v0, p0, Lch/qos/logback/core/filter/AbstractMatcherFilter;->onMatch:Lch/qos/logback/core/spi/FilterReply;

    .line 21
    sget-object v0, Lch/qos/logback/core/spi/FilterReply;->NEUTRAL:Lch/qos/logback/core/spi/FilterReply;

    iput-object v0, p0, Lch/qos/logback/core/filter/AbstractMatcherFilter;->onMismatch:Lch/qos/logback/core/spi/FilterReply;

    return-void
.end method


# virtual methods
.method public final getOnMatch()Lch/qos/logback/core/spi/FilterReply;
    .locals 1

    .line 32
    .local p0, "this":Lch/qos/logback/core/filter/AbstractMatcherFilter;, "Lch/qos/logback/core/filter/AbstractMatcherFilter<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/filter/AbstractMatcherFilter;->onMatch:Lch/qos/logback/core/spi/FilterReply;

    return-object v0
.end method

.method public final getOnMismatch()Lch/qos/logback/core/spi/FilterReply;
    .locals 1

    .line 36
    .local p0, "this":Lch/qos/logback/core/filter/AbstractMatcherFilter;, "Lch/qos/logback/core/filter/AbstractMatcherFilter<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/filter/AbstractMatcherFilter;->onMismatch:Lch/qos/logback/core/spi/FilterReply;

    return-object v0
.end method

.method public final setOnMatch(Lch/qos/logback/core/spi/FilterReply;)V
    .locals 0
    .param p1, "reply"    # Lch/qos/logback/core/spi/FilterReply;

    .line 24
    .local p0, "this":Lch/qos/logback/core/filter/AbstractMatcherFilter;, "Lch/qos/logback/core/filter/AbstractMatcherFilter<TE;>;"
    iput-object p1, p0, Lch/qos/logback/core/filter/AbstractMatcherFilter;->onMatch:Lch/qos/logback/core/spi/FilterReply;

    .line 25
    return-void
.end method

.method public final setOnMismatch(Lch/qos/logback/core/spi/FilterReply;)V
    .locals 0
    .param p1, "reply"    # Lch/qos/logback/core/spi/FilterReply;

    .line 28
    .local p0, "this":Lch/qos/logback/core/filter/AbstractMatcherFilter;, "Lch/qos/logback/core/filter/AbstractMatcherFilter<TE;>;"
    iput-object p1, p0, Lch/qos/logback/core/filter/AbstractMatcherFilter;->onMismatch:Lch/qos/logback/core/spi/FilterReply;

    .line 29
    return-void
.end method
