.class public Lorg/jpos/q2/qbean/SystemMonitor;
.super Lorg/jpos/q2/QBeanSupport;
.source "SystemMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lorg/jpos/q2/qbean/SystemMonitorMBean;
.implements Lorg/jpos/util/Loggeable;


# static fields
.field private static final MB:I = 0x100000


# instance fields
.field private delay:J

.field private detailRequired:Z

.field private frozenDump:Ljava/lang/String;

.field private localHost:Ljava/lang/String;

.field private me:Ljava/lang/Thread;

.field private processName:Ljava/lang/String;

.field private scripts:[Ljava/lang/String;

.field private sleepTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 55
    invoke-direct {p0}, Lorg/jpos/q2/QBeanSupport;-><init>()V

    .line 58
    const-wide/32 v0, 0x36ee80

    iput-wide v0, p0, Lorg/jpos/q2/qbean/SystemMonitor;->sleepTime:J

    .line 59
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/jpos/q2/qbean/SystemMonitor;->delay:J

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jpos/q2/qbean/SystemMonitor;->detailRequired:Z

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jpos/q2/qbean/SystemMonitor;->me:Ljava/lang/Thread;

    return-void
.end method

.method private dumpMetrics()V
    .locals 3

    .line 273
    iget-object v0, p0, Lorg/jpos/q2/qbean/SystemMonitor;->cfg:Lorg/jpos/core/Configuration;

    const-string v1, "metrics-dir"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 274
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lorg/jpos/q2/qbean/SystemMonitor;->cfg:Lorg/jpos/core/Configuration;

    invoke-interface {v2, v1}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 275
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 276
    invoke-static {}, Lorg/jpos/util/NameRegistrar;->getAsMap()Ljava/util/Map;

    move-result-object v1

    new-instance v2, Lorg/jpos/q2/qbean/SystemMonitor$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lorg/jpos/q2/qbean/SystemMonitor$$ExternalSyntheticLambda0;-><init>(Ljava/io/File;)V

    invoke-interface {v1, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 284
    .end local v0    # "dir":Ljava/io/File;
    :cond_0
    return-void
.end method

.method private dumpThreads(Ljava/lang/ThreadGroup;Ljava/io/PrintStream;Ljava/lang/String;)V
    .locals 5
    .param p1, "g"    # Ljava/lang/ThreadGroup;
    .param p2, "p"    # Ljava/io/PrintStream;
    .param p3, "indent"    # Ljava/lang/String;

    .line 107
    invoke-virtual {p1}, Ljava/lang/ThreadGroup;->activeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    new-array v0, v0, [Ljava/lang/Thread;

    .line 108
    .local v0, "list":[Ljava/lang/Thread;
    invoke-virtual {p1, v0}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/Thread;)I

    move-result v1

    .line 109
    .local v1, "nthreads":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 110
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 109
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 111
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method private exec(Ljava/lang/String;Ljava/io/PrintStream;Ljava/lang/String;)V
    .locals 6
    .param p1, "script"    # Ljava/lang/String;
    .param p2, "ps"    # Ljava/io/PrintStream;
    .param p3, "indent"    # Ljava/lang/String;

    .line 250
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 251
    .local v0, "p":Ljava/lang/Process;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 253
    .local v1, "in":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "line":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 254
    const-string v2, "%s%s%n"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p3, v4, v5

    const/4 v5, 0x1

    aput-object v3, v4, v5

    invoke-virtual {p2, v2, v4}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 258
    .end local v0    # "p":Ljava/lang/Process;
    .end local v1    # "in":Ljava/io/BufferedReader;
    .end local v3    # "line":Ljava/lang/String;
    :cond_0
    goto :goto_1

    .line 256
    :catch_0
    move-exception v0

    .line 257
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0, p2}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    .line 259
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private generateFrozenDump(Ljava/lang/String;)Ljava/lang/String;
    .locals 28
    .param p1, "indent"    # Ljava/lang/String;

    .line 181
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-static {}, Ljava/lang/management/ManagementFactory;->getRuntimeMXBean()Ljava/lang/management/RuntimeMXBean;

    move-result-object v3

    .line 182
    .local v3, "runtimeMXBean":Ljava/lang/management/RuntimeMXBean;
    invoke-static {}, Ljava/lang/management/ManagementFactory;->getThreadMXBean()Ljava/lang/management/ThreadMXBean;

    move-result-object v4

    .line 183
    .local v4, "mxBean":Ljava/lang/management/ThreadMXBean;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v5, v0

    .line 184
    .local v5, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v0, Ljava/io/PrintStream;

    invoke-direct {v0, v5}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    move-object v6, v0

    .line 185
    .local v6, "p":Ljava/io/PrintStream;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "  "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 186
    .local v7, "newIndent":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lorg/jpos/q2/qbean/SystemMonitor;->getRuntimeInstance()Ljava/lang/Runtime;

    move-result-object v8

    .line 187
    .local v8, "r":Ljava/lang/Runtime;
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v9

    .line 188
    .local v9, "zi":Ljava/time/ZoneId;
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v10

    .line 190
    .local v10, "instant":Ljava/time/Instant;
    new-instance v0, Ljava/io/File;

    const-string v11, "."

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v11, v0

    .line 191
    .local v11, "cwd":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v12

    invoke-static {v12, v13}, Lorg/jpos/iso/ISOUtil;->readableFileSize(J)Ljava/lang/String;

    move-result-object v12

    .line 192
    .local v12, "freeSpace":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v13

    invoke-static {v13, v14}, Lorg/jpos/iso/ISOUtil;->readableFileSize(J)Ljava/lang/String;

    move-result-object v13

    .line 193
    .local v13, "usableSpace":Ljava/lang/String;
    const/4 v14, 0x3

    new-array v0, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v2, v0, v15

    const-string v16, "os.name"

    invoke-static/range {v16 .. v16}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1

    aput-object v16, v0, v17

    const-string v16, "os.version"

    invoke-static/range {v16 .. v16}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const/4 v14, 0x2

    aput-object v16, v0, v14

    const-string v14, "%s           OS: %s (%s)%n"

    invoke-virtual {v6, v14, v0}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 194
    const/4 v14, 0x0

    .line 196
    .local v14, "maxKeyLength":I
    :try_start_0
    const-string v0, "AES"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getMaxAllowedKeyLength(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move v14, v0

    goto :goto_0

    .line 197
    :catch_0
    move-exception v0

    :goto_0
    nop

    .line 198
    const/4 v0, 0x4

    move-object/from16 v19, v3

    .end local v3    # "runtimeMXBean":Ljava/lang/management/RuntimeMXBean;
    .local v19, "runtimeMXBean":Ljava/lang/management/RuntimeMXBean;
    new-array v3, v0, [Ljava/lang/Object;

    aput-object v2, v3, v15

    .line 199
    const-string v20, "java.version"

    invoke-static/range {v20 .. v20}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v3, v17

    .line 200
    const-string v20, "java.vendor"

    invoke-static/range {v20 .. v20}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const/16 v16, 0x2

    aput-object v20, v3, v16

    const v0, 0x7fffffff

    if-ne v14, v0, :cond_0

    const-string v0, "secure"

    goto :goto_1

    .line 201
    :cond_0
    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    const/16 v18, 0x3

    aput-object v0, v3, v18

    .line 198
    const-string v0, "%s         Java: %s (%s) AES-%s%n"

    invoke-virtual {v6, v0, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 203
    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/Object;

    aput-object v2, v0, v15

    invoke-static {}, Lorg/jpos/core/Environment;->getEnvironment()Lorg/jpos/core/Environment;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lorg/jpos/core/Environment;->getName()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v0, v17

    const-string v15, "%s  environment: %s%n"

    invoke-virtual {v6, v15, v0}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 204
    new-array v0, v3, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v2, v0, v15

    iget-object v15, v1, Lorg/jpos/q2/qbean/SystemMonitor;->processName:Ljava/lang/String;

    aput-object v15, v0, v17

    const-string v15, "%s process name: %s%n"

    invoke-virtual {v6, v15, v0}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 205
    new-array v0, v3, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v2, v0, v15

    const-string v16, "user.name"

    invoke-static/range {v16 .. v16}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v0, v17

    const-string v15, "%s    user name: %s%n"

    invoke-virtual {v6, v15, v0}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 206
    new-array v0, v3, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v2, v0, v15

    iget-object v15, v1, Lorg/jpos/q2/qbean/SystemMonitor;->localHost:Ljava/lang/String;

    aput-object v15, v0, v17

    const-string v15, "%s         host: %s%n"

    invoke-virtual {v6, v15, v0}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 207
    new-array v0, v3, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v2, v0, v15

    const-string v16, "user.dir"

    invoke-static/range {v16 .. v16}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v0, v17

    const-string v15, "%s          cwd: %s%n"

    invoke-virtual {v6, v15, v0}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 208
    new-array v0, v3, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v2, v0, v15

    aput-object v12, v0, v17

    const-string v15, "%s   free space: %s%n"

    invoke-virtual {v6, v15, v0}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 210
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 211
    new-array v0, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    aput-object v13, v0, v17

    const-string v15, "%s usable space: %s%n"

    invoke-virtual {v6, v15, v0}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    goto :goto_2

    .line 210
    :cond_1
    const/4 v3, 0x0

    .line 212
    :goto_2
    const/4 v15, 0x3

    new-array v0, v15, [Ljava/lang/Object;

    aput-object v2, v0, v3

    invoke-static {}, Lorg/jpos/q2/Q2;->getVersion()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v0, v17

    invoke-direct/range {p0 .. p0}, Lorg/jpos/q2/qbean/SystemMonitor;->getRevision()Ljava/lang/String;

    move-result-object v15

    const/4 v3, 0x2

    aput-object v15, v0, v3

    const-string v15, "%s      version: %s (%s)%n"

    invoke-virtual {v6, v15, v0}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 213
    new-array v0, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    invoke-direct/range {p0 .. p0}, Lorg/jpos/q2/qbean/SystemMonitor;->getInstanceIdAsString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v0, v17

    const-string v15, "%s     instance: %s%n"

    invoke-virtual {v6, v15, v0}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 214
    const/4 v15, 0x3

    new-array v0, v15, [Ljava/lang/Object;

    aput-object v2, v0, v3

    invoke-direct/range {p0 .. p0}, Lorg/jpos/q2/qbean/SystemMonitor;->getServerUptimeAsMillisecond()J

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Lorg/jpos/iso/ISOUtil;->millisToString(J)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v0, v17

    invoke-direct/range {p0 .. p0}, Lorg/jpos/q2/qbean/SystemMonitor;->loadAverage()D

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    const/4 v3, 0x2

    aput-object v15, v0, v3

    const-string v15, "%s       uptime: %s (%f)%n"

    invoke-virtual {v6, v15, v0}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 215
    new-array v0, v3, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v2, v0, v15

    invoke-virtual {v8}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v0, v17

    const-string v15, "%s   processors: %d%n"

    invoke-virtual {v6, v15, v0}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 216
    new-array v0, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    move-object v15, v4

    .end local v4    # "mxBean":Ljava/lang/management/ThreadMXBean;
    .local v15, "mxBean":Ljava/lang/management/ThreadMXBean;
    iget-wide v3, v1, Lorg/jpos/q2/qbean/SystemMonitor;->delay:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v0, v17

    const-string v3, "%s       drift : %d%n"

    invoke-virtual {v6, v3, v0}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 217
    const/4 v0, 0x4

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    .line 218
    invoke-virtual {v8}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v22

    const-wide/32 v24, 0x100000

    div-long v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v17

    invoke-virtual {v8}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v22

    invoke-virtual {v8}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v26

    sub-long v22, v22, v26

    div-long v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v4, 0x2

    aput-object v0, v3, v4

    invoke-virtual {v8}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v22

    div-long v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/16 v16, 0x3

    aput-object v0, v3, v16

    .line 217
    const-string v0, "%smemory(t/u/f): %d/%d/%d%n"

    invoke-virtual {v6, v0, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 219
    new-array v0, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v4

    aput-object v4, v0, v17

    const-string v4, "%s     encoding: %s%n"

    invoke-virtual {v6, v4, v0}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 220
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v3

    aput-object v9, v0, v17

    sget-object v3, Ljava/time/format/TextStyle;->FULL:Ljava/time/format/TextStyle;

    .line 221
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Ljava/time/ZoneId;->getDisplayName(Ljava/time/format/TextStyle;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v0, v4

    .line 222
    invoke-virtual {v9}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/ZoneOffset;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v16, 0x3

    aput-object v3, v0, v16

    .line 220
    const-string v3, "%s     timezone: %s (%s) %s%n"

    invoke-virtual {v6, v3, v0}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 223
    new-array v0, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    invoke-virtual/range {p0 .. p0}, Lorg/jpos/q2/qbean/SystemMonitor;->getServer()Lorg/jpos/q2/Q2;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jpos/q2/Q2;->getWatchServiceClassname()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v17

    const-string v3, "%swatch service: %s%n"

    invoke-virtual {v6, v3, v0}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 224
    invoke-virtual {v9}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/zone/ZoneRules;->getTransitionRules()Ljava/util/List;

    move-result-object v0

    .line 225
    .local v0, "l":Ljava/util/List;, "Ljava/util/List<Ljava/time/zone/ZoneOffsetTransitionRule;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/time/zone/ZoneOffsetTransitionRule;

    .line 226
    .local v4, "tr":Ljava/time/zone/ZoneOffsetTransitionRule;
    move-object/from16 v22, v0

    move-object/from16 v20, v3

    const/4 v3, 0x2

    .end local v0    # "l":Ljava/util/List;, "Ljava/util/List<Ljava/time/zone/ZoneOffsetTransitionRule;>;"
    .local v22, "l":Ljava/util/List;, "Ljava/util/List<Ljava/time/zone/ZoneOffsetTransitionRule;>;"
    new-array v0, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    invoke-virtual {v4}, Ljava/time/zone/ZoneOffsetTransitionRule;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v17

    const-string v3, "%s         rule: %s%n"

    invoke-virtual {v6, v3, v0}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 227
    .end local v4    # "tr":Ljava/time/zone/ZoneOffsetTransitionRule;
    move-object/from16 v3, v20

    move-object/from16 v0, v22

    goto :goto_3

    .line 228
    .end local v22    # "l":Ljava/util/List;, "Ljava/util/List<Ljava/time/zone/ZoneOffsetTransitionRule;>;"
    .restart local v0    # "l":Ljava/util/List;, "Ljava/util/List<Ljava/time/zone/ZoneOffsetTransitionRule;>;"
    :cond_2
    move-object/from16 v22, v0

    .end local v0    # "l":Ljava/util/List;, "Ljava/util/List<Ljava/time/zone/ZoneOffsetTransitionRule;>;"
    .restart local v22    # "l":Ljava/util/List;, "Ljava/util/List<Ljava/time/zone/ZoneOffsetTransitionRule;>;"
    invoke-virtual {v9}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/time/zone/ZoneRules;->nextTransition(Ljava/time/Instant;)Ljava/time/zone/ZoneOffsetTransition;

    move-result-object v0

    .line 229
    .local v0, "tran":Ljava/time/zone/ZoneOffsetTransition;
    if-eqz v0, :cond_3

    .line 230
    invoke-virtual {v0}, Ljava/time/zone/ZoneOffsetTransition;->getInstant()Ljava/time/Instant;

    move-result-object v3

    .line 231
    .local v3, "in":Ljava/time/Instant;
    move-object/from16 v18, v0

    const/4 v4, 0x3

    .end local v0    # "tran":Ljava/time/zone/ZoneOffsetTransition;
    .local v18, "tran":Ljava/time/zone/ZoneOffsetTransition;
    new-array v0, v4, [Ljava/lang/Object;

    const/16 v20, 0x0

    aput-object v2, v0, v20

    aput-object v3, v0, v17

    invoke-virtual {v3, v9}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v21

    const/16 v16, 0x2

    aput-object v21, v0, v16

    const-string v4, "%s   transition: %s (%s)%n"

    invoke-virtual {v6, v4, v0}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    goto :goto_4

    .line 229
    .end local v3    # "in":Ljava/time/Instant;
    .end local v18    # "tran":Ljava/time/zone/ZoneOffsetTransition;
    .restart local v0    # "tran":Ljava/time/zone/ZoneOffsetTransition;
    :cond_3
    move-object/from16 v18, v0

    const/16 v20, 0x0

    .line 233
    .end local v0    # "tran":Ljava/time/zone/ZoneOffsetTransition;
    .restart local v18    # "tran":Ljava/time/zone/ZoneOffsetTransition;
    :goto_4
    const/4 v3, 0x3

    new-array v0, v3, [Ljava/lang/Object;

    aput-object v2, v0, v20

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v23, 0x3e8

    div-long v3, v3, v23

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v0, v17

    const/4 v3, 0x2

    aput-object v10, v0, v3

    const-string v4, "%s        clock: %d %s%n"

    invoke-virtual {v6, v4, v0}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 234
    invoke-direct/range {p0 .. p0}, Lorg/jpos/q2/qbean/SystemMonitor;->hasSecurityManager()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 235
    new-array v0, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v0, v4

    invoke-direct/range {p0 .. p0}, Lorg/jpos/q2/qbean/SystemMonitor;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v16

    aput-object v16, v0, v17

    const-string v4, "%s  sec-manager: %s%n"

    invoke-virtual {v6, v4, v0}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 236
    :cond_4
    new-array v0, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v0, v4

    invoke-interface {v15}, Ljava/lang/management/ThreadMXBean;->getThreadCount()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v0, v17

    const-string v4, "%s thread count: %d%n"

    invoke-virtual {v6, v4, v0}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 237
    new-array v0, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v0, v4

    invoke-interface {v15}, Ljava/lang/management/ThreadMXBean;->getPeakThreadCount()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v0, v17

    const-string v4, "%s peak threads: %d%n"

    invoke-virtual {v6, v4, v0}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 238
    new-array v0, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    invoke-static {}, Ljava/lang/Thread;->activeCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v17

    const-string v3, "%s user threads: %d%n"

    invoke-virtual {v6, v3, v0}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 240
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v0

    invoke-virtual {v1, v0, v6, v7}, Lorg/jpos/q2/qbean/SystemMonitor;->showThreadGroup(Ljava/lang/ThreadGroup;Ljava/io/PrintStream;Ljava/lang/String;)V

    .line 241
    invoke-static {}, Lorg/jpos/util/NameRegistrar;->getInstance()Lorg/jpos/util/NameRegistrar;

    move-result-object v0

    iget-boolean v3, v1, Lorg/jpos/q2/qbean/SystemMonitor;->detailRequired:Z

    invoke-virtual {v0, v6, v2, v3}, Lorg/jpos/util/NameRegistrar;->dump(Ljava/io/PrintStream;Ljava/lang/String;Z)V

    .line 242
    iget-object v0, v1, Lorg/jpos/q2/qbean/SystemMonitor;->scripts:[Ljava/lang/String;

    array-length v3, v0

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v3, :cond_5

    move/from16 v20, v3

    aget-object v3, v0, v4

    .line 243
    .local v3, "s":Ljava/lang/String;
    move-object/from16 v16, v0

    move-object/from16 v23, v8

    const/4 v8, 0x2

    .end local v8    # "r":Ljava/lang/Runtime;
    .local v23, "r":Ljava/lang/Runtime;
    new-array v0, v8, [Ljava/lang/Object;

    const/16 v21, 0x0

    aput-object v2, v0, v21

    aput-object v3, v0, v17

    const-string v8, "%s%s:%n"

    invoke-virtual {v6, v8, v0}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 244
    invoke-direct {v1, v3, v6, v7}, Lorg/jpos/q2/qbean/SystemMonitor;->exec(Ljava/lang/String;Ljava/io/PrintStream;Ljava/lang/String;)V

    .line 242
    .end local v3    # "s":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v16

    move/from16 v3, v20

    move-object/from16 v8, v23

    goto :goto_5

    .line 246
    .end local v23    # "r":Ljava/lang/Runtime;
    .restart local v8    # "r":Ljava/lang/Runtime;
    :cond_5
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getInstanceIdAsString()Ljava/lang/String;
    .locals 1

    .line 167
    invoke-virtual {p0}, Lorg/jpos/q2/qbean/SystemMonitor;->getServer()Lorg/jpos/q2/Q2;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jpos/q2/Q2;->getInstanceId()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getLocalHost()Ljava/lang/String;
    .locals 2

    .line 175
    :try_start_0
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getRevision()Ljava/lang/String;
    .locals 1

    .line 171
    invoke-static {}, Lorg/jpos/q2/Q2;->getRevision()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getRuntimeInstance()Ljava/lang/Runtime;
    .locals 1

    .line 159
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    return-object v0
.end method

.method private getSecurityManager()Ljava/lang/SecurityManager;
    .locals 1

    .line 151
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    return-object v0
.end method

.method private getServerUptimeAsMillisecond()J
    .locals 2

    .line 163
    invoke-virtual {p0}, Lorg/jpos/q2/qbean/SystemMonitor;->getServer()Lorg/jpos/q2/Q2;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jpos/q2/Q2;->getUptime()J

    move-result-wide v0

    return-wide v0
.end method

.method private hasSecurityManager()Z
    .locals 1

    .line 155
    invoke-direct {p0}, Lorg/jpos/q2/qbean/SystemMonitor;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$dumpMetrics$0(Ljava/io/File;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 277
    instance-of v0, p2, Lorg/jpos/util/MetricsProvider;

    if-eqz v0, :cond_0

    .line 278
    move-object v0, p2

    check-cast v0, Lorg/jpos/util/MetricsProvider;

    invoke-interface {v0}, Lorg/jpos/util/MetricsProvider;->getMetrics()Lorg/jpos/util/Metrics;

    move-result-object v0

    .line 279
    .local v0, "metrics":Lorg/jpos/util/Metrics;
    if-eqz v0, :cond_0

    .line 280
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/jpos/util/Metrics;->dumpHistograms(Ljava/io/File;Ljava/lang/String;)V

    .line 282
    .end local v0    # "metrics":Lorg/jpos/util/Metrics;
    :cond_0
    return-void
.end method

.method private loadAverage()D
    .locals 4

    .line 262
    invoke-static {}, Ljava/lang/management/ManagementFactory;->getPlatformMBeanServer()Ljavax/management/MBeanServer;

    move-result-object v0

    .line 264
    .local v0, "mbsc":Ljavax/management/MBeanServerConnection;
    :try_start_0
    const-string v1, "java.lang:type=OperatingSystem"

    const-class v2, Ljava/lang/management/OperatingSystemMXBean;

    invoke-static {v0, v1, v2}, Ljava/lang/management/ManagementFactory;->newPlatformMXBeanProxy(Ljavax/management/MBeanServerConnection;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/management/OperatingSystemMXBean;

    .line 267
    .local v1, "osMBean":Ljava/lang/management/OperatingSystemMXBean;
    invoke-interface {v1}, Ljava/lang/management/OperatingSystemMXBean;->getSystemLoadAverage()D

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v2

    .line 268
    .end local v1    # "osMBean":Ljava/lang/management/OperatingSystemMXBean;
    :catchall_0
    move-exception v1

    .line 269
    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    return-wide v1
.end method


# virtual methods
.method public dump(Ljava/io/PrintStream;Ljava/lang/String;)V
    .locals 1
    .param p1, "p"    # Ljava/io/PrintStream;
    .param p2, "indent"    # Ljava/lang/String;

    .line 139
    iget-object v0, p0, Lorg/jpos/q2/qbean/SystemMonitor;->frozenDump:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 140
    invoke-direct {p0, p2}, Lorg/jpos/q2/qbean/SystemMonitor;->generateFrozenDump(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/q2/qbean/SystemMonitor;->frozenDump:Ljava/lang/String;

    .line 141
    :cond_0
    iget-object v0, p0, Lorg/jpos/q2/qbean/SystemMonitor;->frozenDump:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 142
    invoke-direct {p0}, Lorg/jpos/q2/qbean/SystemMonitor;->dumpMetrics()V

    .line 143
    return-void
.end method

.method public declared-synchronized getDetailRequired()Z
    .locals 1

    monitor-enter p0

    .line 103
    :try_start_0
    iget-boolean v0, p0, Lorg/jpos/q2/qbean/SystemMonitor;->detailRequired:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 103
    .end local p0    # "this":Lorg/jpos/q2/qbean/SystemMonitor;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSleepTime()J
    .locals 2

    monitor-enter p0

    .line 92
    :try_start_0
    iget-wide v0, p0, Lorg/jpos/q2/qbean/SystemMonitor;->sleepTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 92
    .end local p0    # "this":Lorg/jpos/q2/qbean/SystemMonitor;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 4

    .line 121
    invoke-direct {p0}, Lorg/jpos/q2/qbean/SystemMonitor;->getLocalHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/q2/qbean/SystemMonitor;->localHost:Ljava/lang/String;

    .line 122
    invoke-static {}, Ljava/lang/management/ManagementFactory;->getRuntimeMXBean()Ljava/lang/management/RuntimeMXBean;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/management/RuntimeMXBean;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/q2/qbean/SystemMonitor;->processName:Ljava/lang/String;

    .line 123
    :goto_0
    invoke-virtual {p0}, Lorg/jpos/q2/qbean/SystemMonitor;->running()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, ""

    if-eqz v0, :cond_0

    .line 124
    invoke-direct {p0, v2}, Lorg/jpos/q2/qbean/SystemMonitor;->generateFrozenDump(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/q2/qbean/SystemMonitor;->frozenDump:Ljava/lang/String;

    .line 125
    iget-object v0, p0, Lorg/jpos/q2/qbean/SystemMonitor;->log:Lorg/jpos/util/Log;

    invoke-virtual {v0, p0}, Lorg/jpos/util/Log;->info(Ljava/lang/Object;)V

    .line 126
    iput-object v1, p0, Lorg/jpos/q2/qbean/SystemMonitor;->frozenDump:Ljava/lang/String;

    .line 128
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/jpos/q2/qbean/SystemMonitor;->sleepTime:J

    add-long/2addr v0, v2

    .line 129
    .local v0, "expected":J
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 130
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lorg/jpos/q2/qbean/SystemMonitor;->delay:J
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "expected":J
    goto :goto_1

    .line 131
    :catch_0
    move-exception v0

    .line 132
    :goto_1
    goto :goto_0

    .line 134
    :cond_0
    invoke-direct {p0, v2}, Lorg/jpos/q2/qbean/SystemMonitor;->generateFrozenDump(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/q2/qbean/SystemMonitor;->frozenDump:Ljava/lang/String;

    .line 135
    iget-object v0, p0, Lorg/jpos/q2/qbean/SystemMonitor;->log:Lorg/jpos/util/Log;

    invoke-virtual {v0, p0}, Lorg/jpos/util/Log;->info(Ljava/lang/Object;)V

    .line 136
    iput-object v1, p0, Lorg/jpos/q2/qbean/SystemMonitor;->frozenDump:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public setConfiguration(Lorg/jpos/core/Configuration;)V
    .locals 1
    .param p1, "cfg"    # Lorg/jpos/core/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 146
    invoke-super {p0, p1}, Lorg/jpos/q2/QBeanSupport;->setConfiguration(Lorg/jpos/core/Configuration;)V

    .line 147
    const-string v0, "script"

    invoke-interface {p1, v0}, Lorg/jpos/core/Configuration;->getAll(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/q2/qbean/SystemMonitor;->scripts:[Ljava/lang/String;

    .line 148
    return-void
.end method

.method public declared-synchronized setDetailRequired(Z)V
    .locals 1
    .param p1, "detail"    # Z

    monitor-enter p0

    .line 96
    :try_start_0
    iput-boolean p1, p0, Lorg/jpos/q2/qbean/SystemMonitor;->detailRequired:Z

    .line 97
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/jpos/q2/qbean/SystemMonitor;->setModified(Z)V

    .line 98
    iget-object v0, p0, Lorg/jpos/q2/qbean/SystemMonitor;->me:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    .end local p0    # "this":Lorg/jpos/q2/qbean/SystemMonitor;
    :cond_0
    monitor-exit p0

    return-void

    .line 95
    .end local p1    # "detail":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setSleepTime(J)V
    .locals 1
    .param p1, "sleepTime"    # J

    monitor-enter p0

    .line 85
    :try_start_0
    iput-wide p1, p0, Lorg/jpos/q2/qbean/SystemMonitor;->sleepTime:J

    .line 86
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/jpos/q2/qbean/SystemMonitor;->setModified(Z)V

    .line 87
    iget-object v0, p0, Lorg/jpos/q2/qbean/SystemMonitor;->me:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    .end local p0    # "this":Lorg/jpos/q2/qbean/SystemMonitor;
    :cond_0
    monitor-exit p0

    return-void

    .line 84
    .end local p1    # "sleepTime":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method showThreadGroup(Ljava/lang/ThreadGroup;Ljava/io/PrintStream;Ljava/lang/String;)V
    .locals 3
    .param p1, "g"    # Ljava/lang/ThreadGroup;
    .param p2, "p"    # Ljava/io/PrintStream;
    .param p3, "indent"    # Ljava/lang/String;

    .line 114
    invoke-virtual {p1}, Ljava/lang/ThreadGroup;->getParent()Ljava/lang/ThreadGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {p1}, Ljava/lang/ThreadGroup;->getParent()Ljava/lang/ThreadGroup;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, p2, v1}, Lorg/jpos/q2/qbean/SystemMonitor;->showThreadGroup(Ljava/lang/ThreadGroup;Ljava/io/PrintStream;Ljava/lang/String;)V

    goto :goto_0

    .line 117
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/jpos/q2/qbean/SystemMonitor;->dumpThreads(Ljava/lang/ThreadGroup;Ljava/io/PrintStream;Ljava/lang/String;)V

    .line 118
    :goto_0
    return-void
.end method

.method public startService()V
    .locals 3

    .line 70
    :try_start_0
    iget-object v0, p0, Lorg/jpos/q2/qbean/SystemMonitor;->log:Lorg/jpos/util/Log;

    const-string v1, "Starting SystemMonitor"

    invoke-virtual {v0, v1}, Lorg/jpos/util/Log;->info(Ljava/lang/Object;)V

    .line 71
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "SystemMonitor"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jpos/q2/qbean/SystemMonitor;->me:Ljava/lang/Thread;

    .line 72
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    goto :goto_0

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lorg/jpos/q2/qbean/SystemMonitor;->log:Lorg/jpos/util/Log;

    const-string v2, "error starting service"

    invoke-virtual {v1, v2, v0}, Lorg/jpos/util/Log;->warn(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 76
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public stopService()V
    .locals 2

    .line 79
    iget-object v0, p0, Lorg/jpos/q2/qbean/SystemMonitor;->log:Lorg/jpos/util/Log;

    const-string v1, "Stopping SystemMonitor"

    invoke-virtual {v0, v1}, Lorg/jpos/util/Log;->info(Ljava/lang/Object;)V

    .line 80
    iget-object v0, p0, Lorg/jpos/q2/qbean/SystemMonitor;->me:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 82
    :cond_0
    return-void
.end method
