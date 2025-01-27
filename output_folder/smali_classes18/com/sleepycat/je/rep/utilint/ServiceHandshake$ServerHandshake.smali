.class public Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerHandshake;
.super Ljava/lang/Object;
.source "ServiceHandshake.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/utilint/ServiceHandshake;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServerHandshake"
.end annotation


# instance fields
.field private final authInfo:[Lcom/sleepycat/je/rep/utilint/ServiceHandshake$AuthenticationMethod;

.field private final channel:Lcom/sleepycat/je/rep/net/DataChannel;

.field private currentOp:Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerInitOp;

.field private final dispatcher:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;

.field private serviceName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/rep/net/DataChannel;Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;[Lcom/sleepycat/je/rep/utilint/ServiceHandshake$AuthenticationMethod;)V
    .locals 1
    .param p1, "dataChannel"    # Lcom/sleepycat/je/rep/net/DataChannel;
    .param p2, "dispatcher"    # Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;
    .param p3, "authInfo"    # [Lcom/sleepycat/je/rep/utilint/ServiceHandshake$AuthenticationMethod;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerHandshake;->channel:Lcom/sleepycat/je/rep/net/DataChannel;

    .line 109
    iput-object p2, p0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerHandshake;->dispatcher:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;

    .line 110
    iput-object p3, p0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerHandshake;->authInfo:[Lcom/sleepycat/je/rep/utilint/ServiceHandshake$AuthenticationMethod;

    .line 111
    new-instance v0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ReceiveNameOp;

    invoke-direct {v0, p0}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ReceiveNameOp;-><init>(Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerHandshake;)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerHandshake;->currentOp:Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerInitOp;

    .line 112
    return-void
.end method


# virtual methods
.method getChannel()Lcom/sleepycat/je/rep/net/DataChannel;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerHandshake;->channel:Lcom/sleepycat/je/rep/net/DataChannel;

    return-object v0
.end method

.method getServiceName()Ljava/lang/String;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerHandshake;->serviceName:Ljava/lang/String;

    return-object v0
.end method

.method logMsg(Ljava/util/logging/Level;ZLjava/lang/String;)V
    .locals 1
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "noteError"    # Z
    .param p3, "msg"    # Ljava/lang/String;

    .line 184
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerHandshake;->dispatcher:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->logMsg(Ljava/util/logging/Level;ZLjava/lang/String;)V

    .line 185
    return-void
.end method

.method process()Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerHandshake;->currentOp:Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerInitOp;

    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerHandshake;->channel:Lcom/sleepycat/je/rep/net/DataChannel;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerInitOp;->processOp(Lcom/sleepycat/je/rep/net/DataChannel;)Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;

    move-result-object v0

    .line 145
    .local v0, "result":Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;
    sget-object v1, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;->DONE:Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;

    if-eq v0, v1, :cond_0

    .line 146
    return-object v0

    .line 149
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerHandshake;->channel:Lcom/sleepycat/je/rep/net/DataChannel;

    invoke-interface {v1}, Lcom/sleepycat/je/rep/net/DataChannel;->isTrustCapable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 150
    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerHandshake;->channel:Lcom/sleepycat/je/rep/net/DataChannel;

    invoke-interface {v1}, Lcom/sleepycat/je/rep/net/DataChannel;->isTrusted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 156
    sget-object v1, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;->DONE:Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;

    return-object v1

    .line 158
    :cond_1
    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const/4 v2, 0x0

    const-string v3, "DataChannel is trust-capable but is not trusted"

    invoke-virtual {p0, v1, v2, v3}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerHandshake;->logMsg(Ljava/util/logging/Level;ZLjava/lang/String;)V

    .line 169
    :cond_2
    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerHandshake;->currentOp:Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerInitOp;

    instance-of v1, v1, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$RequireAuthenticateOp;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerHandshake;->authInfo:[Lcom/sleepycat/je/rep/utilint/ServiceHandshake$AuthenticationMethod;

    if-nez v1, :cond_3

    goto :goto_0

    .line 179
    :cond_3
    new-instance v2, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$RequireAuthenticateOp;

    invoke-direct {v2, p0, v1}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$RequireAuthenticateOp;-><init>(Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerHandshake;[Lcom/sleepycat/je/rep/utilint/ServiceHandshake$AuthenticationMethod;)V

    iput-object v2, p0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerHandshake;->currentOp:Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerInitOp;

    .line 180
    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerHandshake;->channel:Lcom/sleepycat/je/rep/net/DataChannel;

    invoke-virtual {v2, v1}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerInitOp;->processOp(Lcom/sleepycat/je/rep/net/DataChannel;)Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;

    move-result-object v1

    return-object v1

    .line 175
    :cond_4
    :goto_0
    sget-object v1, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;->DONE:Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;

    return-object v1
.end method

.method setServiceName(Ljava/lang/String;)V
    .locals 0
    .param p1, "serviceName"    # Ljava/lang/String;

    .line 123
    iput-object p1, p0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerHandshake;->serviceName:Ljava/lang/String;

    .line 124
    return-void
.end method
