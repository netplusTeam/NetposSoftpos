.class public Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ClientHandshake;
.super Ljava/lang/Object;
.source "ServiceHandshake.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/utilint/ServiceHandshake;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClientHandshake"
.end annotation


# instance fields
.field private authInfo:[Lcom/sleepycat/je/rep/utilint/ServiceHandshake$AuthenticationMethod;

.field private ioAdapter:Lcom/sleepycat/je/rep/utilint/ServiceHandshake$IOAdapter;

.field private serviceName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;[Lcom/sleepycat/je/rep/utilint/ServiceHandshake$AuthenticationMethod;Lcom/sleepycat/je/rep/utilint/ServiceHandshake$IOAdapter;)V
    .locals 0
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "authInfo"    # [Lcom/sleepycat/je/rep/utilint/ServiceHandshake$AuthenticationMethod;
    .param p3, "ioAdapter"    # Lcom/sleepycat/je/rep/utilint/ServiceHandshake$IOAdapter;

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    iput-object p2, p0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ClientHandshake;->authInfo:[Lcom/sleepycat/je/rep/utilint/ServiceHandshake$AuthenticationMethod;

    .line 200
    iput-object p1, p0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ClientHandshake;->serviceName:Ljava/lang/String;

    .line 201
    iput-object p3, p0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ClientHandshake;->ioAdapter:Lcom/sleepycat/je/rep/utilint/ServiceHandshake$IOAdapter;

    .line 202
    return-void
.end method


# virtual methods
.method process()Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 209
    new-instance v0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$SendNameOp;

    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ClientHandshake;->serviceName:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$SendNameOp;-><init>(Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ClientHandshake;Ljava/lang/String;)V

    .line 210
    .local v0, "nameOp":Lcom/sleepycat/je/rep/utilint/ServiceHandshake$SendNameOp;
    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ClientHandshake;->ioAdapter:Lcom/sleepycat/je/rep/utilint/ServiceHandshake$IOAdapter;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$SendNameOp;->processOp(Lcom/sleepycat/je/rep/utilint/ServiceHandshake$IOAdapter;)Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;

    move-result-object v1

    .line 211
    .local v1, "nameResult":Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;
    sget-object v2, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;->FAIL:Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;

    if-ne v1, v2, :cond_0

    .line 212
    sget-object v2, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;->INVALID:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;

    return-object v2

    .line 215
    :cond_0
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$SendNameOp;->getResponse()Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;

    move-result-object v2

    sget-object v3, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;->AUTHENTICATE:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;

    if-eq v2, v3, :cond_1

    .line 216
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$SendNameOp;->getResponse()Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;

    move-result-object v2

    return-object v2

    .line 219
    :cond_1
    new-instance v2, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$DoAuthenticateOp;

    iget-object v3, p0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ClientHandshake;->authInfo:[Lcom/sleepycat/je/rep/utilint/ServiceHandshake$AuthenticationMethod;

    invoke-direct {v2, p0, v3}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$DoAuthenticateOp;-><init>(Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ClientHandshake;[Lcom/sleepycat/je/rep/utilint/ServiceHandshake$AuthenticationMethod;)V

    .line 221
    .local v2, "authOp":Lcom/sleepycat/je/rep/utilint/ServiceHandshake$DoAuthenticateOp;
    iget-object v3, p0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ClientHandshake;->ioAdapter:Lcom/sleepycat/je/rep/utilint/ServiceHandshake$IOAdapter;

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$DoAuthenticateOp;->processOp(Lcom/sleepycat/je/rep/utilint/ServiceHandshake$IOAdapter;)Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;

    move-result-object v3

    .line 222
    .local v3, "authResult":Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;
    sget-object v4, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;->FAIL:Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;

    if-ne v3, v4, :cond_2

    .line 223
    sget-object v4, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;->INVALID:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;

    return-object v4

    .line 225
    :cond_2
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$DoAuthenticateOp;->getResponse()Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;

    move-result-object v4

    return-object v4
.end method
