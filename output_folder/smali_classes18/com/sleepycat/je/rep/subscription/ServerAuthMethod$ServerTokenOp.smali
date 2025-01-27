.class Lcom/sleepycat/je/rep/subscription/ServerAuthMethod$ServerTokenOp;
.super Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerInitOp;
.source "ServerAuthMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/subscription/ServerAuthMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ServerTokenOp"
.end annotation


# static fields
.field private static final BUFFER_TOKEN_SIZE:I = 0x4


# instance fields
.field private final auth:Lcom/sleepycat/je/rep/subscription/StreamAuthenticator;

.field private tokenBuf:Ljava/nio/ByteBuffer;

.field private tokenSz:I

.field private final tokenSzBuf:Ljava/nio/ByteBuffer;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerHandshake;Lcom/sleepycat/je/rep/subscription/StreamAuthenticator;)V
    .locals 1
    .param p1, "initState"    # Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerHandshake;
    .param p2, "auth"    # Lcom/sleepycat/je/rep/subscription/StreamAuthenticator;

    .line 72
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerInitOp;-><init>(Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerHandshake;)V

    .line 64
    nop

    .line 65
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/subscription/ServerAuthMethod$ServerTokenOp;->tokenSzBuf:Ljava/nio/ByteBuffer;

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/rep/subscription/ServerAuthMethod$ServerTokenOp;->tokenBuf:Ljava/nio/ByteBuffer;

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/je/rep/subscription/ServerAuthMethod$ServerTokenOp;->tokenSz:I

    .line 73
    iput-object p2, p0, Lcom/sleepycat/je/rep/subscription/ServerAuthMethod$ServerTokenOp;->auth:Lcom/sleepycat/je/rep/subscription/StreamAuthenticator;

    .line 74
    return-void
.end method


# virtual methods
.method public processOp(Lcom/sleepycat/je/rep/net/DataChannel;)Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;
    .locals 3
    .param p1, "channel"    # Lcom/sleepycat/je/rep/net/DataChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/sleepycat/je/rep/subscription/ServerAuthMethod$ServerTokenOp;->tokenBuf:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_2

    .line 84
    iget-object v0, p0, Lcom/sleepycat/je/rep/subscription/ServerAuthMethod$ServerTokenOp;->tokenSzBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, v0}, Lcom/sleepycat/je/rep/subscription/ServerAuthMethod$ServerTokenOp;->fillBuffer(Lcom/sleepycat/je/rep/net/DataChannel;Ljava/nio/ByteBuffer;)Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;

    move-result-object v0

    .line 85
    .local v0, "readResult":Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;
    sget-object v1, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;->DONE:Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;

    if-eq v0, v1, :cond_0

    .line 86
    return-object v0

    .line 90
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/je/rep/subscription/ServerAuthMethod$ServerTokenOp;->tokenSzBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 91
    iget-object v1, p0, Lcom/sleepycat/je/rep/subscription/ServerAuthMethod$ServerTokenOp;->tokenSzBuf:Ljava/nio/ByteBuffer;

    invoke-static {v1}, Lcom/sleepycat/je/log/LogUtils;->readInt(Ljava/nio/ByteBuffer;)I

    move-result v1

    iput v1, p0, Lcom/sleepycat/je/rep/subscription/ServerAuthMethod$ServerTokenOp;->tokenSz:I

    .line 93
    if-gtz v1, :cond_1

    .line 95
    sget-object v1, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;->REJECT:Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;

    return-object v1

    .line 98
    :cond_1
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/je/rep/subscription/ServerAuthMethod$ServerTokenOp;->tokenBuf:Ljava/nio/ByteBuffer;

    .line 102
    .end local v0    # "readResult":Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;
    :cond_2
    iget-object v0, p0, Lcom/sleepycat/je/rep/subscription/ServerAuthMethod$ServerTokenOp;->tokenBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, v0}, Lcom/sleepycat/je/rep/subscription/ServerAuthMethod$ServerTokenOp;->fillBuffer(Lcom/sleepycat/je/rep/net/DataChannel;Ljava/nio/ByteBuffer;)Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;

    move-result-object v0

    .line 103
    .restart local v0    # "readResult":Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;
    sget-object v1, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;->DONE:Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;

    if-eq v0, v1, :cond_3

    .line 104
    return-object v0

    .line 107
    :cond_3
    iget-object v1, p0, Lcom/sleepycat/je/rep/subscription/ServerAuthMethod$ServerTokenOp;->tokenBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 108
    iget-object v1, p0, Lcom/sleepycat/je/rep/subscription/ServerAuthMethod$ServerTokenOp;->tokenBuf:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/sleepycat/je/rep/subscription/ServerAuthMethod$ServerTokenOp;->tokenSz:I

    invoke-static {v1, v2}, Lcom/sleepycat/je/log/LogUtils;->readBytesNoLength(Ljava/nio/ByteBuffer;I)[B

    move-result-object v1

    .line 109
    .local v1, "token":[B
    iget-object v2, p0, Lcom/sleepycat/je/rep/subscription/ServerAuthMethod$ServerTokenOp;->auth:Lcom/sleepycat/je/rep/subscription/StreamAuthenticator;

    invoke-interface {v2, v1}, Lcom/sleepycat/je/rep/subscription/StreamAuthenticator;->setToken([B)V

    .line 110
    iget-object v2, p0, Lcom/sleepycat/je/rep/subscription/ServerAuthMethod$ServerTokenOp;->auth:Lcom/sleepycat/je/rep/subscription/StreamAuthenticator;

    invoke-interface {v2}, Lcom/sleepycat/je/rep/subscription/StreamAuthenticator;->authenticate()Z

    move-result v2

    if-nez v2, :cond_4

    .line 111
    sget-object v2, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;->REJECT:Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;

    return-object v2

    .line 113
    :cond_4
    sget-object v2, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;->DONE:Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;

    return-object v2
.end method
