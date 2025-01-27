.class public final Lio/netty/channel/DefaultChannelId;
.super Ljava/lang/Object;
.source "DefaultChannelId.java"

# interfaces
.implements Lio/netty/channel/ChannelId;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final MACHINE_ID:[B

.field private static final PROCESS_ID:I

.field private static final PROCESS_ID_LEN:I = 0x4

.field private static final RANDOM_LEN:I = 0x4

.field private static final SEQUENCE_LEN:I = 0x4

.field private static final TIMESTAMP_LEN:I = 0x8

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;

.field private static final nextSequence:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final serialVersionUID:J = 0x35e702b5ce50b54fL


# instance fields
.field private final data:[B

.field private final hashCode:I

.field private transient longValue:Ljava/lang/String;

.field private transient shortValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 37
    nop

    .line 41
    const-class v0, Lio/netty/channel/DefaultChannelId;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/channel/DefaultChannelId;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 49
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lio/netty/channel/DefaultChannelId;->nextSequence:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 59
    const/4 v0, -0x1

    .line 60
    .local v0, "processId":I
    const-string v1, "io.netty.processId"

    invoke-static {v1}, Lio/netty/util/internal/SystemPropertyUtil;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "customProcessId":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 63
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 66
    goto :goto_0

    .line 64
    :catch_0
    move-exception v2

    .line 68
    :goto_0
    if-gez v0, :cond_0

    .line 69
    const/4 v0, -0x1

    .line 70
    sget-object v2, Lio/netty/channel/DefaultChannelId;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v3, "-Dio.netty.processId: {} (malformed)"

    invoke-interface {v2, v3, v1}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 71
    :cond_0
    sget-object v2, Lio/netty/channel/DefaultChannelId;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v2}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 72
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "-Dio.netty.processId: {} (user-set)"

    invoke-interface {v2, v4, v3}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 76
    :cond_1
    :goto_1
    if-gez v0, :cond_2

    .line 77
    invoke-static {}, Lio/netty/channel/DefaultChannelId;->defaultProcessId()I

    move-result v0

    .line 78
    sget-object v2, Lio/netty/channel/DefaultChannelId;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v2}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 79
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "-Dio.netty.processId: {} (auto-detected)"

    invoke-interface {v2, v4, v3}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 83
    :cond_2
    sput v0, Lio/netty/channel/DefaultChannelId;->PROCESS_ID:I

    .line 85
    const/4 v2, 0x0

    .line 86
    .local v2, "machineId":[B
    const-string v3, "io.netty.machineId"

    invoke-static {v3}, Lio/netty/util/internal/SystemPropertyUtil;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 87
    .local v3, "customMachineId":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 89
    :try_start_1
    invoke-static {v3}, Lio/netty/util/internal/MacAddressUtil;->parseMAC(Ljava/lang/String;)[B

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v4

    .line 92
    goto :goto_2

    .line 90
    :catch_1
    move-exception v4

    .line 91
    .local v4, "e":Ljava/lang/Exception;
    sget-object v5, Lio/netty/channel/DefaultChannelId;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v6, "-Dio.netty.machineId: {} (malformed)"

    invoke-interface {v5, v6, v3, v4}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 93
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_2
    if-eqz v2, :cond_3

    .line 94
    sget-object v4, Lio/netty/channel/DefaultChannelId;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v5, "-Dio.netty.machineId: {} (user-set)"

    invoke-interface {v4, v5, v3}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 98
    :cond_3
    if-nez v2, :cond_4

    .line 99
    invoke-static {}, Lio/netty/util/internal/MacAddressUtil;->defaultMachineId()[B

    move-result-object v2

    .line 100
    sget-object v4, Lio/netty/channel/DefaultChannelId;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v4}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 101
    invoke-static {v2}, Lio/netty/util/internal/MacAddressUtil;->formatAddress([B)Ljava/lang/String;

    move-result-object v5

    const-string v6, "-Dio.netty.machineId: {} (auto-detected)"

    invoke-interface {v4, v6, v5}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 105
    :cond_4
    sput-object v2, Lio/netty/channel/DefaultChannelId;->MACHINE_ID:[B

    .line 106
    .end local v0    # "processId":I
    .end local v1    # "customProcessId":Ljava/lang/String;
    .end local v2    # "machineId":[B
    .end local v3    # "customMachineId":Ljava/lang/String;
    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    sget-object v0, Lio/netty/channel/DefaultChannelId;->MACHINE_ID:[B

    array-length v1, v0

    add-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, 0x4

    new-array v1, v1, [B

    iput-object v1, p0, Lio/netty/channel/DefaultChannelId;->data:[B

    .line 163
    const/4 v2, 0x0

    .line 166
    .local v2, "i":I
    array-length v3, v0

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 167
    array-length v0, v0

    add-int/2addr v2, v0

    .line 170
    sget v0, Lio/netty/channel/DefaultChannelId;->PROCESS_ID:I

    invoke-direct {p0, v2, v0}, Lio/netty/channel/DefaultChannelId;->writeInt(II)I

    move-result v0

    .line 173
    .end local v2    # "i":I
    .local v0, "i":I
    sget-object v2, Lio/netty/channel/DefaultChannelId;->nextSequence:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lio/netty/channel/DefaultChannelId;->writeInt(II)I

    move-result v0

    .line 176
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->reverse(J)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    xor-long/2addr v2, v4

    invoke-direct {p0, v0, v2, v3}, Lio/netty/channel/DefaultChannelId;->writeLong(IJ)I

    move-result v0

    .line 179
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->threadLocalRandom()Ljava/util/Random;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    .line 180
    .local v2, "random":I
    invoke-direct {p0, v0, v2}, Lio/netty/channel/DefaultChannelId;->writeInt(II)I

    move-result v0

    .line 181
    array-length v3, v1

    if-ne v0, v3, :cond_0

    .line 183
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    iput v1, p0, Lio/netty/channel/DefaultChannelId;->hashCode:I

    .line 184
    return-void

    .line 181
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method private appendHexDumpField(Ljava/lang/StringBuilder;II)I
    .locals 1
    .param p1, "buf"    # Ljava/lang/StringBuilder;
    .param p2, "i"    # I
    .param p3, "length"    # I

    .line 237
    iget-object v0, p0, Lio/netty/channel/DefaultChannelId;->data:[B

    invoke-static {v0, p2, p3}, Lio/netty/buffer/ByteBufUtil;->hexDump([BII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    const/16 v0, 0x2d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 239
    add-int/2addr p2, p3

    .line 240
    return p2
.end method

.method private static defaultProcessId()I
    .locals 9

    .line 109
    const/4 v0, 0x0

    .line 112
    .local v0, "loader":Ljava/lang/ClassLoader;
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    const-class v3, Lio/netty/channel/DefaultChannelId;

    invoke-static {v3}, Lio/netty/util/internal/PlatformDependent;->getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v3

    move-object v0, v3

    .line 114
    const-string v3, "java.lang.management.ManagementFactory"

    invoke-static {v3, v2, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    .line 115
    .local v3, "mgmtFactoryType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "java.lang.management.RuntimeMXBean"

    invoke-static {v4, v2, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    .line 117
    .local v4, "runtimeMxBeanType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v5, "getRuntimeMXBean"

    sget-object v6, Lio/netty/util/internal/EmptyArrays;->EMPTY_CLASSES:[Ljava/lang/Class;

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 118
    .local v5, "getRuntimeMXBean":Ljava/lang/reflect/Method;
    sget-object v6, Lio/netty/util/internal/EmptyArrays;->EMPTY_OBJECTS:[Ljava/lang/Object;

    invoke-virtual {v5, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 119
    .local v6, "bean":Ljava/lang/Object;
    const-string v7, "getName"

    sget-object v8, Lio/netty/util/internal/EmptyArrays;->EMPTY_CLASSES:[Ljava/lang/Class;

    invoke-virtual {v4, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 120
    .local v7, "getName":Ljava/lang/reflect/Method;
    sget-object v8, Lio/netty/util/internal/EmptyArrays;->EMPTY_OBJECTS:[Ljava/lang/Object;

    invoke-virtual {v7, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v8

    .line 132
    .end local v3    # "mgmtFactoryType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "runtimeMxBeanType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "getRuntimeMXBean":Ljava/lang/reflect/Method;
    .end local v6    # "bean":Ljava/lang/Object;
    .end local v7    # "getName":Ljava/lang/reflect/Method;
    .local v1, "value":Ljava/lang/String;
    goto :goto_0

    .line 121
    .end local v1    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 122
    .local v3, "t":Ljava/lang/Throwable;
    sget-object v4, Lio/netty/channel/DefaultChannelId;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v5, "Could not invoke ManagementFactory.getRuntimeMXBean().getName(); Android?"

    invoke-interface {v4, v5, v3}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 125
    :try_start_1
    const-string v4, "android.os.Process"

    invoke-static {v4, v2, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 126
    .local v2, "processType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "myPid"

    sget-object v5, Lio/netty/util/internal/EmptyArrays;->EMPTY_CLASSES:[Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 127
    .local v4, "myPid":Ljava/lang/reflect/Method;
    sget-object v5, Lio/netty/util/internal/EmptyArrays;->EMPTY_OBJECTS:[Ljava/lang/Object;

    invoke-virtual {v4, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 131
    .end local v2    # "processType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "myPid":Ljava/lang/reflect/Method;
    .restart local v1    # "value":Ljava/lang/String;
    goto :goto_0

    .line 128
    .end local v1    # "value":Ljava/lang/String;
    :catchall_1
    move-exception v1

    .line 129
    .local v1, "t2":Ljava/lang/Throwable;
    sget-object v2, Lio/netty/channel/DefaultChannelId;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v4, "Could not invoke Process.myPid(); not Android?"

    invoke-interface {v2, v4, v1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 130
    const-string v2, ""

    move-object v1, v2

    .line 134
    .end local v3    # "t":Ljava/lang/Throwable;
    .local v1, "value":Ljava/lang/String;
    :goto_0
    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 135
    .local v2, "atIndex":I
    if-ltz v2, :cond_0

    .line 136
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 141
    :cond_0
    :try_start_2
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    .line 145
    .local v3, "pid":I
    goto :goto_1

    .line 142
    .end local v3    # "pid":I
    :catch_0
    move-exception v3

    .line 144
    .local v3, "e":Ljava/lang/NumberFormatException;
    const/4 v4, -0x1

    move v3, v4

    .line 147
    .local v3, "pid":I
    :goto_1
    if-gez v3, :cond_1

    .line 148
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->threadLocalRandom()Ljava/util/Random;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v3

    .line 149
    sget-object v4, Lio/netty/channel/DefaultChannelId;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "Failed to find the current process ID from \'{}\'; using a random value: {}"

    invoke-interface {v4, v6, v1, v5}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 152
    :cond_1
    return v3
.end method

.method public static newInstance()Lio/netty/channel/DefaultChannelId;
    .locals 1

    .line 55
    new-instance v0, Lio/netty/channel/DefaultChannelId;

    invoke-direct {v0}, Lio/netty/channel/DefaultChannelId;-><init>()V

    return-object v0
.end method

.method private newLongValue()Ljava/lang/String;
    .locals 4

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/netty/channel/DefaultChannelId;->data:[B

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x5

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 226
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 227
    .local v1, "i":I
    sget-object v2, Lio/netty/channel/DefaultChannelId;->MACHINE_ID:[B

    array-length v2, v2

    invoke-direct {p0, v0, v1, v2}, Lio/netty/channel/DefaultChannelId;->appendHexDumpField(Ljava/lang/StringBuilder;II)I

    move-result v1

    .line 228
    const/4 v2, 0x4

    invoke-direct {p0, v0, v1, v2}, Lio/netty/channel/DefaultChannelId;->appendHexDumpField(Ljava/lang/StringBuilder;II)I

    move-result v1

    .line 229
    invoke-direct {p0, v0, v1, v2}, Lio/netty/channel/DefaultChannelId;->appendHexDumpField(Ljava/lang/StringBuilder;II)I

    move-result v1

    .line 230
    const/16 v3, 0x8

    invoke-direct {p0, v0, v1, v3}, Lio/netty/channel/DefaultChannelId;->appendHexDumpField(Ljava/lang/StringBuilder;II)I

    move-result v1

    .line 231
    invoke-direct {p0, v0, v1, v2}, Lio/netty/channel/DefaultChannelId;->appendHexDumpField(Ljava/lang/StringBuilder;II)I

    move-result v1

    .line 232
    iget-object v2, p0, Lio/netty/channel/DefaultChannelId;->data:[B

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 233
    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 232
    :cond_0
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method private writeInt(II)I
    .locals 3
    .param p1, "i"    # I
    .param p2, "value"    # I

    .line 187
    iget-object v0, p0, Lio/netty/channel/DefaultChannelId;->data:[B

    add-int/lit8 v1, p1, 0x1

    .end local p1    # "i":I
    .local v1, "i":I
    ushr-int/lit8 v2, p2, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, p1

    .line 188
    add-int/lit8 p1, v1, 0x1

    .end local v1    # "i":I
    .restart local p1    # "i":I
    ushr-int/lit8 v2, p2, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 189
    add-int/lit8 v1, p1, 0x1

    .end local p1    # "i":I
    .restart local v1    # "i":I
    ushr-int/lit8 v2, p2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, p1

    .line 190
    add-int/lit8 p1, v1, 0x1

    .end local v1    # "i":I
    .restart local p1    # "i":I
    int-to-byte v2, p2

    aput-byte v2, v0, v1

    .line 191
    return p1
.end method

.method private writeLong(IJ)I
    .locals 4
    .param p1, "i"    # I
    .param p2, "value"    # J

    .line 195
    iget-object v0, p0, Lio/netty/channel/DefaultChannelId;->data:[B

    add-int/lit8 v1, p1, 0x1

    .end local p1    # "i":I
    .local v1, "i":I
    const/16 v2, 0x38

    ushr-long v2, p2, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, p1

    .line 196
    add-int/lit8 p1, v1, 0x1

    .end local v1    # "i":I
    .restart local p1    # "i":I
    const/16 v2, 0x30

    ushr-long v2, p2, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 197
    add-int/lit8 v1, p1, 0x1

    .end local p1    # "i":I
    .restart local v1    # "i":I
    const/16 v2, 0x28

    ushr-long v2, p2, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, p1

    .line 198
    add-int/lit8 p1, v1, 0x1

    .end local v1    # "i":I
    .restart local p1    # "i":I
    const/16 v2, 0x20

    ushr-long v2, p2, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 199
    add-int/lit8 v1, p1, 0x1

    .end local p1    # "i":I
    .restart local v1    # "i":I
    const/16 v2, 0x18

    ushr-long v2, p2, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, p1

    .line 200
    add-int/lit8 p1, v1, 0x1

    .end local v1    # "i":I
    .restart local p1    # "i":I
    const/16 v2, 0x10

    ushr-long v2, p2, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 201
    add-int/lit8 v1, p1, 0x1

    .end local p1    # "i":I
    .restart local v1    # "i":I
    const/16 v2, 0x8

    ushr-long v2, p2, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, p1

    .line 202
    add-int/lit8 p1, v1, 0x1

    .end local v1    # "i":I
    .restart local p1    # "i":I
    long-to-int v2, p2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 203
    return p1
.end method


# virtual methods
.method public asLongText()Ljava/lang/String;
    .locals 2

    .line 217
    iget-object v0, p0, Lio/netty/channel/DefaultChannelId;->longValue:Ljava/lang/String;

    .line 218
    .local v0, "longValue":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 219
    invoke-direct {p0}, Lio/netty/channel/DefaultChannelId;->newLongValue()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    iput-object v1, p0, Lio/netty/channel/DefaultChannelId;->longValue:Ljava/lang/String;

    .line 221
    :cond_0
    return-object v0
.end method

.method public asShortText()Ljava/lang/String;
    .locals 4

    .line 208
    iget-object v0, p0, Lio/netty/channel/DefaultChannelId;->shortValue:Ljava/lang/String;

    .line 209
    .local v0, "shortValue":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 210
    iget-object v1, p0, Lio/netty/channel/DefaultChannelId;->data:[B

    array-length v2, v1

    const/4 v3, 0x4

    sub-int/2addr v2, v3

    invoke-static {v1, v2, v3}, Lio/netty/buffer/ByteBufUtil;->hexDump([BII)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    iput-object v1, p0, Lio/netty/channel/DefaultChannelId;->shortValue:Ljava/lang/String;

    .line 212
    :cond_0
    return-object v0
.end method

.method public compareTo(Lio/netty/channel/ChannelId;)I
    .locals 9
    .param p1, "o"    # Lio/netty/channel/ChannelId;

    .line 250
    if-ne p0, p1, :cond_0

    .line 252
    const/4 v0, 0x0

    return v0

    .line 254
    :cond_0
    instance-of v0, p1, Lio/netty/channel/DefaultChannelId;

    if-eqz v0, :cond_3

    .line 256
    move-object v0, p1

    check-cast v0, Lio/netty/channel/DefaultChannelId;

    iget-object v0, v0, Lio/netty/channel/DefaultChannelId;->data:[B

    .line 257
    .local v0, "otherData":[B
    iget-object v1, p0, Lio/netty/channel/DefaultChannelId;->data:[B

    array-length v1, v1

    .line 258
    .local v1, "len1":I
    array-length v2, v0

    .line 259
    .local v2, "len2":I
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 261
    .local v3, "len":I
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 262
    iget-object v5, p0, Lio/netty/channel/DefaultChannelId;->data:[B

    aget-byte v5, v5, v4

    .line 263
    .local v5, "x":B
    aget-byte v6, v0, v4

    .line 264
    .local v6, "y":B
    if-eq v5, v6, :cond_1

    .line 266
    and-int/lit16 v7, v5, 0xff

    and-int/lit16 v8, v6, 0xff

    sub-int/2addr v7, v8

    return v7

    .line 261
    .end local v5    # "x":B
    .end local v6    # "y":B
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 269
    .end local v4    # "k":I
    :cond_2
    sub-int v4, v1, v2

    return v4

    .line 272
    .end local v0    # "otherData":[B
    .end local v1    # "len1":I
    .end local v2    # "len2":I
    .end local v3    # "len":I
    :cond_3
    invoke-virtual {p0}, Lio/netty/channel/DefaultChannelId;->asLongText()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lio/netty/channel/ChannelId;->asLongText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 37
    check-cast p1, Lio/netty/channel/ChannelId;

    invoke-virtual {p0, p1}, Lio/netty/channel/DefaultChannelId;->compareTo(Lio/netty/channel/ChannelId;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 277
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 278
    return v0

    .line 280
    :cond_0
    instance-of v1, p1, Lio/netty/channel/DefaultChannelId;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 281
    return v2

    .line 283
    :cond_1
    move-object v1, p1

    check-cast v1, Lio/netty/channel/DefaultChannelId;

    .line 284
    .local v1, "other":Lio/netty/channel/DefaultChannelId;
    iget v3, p0, Lio/netty/channel/DefaultChannelId;->hashCode:I

    iget v4, v1, Lio/netty/channel/DefaultChannelId;->hashCode:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lio/netty/channel/DefaultChannelId;->data:[B

    iget-object v4, v1, Lio/netty/channel/DefaultChannelId;->data:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 245
    iget v0, p0, Lio/netty/channel/DefaultChannelId;->hashCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 289
    invoke-virtual {p0}, Lio/netty/channel/DefaultChannelId;->asShortText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
