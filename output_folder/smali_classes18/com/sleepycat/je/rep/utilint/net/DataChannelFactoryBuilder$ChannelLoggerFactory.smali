.class Lcom/sleepycat/je/rep/utilint/net/DataChannelFactoryBuilder$ChannelLoggerFactory;
.super Ljava/lang/Object;
.source "DataChannelFactoryBuilder.java"

# interfaces
.implements Lcom/sleepycat/je/rep/net/LoggerFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/utilint/net/DataChannelFactoryBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ChannelLoggerFactory"
.end annotation


# instance fields
.field private final envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

.field private final formatter:Ljava/util/logging/Formatter;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;)V
    .locals 0
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "formatter"    # Ljava/util/logging/Formatter;

    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 357
    iput-object p1, p0, Lcom/sleepycat/je/rep/utilint/net/DataChannelFactoryBuilder$ChannelLoggerFactory;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 358
    iput-object p2, p0, Lcom/sleepycat/je/rep/utilint/net/DataChannelFactoryBuilder$ChannelLoggerFactory;->formatter:Ljava/util/logging/Formatter;

    .line 359
    return-void
.end method


# virtual methods
.method public getLogger(Ljava/lang/Class;)Lcom/sleepycat/je/rep/net/InstanceLogger;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/sleepycat/je/rep/net/InstanceLogger;"
        }
    .end annotation

    .line 367
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/net/DataChannelFactoryBuilder$ChannelLoggerFactory;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    if-nez v0, :cond_0

    .line 368
    invoke-static {p1}, Lcom/sleepycat/je/utilint/LoggerUtils;->getLoggerFormatterNeeded(Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v0

    .local v0, "logger":Ljava/util/logging/Logger;
    goto :goto_0

    .line 370
    .end local v0    # "logger":Ljava/util/logging/Logger;
    :cond_0
    invoke-static {p1}, Lcom/sleepycat/je/utilint/LoggerUtils;->getLogger(Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v0

    .line 372
    .restart local v0    # "logger":Ljava/util/logging/Logger;
    :goto_0
    new-instance v1, Lcom/sleepycat/je/rep/utilint/net/DataChannelFactoryBuilder$ChannelInstanceLogger;

    iget-object v2, p0, Lcom/sleepycat/je/rep/utilint/net/DataChannelFactoryBuilder$ChannelLoggerFactory;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    iget-object v3, p0, Lcom/sleepycat/je/rep/utilint/net/DataChannelFactoryBuilder$ChannelLoggerFactory;->formatter:Ljava/util/logging/Formatter;

    invoke-direct {v1, v2, v3, v0}, Lcom/sleepycat/je/rep/utilint/net/DataChannelFactoryBuilder$ChannelInstanceLogger;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Ljava/util/logging/Logger;)V

    return-object v1
.end method
