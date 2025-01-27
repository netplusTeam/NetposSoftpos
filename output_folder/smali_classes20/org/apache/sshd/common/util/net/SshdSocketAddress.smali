.class public Lorg/apache/sshd/common/util/net/SshdSocketAddress;
.super Ljava/net/SocketAddress;
.source "SshdSocketAddress.java"


# static fields
.field public static final BROADCAST_ADDRESS:Ljava/lang/String; = "255.255.255.255"

.field public static final BY_HOST_ADDRESS:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field public static final BY_HOST_AND_PORT:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/net/SocketAddress;",
            ">;"
        }
    .end annotation
.end field

.field public static final CARRIER_GRADE_NAT_PREFIX:Ljava/lang/String; = "100."

.field public static final IPV4_ANYADDR:Ljava/lang/String; = "0.0.0.0"

.field public static final IPV6_LONG_ANY_ADDRESS:Ljava/lang/String; = "0:0:0:0:0:0:0:0"

.field public static final IPV6_LONG_LOCALHOST:Ljava/lang/String; = "0:0:0:0:0:0:0:1"

.field public static final IPV6_MAX_HEX_DIGITS_PER_GROUP:I = 0x4

.field public static final IPV6_MAX_HEX_GROUPS:I = 0x8

.field public static final IPV6_SHORT_ANY_ADDRESS:Ljava/lang/String; = "::"

.field public static final IPV6_SHORT_LOCALHOST:Ljava/lang/String; = "::1"

.field public static final LOCALHOST_ADDRESS:Lorg/apache/sshd/common/util/net/SshdSocketAddress;

.field public static final LOCALHOST_IPV4:Ljava/lang/String; = "127.0.0.1"

.field public static final LOCALHOST_NAME:Ljava/lang/String; = "localhost"

.field public static final PRIVATE_CLASS_A_PREFIX:Ljava/lang/String; = "10."

.field public static final PRIVATE_CLASS_B_PREFIX:Ljava/lang/String; = "172."

.field public static final PRIVATE_CLASS_C_PREFIX:Ljava/lang/String; = "192.168."

.field public static final WELL_KNOWN_IPV4_ADDRESSES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final WELL_KNOWN_IPV6_ADDRESSES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x59ac60c0f055ab59L


# instance fields
.field private final hostName:Ljava/lang/String;

.field private final port:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 65
    new-instance v0, Ljava/util/LinkedHashSet;

    const-string v1, "127.0.0.1"

    const-string v2, "0.0.0.0"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v2

    .line 68
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 66
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/common/util/net/SshdSocketAddress;->WELL_KNOWN_IPV4_ADDRESSES:Ljava/util/Set;

    .line 93
    new-instance v0, Ljava/util/LinkedHashSet;

    const-string v2, "0:0:0:0:0:0:0:1"

    const-string v3, "::1"

    const-string v4, "0:0:0:0:0:0:0:0"

    const-string v5, "::"

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    .line 96
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 94
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/common/util/net/SshdSocketAddress;->WELL_KNOWN_IPV6_ADDRESSES:Ljava/util/Set;

    .line 103
    new-instance v0, Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/sshd/common/util/net/SshdSocketAddress;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/sshd/common/util/net/SshdSocketAddress;->LOCALHOST_ADDRESS:Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    .line 111
    new-instance v0, Lorg/apache/sshd/common/util/net/SshdSocketAddress$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/apache/sshd/common/util/net/SshdSocketAddress$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lorg/apache/sshd/common/util/net/SshdSocketAddress;->BY_HOST_ADDRESS:Ljava/util/Comparator;

    .line 124
    new-instance v0, Lorg/apache/sshd/common/util/net/SshdSocketAddress$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/apache/sshd/common/util/net/SshdSocketAddress$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lorg/apache/sshd/common/util/net/SshdSocketAddress;->BY_HOST_AND_PORT:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "port"    # I

    .line 148
    const-string v0, "0.0.0.0"

    invoke-direct {p0, v0, p1}, Lorg/apache/sshd/common/util/net/SshdSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 149
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 4
    .param p1, "hostName"    # Ljava/lang/String;
    .param p2, "port"    # I

    .line 160
    invoke-direct {p0}, Ljava/net/SocketAddress;-><init>()V

    .line 161
    const-string v0, "Host name may not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 162
    invoke-static {p1}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "0.0.0.0"

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lorg/apache/sshd/common/util/net/SshdSocketAddress;->hostName:Ljava/lang/String;

    .line 164
    if-ltz p2, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    int-to-long v1, p2

    const-string v3, "Port must be >= 0: %d"

    invoke-static {v0, v3, v1, v2}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;J)V

    .line 165
    iput p2, p0, Lorg/apache/sshd/common/util/net/SshdSocketAddress;->port:I

    .line 166
    return-void
