.class Lcom/sleepycat/je/rep/utilint/ServiceHandshake$DoAuthenticateOp;
.super Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ClientInitOp;
.source "ServiceHandshake.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/utilint/ServiceHandshake;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DoAuthenticateOp"
.end annotation


# instance fields
.field private final authInfo:[Lcom/sleepycat/je/rep/utilint/ServiceHandshake$AuthenticationMethod;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ClientHandshake;[Lcom/sleepycat/je/rep/utilint/ServiceHandshake$AuthenticationMethod;)V
    .locals 0
    .param p1, "initState"    # Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ClientHandshake;
    .param p2, "authInfo"    # [Lcom/sleepycat/je/rep/utilint/ServiceHandshake$AuthenticationMethod;

    .line 657
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ClientInitOp;-><init>(Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ClientHandshake;)V

    .line 658
    iput-object p2, p0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$DoAuthenticateOp;->authInfo:[Lcom/sleepycat/je/rep/utilint/ServiceHandshake$AuthenticationMethod;

    .line 659
    return-void
.end method


# virtual methods
.method protected processOp(Lcom/sleepycat/je/rep/utilint/ServiceHandshake$IOAdapter;)Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;
    .locals 5
    .param p1, "ioAdapter"    # Lcom/sleepycat/je/rep/utilint/ServiceHandshake$IOAdapter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 668
    new-instance v0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$SendRequestOp;

    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$DoAuthenticateOp;->initState:Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ClientHandshake;

    iget-object v2, p0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$DoAuthenticateOp;->authInfo:[Lcom/sleepycat/je/rep/utilint/ServiceHandshake$AuthenticationMethod;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$SendRequestOp;-><init>(Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ClientHandshake;[Lcom/sleepycat/je/rep/utilint/ServiceHandshake$AuthenticationMethod;)V

    .line 669
    .local v0, "sendOp":Lcom/sleepycat/je/rep/utilint/ServiceHandshake$SendRequestOp;
    invoke-virtual {v0, p1}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$SendRequestOp;->processOp(Lcom/sleepycat/je/rep/utilint/ServiceHandshake$IOAdapter;)Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;

    move-result-object v1

    .line 670
    .local v1, "sendResult":Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;
    sget-object v2, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;->DONE:Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;

    if-eq v1, v2, :cond_0

    .line 671
    return-object v1

    .line 678
    :cond_0
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$SendRequestOp;->getAuthOp()Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ClientInitOp;

    move-result-object v2

    .line 679
    .local v2, "authOp":Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ClientInitOp;
    invoke-virtual {v2, p1}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ClientInitOp;->processOp(Lcom/sleepycat/je/rep/utilint/ServiceHandshake$IOAdapter;)Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;

    move-result-object v3

    .line 680
    .local v3, "authResult":Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;
    sget-object v4, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;->DONE:Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;

    if-ne v3, v4, :cond_1

    .line 681
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ClientInitOp;->getResponse()Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$DoAuthenticateOp;->setResponse(Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;)V

    .line 683
    :cond_1
    return-object v3
.end method
