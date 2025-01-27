.class public Lorg/apache/sshd/common/channel/ChannelAsyncInputStream$IoReadFutureImpl;
.super Lorg/apache/sshd/common/future/DefaultVerifiableSshFuture;
.source "ChannelAsyncInputStream.java"

# interfaces
.implements Lorg/apache/sshd/common/io/IoReadFuture;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sshd/common/channel/ChannelAsyncInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IoReadFutureImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/sshd/common/future/DefaultVerifiableSshFuture<",
        "Lorg/apache/sshd/common/io/IoReadFuture;",
        ">;",
        "Lorg/apache/sshd/common/io/IoReadFuture;"
    }
.end annotation


# instance fields
.field private final buffer:Lorg/apache/sshd/common/util/buffer/Buffer;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lorg/apache/sshd/common/util/buffer/Buffer;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;

    .line 159
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/sshd/common/future/DefaultVerifiableSshFuture;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 160
    iput-object p2, p0, Lorg/apache/sshd/common/channel/ChannelAsyncInputStream$IoReadFutureImpl;->buffer:Lorg/apache/sshd/common/util/buffer/Buffer;

    .line 161
    return-void
.end method

.method static synthetic access$000(Lorg/apache/sshd/common/channel/ChannelAsyncInputStream$IoReadFutureImpl;)Lorg/apache/sshd/common/util/buffer/Buffer;
    .locals 1
    .param p0, "x0"    # Lorg/apache/sshd/common/channel/ChannelAsyncInputStream$IoReadFutureImpl;

    .line 155
    iget-object v0, p0, Lorg/apache/sshd/common/channel/ChannelAsyncInputStream$IoReadFutureImpl;->buffer:Lorg/apache/sshd/common/util/buffer/Buffer;

    return-object v0
.end method


# virtual methods
.method public getBuffer()Lorg/apache/sshd/common/util/buffer/Buffer;
    .locals 1

    .line 165
    iget-object v0, p0, Lorg/apache/sshd/common/channel/ChannelAsyncInputStream$IoReadFutureImpl;->buffer:Lorg/apache/sshd/common/util/buffer/Buffer;

    return-object v0
.end method

.method public getException()Ljava/lang/Throwable;
    .locals 2

    .line 201
    invoke-virtual {p0}, Lorg/apache/sshd/common/channel/ChannelAsyncInputStream$IoReadFutureImpl;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 202
    .local v0, "v":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 203
    move-object v1, v0

    check-cast v1, Ljava/lang/Throwable;

    return-object v1

    .line 205
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getRead()I
    .locals 5

    .line 182
    invoke-virtual {p0}, Lorg/apache/sshd/common/channel/ChannelAsyncInputStream$IoReadFutureImpl;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 183
    .local v0, "v":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-nez v1, :cond_4

    .line 185
    instance-of v1, v0, Ljava/lang/Error;

    if-nez v1, :cond_3

    .line 187
    instance-of v1, v0, Ljava/lang/Throwable;

    if-nez v1, :cond_2

    .line 189
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    .line 190
    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    return v1

    .line 192
    :cond_0
    new-instance v1, Lorg/apache/sshd/common/channel/ChannelAsyncInputStream$IoReadFutureImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/apache/sshd/common/channel/ChannelAsyncInputStream$IoReadFutureImpl$$ExternalSyntheticLambda0;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    if-nez v0, :cond_1

    const-string v4, "null"

    goto :goto_0

    .line 195
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    :goto_0
    aput-object v4, v2, v3

    .line 192
    const-string v3, "Unknown read value type: %s"

    invoke-virtual {p0, v1, v3, v2}, Lorg/apache/sshd/common/channel/ChannelAsyncInputStream$IoReadFutureImpl;->formatExceptionMessage(Ljava/util/function/Function;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/lang/IllegalStateException;

    throw v1

    .line 188
    :cond_2
    new-instance v1, Lorg/apache/sshd/common/RuntimeSshException;

    move-object v2, v0

    check-cast v2, Ljava/lang/Throwable;

    const-string v3, "Error reading from channel."

    invoke-direct {v1, v3, v2}, Lorg/apache/sshd/common/RuntimeSshException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 186
    :cond_3
    move-object v1, v0

    check-cast v1, Ljava/lang/Error;

    throw v1

    .line 184
    :cond_4
    move-object v1, v0

    check-cast v1, Ljava/lang/RuntimeException;

    throw v1
.end method

.method public bridge synthetic verify(J)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    invoke-virtual {p0, p1, p2}, Lorg/apache/sshd/common/channel/ChannelAsyncInputStream$IoReadFutureImpl;->verify(J)Lorg/apache/sshd/common/io/IoReadFuture;

    move-result-object p1

    return-object p1
.end method

.method public verify(J)Lorg/apache/sshd/common/io/IoReadFuture;
    .locals 9
    .param p1, "timeoutMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 171
    .local v0, "startTime":J
    const-class v2, Ljava/lang/Number;

    invoke-virtual {p0, v2, p1, p2}, Lorg/apache/sshd/common/channel/ChannelAsyncInputStream$IoReadFutureImpl;->verifyResult(Ljava/lang/Class;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    .line 172
    .local v2, "result":Ljava/lang/Number;
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    .line 173
    .local v3, "endTime":J
    iget-boolean v5, p0, Lorg/apache/sshd/common/channel/ChannelAsyncInputStream$IoReadFutureImpl;->debugEnabled:Z

    if-eqz v5, :cond_0

    .line 174
    iget-object v5, p0, Lorg/apache/sshd/common/channel/ChannelAsyncInputStream$IoReadFutureImpl;->log:Lorg/slf4j/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Read "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bytes after "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v7, v3, v0

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " nanos"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 177
    :cond_0
    return-object p0
.end method
