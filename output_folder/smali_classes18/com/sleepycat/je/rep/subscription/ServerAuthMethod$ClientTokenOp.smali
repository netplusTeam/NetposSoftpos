.class Lcom/sleepycat/je/rep/subscription/ServerAuthMethod$ClientTokenOp;
.super Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ClientInitOp;
.source "ServerAuthMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/subscription/ServerAuthMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClientTokenOp"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sleepycat/je/rep/subscription/ServerAuthMethod;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/rep/subscription/ServerAuthMethod;Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ClientHandshake;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/subscription/ServerAuthMethod;
    .param p2, "initState"    # Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ClientHandshake;

    .line 123
    iput-object p1, p0, Lcom/sleepycat/je/rep/subscription/ServerAuthMethod$ClientTokenOp;->this$0:Lcom/sleepycat/je/rep/subscription/ServerAuthMethod;

    .line 124
    invoke-direct {p0, p2}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ClientInitOp;-><init>(Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ClientHandshake;)V

    .line 125
    return-void
.end method


# virtual methods
.method public processOp(Lcom/sleepycat/je/rep/utilint/ServiceHandshake$IOAdapter;)Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;
    .locals 1
    .param p1, "ioAdapter"    # Lcom/sleepycat/je/rep/utilint/ServiceHandshake$IOAdapter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    sget-object v0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;->REJECT:Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;

    return-object v0
.end method
