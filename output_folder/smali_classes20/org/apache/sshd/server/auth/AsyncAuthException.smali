.class public Lorg/apache/sshd/server/auth/AsyncAuthException;
.super Lorg/apache/sshd/common/RuntimeSshException;
.source "AsyncAuthException.java"


# static fields
.field private static final serialVersionUID:J = 0x5d8dae849ab01dcdL


# instance fields
.field protected authed:Ljava/lang/Boolean;

.field protected listener:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lorg/apache/sshd/common/RuntimeSshException;-><init>()V

    .line 39
    return-void
.end method


# virtual methods
.method public addListener(Ljava/util/function/Consumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 75
    .local p1, "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/lang/Boolean;>;"
    monitor-enter p0

    .line 76
    :try_start_0
    iget-object v0, p0, Lorg/apache/sshd/server/auth/AsyncAuthException;->listener:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 77
    iput-object p1, p0, Lorg/apache/sshd/server/auth/AsyncAuthException;->listener:Ljava/lang/Object;

    goto :goto_0

    .line 78
    :cond_0
    instance-of v1, v0, Ljava/util/function/Consumer;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 79
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p1, v1, v0

    iput-object v1, p0, Lorg/apache/sshd/server/auth/AsyncAuthException;->listener:Ljava/lang/Object;

    goto :goto_0

    .line 81
    :cond_1
    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 82
    .local v0, "ol":[Ljava/lang/Object;
    array-length v1, v0

    .line 83
    .local v1, "l":I
    add-int/lit8 v3, v1, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 84
    .local v3, "nl":[Ljava/lang/Object;
    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 85
    aput-object p1, v3, v1

    .line 86
    iput-object v3, p0, Lorg/apache/sshd/server/auth/AsyncAuthException;->listener:Ljava/lang/Object;

    .line 88
    .end local v0    # "ol":[Ljava/lang/Object;
    .end local v1    # "l":I
    .end local v3    # "nl":[Ljava/lang/Object;
    :goto_0
    iget-object v0, p0, Lorg/apache/sshd/server/auth/AsyncAuthException;->authed:Ljava/lang/Boolean;

    .line 89
    .local v0, "result":Ljava/lang/Boolean;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    if-eqz v0, :cond_2

    .line 91
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 93
    :cond_2
    return-void

    .line 89
    .end local v0    # "result":Ljava/lang/Boolean;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected asListener(Ljava/lang/Object;)Ljava/util/function/Consumer;
    .locals 1
    .param p1, "listener"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/function/Consumer<",
            "-",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 70
    move-object v0, p1

    check-cast v0, Ljava/util/function/Consumer;

    return-object v0
.end method

.method public setAuthed(Z)V
    .locals 6
    .param p1, "authed"    # Z

    .line 43
    monitor-enter p0

    .line 44
    :try_start_0
    iget-object v0, p0, Lorg/apache/sshd/server/auth/AsyncAuthException;->authed:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 45
    monitor-exit p0

    return-void

    .line 47
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/server/auth/AsyncAuthException;->authed:Ljava/lang/Boolean;

    .line 48
    iget-object v0, p0, Lorg/apache/sshd/server/auth/AsyncAuthException;->listener:Ljava/lang/Object;

    .line 49
    .local v0, "listener":Ljava/lang/Object;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    if-eqz v0, :cond_3

    .line 52
    instance-of v1, v0, Ljava/util/function/Consumer;

    if-eqz v1, :cond_1

    .line 53
    invoke-virtual {p0, v0}, Lorg/apache/sshd/server/auth/AsyncAuthException;->asListener(Ljava/lang/Object;)Ljava/util/function/Consumer;

    move-result-object v1

    .line 54
    .local v1, "lst":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/lang/Boolean;>;"
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 55
    .end local v1    # "lst":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/lang/Boolean;>;"
    goto :goto_1

    .line 56
    :cond_1
    invoke-static {v0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    .line 57
    .local v1, "l":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 58
    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    .line 59
    .local v3, "lstInstance":Ljava/lang/Object;
    invoke-virtual {p0, v3}, Lorg/apache/sshd/server/auth/AsyncAuthException;->asListener(Ljava/lang/Object;)Ljava/util/function/Consumer;

    move-result-object v4

    .line 60
    .local v4, "lst":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/lang/Boolean;>;"
    if-eqz v4, :cond_2

    .line 61
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 57
    .end local v3    # "lstInstance":Ljava/lang/Object;
    .end local v4    # "lst":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/lang/Boolean;>;"
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 66
    .end local v1    # "l":I
    .end local v2    # "i":I
    :cond_3
    :goto_1
    return-void

    .line 49
    .end local v0    # "listener":Ljava/lang/Object;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
