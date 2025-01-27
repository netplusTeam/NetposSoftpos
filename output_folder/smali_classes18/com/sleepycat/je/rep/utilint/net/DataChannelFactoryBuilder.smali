.class public Lcom/sleepycat/je/rep/utilint/net/DataChannelFactoryBuilder;
.super Ljava/lang/Object;
.source "DataChannelFactoryBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/rep/utilint/net/DataChannelFactoryBuilder$ChannelFormatter;,
        Lcom/sleepycat/je/rep/utilint/net/DataChannelFactoryBuilder$ChannelInstanceLogger;,
        Lcom/sleepycat/je/rep/utilint/net/DataChannelFactoryBuilder$ChannelLoggerFactory;,
        Lcom/sleepycat/je/rep/utilint/net/DataChannelFactoryBuilder$CtorArgSpec;
    }
.end annotation


# static fields
.field private static final factoryCount:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/sleepycat/je/rep/utilint/net/DataChannelFactoryBuilder;->factoryCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static construct(Lcom/sleepycat/je/rep/ReplicationNetworkConfig;)Lcom/sleepycat/je/rep/net/DataChannelFactory;
    .locals 2
    .param p0, "repNetConfig"    # Lcom/sleepycat/je/rep/ReplicationNetworkConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 74
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/sleepycat/je/rep/utilint/net/DataChannelFactoryBuilder;->construct(Lcom/sleepycat/je/rep/ReplicationNetworkConfig;Ljava/lang/String;)Lcom/sleepycat/je/rep/net/DataChannelFactory;

    move-result-object v0

    return-object v0
.end method

