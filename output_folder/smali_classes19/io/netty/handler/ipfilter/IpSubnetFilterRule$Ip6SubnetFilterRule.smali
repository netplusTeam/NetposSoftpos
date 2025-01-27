.class final Lio/netty/handler/ipfilter/IpSubnetFilterRule$Ip6SubnetFilterRule;
.super Ljava/lang/Object;
.source "IpSubnetFilterRule.java"

# interfaces
.implements Lio/netty/handler/ipfilter/IpFilterRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/ipfilter/IpSubnetFilterRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Ip6SubnetFilterRule"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final MINUS_ONE:Ljava/math/BigInteger;


# instance fields
.field private final networkAddress:Ljava/math/BigInteger;

.field private final ruleType:Lio/netty/handler/ipfilter/IpFilterRuleType;

.field private final subnetMask:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 128
    const-class v0, Lio/netty/handler/ipfilter/IpSubnetFilterRule;

    .line 130
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lio/netty/handler/ipfilter/IpSubnetFilterRule$Ip6SubnetFilterRule;->MINUS_ONE:Ljava/math/BigInteger;

    return-void
.end method

.method private constructor <init>(Ljava/net/Inet6Address;ILio/netty/handler/ipfilter/IpFilterRuleType;)V
    .locals 4
    .param p1, "ipAddress"    # Ljava/net/Inet6Address;
    .param p2, "cidrPrefix"    # I
    .param p3, "ruleType"    # Lio/netty/handler/ipfilter/IpFilterRuleType;

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    if-ltz p2, :cond_0

    const/16 v0, 0x80

    if-gt p2, v0, :cond_0

    .line 142
    invoke-static {p2}, Lio/netty/handler/ipfilter/IpSubnetFilterRule$Ip6SubnetFilterRule;->prefixToSubnetMask(I)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/ipfilter/IpSubnetFilterRule$Ip6SubnetFilterRule;->subnetMask:Ljava/math/BigInteger;

    .line 143
    invoke-static {p1}, Lio/netty/handler/ipfilter/IpSubnetFilterRule$Ip6SubnetFilterRule;->ipToInt(Ljava/net/Inet6Address;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->and(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/ipfilter/IpSubnetFilterRule$Ip6SubnetFilterRule;->networkAddress:Ljava/math/BigInteger;

    .line 144
    iput-object p3, p0, Lio/netty/handler/ipfilter/IpSubnetFilterRule$Ip6SubnetFilterRule;->ruleType:Lio/netty/handler/ipfilter/IpFilterRuleType;

    .line 145
    return-void

    .line 138
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 139
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 138
    const-string v2, "IPv6 requires the subnet prefix to be in range of [0,128]. The prefix was: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor <init>(Ljava/net/Inet6Address;ILio/netty/handler/ipfilter/IpFilterRuleType;Lio/netty/handler/ipfilter/IpSubnetFilterRule$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/net/Inet6Address;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lio/netty/handler/ipfilter/IpFilterRuleType;
    .param p4, "x3"    # Lio/netty/handler/ipfilter/IpSubnetFilterRule$1;

    .line 128
    invoke-direct {p0, p1, p2, p3}, Lio/netty/handler/ipfilter/IpSubnetFilterRule$Ip6SubnetFilterRule;-><init>(Ljava/net/Inet6Address;ILio/netty/handler/ipfilter/IpFilterRuleType;)V

    return-void
.end method

.method private static ipToInt(Ljava/net/Inet6Address;)Ljava/math/BigInteger;
    .locals 3
    .param p0, "ipAddress"    # Ljava/net/Inet6Address;

    .line 163
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v0

    .line 164
    .local v0, "octets":[B
    array-length v1, v0

    const/16 v2, 0x10

    if-ne v1, v2, :cond_0

    .line 166
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>([B)V

    return-object v1

    .line 164
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method private static prefixToSubnetMask(I)Ljava/math/BigInteger;
    .locals 2
    .param p0, "cidrPrefix"    # I

    .line 170
    sget-object v0, Lio/netty/handler/ipfilter/IpSubnetFilterRule$Ip6SubnetFilterRule;->MINUS_ONE:Ljava/math/BigInteger;

    rsub-int v1, p0, 0x80

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public matches(Ljava/net/InetSocketAddress;)Z
    .locals 4
    .param p1, "remoteAddress"    # Ljava/net/InetSocketAddress;

    .line 149
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 150
    .local v0, "inetAddress":Ljava/net/InetAddress;
    instance-of v1, v0, Ljava/net/Inet6Address;

    if-eqz v1, :cond_0

    .line 151
    move-object v1, v0

    check-cast v1, Ljava/net/Inet6Address;

    invoke-static {v1}, Lio/netty/handler/ipfilter/IpSubnetFilterRule$Ip6SubnetFilterRule;->ipToInt(Ljava/net/Inet6Address;)Ljava/math/BigInteger;

    move-result-object v1

    .line 152
    .local v1, "ipAddress":Ljava/math/BigInteger;
    iget-object v2, p0, Lio/netty/handler/ipfilter/IpSubnetFilterRule$Ip6SubnetFilterRule;->subnetMask:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->and(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lio/netty/handler/ipfilter/IpSubnetFilterRule$Ip6SubnetFilterRule;->networkAddress:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 154
    .end local v1    # "ipAddress":Ljava/math/BigInteger;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public ruleType()Lio/netty/handler/ipfilter/IpFilterRuleType;
    .locals 1

    .line 159
    iget-object v0, p0, Lio/netty/handler/ipfilter/IpSubnetFilterRule$Ip6SubnetFilterRule;->ruleType:Lio/netty/handler/ipfilter/IpFilterRuleType;

    return-object v0
.end method
