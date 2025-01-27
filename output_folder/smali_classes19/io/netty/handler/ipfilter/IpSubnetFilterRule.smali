.class public final Lio/netty/handler/ipfilter/IpSubnetFilterRule;
.super Ljava/lang/Object;
.source "IpSubnetFilterRule.java"

# interfaces
.implements Lio/netty/handler/ipfilter/IpFilterRule;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/ipfilter/IpSubnetFilterRule$Ip6SubnetFilterRule;,
        Lio/netty/handler/ipfilter/IpSubnetFilterRule$Ip4SubnetFilterRule;
    }
.end annotation


# instance fields
.field private final filterRule:Lio/netty/handler/ipfilter/IpFilterRule;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILio/netty/handler/ipfilter/IpFilterRuleType;)V
    .locals 3
    .param p1, "ipAddress"    # Ljava/lang/String;
    .param p2, "cidrPrefix"    # I
    .param p3, "ruleType"    # Lio/netty/handler/ipfilter/IpFilterRuleType;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    :try_start_0
    invoke-static {p1}, Lio/netty/util/internal/SocketUtils;->addressByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lio/netty/handler/ipfilter/IpSubnetFilterRule;->selectFilterRule(Ljava/net/InetAddress;ILio/netty/handler/ipfilter/IpFilterRuleType;)Lio/netty/handler/ipfilter/IpFilterRule;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/ipfilter/IpSubnetFilterRule;->filterRule:Lio/netty/handler/ipfilter/IpFilterRule;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    nop

    .line 42
    return-void

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, "e":Ljava/net/UnknownHostException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ipAddress"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Ljava/net/InetAddress;ILio/netty/handler/ipfilter/IpFilterRuleType;)V
    .locals 1
    .param p1, "ipAddress"    # Ljava/net/InetAddress;
    .param p2, "cidrPrefix"    # I
    .param p3, "ruleType"    # Lio/netty/handler/ipfilter/IpFilterRuleType;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {p1, p2, p3}, Lio/netty/handler/ipfilter/IpSubnetFilterRule;->selectFilterRule(Ljava/net/InetAddress;ILio/netty/handler/ipfilter/IpFilterRuleType;)Lio/netty/handler/ipfilter/IpFilterRule;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/ipfilter/IpSubnetFilterRule;->filterRule:Lio/netty/handler/ipfilter/IpFilterRule;

    .line 46
    return-void
.end method

.method private static selectFilterRule(Ljava/net/InetAddress;ILio/netty/handler/ipfilter/IpFilterRuleType;)Lio/netty/handler/ipfilter/IpFilterRule;
    .locals 3
    .param p0, "ipAddress"    # Ljava/net/InetAddress;
    .param p1, "cidrPrefix"    # I
    .param p2, "ruleType"    # Lio/netty/handler/ipfilter/IpFilterRuleType;

    .line 49
    const-string v0, "ipAddress"

    invoke-static {p0, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 50
    const-string v0, "ruleType"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 52
    instance-of v0, p0, Ljava/net/Inet4Address;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 53
    new-instance v0, Lio/netty/handler/ipfilter/IpSubnetFilterRule$Ip4SubnetFilterRule;

    move-object v2, p0

    check-cast v2, Ljava/net/Inet4Address;

    invoke-direct {v0, v2, p1, p2, v1}, Lio/netty/handler/ipfilter/IpSubnetFilterRule$Ip4SubnetFilterRule;-><init>(Ljava/net/Inet4Address;ILio/netty/handler/ipfilter/IpFilterRuleType;Lio/netty/handler/ipfilter/IpSubnetFilterRule$1;)V

    return-object v0

    .line 54
    :cond_0
    instance-of v0, p0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_1

    .line 55
    new-instance v0, Lio/netty/handler/ipfilter/IpSubnetFilterRule$Ip6SubnetFilterRule;

    move-object v2, p0

    check-cast v2, Ljava/net/Inet6Address;

    invoke-direct {v0, v2, p1, p2, v1}, Lio/netty/handler/ipfilter/IpSubnetFilterRule$Ip6SubnetFilterRule;-><init>(Ljava/net/Inet6Address;ILio/netty/handler/ipfilter/IpFilterRuleType;Lio/netty/handler/ipfilter/IpSubnetFilterRule$1;)V

    return-object v0

    .line 57
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only IPv4 and IPv6 addresses are supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public matches(Ljava/net/InetSocketAddress;)Z
    .locals 1
    .param p1, "remoteAddress"    # Ljava/net/InetSocketAddress;

    .line 63
    iget-object v0, p0, Lio/netty/handler/ipfilter/IpSubnetFilterRule;->filterRule:Lio/netty/handler/ipfilter/IpFilterRule;

    invoke-interface {v0, p1}, Lio/netty/handler/ipfilter/IpFilterRule;->matches(Ljava/net/InetSocketAddress;)Z

    move-result v0

    return v0
.end method

.method public ruleType()Lio/netty/handler/ipfilter/IpFilterRuleType;
    .locals 1

    .line 68
    iget-object v0, p0, Lio/netty/handler/ipfilter/IpSubnetFilterRule;->filterRule:Lio/netty/handler/ipfilter/IpFilterRule;

    invoke-interface {v0}, Lio/netty/handler/ipfilter/IpFilterRule;->ruleType()Lio/netty/handler/ipfilter/IpFilterRuleType;

    move-result-object v0

    return-object v0
.end method
