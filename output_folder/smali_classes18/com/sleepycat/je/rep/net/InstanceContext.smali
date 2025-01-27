.class public Lcom/sleepycat/je/rep/net/InstanceContext;
.super Ljava/lang/Object;
.source "InstanceContext.java"


# instance fields
.field private loggerFactory:Lcom/sleepycat/je/rep/net/LoggerFactory;

.field private final repNetConfig:Lcom/sleepycat/je/rep/ReplicationNetworkConfig;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/ReplicationNetworkConfig;Lcom/sleepycat/je/rep/net/LoggerFactory;)V
    .locals 0
    .param p1, "repNetConfig"    # Lcom/sleepycat/je/rep/ReplicationNetworkConfig;
    .param p2, "loggerFactory"    # Lcom/sleepycat/je/rep/net/LoggerFactory;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/sleepycat/je/rep/net/InstanceContext;->repNetConfig:Lcom/sleepycat/je/rep/ReplicationNetworkConfig;

    .line 37
    iput-object p2, p0, Lcom/sleepycat/je/rep/net/InstanceContext;->loggerFactory:Lcom/sleepycat/je/rep/net/LoggerFactory;

    .line 38
    return-void
.end method


# virtual methods
.method public final getLoggerFactory()Lcom/sleepycat/je/rep/net/LoggerFactory;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/sleepycat/je/rep/net/InstanceContext;->loggerFactory:Lcom/sleepycat/je/rep/net/LoggerFactory;

    return-object v0
.end method

.method public final getRepNetConfig()Lcom/sleepycat/je/rep/ReplicationNetworkConfig;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/sleepycat/je/rep/net/InstanceContext;->repNetConfig:Lcom/sleepycat/je/rep/ReplicationNetworkConfig;

    return-object v0
.end method
