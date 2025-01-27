.class public Lcom/sleepycat/je/rep/utilint/RepUtils;
.super Ljava/lang/Object;
.source "RepUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/rep/utilint/RepUtils$Clock;,
        Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareBlockingQueue;,
        Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareCountDownLatch;,
        Lcom/sleepycat/je/rep/utilint/RepUtils$NoConsistencyRequiredPolicyFormat;,
        Lcom/sleepycat/je/rep/utilint/RepUtils$TimeConsistencyPolicyFormat;,
        Lcom/sleepycat/je/rep/utilint/RepUtils$ConsistencyPolicyFormat;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final CHANNEL_EOF_MARKER:Lcom/sleepycat/je/rep/net/DataChannel;

.field public static final DEBUG_PRINT_THREAD:Z = true

.field public static final DEBUG_PRINT_TIME:Z = true

.field private static final consistencyPolicyFormats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/je/rep/utilint/RepUtils$ConsistencyPolicyFormat<",
            "*>;>;"
        }
    .end annotation
.end field

.field public static volatile openSocketChannelHook:Lcom/sleepycat/je/utilint/TestHook;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/je/utilint/TestHook<",
            "Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 54
    nop

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sleepycat/je/rep/utilint/RepUtils;->consistencyPolicyFormats:Ljava/util/Map;

    .line 67
    new-instance v0, Lcom/sleepycat/je/rep/utilint/RepUtils$TimeConsistencyPolicyFormat;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sleepycat/je/rep/utilint/RepUtils$TimeConsistencyPolicyFormat;-><init>(Lcom/sleepycat/je/rep/utilint/RepUtils$1;)V

    const-string v2, "TimeConsistencyPolicy"

    invoke-static {v2, v0}, Lcom/sleepycat/je/rep/utilint/RepUtils;->addConsistencyPolicyFormat(Ljava/lang/String;Lcom/sleepycat/je/rep/utilint/RepUtils$ConsistencyPolicyFormat;)V

    .line 69
    new-instance v0, Lcom/sleepycat/je/rep/utilint/RepUtils$NoConsistencyRequiredPolicyFormat;

    invoke-direct {v0, v1}, Lcom/sleepycat/je/rep/utilint/RepUtils$NoConsistencyRequiredPolicyFormat;-><init>(Lcom/sleepycat/je/rep/utilint/RepUtils$1;)V

    const-string v1, "NoConsistencyRequiredPolicy"

    invoke-static {v1, v0}, Lcom/sleepycat/je/rep/utilint/RepUtils;->addConsistencyPolicyFormat(Ljava/lang/String;Lcom/sleepycat/je/rep/utilint/RepUtils$ConsistencyPolicyFormat;)V

    .line 84
    :try_start_0
    new-instance v0, Lcom/sleepycat/je/rep/utilint/net/SimpleDataChannel;

    invoke-static {}, Ljava/nio/channels/SocketChannel;->open()Ljava/nio/channels/SocketChannel;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sleepycat/je/rep/utilint/net/SimpleDataChannel;-><init>(Ljava/nio/channels/SocketChannel;)V

    sput-object v0, Lcom/sleepycat/je/rep/utilint/RepUtils;->CHANNEL_EOF_MARKER:Lcom/sleepycat/je/rep/net/DataChannel;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    nop

    .line 88
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedException(Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v1

    throw v1
.end method

.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200(Ljava/lang/Exception;Lcom/sleepycat/je/dbi/EnvironmentImpl;)Lcom/sleepycat/je/DatabaseException;
    .locals 1
    .param p0, "x0"    # Ljava/lang/Exception;
    .param p1, "x1"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 54
    invoke-static {p0, p1}, Lcom/sleepycat/je/rep/utilint/RepUtils;->prepareTerminatingException(Ljava/lang/Exception;Lcom/sleepycat/je/dbi/EnvironmentImpl;)Lcom/sleepycat/je/DatabaseException;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/sleepycat/je/DatabaseException;)Lcom/sleepycat/je/DatabaseException;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/DatabaseException;

    .line 54
    invoke-static {p0}, Lcom/sleepycat/je/rep/utilint/RepUtils;->addLocalStackTrace(Lcom/sleepycat/je/DatabaseException;)Lcom/sleepycat/je/DatabaseException;

    move-result-object v0

    return-object v0
.end method

