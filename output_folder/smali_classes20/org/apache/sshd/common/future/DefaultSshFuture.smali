.class public Lorg/apache/sshd/common/future/DefaultSshFuture;
.super Lorg/apache/sshd/common/future/AbstractSshFuture;
.source "DefaultSshFuture.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/sshd/common/future/SshFuture;",
        ">",
        "Lorg/apache/sshd/common/future/AbstractSshFuture<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private listeners:Ljava/lang/Object;

.field private final lock:Ljava/lang/Object;

.field private result:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "lock"    # Ljava/lang/Object;

    .line 50
    .local p0, "this":Lorg/apache/sshd/common/future/DefaultSshFuture;, "Lorg/apache/sshd/common/future/DefaultSshFuture<TT;>;"
    invoke-direct {p0, p1}, Lorg/apache/sshd/common/future/AbstractSshFuture;-><init>(Ljava/lang/Object;)V

    .line 52
    if-eqz p2, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    iput-object v0, p0, Lorg/apache/sshd/common/future/DefaultSshFuture;->lock:Ljava/lang/Object;

    .line 53
    return-void
.end method

.method static synthetic lambda$await0$0(Ljava/lang/InterruptedException;Ljava/lang/String;)Ljava/io/InterruptedIOException;
    .locals 1
    .param p0, "e"    # Ljava/lang/InterruptedException;
    .param p1, "msg"    # Ljava/lang/String;

    .line 74
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0, p1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 75
    .local v0, "exc":Ljava/io/InterruptedIOException;
    invoke-virtual {v0, p0}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 76
    return-object v0
.end method