.end method

.method public constructor <init>(Ljava/net/InetSocketAddress;)V
    .locals 5
    .param p1, "addr"    # Ljava/net/InetSocketAddress;

    .line 151
    invoke-direct {p0}, Ljava/net/SocketAddress;-><init>()V

    .line 152
    const-string v0, "No address provided"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 154
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getHostString()Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "host":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "0.0.0.0"

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Lorg/apache/sshd/common/util/net/SshdSocketAddress;->hostName:Ljava/lang/String;

    .line 156
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    iput v1, p0, Lorg/apache/sshd/common/util/net/SshdSocketAddress;->port:I

    .line 157
    if-ltz v1, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    int-to-long v3, v1

    const-string v1, "Port must be >= 0: %d"

    invoke-static {v2, v1, v3, v4}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;J)V

    .line 158
    return-void
.end method

.method public static getExternalNetwork4Addresses()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .line 228
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 230
    .local v0, "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "nets":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :goto_0
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 231
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/NetworkInterface;

    .line 238
    .local v2, "netint":Ljava/net/NetworkInterface;
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v3

    .local v3, "inetAddresses":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :goto_1
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 239
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    .line 240
    .local v4, "inetAddress":Ljava/net/InetAddress;
    invoke-static {v4}, Lorg/apache/sshd/common/util/net/SshdSocketAddress;->isValidHostAddress(Ljava/net/InetAddress;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 241
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    .end local v4    # "inetAddress":Ljava/net/InetAddress;
    :cond_0
    goto :goto_1

    .line 244
    .end local v2    # "netint":Ljava/net/NetworkInterface;
    .end local v3    # "inetAddresses":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_1
    goto :goto_0

    .line 247
    .end local v1    # "nets":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_2
    goto :goto_2

    .line 245
    :catch_0
    move-exception v1

    .line 249
    :goto_2
    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->size(Ljava/util/Collection;)I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_3

    .line 250
    sget-object v1, Lorg/apache/sshd/common/util/net/SshdSocketAddress;->BY_HOST_ADDRESS:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 253
    :cond_3
    return-object v0
.end method

.method public static getFirstExternalNetwork4Address()Ljava/net/InetAddress;
    .locals 2

    .line 219
    invoke-static {}, Lorg/apache/sshd/common/util/net/SshdSocketAddress;->getExternalNetwork4Addresses()Ljava/util/List;

    move-result-object v0

    .line 220
    .local v0, "addresses":Ljava/util/List;, "Ljava/util/List<+Ljava/net/InetAddress;>;"
    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->size(Ljava/util/Collection;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public static isCarrierGradeNatIPv4Address(Ljava/lang/String;)Z
    .locals 5
    .param p0, "addr"    # Ljava/lang/String;

    .line 495
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 496
    return v1

    .line 499
    :cond_0
    const-string v0, "100."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 500
    return v1

    .line 503
    :cond_1
    const/16 v2, 0x2e

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 504
    .local v2, "nextCompPos":I
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v2, v3, :cond_2

    .line 505
    return v1

    .line 508
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 509
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/sshd/common/util/net/SshdSocketAddress;->isValidIPv4AddressComponent(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 510
    return v1

    .line 513
    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 514
    .local v3, "v":I
    const/16 v4, 0x40

    if-lt v3, v4, :cond_4

    const/16 v4, 0x7f

    if-gt v3, v4, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method public static isIPv4Address(Ljava/lang/String;)Z
    .locals 7
    .param p0, "addr"    # Ljava/lang/String;

    .line 426
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->trimToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 427
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 428
    return v1

    .line 431
    :cond_0
    sget-object v0, Lorg/apache/sshd/common/util/net/SshdSocketAddress;->WELL_KNOWN_IPV4_ADDRESSES:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 432
    return v2

    .line 435
    :cond_1
    const/16 v0, 0x2e

    invoke-static {p0, v0}, Lorg/apache/sshd/common/util/GenericUtils;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v0

    .line 436
    .local v0, "comps":[Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->length([Ljava/lang/Object;)I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_2

    .line 437
    return v1

    .line 440
    :cond_2
    array-length v3, v0

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_4

    aget-object v5, v0, v4

    .line 441
    .local v5, "c":Ljava/lang/String;
    invoke-static {v5}, Lorg/apache/sshd/common/util/net/SshdSocketAddress;->isValidIPv4AddressComponent(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 442
    return v1

    .line 440
    .end local v5    # "c":Ljava/lang/String;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 446
    :cond_4
    return v2
.end method

.method public static isIPv6Address(Ljava/lang/String;)Z
    .locals 16
    .param p0, "address"    # Ljava/lang/String;

    .line 547
    invoke-static/range {p0 .. p0}, Lorg/apache/sshd/common/util/GenericUtils;->trimToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 548
    .end local p0    # "address":Ljava/lang/String;
    .local v1, "address":Ljava/lang/String;
    invoke-static {v1}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 549
    return v2

    .line 552
    :cond_0
    sget-object v0, Lorg/apache/sshd/common/util/net/SshdSocketAddress;->WELL_KNOWN_IPV6_ADDRESSES:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 553
    return v3

    .line 556
    :cond_1
    const-string v0, "::"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 557
    .local v4, "containsCompressedZeroes":Z
    if-eqz v4, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    if-eq v5, v6, :cond_2

    .line 558
    return v2

    .line 561
    :cond_2
    const/16 v5, 0x3a

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 562
    :cond_3
    const-string v6, ":"

    invoke-virtual {v1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 563
    :cond_4
    return v2

    .line 566
    :cond_5
    invoke-static {v1, v5}, Lorg/apache/sshd/common/util/GenericUtils;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v5

    .line 567
    .local v5, "splitOctets":[Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 568
    .local v6, "octetList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v7, ""

    if-eqz v4, :cond_7

    .line 569
    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 571
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 572
    :cond_6
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 573
    invoke-interface {v6, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 577
    :cond_7
    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    .line 578
    .local v8, "numOctests":I
    const/16 v0, 0x8

    if-le v8, v0, :cond_8

    .line 579
    return v2

    .line 582
    :cond_8
    const/4 v9, 0x0

    .line 583
    .local v9, "validOctets":I
    const/4 v10, 0x0

    .line 584
    .local v10, "emptyOctets":I
    const/4 v11, 0x0

    .local v11, "index":I
    :goto_1
    if-ge v11, v8, :cond_13

    .line 585
    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 586
    .local v12, "octet":Ljava/lang/String;
    const/16 v13, 0x25

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    .line 587
    .local v13, "pos":I
    if-ltz v13, :cond_b

    .line 589
    add-int/lit8 v14, v8, -0x1

    if-eq v11, v14, :cond_9

    .line 590
    return v2

    .line 593
    :cond_9
    if-lez v13, :cond_a

    invoke-virtual {v12, v2, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    goto :goto_2

    :cond_a
    move-object v14, v7

    :goto_2
    move-object v12, v14

    .line 596
    :cond_b
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    .line 597
    .local v14, "octetLength":I
    if-nez v14, :cond_d

    .line 598
    add-int/lit8 v10, v10, 0x1

    .line 599
    if-le v10, v3, :cond_c

    .line 600
    return v2

    .line 603
    :cond_c
    add-int/lit8 v9, v9, 0x1

    .line 604
    goto :goto_3

    .line 607
    :cond_d
    const/4 v10, 0x0

    .line 610
    add-int/lit8 v15, v8, -0x1

    if-ne v11, v15, :cond_f

    const/16 v15, 0x2e

    invoke-virtual {v12, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    if-lez v15, :cond_f

    .line 611
    invoke-static {v12}, Lorg/apache/sshd/common/util/net/SshdSocketAddress;->isIPv4Address(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_e

    .line 612
    return v2

    .line 614
    :cond_e
    add-int/lit8 v9, v9, 0x2

    .line 615
    goto :goto_3

    .line 618
    :cond_f
    const/4 v15, 0x4

    if-le v14, v15, :cond_10

    .line 619
    return v2

    .line 622
    :cond_10
    const/4 v15, 0x0

    .line 624
    .local v15, "octetInt":I
    const/16 v3, 0x10

    :try_start_0
    invoke-static {v12, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 627
    .end local v15    # "octetInt":I
    .local v3, "octetInt":I
    nop

    .line 629
    if-ltz v3, :cond_12

    const v15, 0xffff

    if-le v3, v15, :cond_11

    goto :goto_4

    .line 633
    :cond_11
    add-int/lit8 v9, v9, 0x1

    .line 584
    .end local v3    # "octetInt":I
    .end local v12    # "octet":Ljava/lang/String;
    .end local v13    # "pos":I
    .end local v14    # "octetLength":I
    :goto_3
    add-int/lit8 v11, v11, 0x1

    const/4 v3, 0x1

    goto :goto_1

    .line 630
    .restart local v3    # "octetInt":I
    .restart local v12    # "octet":Ljava/lang/String;
    .restart local v13    # "pos":I
    .restart local v14    # "octetLength":I
    :cond_12
    :goto_4
    return v2

    .line 625
    .end local v3    # "octetInt":I
    .restart local v15    # "octetInt":I
    :catch_0
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 626
    .local v0, "e":Ljava/lang/NumberFormatException;
    return v2

    .line 636
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v11    # "index":I
    .end local v12    # "octet":Ljava/lang/String;
    .end local v13    # "pos":I
    .end local v14    # "octetLength":I
    .end local v15    # "octetInt":I
    :cond_13
    if-gt v9, v0, :cond_15

    if-ge v9, v0, :cond_14

    if-nez v4, :cond_14

    goto :goto_5

    .line 640
    :cond_14
    const/4 v0, 0x1

    return v0

    .line 638
    :cond_15
    :goto_5
    return v2
.end method

.method public static isLoopback(Ljava/lang/String;)Z
    .locals 7
    .param p0, "ip"    # Ljava/lang/String;

    .line 318
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 319
    return v1

    .line 322
    :cond_0
    const-string v0, "localhost"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_6

    const-string v0, "127.0.0.1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 327
    :cond_1
    const/16 v0, 0x2e

    invoke-static {p0, v0}, Lorg/apache/sshd/common/util/GenericUtils;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v0

    .line 328
    .local v0, "values":[Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->length([Ljava/lang/Object;)I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_2

    .line 329
    return v1

    .line 332
    :cond_2
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_5

    .line 333
    aget-object v4, v0, v3

    .line 334
    .local v4, "val":Ljava/lang/String;
    invoke-static {v4}, Lorg/apache/sshd/common/util/net/SshdSocketAddress;->isValidIPv4AddressComponent(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 335
    return v1

    .line 338
    :cond_3
    if-nez v3, :cond_4

    .line 339
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 340
    .local v5, "number":I
    const/16 v6, 0x7f

    if-eq v5, v6, :cond_4

    .line 341
    return v1

    .line 332
    .end local v4    # "val":Ljava/lang/String;
    .end local v5    # "number":I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 346
    .end local v3    # "index":I
    :cond_5
    return v2

    .line 323
    .end local v0    # "values":[Ljava/lang/String;
    :cond_6
    :goto_1
    return v2
.end method

.method public static isLoopback(Ljava/net/InetAddress;)Z
    .locals 2
    .param p0, "addr"    # Ljava/net/InetAddress;

    .line 300
    if-nez p0, :cond_0

    .line 301
    const/4 v0, 0x0

    return v0

    .line 304
    :cond_0
    invoke-virtual {p0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 305
    const/4 v0, 0x1

    return v0

    .line 308
    :cond_1
    invoke-static {p0}, Lorg/apache/sshd/common/util/net/SshdSocketAddress;->toAddressString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v0

    .line 309
    .local v0, "ip":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/sshd/common/util/net/SshdSocketAddress;->isLoopback(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static isPrivateIPv4Address(Ljava/lang/String;)Z
    .locals 6
    .param p0, "addr"    # Ljava/lang/String;

    .line 462
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 463
    return v1

    .line 466
    :cond_0
    const-string v0, "10."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_6

    const-string v0, "192.168."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 471
    :cond_1
    const-string v0, "172."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 472
    return v1

    .line 475
    :cond_2
    const/16 v3, 0x2e

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 476
    .local v3, "nextCompPos":I
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v3, v4, :cond_3

    .line 477
    return v1

    .line 480
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 481
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/sshd/common/util/net/SshdSocketAddress;->isValidIPv4AddressComponent(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 482
    return v1

    .line 485
    :cond_4
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 486
    .local v4, "v":I
    const/16 v5, 0x10

    if-lt v4, v5, :cond_5

    const/16 v5, 0x1f

    if-gt v4, v5, :cond_5

    move v1, v2

    :cond_5
    return v1

    .line 467
    .end local v0    # "value":Ljava/lang/String;
    .end local v3    # "nextCompPos":I
    .end local v4    # "v":I
    :cond_6
    :goto_0
    return v2
.end method

.method public static isValidHostAddress(Ljava/net/InetAddress;)Z
    .locals 2
    .param p0, "addr"    # Ljava/net/InetAddress;

    .line 271
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 272
    return v0

    .line 275
    :cond_0
    invoke-virtual {p0}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 276
    return v0

    .line 279
    :cond_1
    invoke-virtual {p0}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 280
    return v0

    .line 283
    :cond_2
    instance-of v1, p0, Ljava/net/Inet4Address;

    if-nez v1, :cond_3

    .line 284
    return v0

    .line 287
    :cond_3
    invoke-static {p0}, Lorg/apache/sshd/common/util/net/SshdSocketAddress;->isLoopback(Ljava/net/InetAddress;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isValidIPv4AddressComponent(Ljava/lang/CharSequence;)Z
    .locals 4
    .param p0, "c"    # Ljava/lang/CharSequence;

    .line 528
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v2, 0x3

    if-le v0, v2, :cond_0

    goto :goto_1

    .line 532
    :cond_0
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 533
    .local v0, "ch":C
    const/16 v2, 0x30

    if-lt v0, v2, :cond_4

    const/16 v2, 0x39

    if-le v0, v2, :cond_1

    goto :goto_0

    .line 537
    :cond_1
    invoke-static {p0}, Lorg/apache/sshd/common/util/NumberUtils;->isIntegerNumber(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 538
    return v1

    .line 541
    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 542
    .local v2, "v":I
    if-ltz v2, :cond_3

    const/16 v3, 0xff

    if-gt v2, v3, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1

    .line 534
    .end local v2    # "v":I
    :cond_4
    :goto_0
    return v1

    .line 529
    .end local v0    # "ch":C
    :cond_5
    :goto_1
    return v1
.end method

.method static synthetic lambda$static$0(Ljava/net/InetAddress;Ljava/net/InetAddress;)I
    .locals 3
    .param p0, "a1"    # Ljava/net/InetAddress;
    .param p1, "a2"    # Ljava/net/InetAddress;

    .line 112
    invoke-static {p0}, Lorg/apache/sshd/common/util/net/SshdSocketAddress;->toAddressString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->trimToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "n1":Ljava/lang/String;
    invoke-static {p1}, Lorg/apache/sshd/common/util/net/SshdSocketAddress;->toAddressString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/sshd/common/util/GenericUtils;->trimToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, "n2":Ljava/lang/String;
    sget-object v2, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-interface {v2, v0, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    return v2
.end method

.method static synthetic lambda$static$1(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)I
    .locals 6
    .param p0, "a1"    # Ljava/net/SocketAddress;
    .param p1, "a2"    # Ljava/net/SocketAddress;

    .line 125
    invoke-static {p0}, Lorg/apache/sshd/common/util/net/SshdSocketAddress;->toAddressString(Ljava/net/SocketAddress;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->trimToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "n1":Ljava/lang/String;
    invoke-static {p1}, Lorg/apache/sshd/common/util/net/SshdSocketAddress;->toAddressString(Ljava/net/SocketAddress;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/sshd/common/util/GenericUtils;->trimToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, "n2":Ljava/lang/String;
    sget-object v2, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-interface {v2, v0, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 128
    .local v2, "nRes":I
    if-eqz v2, :cond_0

    .line 129
    return v2

    .line 132
    :cond_0
    invoke-static {p0}, Lorg/apache/sshd/common/util/net/SshdSocketAddress;->toAddressPort(Ljava/net/SocketAddress;)I

    move-result v3

    .line 133
    .local v3, "p1":I
    invoke-static {p1}, Lorg/apache/sshd/common/util/net/SshdSocketAddress;->toAddressPort(Ljava/net/SocketAddress;)I

    move-result v4

    .line 134
    .local v4, "p2":I
    invoke-static {v3, v4}, Ljava/lang/Integer;->compare(II)I

    move-result v2

    .line 135
    if-eqz v2, :cond_1

    .line 136
    return v2

    .line 139
    :cond_1
    const/4 v5, 0x0

    return v5
.end method

.method public static toAddressPort(Ljava/net/SocketAddress;)I
    .locals 1
    .param p0, "addr"    # Ljava/net/SocketAddress;

    .line 382
    instance-of v0, p0, Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_0

    .line 383
    move-object v0, p0

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    return v0

    .line 384
    :cond_0
    instance-of v0, p0, Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    if-eqz v0, :cond_1

    .line 385
    move-object v0, p0

    check-cast v0, Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    invoke-virtual {v0}, Lorg/apache/sshd/common/util/net/SshdSocketAddress;->getPort()I

    move-result v0

    return v0

    .line 387
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public static toAddressString(Ljava/net/InetAddress;)Ljava/lang/String;
    .locals 3
    .param p0, "addr"    # Ljava/net/InetAddress;

    .line 417
    const/4 v0, 0x0

    if-nez p0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v1

    .line 418
    .local v1, "ip":Ljava/lang/String;
    :goto_0
    invoke-static {v1}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 419
    return-object v0

    .line 421
    :cond_1
    const-string v0, ".*/"

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toAddressString(Ljava/net/SocketAddress;)Ljava/lang/String;
    .locals 1
    .param p0, "addr"    # Ljava/net/SocketAddress;

    .line 364
    if-nez p0, :cond_0

    .line 365
    const/4 v0, 0x0

    return-object v0

    .line 366
    :cond_0
    instance-of v0, p0, Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_1

    .line 367
    move-object v0, p0

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 368
    :cond_1
    instance-of v0, p0, Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    if-eqz v0, :cond_2

    .line 369
    move-object v0, p0

    check-cast v0, Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    invoke-virtual {v0}, Lorg/apache/sshd/common/util/net/SshdSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 371
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toInetSocketAddress(Ljava/net/SocketAddress;)Ljava/net/InetSocketAddress;
    .locals 3
    .param p0, "remoteAddress"    # Ljava/net/SocketAddress;

    .line 405
    if-nez p0, :cond_0

    .line 406
    const/4 v0, 0x0

    return-object v0

    .line 407
    :cond_0
    instance-of v0, p0, Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_1

    .line 408
    move-object v0, p0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0

    .line 409
    :cond_1
    instance-of v0, p0, Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    if-eqz v0, :cond_2

    .line 410
    move-object v0, p0

    check-cast v0, Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    invoke-virtual {v0}, Lorg/apache/sshd/common/util/net/SshdSocketAddress;->toInetSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0

    .line 412
    :cond_2
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown remote address type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toSshdSocketAddress(Ljava/net/SocketAddress;)Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .locals 4
    .param p0, "addr"    # Ljava/net/SocketAddress;

    .line 350
    if-nez p0, :cond_0

    .line 351
    const/4 v0, 0x0

    return-object v0

    .line 352
    :cond_0
    instance-of v0, p0, Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    if-eqz v0, :cond_1

    .line 353
    move-object v0, p0

    check-cast v0, Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    return-object v0

    .line 354
    :cond_1
    instance-of v0, p0, Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_2

    .line 355
    move-object v0, p0

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 356
    .local v0, "isockAddress":Ljava/net/InetSocketAddress;
    new-instance v1, Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/apache/sshd/common/util/net/SshdSocketAddress;-><init>(Ljava/lang/String;I)V

    return-object v1

    .line 358
    .end local v0    # "isockAddress":Ljava/net/InetSocketAddress;
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot convert "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    .line 359
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 198
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 199
    return v0

    .line 201
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    .line 202
    return v0

    .line 204
    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/util/net/SshdSocketAddress;->isEquivalent(Lorg/apache/sshd/common/util/net/SshdSocketAddress;)Z

    move-result v0

    return v0
.end method

.method public getHostName()Ljava/lang/String;
    .locals 1

    .line 169
    iget-object v0, p0, Lorg/apache/sshd/common/util/net/SshdSocketAddress;->hostName:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 173
    iget v0, p0, Lorg/apache/sshd/common/util/net/SshdSocketAddress;->port:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 209
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/net/SshdSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lorg/apache/sshd/common/util/GenericUtils;->hashCode(Ljava/lang/String;Ljava/lang/Boolean;)I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/sshd/common/util/net/SshdSocketAddress;->getPort()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected isEquivalent(Lorg/apache/sshd/common/util/net/SshdSocketAddress;)Z
    .locals 4
    .param p1, "that"    # Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    .line 186
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 187
    return v0

    .line 188
    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    .line 189
    return v1

    .line 191
    :cond_1
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/net/SshdSocketAddress;->getPort()I

    move-result v2

    invoke-virtual {p1}, Lorg/apache/sshd/common/util/net/SshdSocketAddress;->getPort()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 192
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/net/SshdSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/sshd/common/util/net/SshdSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lorg/apache/sshd/common/util/GenericUtils;->safeCompare(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    nop

    .line 191
    :goto_0
    return v0
.end method

.method public toInetSocketAddress()Ljava/net/InetSocketAddress;
    .locals 3

    .line 177
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Lorg/apache/sshd/common/util/net/SshdSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/sshd/common/util/net/SshdSocketAddress;->getPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/sshd/common/util/net/SshdSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/sshd/common/util/net/SshdSocketAddress;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