.method public static addConsistencyPolicyFormat(Ljava/lang/String;Lcom/sleepycat/je/rep/utilint/RepUtils$ConsistencyPolicyFormat;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sleepycat/je/rep/utilint/RepUtils$ConsistencyPolicyFormat<",
            "*>;)V"
        }
    .end annotation

    .line 109
    .local p1, "format":Lcom/sleepycat/je/rep/utilint/RepUtils$ConsistencyPolicyFormat;, "Lcom/sleepycat/je/rep/utilint/RepUtils$ConsistencyPolicyFormat<*>;"
    sget-object v0, Lcom/sleepycat/je/rep/utilint/RepUtils;->consistencyPolicyFormats:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 110
    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    return-void
.end method

.method private static addLocalStackTrace(Lcom/sleepycat/je/DatabaseException;)Lcom/sleepycat/je/DatabaseException;
    .locals 0
    .param p0, "e"    # Lcom/sleepycat/je/DatabaseException;

    .line 408
    invoke-virtual {p0}, Lcom/sleepycat/je/DatabaseException;->addRethrownStackTrace()V

    .line 409
    return-object p0
.end method

.method public static chainExceptionCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 2
    .param p0, "newt"    # Ljava/lang/Throwable;
    .param p1, "oldt"    # Ljava/lang/Throwable;

    .line 531
    move-object v0, p0

    .line 532
    .local v0, "tail":Ljava/lang/Throwable;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 533
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    .line 535
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 536
    return-object p0
.end method

