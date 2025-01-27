.class final Lio/netty/handler/ipfilter/IpSubnetFilterRule$Ip4SubnetFilterRule;
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
    name = "Ip4SubnetFilterRule"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final networkAddress:I

.field private final ruleType:Lio/netty/handler/ipfilter/IpFilterRuleType;

.field private final subnetMask:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 71
    const-class v0, Lio/netty/handler/ipfilter/IpSubnetFilterRule;

    return-void
.end method

.method private constructor <init>(Ljava/net/Inet4Address;ILio/netty/handler/ipfilter/IpFilterRuleType;)V
    .locals 4
    .param p1, "ipAddress"    # Ljava/net/Inet4Address;
    .param p2, "cidrPrefix"    # I
    .param p3, "ruleType"    # Lio/netty/handler/ipfilter/IpFilterRuleType;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    if-ltz p2, :cond_0

    const/16 v0, 0x20

    if-gt p2, v0, :cond_0

    .line 83
    invoke-static {p2}, Lio/netty/handler/ipfilter/IpSubnetFilterRule$Ip4SubnetFilterRule;->prefixToSubnetMask(I)I

    move-result v0

    iput v0, p0, Lio/netty/handler/ipfilter/IpSubnetFilterRule$Ip4SubnetFilterRule;->subnetMask:I

    .line 84
    invoke-static {p1}, Lio/netty/handler/ipfilter/IpSubnetFilterRule$Ip4SubnetFilterRule;->ipToInt(Ljava/net/Inet4Address;)I

    move-result v1

    and-int/2addr v0, v1

    iput v0, p0, Lio/netty/handler/ipfilter/IpSubnetFilterRule$Ip4SubnetFilterRule;->networkAddress:I

    .line 85
    iput-object p3, p0, Lio/netty/handler/ipfilter/IpSubnetFilterRule$Ip4SubnetFilterRule;->ruleType:Lio/netty/handler/ipfilter/IpFilterRuleType;

    .line 86
    return-void

    .line 79
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 80
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 79
    const-string v2, "IPv4 requires the subnet prefix to be in range of [0,32]. The prefix was: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor <init>(Ljava/net/Inet4Address;ILio/netty/handler/ipfilter/IpFilterRuleType;Lio/netty/handler/ipfilter/IpSubnetFilterRule$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/net/Inet4Address;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lio/netty/handler/ipfilter/IpFilterRuleType;
    .param p4, "x3"    # Lio/netty/handler/ipfilter/IpSubnetFilterRule$1;

    .line 71
    invoke-direct {p0, p1, p2, p3}, Lio/netty/handler/ipfilter/IpSubnetFilterRule$Ip4SubnetFilterRule;-><init>(Ljava/net/Inet4Address;ILio/netty/handler/ipfilter/IpFilterRuleType;)V

    return-void
.end method

.method private static ipToInt(Ljava/net/Inet4Address;)I
    .locals 3
    .param p0, "ipAddress"    # Ljava/net/Inet4Address;

    .line 104
    invoke-virtual {p0}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v0

    .line 105
    .local v0, "octets":[B
    array-length v1, v0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 107
    const/4 v1, 0x0

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    const/4 v2, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    const/4 v2, 0x2

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    const/4 v2, 0x3

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    return v1

    .line 105
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method private static prefixToSubnetMask(I)I
    .locals 5
    .param p0, "cidrPrefix"    # I

    .line 124
    rsub-int/lit8 v0, p0, 0x20

    const-wide/16 v1, -0x1

    shl-long v3, v1, v0

    and-long v0, v3, v1

    long-to-int v0, v0

    return v0
.end method


# virtual methods
.method public matches(Ljava/net/InetSocketAddress;)Z
    .locals 5
    .param p1, "remoteAddress"    # Ljava/net/InetSocketAddress;

    .line 90
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 91
    .local v0, "inetAddress":Ljava/net/InetAddress;
    instance-of v1, v0, Ljava/net/Inet4Address;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 92
    move-object v1, v0

    check-cast v1, Ljava/net/Inet4Address;

    invoke-static {v1}, Lio/netty/handler/ipfilter/IpSubnetFilterRule$Ip4SubnetFilterRule;->ipToInt(Ljava/net/Inet4Address;)I

    move-result v1

    .line 93
    .local v1, "ipAddress":I
    iget v3, p0, Lio/netty/handler/ipfilter/IpSubnetFilterRule$Ip4SubnetFilterRule;->subnetMask:I

    and-int/2addr v3, v1

    iget v4, p0, Lio/netty/handler/ipfilter/IpSubnetFilterRule$Ip4SubnetFilterRule;->networkAddress:I

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    .line 95
    .end local v1    # "ipAddress":I
    :cond_1
    return v2
.end method

.method public ruleType()Lio/netty/handler/ipfilter/IpFilterRuleType;
    .locals 1

    .line 100
    iget-object v0, p0, Lio/netty/handler/ipfilter/IpSubnetFilterRule$Ip4SubnetFilterRule;->ruleType:Lio/netty/handler/ipfilter/IpFilterRuleType;

    return-object v0
.end method
