.class public Lcom/sleepycat/je/util/LogVerificationReadableByteChannel;
.super Ljava/lang/Object;
.source "LogVerificationReadableByteChannel.java"

# interfaces
.implements Ljava/nio/channels/ReadableByteChannel;


# static fields
.field private static final TEMP_SIZE:I = 0x2000


# instance fields
.field private final channel:Ljava/nio/channels/ReadableByteChannel;

.field private tempArray:[B

.field private final verifier:Lcom/sleepycat/je/utilint/LogVerifier;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/Environment;Ljava/nio/channels/ReadableByteChannel;Ljava/lang/String;)V
    .locals 1
    .param p1, "env"    # Lcom/sleepycat/je/Environment;
    .param p2, "channel"    # Ljava/nio/channels/ReadableByteChannel;
    .param p3, "fileName"    # Ljava/lang/String;

    .line 124
    invoke-static {p1}, Lcom/sleepycat/je/DbInternal;->getNonNullEnvImpl(Lcom/sleepycat/je/Environment;)Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/sleepycat/je/util/LogVerificationReadableByteChannel;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/nio/channels/ReadableByteChannel;Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/nio/channels/ReadableByteChannel;Ljava/lang/String;)V
    .locals 1
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "channel"    # Ljava/nio/channels/ReadableByteChannel;
    .param p3, "fileName"    # Ljava/lang/String;

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput-object p2, p0, Lcom/sleepycat/je/util/LogVerificationReadableByteChannel;->channel:Ljava/nio/channels/ReadableByteChannel;

    .line 151
    new-instance v0, Lcom/sleepycat/je/utilint/LogVerifier;

    invoke-direct {v0, p1, p3}, Lcom/sleepycat/je/utilint/LogVerifier;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sleepycat/je/util/LogVerificationReadableByteChannel;->verifier:Lcom/sleepycat/je/utilint/LogVerifier;

    .line 152
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 204
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/util/LogVerificationReadableByteChannel;->channel:Ljava/nio/channels/ReadableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/ReadableByteChannel;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    monitor-exit p0

    return-void

    .line 203
    .end local p0    # "this":Lcom/sleepycat/je/util/LogVerificationReadableByteChannel;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isOpen()Z
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/sleepycat/je/util/LogVerificationReadableByteChannel;->channel:Ljava/nio/channels/ReadableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/ReadableByteChannel;->isOpen()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized read(Ljava/nio/ByteBuffer;)I
    .locals 8
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 170
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 171
    .local v0, "start":I
    iget-object v1, p0, Lcom/sleepycat/je/util/LogVerificationReadableByteChannel;->channel:Ljava/nio/channels/ReadableByteChannel;

    invoke-interface {v1, p1}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 172
    .local v1, "count":I
    if-gez v1, :cond_0

    .line 173
    iget-object v2, p0, Lcom/sleepycat/je/util/LogVerificationReadableByteChannel;->verifier:Lcom/sleepycat/je/utilint/LogVerifier;

    invoke-virtual {v2}, Lcom/sleepycat/je/utilint/LogVerifier;->verifyAtEof()V

    goto :goto_1

    .line 175
    .end local p0    # "this":Lcom/sleepycat/je/util/LogVerificationReadableByteChannel;
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 176
    iget-object v2, p0, Lcom/sleepycat/je/util/LogVerificationReadableByteChannel;->verifier:Lcom/sleepycat/je/utilint/LogVerifier;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v2, v3, v4, v1}, Lcom/sleepycat/je/utilint/LogVerifier;->verify([BII)V

    goto :goto_1

    .line 179
    :cond_1
    iget-object v2, p0, Lcom/sleepycat/je/util/LogVerificationReadableByteChannel;->tempArray:[B

    const/16 v3, 0x2000

    if-nez v2, :cond_2

    .line 180
    new-array v2, v3, [B

    iput-object v2, p0, Lcom/sleepycat/je/util/LogVerificationReadableByteChannel;->tempArray:[B

    .line 182
    :cond_2
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 183
    move v2, v1

    .line 184
    .local v2, "len":I
    :goto_0
    if-lez v2, :cond_3

    .line 185
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 186
    .local v4, "chunk":I
    iget-object v5, p0, Lcom/sleepycat/je/util/LogVerificationReadableByteChannel;->tempArray:[B

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 187
    iget-object v5, p0, Lcom/sleepycat/je/util/LogVerificationReadableByteChannel;->verifier:Lcom/sleepycat/je/utilint/LogVerifier;

    iget-object v7, p0, Lcom/sleepycat/je/util/LogVerificationReadableByteChannel;->tempArray:[B

    invoke-virtual {v5, v7, v6, v4}, Lcom/sleepycat/je/utilint/LogVerifier;->verify([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    sub-int/2addr v2, v4

    .line 189
    .end local v4    # "chunk":I
    goto :goto_0

    .line 192
    .end local v2    # "len":I
    :cond_3
    :goto_1
    monitor-exit p0

    return v1

    .line 169
    .end local v0    # "start":I
    .end local v1    # "count":I
    .end local p1    # "buffer":Ljava/nio/ByteBuffer;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