# virtual methods
.method public addListener(Lorg/apache/sshd/common/future/SshFutureListener;)Lorg/apache/sshd/common/future/SshFuture;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/future/SshFutureListener<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 146
    .local p0, "this":Lorg/apache/sshd/common/future/DefaultSshFuture;, "Lorg/apache/sshd/common/future/DefaultSshFuture<TT;>;"
    .local p1, "listener":Lorg/apache/sshd/common/future/SshFutureListener;, "Lorg/apache/sshd/common/future/SshFutureListener<TT;>;"
    const-string v0, "Missing listener argument"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 147
    const/4 v0, 0x0

    .line 148
    .local v0, "notifyNow":Z
    iget-object v1, p0, Lorg/apache/sshd/common/future/DefaultSshFuture;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 150
    :try_start_0
    iget-object v2, p0, Lorg/apache/sshd/common/future/DefaultSshFuture;->result:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 151
    const/4 v0, 0x1

    goto :goto_0

    .line 152
    :cond_0
    iget-object v2, p0, Lorg/apache/sshd/common/future/DefaultSshFuture;->listeners:Ljava/lang/Object;

    if-nez v2, :cond_1

    .line 153
    iput-object p1, p0, Lorg/apache/sshd/common/future/DefaultSshFuture;->listeners:Ljava/lang/Object;

    goto :goto_0

    .line 154
    :cond_1
    instance-of v3, v2, Lorg/apache/sshd/common/future/SshFutureListener;

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 155
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v4

    const/4 v2, 0x1

    aput-object p1, v3, v2

    iput-object v3, p0, Lorg/apache/sshd/common/future/DefaultSshFuture;->listeners:Ljava/lang/Object;

    goto :goto_0

    .line 157
    :cond_2
    check-cast v2, [Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    .line 158
    .local v2, "ol":[Ljava/lang/Object;
    array-length v3, v2

    .line 159
    .local v3, "l":I
    add-int/lit8 v5, v3, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 160
    .local v5, "nl":[Ljava/lang/Object;
    invoke-static {v2, v4, v5, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 161
    aput-object p1, v5, v3

    .line 162
    iput-object v5, p0, Lorg/apache/sshd/common/future/DefaultSshFuture;->listeners:Ljava/lang/Object;

    .line 164
    .end local v2    # "ol":[Ljava/lang/Object;
    .end local v3    # "l":I
    .end local v5    # "nl":[Ljava/lang/Object;
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    if-eqz v0, :cond_3

    .line 167
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/future/DefaultSshFuture;->notifyListener(Lorg/apache/sshd/common/future/SshFutureListener;)V

    .line 170
    :cond_3
    invoke-virtual {p0}, Lorg/apache/sshd/common/future/DefaultSshFuture;->asT()Lorg/apache/sshd/common/future/SshFuture;

    move-result-object v1

    return-object v1

    .line 164
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method protected await0(JZ)Ljava/lang/Object;
    .locals 17
    .param p1, "timeoutMillis"    # J
    .param p3, "interruptable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 57
    .local p0, "this":Lorg/apache/sshd/common/future/DefaultSshFuture;, "Lorg/apache/sshd/common/future/DefaultSshFuture<TT;>;"
    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ltz v0, :cond_0

    move v0, v6

    goto :goto_0

    :cond_0
    move v0, v7

    :goto_0
    const-string v8, "Negative timeout N/A: %d"

    invoke-static {v0, v8, v2, v3}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;J)V

    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 59
    .local v8, "startTime":J
    move-wide v10, v8

    .line 60
    .local v10, "curTime":J
    const-wide v12, 0x7fffffffffffffffL

    sub-long v14, v12, v2

    cmp-long v0, v14, v10

    if-gez v0, :cond_1

    goto :goto_1

    :cond_1
    add-long v12, v10, v2

    .line 62
    .local v12, "endTime":J
    :goto_1
    iget-object v14, v1, Lorg/apache/sshd/common/future/DefaultSshFuture;->lock:Ljava/lang/Object;

    monitor-enter v14

    .line 63
    :try_start_0
    iget-object v0, v1, Lorg/apache/sshd/common/future/DefaultSshFuture;->result:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_5

    cmp-long v4, v2, v4

    if-gtz v4, :cond_2

    goto :goto_3

    .line 69
    :cond_2
    :try_start_1
    iget-object v0, v1, Lorg/apache/sshd/common/future/DefaultSshFuture;->lock:Ljava/lang/Object;

    sub-long v4, v12, v10

    invoke-virtual {v0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    goto :goto_2

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/InterruptedException;
    if-nez p3, :cond_4

    .line 81
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_2
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-wide v10, v4

    .line 82
    iget-object v0, v1, Lorg/apache/sshd/common/future/DefaultSshFuture;->result:Ljava/lang/Object;

    if-nez v0, :cond_3

    cmp-long v4, v10, v12

    if-ltz v4, :cond_2

    .line 83
    :cond_3
    monitor-exit v14

    return-object v0

    .line 72
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-wide v10, v4

    .line 73
    new-instance v4, Lorg/apache/sshd/common/future/DefaultSshFuture$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0}, Lorg/apache/sshd/common/future/DefaultSshFuture$$ExternalSyntheticLambda0;-><init>(Ljava/lang/InterruptedException;)V

    const-string v5, "Interrupted after %d msec."

    new-array v6, v6, [Ljava/lang/Object;

    sub-long v15, v10, v8

    .line 77
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v6, v7

    .line 73
    invoke-virtual {v1, v4, v5, v6}, Lorg/apache/sshd/common/future/DefaultSshFuture;->formatExceptionMessage(Ljava/util/function/Function;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v4

    check-cast v4, Ljava/io/InterruptedIOException;

    .end local v8    # "startTime":J
    .end local v10    # "curTime":J
    .end local v12    # "endTime":J
    .end local p1    # "timeoutMillis":J
    .end local p3    # "interruptable":Z
    throw v4

    .line 64
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local v8    # "startTime":J
    .restart local v10    # "curTime":J
    .restart local v12    # "endTime":J
    .restart local p1    # "timeoutMillis":J
    .restart local p3    # "interruptable":Z
    :cond_5
    :goto_3
    monitor-exit v14

    return-object v0

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public cancel()V
    .locals 1

    .line 229
    .local p0, "this":Lorg/apache/sshd/common/future/DefaultSshFuture;, "Lorg/apache/sshd/common/future/DefaultSshFuture<TT;>;"
    sget-object v0, Lorg/apache/sshd/common/future/DefaultSshFuture;->CANCELED:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/future/DefaultSshFuture;->setValue(Ljava/lang/Object;)V

    .line 230
    return-void
.end method

.method public getNumRegisteredListeners()I
    .locals 5

    .line 116
    .local p0, "this":Lorg/apache/sshd/common/future/DefaultSshFuture;, "Lorg/apache/sshd/common/future/DefaultSshFuture<TT;>;"
    iget-object v0, p0, Lorg/apache/sshd/common/future/DefaultSshFuture;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 117
    :try_start_0
    iget-object v1, p0, Lorg/apache/sshd/common/future/DefaultSshFuture;->listeners:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 118
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 119
    :cond_0
    instance-of v2, v1, Lorg/apache/sshd/common/future/SshFutureListener;

    if-eqz v2, :cond_1

    .line 120
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 122
    :cond_1
    invoke-static {v1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    .line 123
    .local v1, "l":I
    const/4 v2, 0x0

    .line 124
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_3

    .line 125
    iget-object v4, p0, Lorg/apache/sshd/common/future/DefaultSshFuture;->listeners:Ljava/lang/Object;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 126
    add-int/lit8 v2, v2, 0x1

    .line 124
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 129
    .end local v3    # "i":I
    :cond_3
    monitor-exit v0

    return v2

    .line 131
    .end local v1    # "l":I
    .end local v2    # "count":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getValue()Ljava/lang/Object;
    .locals 3

    .line 139
    .local p0, "this":Lorg/apache/sshd/common/future/DefaultSshFuture;, "Lorg/apache/sshd/common/future/DefaultSshFuture<TT;>;"
    iget-object v0, p0, Lorg/apache/sshd/common/future/DefaultSshFuture;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 140
    :try_start_0
    iget-object v1, p0, Lorg/apache/sshd/common/future/DefaultSshFuture;->result:Ljava/lang/Object;

    sget-object v2, Lorg/apache/sshd/common/util/GenericUtils;->NULL:Ljava/lang/Object;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/apache/sshd/common/future/DefaultSshFuture;->result:Ljava/lang/Object;

    :goto_0
    monitor-exit v0

    return-object v1

    .line 141
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isCanceled()Z
    .locals 2

    .line 225
    .local p0, "this":Lorg/apache/sshd/common/future/DefaultSshFuture;, "Lorg/apache/sshd/common/future/DefaultSshFuture<TT;>;"
    invoke-virtual {p0}, Lorg/apache/sshd/common/future/DefaultSshFuture;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lorg/apache/sshd/common/future/DefaultSshFuture;->CANCELED:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDone()Z
    .locals 2

    .line 91
    .local p0, "this":Lorg/apache/sshd/common/future/DefaultSshFuture;, "Lorg/apache/sshd/common/future/DefaultSshFuture<TT;>;"
    iget-object v0, p0, Lorg/apache/sshd/common/future/DefaultSshFuture;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 92
    :try_start_0
    iget-object v1, p0, Lorg/apache/sshd/common/future/DefaultSshFuture;->result:Ljava/lang/Object;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 93
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected notifyListeners()V
    .locals 3

    .line 209
    .local p0, "this":Lorg/apache/sshd/common/future/DefaultSshFuture;, "Lorg/apache/sshd/common/future/DefaultSshFuture<TT;>;"
    iget-object v0, p0, Lorg/apache/sshd/common/future/DefaultSshFuture;->listeners:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 210
    instance-of v1, v0, Lorg/apache/sshd/common/future/SshFutureListener;

    if-eqz v1, :cond_0

    .line 211
    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/future/DefaultSshFuture;->asListener(Ljava/lang/Object;)Lorg/apache/sshd/common/future/SshFutureListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/future/DefaultSshFuture;->notifyListener(Lorg/apache/sshd/common/future/SshFutureListener;)V

    goto :goto_1

    .line 213
    :cond_0
    invoke-static {v0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 214
    .local v0, "l":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 215
    iget-object v2, p0, Lorg/apache/sshd/common/future/DefaultSshFuture;->listeners:Ljava/lang/Object;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/sshd/common/future/DefaultSshFuture;->asListener(Ljava/lang/Object;)Lorg/apache/sshd/common/future/SshFutureListener;

    move-result-object v2

    .line 216
    .local v2, "listener":Lorg/apache/sshd/common/future/SshFutureListener;, "Lorg/apache/sshd/common/future/SshFutureListener<TT;>;"
    if-eqz v2, :cond_1

    .line 217
    invoke-virtual {p0, v2}, Lorg/apache/sshd/common/future/DefaultSshFuture;->notifyListener(Lorg/apache/sshd/common/future/SshFutureListener;)V

    .line 214
    .end local v2    # "listener":Lorg/apache/sshd/common/future/SshFutureListener;, "Lorg/apache/sshd/common/future/SshFutureListener<TT;>;"
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 222
    .end local v0    # "l":I
    .end local v1    # "i":I
    :cond_2
    :goto_1
    return-void
.end method

.method public removeListener(Lorg/apache/sshd/common/future/SshFutureListener;)Lorg/apache/sshd/common/future/SshFuture;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/future/SshFutureListener<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 175
    .local p0, "this":Lorg/apache/sshd/common/future/DefaultSshFuture;, "Lorg/apache/sshd/common/future/DefaultSshFuture<TT;>;"
    .local p1, "listener":Lorg/apache/sshd/common/future/SshFutureListener;, "Lorg/apache/sshd/common/future/SshFutureListener<TT;>;"
    const-string v0, "No listener provided"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 177
    iget-object v0, p0, Lorg/apache/sshd/common/future/DefaultSshFuture;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 178
    :try_start_0
    iget-object v1, p0, Lorg/apache/sshd/common/future/DefaultSshFuture;->result:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 179
    invoke-virtual {p0}, Lorg/apache/sshd/common/future/DefaultSshFuture;->asT()Lorg/apache/sshd/common/future/SshFuture;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 182
    :cond_0
    iget-object v1, p0, Lorg/apache/sshd/common/future/DefaultSshFuture;->listeners:Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 183
    invoke-virtual {p0}, Lorg/apache/sshd/common/future/DefaultSshFuture;->asT()Lorg/apache/sshd/common/future/SshFuture;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 186
    :cond_1
    const/4 v2, 0x0

    if-ne v1, p1, :cond_2

    .line 187
    iput-object v2, p0, Lorg/apache/sshd/common/future/DefaultSshFuture;->listeners:Ljava/lang/Object;

    goto :goto_1

    .line 188
    :cond_2
    instance-of v3, v1, Lorg/apache/sshd/common/future/SshFutureListener;

    if-nez v3, :cond_4

    .line 189
    invoke-static {v1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    .line 190
    .local v1, "l":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_4

    .line 191
    iget-object v4, p0, Lorg/apache/sshd/common/future/DefaultSshFuture;->listeners:Ljava/lang/Object;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p1, :cond_3

    .line 192
    iget-object v4, p0, Lorg/apache/sshd/common/future/DefaultSshFuture;->listeners:Ljava/lang/Object;

    invoke-static {v4, v3, v2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 193
    goto :goto_1

    .line 190
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 197
    .end local v1    # "l":I
    .end local v3    # "i":I
    :cond_4
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    invoke-virtual {p0}, Lorg/apache/sshd/common/future/DefaultSshFuture;->asT()Lorg/apache/sshd/common/future/SshFuture;

    move-result-object v0

    return-object v0

    .line 197
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 2
    .param p1, "newValue"    # Ljava/lang/Object;

    .line 102
    .local p0, "this":Lorg/apache/sshd/common/future/DefaultSshFuture;, "Lorg/apache/sshd/common/future/DefaultSshFuture<TT;>;"
    iget-object v0, p0, Lorg/apache/sshd/common/future/DefaultSshFuture;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 104
    :try_start_0
    iget-object v1, p0, Lorg/apache/sshd/common/future/DefaultSshFuture;->result:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 105
    monitor-exit v0

    return-void

    .line 108
    :cond_0
    if-eqz p1, :cond_1

    move-object v1, p1

    goto :goto_0

    :cond_1
    sget-object v1, Lorg/apache/sshd/common/util/GenericUtils;->NULL:Ljava/lang/Object;

    :goto_0
    iput-object v1, p0, Lorg/apache/sshd/common/future/DefaultSshFuture;->result:Ljava/lang/Object;

    .line 109
    iget-object v1, p0, Lorg/apache/sshd/common/future/DefaultSshFuture;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 110
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    invoke-virtual {p0}, Lorg/apache/sshd/common/future/DefaultSshFuture;->notifyListeners()V

    .line 113
    return-void

    .line 110
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 234
    .local p0, "this":Lorg/apache/sshd/common/future/DefaultSshFuture;, "Lorg/apache/sshd/common/future/DefaultSshFuture<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lorg/apache/sshd/common/future/AbstractSshFuture;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/sshd/common/future/DefaultSshFuture;->result:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
