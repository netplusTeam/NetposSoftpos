.class public Lorg/apache/sshd/common/random/JceRandom;
.super Lorg/apache/sshd/common/random/AbstractRandom;
.source "JceRandom.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "JCE"


# instance fields
.field private final random:Ljava/security/SecureRandom;

.field private tmp:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lorg/apache/sshd/common/random/AbstractRandom;-><init>()V

    .line 31
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/sshd/common/random/JceRandom;->tmp:[B

    .line 32
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lorg/apache/sshd/common/random/JceRandom;->random:Ljava/security/SecureRandom;

    .line 36
    return-void
.end method


# virtual methods
.method public declared-synchronized fill([BII)V
    .locals 2
    .param p1, "foo"    # [B
    .param p2, "start"    # I
    .param p3, "len"    # I

    monitor-enter p0

    .line 45
    if-nez p2, :cond_0

    :try_start_0
    array-length v0, p1

    if-ne p3, v0, :cond_0

    .line 46
    iget-object v0, p0, Lorg/apache/sshd/common/random/JceRandom;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    goto :goto_0

    .line 48
    .end local p0    # "this":Lorg/apache/sshd/common/random/JceRandom;
    :cond_0
    iget-object v0, p0, Lorg/apache/sshd/common/random/JceRandom;->tmp:[B

    array-length v0, v0

    if-le p3, v0, :cond_1

    .line 49
    new-array v0, p3, [B

    iput-object v0, p0, Lorg/apache/sshd/common/random/JceRandom;->tmp:[B

    .line 51
    :cond_1
    iget-object v0, p0, Lorg/apache/sshd/common/random/JceRandom;->random:Ljava/security/SecureRandom;

    iget-object v1, p0, Lorg/apache/sshd/common/random/JceRandom;->tmp:[B

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 52
    iget-object v0, p0, Lorg/apache/sshd/common/random/JceRandom;->tmp:[B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    :goto_0
    monitor-exit p0

    return-void

    .line 44
    .end local p1    # "foo":[B
    .end local p2    # "start":I
    .end local p3    # "len":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 40
    const-string v0, "JCE"

    return-object v0
.end method

.method public declared-synchronized random(I)I
    .locals 1
    .param p1, "n"    # I

    monitor-enter p0

    .line 58
    :try_start_0
    iget-object v0, p0, Lorg/apache/sshd/common/random/JceRandom;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0, p1}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 58
    .end local p0    # "this":Lorg/apache/sshd/common/random/JceRandom;
    .end local p1    # "n":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