.method public static construct(Lcom/sleepycat/je/rep/ReplicationNetworkConfig;Lcom/sleepycat/je/rep/net/LoggerFactory;)Lcom/sleepycat/je/rep/net/DataChannelFactory;
    .locals 7
    .param p0, "repNetConfig"    # Lcom/sleepycat/je/rep/ReplicationNetworkConfig;
    .param p1, "loggerFactory"    # Lcom/sleepycat/je/rep/net/LoggerFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 146
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/ReplicationNetworkConfig;->getChannelType()Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, "channelType":Ljava/lang/String;
    sget-object v1, Lcom/sleepycat/je/rep/utilint/net/DataChannelFactoryBuilder;->factoryCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    .line 152
    .local v1, "factoryIndex":I
    if-nez p1, :cond_1

    .line 153
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/ReplicationNetworkConfig;->getLogName()Ljava/lang/String;

    move-result-object v2

    .line 154
    .local v2, "logName":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 155
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 157
    :cond_0
    invoke-static {v2}, Lcom/sleepycat/je/rep/utilint/net/DataChannelFactoryBuilder;->makeLoggerFactory(Ljava/lang/String;)Lcom/sleepycat/je/rep/net/LoggerFactory;

    move-result-object p1

    .line 160
    .end local v2    # "logName":Ljava/lang/String;
    :cond_1
    new-instance v2, Lcom/sleepycat/je/rep/net/InstanceContext;

    invoke-direct {v2, p0, p1}, Lcom/sleepycat/je/rep/net/InstanceContext;-><init>(Lcom/sleepycat/je/rep/ReplicationNetworkConfig;Lcom/sleepycat/je/rep/net/LoggerFactory;)V

    .line 163
    .local v2, "context":Lcom/sleepycat/je/rep/net/InstanceContext;
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/ReplicationNetworkConfig;->getChannelFactoryClass()Ljava/lang/String;

    move-result-object v3

    .line 164
    .local v3, "factoryClass":Ljava/lang/String;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .line 178
    :cond_2
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/ReplicationNetworkConfig;->getChannelFactoryParams()Ljava/lang/String;

    move-result-object v4

    .line 179
    .local v4, "classParams":Ljava/lang/String;
    new-instance v5, Lcom/sleepycat/je/rep/net/InstanceParams;

    invoke-direct {v5, v2, v4}, Lcom/sleepycat/je/rep/net/InstanceParams;-><init>(Lcom/sleepycat/je/rep/net/InstanceContext;Ljava/lang/String;)V

    .line 181
    .local v5, "factoryParams":Lcom/sleepycat/je/rep/net/InstanceParams;
    invoke-static {v3, v5}, Lcom/sleepycat/je/rep/utilint/net/DataChannelFactoryBuilder;->construct(Ljava/lang/String;Lcom/sleepycat/je/rep/net/InstanceParams;)Lcom/sleepycat/je/rep/net/DataChannelFactory;

    move-result-object v6

    return-object v6

    .line 165
    .end local v4    # "classParams":Ljava/lang/String;
    .end local v5    # "factoryParams":Lcom/sleepycat/je/rep/net/InstanceParams;
    :cond_3
    :goto_0
    const-string v4, "basic"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    .line 166
    new-instance v4, Lcom/sleepycat/je/rep/utilint/net/SimpleChannelFactory;

    new-instance v6, Lcom/sleepycat/je/rep/net/InstanceParams;

    invoke-direct {v6, v2, v5}, Lcom/sleepycat/je/rep/net/InstanceParams;-><init>(Lcom/sleepycat/je/rep/net/InstanceContext;Ljava/lang/String;)V

    invoke-direct {v4, v6}, Lcom/sleepycat/je/rep/utilint/net/SimpleChannelFactory;-><init>(Lcom/sleepycat/je/rep/net/InstanceParams;)V

    return-object v4

    .line 170
    :cond_4
    const-string/jumbo v4, "ssl"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 171
    new-instance v4, Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory;

    new-instance v6, Lcom/sleepycat/je/rep/net/InstanceParams;

    invoke-direct {v6, v2, v5}, Lcom/sleepycat/je/rep/net/InstanceParams;-><init>(Lcom/sleepycat/je/rep/net/InstanceContext;Ljava/lang/String;)V

    invoke-direct {v4, v6}, Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory;-><init>(Lcom/sleepycat/je/rep/net/InstanceParams;)V

    return-object v4

    .line 174
    :cond_5
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The channelType setting \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' is not valid"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static construct(Lcom/sleepycat/je/rep/ReplicationNetworkConfig;Ljava/lang/String;)Lcom/sleepycat/je/rep/net/DataChannelFactory;
    .locals 4
    .param p0, "repNetConfig"    # Lcom/sleepycat/je/rep/ReplicationNetworkConfig;
    .param p1, "logContext"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 102
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/ReplicationNetworkConfig;->getLogName()Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "logName":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    :cond_0
    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Lcom/sleepycat/je/rep/net/LoggerFactory;

    invoke-static {p0, v1}, Lcom/sleepycat/je/rep/utilint/net/DataChannelFactoryBuilder;->construct(Lcom/sleepycat/je/rep/ReplicationNetworkConfig;Lcom/sleepycat/je/rep/net/LoggerFactory;)Lcom/sleepycat/je/rep/net/DataChannelFactory;

    move-result-object v1

    return-object v1

    .line 108
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 109
    move-object v1, p1

    .local v1, "logId":Ljava/lang/String;
    goto :goto_1

    .line 110
    .end local v1    # "logId":Ljava/lang/String;
    :cond_2
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 113
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "logId":Ljava/lang/String;
    goto :goto_1

    .line 111
    .end local v1    # "logId":Ljava/lang/String;
    :cond_4
    :goto_0
    move-object v1, v0

    .line 115
    .restart local v1    # "logId":Ljava/lang/String;
    :goto_1
    invoke-static {v1}, Lcom/sleepycat/je/rep/utilint/net/DataChannelFactoryBuilder;->makeLoggerFactory(Ljava/lang/String;)Lcom/sleepycat/je/rep/net/LoggerFactory;

    move-result-object v2

    .line 117
    .local v2, "loggerFactory":Lcom/sleepycat/je/rep/net/LoggerFactory;
    invoke-static {p0, v2}, Lcom/sleepycat/je/rep/utilint/net/DataChannelFactoryBuilder;->construct(Lcom/sleepycat/je/rep/ReplicationNetworkConfig;Lcom/sleepycat/je/rep/net/LoggerFactory;)Lcom/sleepycat/je/rep/net/DataChannelFactory;

    move-result-object v3

    return-object v3
.end method

