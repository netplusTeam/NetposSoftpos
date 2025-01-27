.class Lcom/sleepycat/je/rep/subscription/ClientAuthMethod$ServerTokenOp;
.super Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerInitOp;
.source "ClientAuthMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/subscription/ClientAuthMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ServerTokenOp"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sleepycat/je/rep/subscription/ClientAuthMethod;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/rep/subscription/ClientAuthMethod;Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerHandshake;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/subscription/ClientAuthMethod;
    .param p2, "initState"    # Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerHandshake;

    .line 112
    iput-object p1, p0, Lcom/sleepycat/je/rep/subscription/ClientAuthMethod$ServerTokenOp;->this$0:Lcom/sleepycat/je/rep/subscription/ClientAuthMethod;

    .line 113
    invoke-direct {p0, p2}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerInitOp;-><init>(Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerHandshake;)V

    .line 114
    return-void
.end method


# virtual methods
.method public processOp(Lcom/sleepycat/je/rep/net/DataChannel;)Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;
    .locals 1
    .param p1, "channel"    # Lcom/sleepycat/je/rep/net/DataChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    sget-object v0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;->FAIL:Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;

    return-object v0
.end method
