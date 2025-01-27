.class final Lio/netty/util/internal/ThreadLocalRandom$1;
.super Ljava/lang/Thread;
.source "ThreadLocalRandom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/internal/ThreadLocalRandom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;

    .line 84
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 87
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 88
    .local v0, "random":Ljava/security/SecureRandom;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object v2

    .line 89
    .local v2, "seed":[B
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Lio/netty/util/internal/ThreadLocalRandom;->access$002(J)J

    .line 90
    const/4 v3, 0x0

    aget-byte v3, v2, v3

    int-to-long v3, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    const/16 v7, 0x38

    shl-long/2addr v3, v7

    const/4 v7, 0x1

    aget-byte v7, v2, v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    const/16 v9, 0x30

    shl-long/2addr v7, v9

    or-long/2addr v3, v7

    const/4 v7, 0x2

    aget-byte v7, v2, v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    const/16 v9, 0x28

    shl-long/2addr v7, v9

    or-long/2addr v3, v7

    const/4 v7, 0x3

    aget-byte v7, v2, v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    const/16 v9, 0x20

    shl-long/2addr v7, v9

    or-long/2addr v3, v7

    const/4 v7, 0x4

    aget-byte v7, v2, v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    const/16 v9, 0x18

    shl-long/2addr v7, v9

    or-long/2addr v3, v7

    const/4 v7, 0x5

    aget-byte v7, v2, v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    const/16 v9, 0x10

    shl-long/2addr v7, v9

    or-long/2addr v3, v7

    const/4 v7, 0x6

    aget-byte v7, v2, v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    shl-long/2addr v7, v1

    or-long/2addr v3, v7

    const/4 v1, 0x7

    aget-byte v1, v2, v1

    int-to-long v7, v1

    and-long/2addr v5, v7

    or-long/2addr v3, v5

    .line 98
    .local v3, "s":J
    invoke-static {}, Lio/netty/util/internal/ThreadLocalRandom;->access$100()Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 99
    return-void
.end method