.method private static construct(Ljava/lang/String;Lcom/sleepycat/je/rep/net/InstanceParams;)Lcom/sleepycat/je/rep/net/DataChannelFactory;
    .locals 6
    .param p0, "factoryClassName"    # Ljava/lang/String;
    .param p1, "factoryParams"    # Lcom/sleepycat/je/rep/net/InstanceParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 196
    const-class v0, Lcom/sleepycat/je/rep/net/DataChannelFactory;

    new-instance v1, Lcom/sleepycat/je/rep/utilint/net/DataChannelFactoryBuilder$CtorArgSpec;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Lcom/sleepycat/je/rep/net/InstanceParams;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-direct {v1, v3, v2}, Lcom/sleepycat/je/rep/utilint/net/DataChannelFactoryBuilder$CtorArgSpec;-><init>([Ljava/lang/Class;[Ljava/lang/Object;)V

    const-string v2, "data channel factory"

    invoke-static {p0, v0, v2, v1}, Lcom/sleepycat/je/rep/utilint/net/DataChannelFactoryBuilder;->constructObject(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Lcom/sleepycat/je/rep/utilint/net/DataChannelFactoryBuilder$CtorArgSpec;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/rep/net/DataChannelFactory;

    return-object v0
.end method

.method public static constructDefault()Lcom/sleepycat/je/rep/net/DataChannelFactory;
    .locals 1

    .line 48
    new-instance v0, Lcom/sleepycat/je/rep/utilint/net/SimpleChannelFactory;

    invoke-direct {v0}, Lcom/sleepycat/je/rep/utilint/net/SimpleChannelFactory;-><init>()V

    return-object v0
.end method

.method static constructObject(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Lcom/sleepycat/je/rep/utilint/net/DataChannelFactoryBuilder$CtorArgSpec;)Ljava/lang/Object;
    .locals 7
    .param p0, "instClassName"    # Ljava/lang/String;
    .param p2, "miDesc"    # Ljava/lang/String;
    .param p3, "ctorArgSpec"    # Lcom/sleepycat/je/rep/utilint/net/DataChannelFactoryBuilder$CtorArgSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Lcom/sleepycat/je/rep/utilint/net/DataChannelFactoryBuilder$CtorArgSpec;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 230
    .local p1, "mustImplement":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v0, "Error instantiating "

    const-string v1, " class "

    const/4 v2, 0x0

    .line 232
    .local v2, "instClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5

    move-object v2, v3

    .line 237
    nop

    .line 244
    :try_start_1
    invoke-static {p3}, Lcom/sleepycat/je/rep/utilint/net/DataChannelFactoryBuilder$CtorArgSpec;->access$000(Lcom/sleepycat/je/rep/utilint/net/DataChannelFactoryBuilder$CtorArgSpec;)[Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_4

    .line 249
    .local v3, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    nop

    .line 256
    :try_start_2
    invoke-static {p3}, Lcom/sleepycat/je/rep/utilint/net/DataChannelFactoryBuilder$CtorArgSpec;->access$100(Lcom/sleepycat/je/rep/utilint/net/DataChannelFactoryBuilder$CtorArgSpec;)[Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_0

    .line 280
    .local v0, "instObject":Ljava/lang/Object;
    nop

    .line 286
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 292
    return-object v0

    .line 287
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " does not implement "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 289
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 274
    .end local v0    # "instObject":Ljava/lang/Object;
    :catch_0
    move-exception v4

    .line 276
    .local v4, "ite":Ljava/lang/reflect/InvocationTargetException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". Exception within constructor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 268
    .end local v4    # "ite":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v4

    .line 270
    .local v4, "ie":Ljava/lang/InstantiationException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". Class is abstract?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 263
    .end local v4    # "ie":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v4

    .line 265
    .local v4, "iae":Ljava/lang/IllegalArgumentException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 257
    .end local v4    # "iae":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v4

    .line 259
    .local v4, "iae":Ljava/lang/IllegalAccessException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".  Not accessible?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 245
    .end local v3    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v4    # "iae":Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v0

    .line 246
    .local v0, "nsme":Ljava/lang/NoSuchMethodException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to find an appropriate constructor for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 233
    .end local v0    # "nsme":Ljava/lang/NoSuchMethodException;
    :catch_5
    move-exception v0

    .line 234
    .local v0, "cnfe":Ljava/lang/ClassNotFoundException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error resolving "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static makeLoggerFactory(Lcom/sleepycat/je/dbi/EnvironmentImpl;)Lcom/sleepycat/je/rep/net/LoggerFactory;
    .locals 2
    .param p0, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 301
    if-eqz p0, :cond_0

    .line 305
    new-instance v0, Lcom/sleepycat/je/rep/utilint/net/DataChannelFactoryBuilder$ChannelLoggerFactory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sleepycat/je/rep/utilint/net/DataChannelFactoryBuilder$ChannelLoggerFactory;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;)V

    return-object v0

    .line 302
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "envImpl must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static makeLoggerFactory(Ljava/lang/String;)Lcom/sleepycat/je/rep/net/LoggerFactory;
    .locals 3
    .param p0, "prefix"    # Ljava/lang/String;

    .line 314
    if-eqz p0, :cond_0

    .line 318
    new-instance v0, Lcom/sleepycat/je/rep/utilint/net/DataChannelFactoryBuilder$ChannelFormatter;

    invoke-direct {v0, p0}, Lcom/sleepycat/je/rep/utilint/net/DataChannelFactoryBuilder$ChannelFormatter;-><init>(Ljava/lang/String;)V

    .line 320
    .local v0, "formatter":Ljava/util/logging/Formatter;
    new-instance v1, Lcom/sleepycat/je/rep/utilint/net/DataChannelFactoryBuilder$ChannelLoggerFactory;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lcom/sleepycat/je/rep/utilint/net/DataChannelFactoryBuilder$ChannelLoggerFactory;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;)V

    return-object v1

    .line 315
    .end local v0    # "formatter":Ljava/util/logging/Formatter;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "prefix must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
