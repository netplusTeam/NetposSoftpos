.class public Lio/netty/handler/ipfilter/RuleBasedIpFilter;
.super Lio/netty/handler/ipfilter/AbstractRemoteAddressFilter;
.source "RuleBasedIpFilter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/handler/ipfilter/AbstractRemoteAddressFilter<",
        "Ljava/net/InetSocketAddress;",
        ">;"
    }
.end annotation

.annotation runtime Lio/netty/channel/ChannelHandler$Sharable;
.end annotation


# instance fields
.field private final rules:[Lio/netty/handler/ipfilter/IpFilterRule;


# direct methods
.method public varargs constructor <init>([Lio/netty/handler/ipfilter/IpFilterRule;)V
    .locals 1
    .param p1, "rules"    # [Lio/netty/handler/ipfilter/IpFilterRule;

    .line 39
    invoke-direct {p0}, Lio/netty/handler/ipfilter/AbstractRemoteAddressFilter;-><init>()V

    .line 40
    const-string v0, "rules"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/netty/handler/ipfilter/IpFilterRule;

    iput-object v0, p0, Lio/netty/handler/ipfilter/RuleBasedIpFilter;->rules:[Lio/netty/handler/ipfilter/IpFilterRule;

    .line 41
    return-void
.end method


# virtual methods
.method protected accept(Lio/netty/channel/ChannelHandlerContext;Ljava/net/InetSocketAddress;)Z
    .locals 7
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "remoteAddress"    # Ljava/net/InetSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lio/netty/handler/ipfilter/RuleBasedIpFilter;->rules:[Lio/netty/handler/ipfilter/IpFilterRule;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_3

    aget-object v5, v0, v3

    .line 46
    .local v5, "rule":Lio/netty/handler/ipfilter/IpFilterRule;
    if-nez v5, :cond_0

    .line 47
    goto :goto_1

    .line 50
    :cond_0
    invoke-interface {v5, p2}, Lio/netty/handler/ipfilter/IpFilterRule;->matches(Ljava/net/InetSocketAddress;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 51
    invoke-interface {v5}, Lio/netty/handler/ipfilter/IpFilterRule;->ruleType()Lio/netty/handler/ipfilter/IpFilterRuleType;

    move-result-object v0

    sget-object v1, Lio/netty/handler/ipfilter/IpFilterRuleType;->ACCEPT:Lio/netty/handler/ipfilter/IpFilterRuleType;

    if-ne v0, v1, :cond_1

    move v2, v4

    :cond_1
    return v2

    .line 45
    .end local v5    # "rule":Lio/netty/handler/ipfilter/IpFilterRule;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 55
    :cond_3
    :goto_1
    return v4
.end method

.method protected bridge synthetic accept(Lio/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 34
    check-cast p2, Ljava/net/InetSocketAddress;

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/ipfilter/RuleBasedIpFilter;->accept(Lio/netty/channel/ChannelHandlerContext;Ljava/net/InetSocketAddress;)Z

    move-result p1

    return p1
.end method
