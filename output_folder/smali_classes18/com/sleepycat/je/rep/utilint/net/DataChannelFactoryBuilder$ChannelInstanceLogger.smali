.class Lcom/sleepycat/je/rep/utilint/net/DataChannelFactoryBuilder$ChannelInstanceLogger;
.super Ljava/lang/Object;
.source "DataChannelFactoryBuilder.java"

# interfaces
.implements Lcom/sleepycat/je/rep/net/InstanceLogger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/utilint/net/DataChannelFactoryBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ChannelInstanceLogger"
.end annotation


# instance fields
.field private final envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

.field private final formatter:Ljava/util/logging/Formatter;

.field private final logger:Ljava/util/logging/Logger;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Ljava/util/logging/Logger;)V
    .locals 0
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "formatter"    # Ljava/util/logging/Formatter;
    .param p3, "logger"    # Ljava/util/logging/Logger;

    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 398
    iput-object p1, p0, Lcom/sleepycat/je/rep/utilint/net/DataChannelFactoryBuilder$ChannelInstanceLogger;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 399
    iput-object p2, p0, Lcom/sleepycat/je/rep/utilint/net/DataChannelFactoryBuilder$ChannelInstanceLogger;->formatter:Ljava/util/logging/Formatter;

    .line 400
    iput-object p3, p0, Lcom/sleepycat/je/rep/utilint/net/DataChannelFactoryBuilder$ChannelInstanceLogger;->logger:Ljava/util/logging/Logger;

    .line 401
    return-void
.end method


# virtual methods
.method public log(Ljava/util/logging/Level;Ljava/lang/String;)V
    .locals 3
    .param p1, "logLevel"    # Ljava/util/logging/Level;
    .param p2, "msg"    # Ljava/lang/String;

    .line 408
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/net/DataChannelFactoryBuilder$ChannelInstanceLogger;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/net/DataChannelFactoryBuilder$ChannelInstanceLogger;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    iget-object v2, p0, Lcom/sleepycat/je/rep/utilint/net/DataChannelFactoryBuilder$ChannelInstanceLogger;->formatter:Ljava/util/logging/Formatter;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 409
    return-void
.end method
