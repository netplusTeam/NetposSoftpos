.class public abstract Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ClientInitOp;
.super Ljava/lang/Object;
.source "ServiceHandshake.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/utilint/ServiceHandshake;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ClientInitOp"
.end annotation


# instance fields
.field protected final initState:Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ClientHandshake;

.field private response:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;


# direct methods
.method protected constructor <init>(Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ClientHandshake;)V
    .locals 0
    .param p1, "initState"    # Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ClientHandshake;

    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 358
    iput-object p1, p0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ClientInitOp;->initState:Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ClientHandshake;

    .line 359
    return-void
.end method


# virtual methods
.method getResponse()Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;
    .locals 1

    .line 381
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ClientInitOp;->response:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;

    return-object v0
.end method

.method protected abstract processOp(Lcom/sleepycat/je/rep/utilint/ServiceHandshake$IOAdapter;)Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected setResponse(Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;)V
    .locals 0
    .param p1, "response"    # Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;

    .line 385
    iput-object p1, p0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ClientInitOp;->response:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;

    .line 386
    return-void
.end method
