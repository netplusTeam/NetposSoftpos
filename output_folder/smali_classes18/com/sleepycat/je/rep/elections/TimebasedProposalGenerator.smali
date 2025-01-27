.class public Lcom/sleepycat/je/rep/elections/TimebasedProposalGenerator;
.super Ljava/lang/Object;
.source "TimebasedProposalGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/rep/elections/TimebasedProposalGenerator$StringProposal;
    }
.end annotation


# static fields
.field static final ADDRESS_WIDTH:I = 0x20

.field static final TIME_WIDTH:I = 0x10

.field static final UID_WIDTH:I = 0x8

.field private static final machineId:Ljava/lang/String;

.field private static final uniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final locallyUniqueId:I

.field private prevProposalTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 51
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/sleepycat/je/rep/elections/TimebasedProposalGenerator;->uniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 84
    :try_start_0
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .local v0, "localHost":Ljava/net/InetAddress;
    goto :goto_0

    .line 85
    .end local v0    # "localHost":Ljava/net/InetAddress;
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Ljava/net/UnknownHostException;
    const/4 v2, 0x0

    move-object v0, v2

    .line 92
    .local v0, "localHost":Ljava/net/InetAddress;
    :goto_0
    const/4 v2, 0x0

    .line 93
    .local v2, "localAddress":[B
    if-eqz v0, :cond_3

    .line 94
    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    .line 96
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 100
    const/4 v2, 0x0

    .line 103
    :try_start_1
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v3

    .line 104
    .local v3, "interfaces":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 105
    nop

    .line 106
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v4

    .line 107
    .local v4, "addresses":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :goto_2
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 108
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/InetAddress;

    .line 109
    .local v5, "ia":Ljava/net/InetAddress;
    invoke-virtual {v5}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v6

    if-nez v6, :cond_0

    .line 110
    invoke-virtual {v5}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v6

    if-nez v6, :cond_0

    .line 111
    invoke-virtual {v5}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v6

    if-nez v6, :cond_0

    .line 113
    invoke-virtual {v5}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v6
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v6

    .line 114
    goto :goto_3

    .line 116
    .end local v5    # "ia":Ljava/net/InetAddress;
    :cond_0
    goto :goto_2

    .end local v4    # "addresses":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_1
    :goto_3
    goto :goto_1

    .line 120
    .end local v3    # "interfaces":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_2
    goto :goto_4

    .line 118
    :catch_1
    move-exception v3

    .line 124
    :cond_3
    :goto_4
    const/4 v3, 0x0

    const-string v4, "%032x"

    const/16 v5, 0x80

    if-eqz v2, :cond_4

    .line 129
    new-instance v6, Ljava/math/BigInteger;

    invoke-direct {v6, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 130
    .local v6, "addrVal":Ljava/math/BigInteger;
    new-instance v7, Ljava/math/BigInteger;

    new-instance v8, Ljava/security/SecureRandom;

    invoke-direct {v8}, Ljava/security/SecureRandom;-><init>()V

    invoke-direct {v7, v5, v8}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    move-object v5, v7

    .line 132
    .local v5, "randVal":Ljava/math/BigInteger;
    new-array v1, v1, [Ljava/lang/Object;

    .line 133
    invoke-virtual {v6, v5}, Ljava/math/BigInteger;->xor(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    aput-object v7, v1, v3

    .line 132
    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sleepycat/je/rep/elections/TimebasedProposalGenerator;->machineId:Ljava/lang/String;

    .line 134
    .end local v5    # "randVal":Ljava/math/BigInteger;
    .end local v6    # "addrVal":Ljava/math/BigInteger;
    goto :goto_5

    .line 140
    :cond_4
    new-instance v6, Ljava/math/BigInteger;

    new-instance v7, Ljava/security/SecureRandom;

    invoke-direct {v7}, Ljava/security/SecureRandom;-><init>()V

    invoke-direct {v6, v5, v7}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    move-object v5, v6

    .line 142
    .restart local v5    # "randVal":Ljava/math/BigInteger;
    new-array v1, v1, [Ljava/lang/Object;

    aput-object v5, v1, v3

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sleepycat/je/rep/elections/TimebasedProposalGenerator;->machineId:Ljava/lang/String;

    .line 144
    .end local v0    # "localHost":Ljava/net/InetAddress;
    .end local v2    # "localAddress":[B
    .end local v5    # "randVal":Ljava/math/BigInteger;
    :goto_5
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 162
    sget-object v0, Lcom/sleepycat/je/rep/elections/TimebasedProposalGenerator;->uniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sleepycat/je/rep/elections/TimebasedProposalGenerator;-><init>(I)V

    .line 163
    return-void
.end method

.method constructor <init>(I)V
    .locals 2
    .param p1, "locallyUniqueId"    # I

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/je/rep/elections/TimebasedProposalGenerator;->prevProposalTime:J

    .line 154
    iput p1, p0, Lcom/sleepycat/je/rep/elections/TimebasedProposalGenerator;->locallyUniqueId:I

    .line 155
    return-void
.end method

.method public static getParser()Lcom/sleepycat/je/rep/elections/Proposer$ProposalParser;
    .locals 1

    .line 191
    invoke-static {}, Lcom/sleepycat/je/rep/elections/TimebasedProposalGenerator$StringProposal;->access$000()Lcom/sleepycat/je/rep/elections/Proposer$ProposalParser;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public nextProposal()Lcom/sleepycat/je/rep/elections/Proposer$Proposal;
    .locals 7

    .line 172
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 173
    .local v0, "proposalTime":J
    monitor-enter p0

    .line 174
    :try_start_0
    iget-wide v2, p0, Lcom/sleepycat/je/rep/elections/TimebasedProposalGenerator;->prevProposalTime:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 176
    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/sleepycat/je/rep/elections/TimebasedProposalGenerator;->prevProposalTime:J

    move-wide v0, v2

    .line 178
    :cond_0
    iput-wide v0, p0, Lcom/sleepycat/je/rep/elections/TimebasedProposalGenerator;->prevProposalTime:J

    .line 179
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    new-instance v2, Lcom/sleepycat/je/rep/elections/TimebasedProposalGenerator$StringProposal;

    const-string v3, "%016x%s%08x"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Lcom/sleepycat/je/rep/elections/TimebasedProposalGenerator;->machineId:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget v6, p0, Lcom/sleepycat/je/rep/elections/TimebasedProposalGenerator;->locallyUniqueId:I

    .line 181
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 180
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sleepycat/je/rep/elections/TimebasedProposalGenerator$StringProposal;-><init>(Ljava/lang/String;)V

    return-object v2

    .line 179
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