.method public static varargs exec([Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "args"    # [Ljava/lang/String;

    .line 588
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 589
    .local v0, "bao":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/PrintStream;

    invoke-direct {v1, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 593
    .local v1, "output":Ljava/io/PrintStream;
    :try_start_0
    new-instance v2, Ljava/lang/ProcessBuilder;

    invoke-direct {v2, p0}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 594
    .local v2, "builder":Ljava/lang/ProcessBuilder;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    .line 596
    invoke-virtual {v2}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v3

    .line 597
    .local v3, "process":Ljava/lang/Process;
    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 598
    .local v4, "is":Ljava/io/InputStream;
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 599
    .local v5, "isr":Ljava/io/InputStreamReader;
    new-instance v6, Ljava/io/BufferedReader;

    invoke-direct {v6, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 602
    .local v6, "br":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    .local v8, "line":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 603
    invoke-virtual {v1, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 609
    .end local v2    # "builder":Ljava/lang/ProcessBuilder;
    .end local v3    # "process":Ljava/lang/Process;
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v5    # "isr":Ljava/io/InputStreamReader;
    .end local v6    # "br":Ljava/io/BufferedReader;
    .end local v8    # "line":Ljava/lang/String;
    :cond_0
    goto :goto_1

    .line 606
    :catch_0
    move-exception v2

    .line 607
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EXCEPTION: class:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " message:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 608
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 607
    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 611
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getPropertyString(Lcom/sleepycat/je/ReplicaConsistencyPolicy;)Ljava/lang/String;
    .locals 4
    .param p0, "policy"    # Lcom/sleepycat/je/ReplicaConsistencyPolicy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 204
    sget-object v0, Lcom/sleepycat/je/rep/utilint/RepUtils;->consistencyPolicyFormats:Ljava/util/Map;

    .line 205
    invoke-interface {p0}, Lcom/sleepycat/je/ReplicaConsistencyPolicy;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/rep/utilint/RepUtils$ConsistencyPolicyFormat;

    .line 206
    .local v0, "format":Lcom/sleepycat/je/rep/utilint/RepUtils$ConsistencyPolicyFormat;
    if-eqz v0, :cond_0

    .line 210
    invoke-interface {v0, p0}, Lcom/sleepycat/je/rep/utilint/RepUtils$ConsistencyPolicyFormat;->policyToString(Lcom/sleepycat/je/ReplicaConsistencyPolicy;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 207
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Policy: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cannot be used as a property"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getReplicaConsistencyPolicy(Ljava/lang/String;)Lcom/sleepycat/je/ReplicaConsistencyPolicy;
    .locals 6
    .param p0, "propertyValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 227
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 228
    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, "upperCasePropertyValue":Ljava/lang/String;
    sget-object v1, Lcom/sleepycat/je/rep/utilint/RepUtils;->consistencyPolicyFormats:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 231
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sleepycat/je/rep/utilint/RepUtils$ConsistencyPolicyFormat<*>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 232
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 233
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 234
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-le v4, v5, :cond_0

    .line 236
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 235
    invoke-static {v4}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 240
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sleepycat/je/rep/utilint/RepUtils$ConsistencyPolicyFormat<*>;>;"
    .end local v3    # "name":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 237
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sleepycat/je/rep/utilint/RepUtils$ConsistencyPolicyFormat<*>;>;"
    .restart local v3    # "name":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/rep/utilint/RepUtils$ConsistencyPolicyFormat;

    .line 238
    .local v1, "format":Lcom/sleepycat/je/rep/utilint/RepUtils$ConsistencyPolicyFormat;, "Lcom/sleepycat/je/rep/utilint/RepUtils$ConsistencyPolicyFormat<*>;"
    invoke-interface {v1, p0}, Lcom/sleepycat/je/rep/utilint/RepUtils$ConsistencyPolicyFormat;->stringToPolicy(Ljava/lang/String;)Lcom/sleepycat/je/ReplicaConsistencyPolicy;

    move-result-object v4

    return-object v4

    .line 241
    .end local v1    # "format":Lcom/sleepycat/je/rep/utilint/RepUtils$ConsistencyPolicyFormat;, "Lcom/sleepycat/je/rep/utilint/RepUtils$ConsistencyPolicyFormat<*>;"
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sleepycat/je/rep/utilint/RepUtils$ConsistencyPolicyFormat<*>;>;"
    .end local v3    # "name":Ljava/lang/String;
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid consistency policy: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static openBlockingChannel(Ljava/net/InetSocketAddress;Lcom/sleepycat/je/rep/net/DataChannelFactory;Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;)Lcom/sleepycat/je/rep/net/DataChannel;
    .locals 1
    .param p0, "addr"    # Ljava/net/InetSocketAddress;
    .param p1, "factory"    # Lcom/sleepycat/je/rep/net/DataChannelFactory;
    .param p2, "connectOpts"    # Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 517
    const/4 v0, 0x0

    invoke-interface {p1, p0, v0, p2}, Lcom/sleepycat/je/rep/net/DataChannelFactory;->connect(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;)Lcom/sleepycat/je/rep/net/DataChannel;

    move-result-object v0

    return-object v0
.end method

.method public static openSocketChannel(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;)Ljava/nio/channels/SocketChannel;
    .locals 4
    .param p0, "addr"    # Ljava/net/InetSocketAddress;
    .param p1, "localAddr"    # Ljava/net/InetSocketAddress;
    .param p2, "connectOpts"    # Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 481
    sget-object v0, Lcom/sleepycat/je/rep/utilint/RepUtils;->openSocketChannelHook:Lcom/sleepycat/je/utilint/TestHook;

    invoke-static {v0, p2}, Lcom/sleepycat/je/utilint/TestHookExecute;->doHookIfSet(Lcom/sleepycat/je/utilint/TestHook;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 483
    invoke-static {}, Ljava/nio/channels/SocketChannel;->open()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    .line 484
    .local v0, "channel":Ljava/nio/channels/SocketChannel;
    invoke-virtual {p2}, Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;->getBlocking()Z

    move-result v1

    .line 485
    .local v1, "blocking":Z
    invoke-virtual {v0, v1}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 487
    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v2

    .line 488
    .local v2, "socket":Ljava/net/Socket;
    invoke-virtual {p2}, Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;->getReceiveBufferSize()I

    move-result v3

    if-eqz v3, :cond_0

    .line 489
    invoke-virtual {p2}, Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;->getReceiveBufferSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    .line 491
    :cond_0
    invoke-virtual {p2}, Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;->getTcpNoDelay()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 492
    invoke-virtual {p2}, Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;->getReadTimeout()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 493
    invoke-virtual {p2}, Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;->getReuseAddr()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setReuseAddress(Z)V

    .line 494
    invoke-virtual {v2, p1}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 496
    if-eqz v1, :cond_1

    .line 497
    invoke-virtual {p2}, Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;->getOpenTimeout()I

    move-result v3

    invoke-virtual {v2, p0, v3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    goto :goto_0

    .line 499
    :cond_1
    invoke-virtual {v0, p0}, Ljava/nio/channels/SocketChannel;->connect(Ljava/net/SocketAddress;)Z

    .line 501
    :goto_0
    return-object v0

    .line 481
    .end local v0    # "channel":Ljava/nio/channels/SocketChannel;
    .end local v1    # "blocking":Z
    .end local v2    # "socket":Ljava/net/Socket;
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static populateNetProps(Ljava/util/Properties;Ljava/io/File;)Ljava/util/Properties;
    .locals 2
    .param p0, "props"    # Ljava/util/Properties;
    .param p1, "accessPropsFile"    # Ljava/io/File;

    .line 564
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 565
    .local v0, "rawProps":Ljava/util/Properties;
    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->applyFileConfig(Ljava/io/File;Ljava/util/Properties;Z)V

    .line 569
    invoke-static {v0, p0}, Lcom/sleepycat/je/rep/ReplicationNetworkConfig;->applyRepNetProperties(Ljava/util/Properties;Ljava/util/Properties;)V

    .line 570
    return-object p0
.end method

.method private static prepareTerminatingException(Ljava/lang/Exception;Lcom/sleepycat/je/dbi/EnvironmentImpl;)Lcom/sleepycat/je/DatabaseException;
    .locals 3
    .param p0, "e"    # Ljava/lang/Exception;
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 386
    if-nez p0, :cond_0

    .line 387
    const/4 v0, 0x0

    return-object v0

    .line 390
    :cond_0
    instance-of v0, p0, Lcom/sleepycat/je/DatabaseException;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lcom/sleepycat/je/DatabaseException;

    goto :goto_0

    .line 393
    :cond_1
    invoke-static {p1, p0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedException(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    :goto_0
    nop

    .line 395
    .local v0, "de":Lcom/sleepycat/je/DatabaseException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Originally thrown by HA thread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 397
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 395
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/DatabaseException;->addErrorMessage(Ljava/lang/String;)V

    .line 399
    return-object v0
.end method

.method public static shutdownChannel(Lcom/sleepycat/je/rep/net/DataChannel;)V
    .locals 2
    .param p0, "channel"    # Lcom/sleepycat/je/rep/net/DataChannel;

    .line 426
    if-nez p0, :cond_0

    .line 427
    return-void

    .line 430
    :cond_0
    invoke-interface {p0}, Lcom/sleepycat/je/rep/net/DataChannel;->isBlocking()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 441
    :try_start_0
    invoke-interface {p0}, Lcom/sleepycat/je/rep/net/DataChannel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 444
    goto :goto_0

    .line 442
    :catch_0
    move-exception v0

    .line 445
    :goto_0
    return-void

    .line 431
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected non-blocking channel for shutting down."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static shutdownChannel(Lcom/sleepycat/je/rep/utilint/NamedChannel;)V
    .locals 1
    .param p0, "namedChannel"    # Lcom/sleepycat/je/rep/utilint/NamedChannel;

    .line 419
    if-nez p0, :cond_0

    .line 420
    return-void

    .line 422
    :cond_0
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/utilint/NamedChannel;->getChannel()Lcom/sleepycat/je/rep/net/DataChannel;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/je/rep/utilint/RepUtils;->shutdownChannel(Lcom/sleepycat/je/rep/net/DataChannel;)V

    .line 423
    return-void
.end method

.method public static writeTimesString(Lcom/sleepycat/je/utilint/StatGroup;)Ljava/lang/String;
    .locals 10
    .param p0, "stats"    # Lcom/sleepycat/je/utilint/StatGroup;

    .line 540
    sget-object v0, Lcom/sleepycat/je/rep/utilint/BinaryProtocolStatDefinition;->N_MESSAGES_WRITTEN:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    .line 541
    .local v0, "nMessagesWritten":J
    sget-object v2, Lcom/sleepycat/je/rep/utilint/BinaryProtocolStatDefinition;->N_WRITE_NANOS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {p0, v2}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v2

    .line 543
    .local v2, "nWriteNanos":J
    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-gtz v6, :cond_0

    goto :goto_0

    :cond_0
    div-long v4, v2, v0

    .line 546
    .local v4, "avgWriteNanos":J
    :goto_0
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-wide/32 v8, 0xf4240

    div-long v8, v2, v8

    .line 547
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-wide/16 v8, 0x3e8

    div-long v8, v4, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    .line 546
    const-string v7, " write time: %, dms Avg write time: %,dus"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method
