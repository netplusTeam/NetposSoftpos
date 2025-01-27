.class final Lio/netty/util/NetUtil$1;
.super Ljava/lang/Object;
.source "NetUtil.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/NetUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Integer;
    .locals 9

    .line 260
    const-string v0, "Failed to get SOMAXCONN from sysctl and file {}. Default: {}"

    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->isWindows()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xc8

    goto :goto_0

    :cond_0
    const/16 v1, 0x80

    .line 261
    .local v1, "somaxconn":I
    :goto_0
    new-instance v2, Ljava/io/File;

    const-string v3, "/proc/sys/net/core/somaxconn"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 262
    .local v2, "file":Ljava/io/File;
    const/4 v3, 0x0

    .line 267
    .local v3, "in":Ljava/io/BufferedReader;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 268
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v3, v5

    .line 269
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v1, v5

    .line 270
    invoke-static {}, Lio/netty/util/NetUtil;->access$000()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v5

    invoke-interface {v5}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 271
    invoke-static {}, Lio/netty/util/NetUtil;->access$000()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v5

    const-string v6, "{}: {}"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v6, v2, v7}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 275
    :cond_1
    const/4 v5, 0x0

    .line 276
    .local v5, "tmp":Ljava/lang/Integer;
    const-string v6, "io.netty.net.somaxconn.trySysctl"

    invoke-static {v6, v4}, Lio/netty/util/internal/SystemPropertyUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 277
    const-string v6, "kern.ipc.somaxconn"

    invoke-static {v6}, Lio/netty/util/NetUtil;->access$100(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    move-object v5, v6

    .line 278
    if-nez v5, :cond_2

    .line 279
    const-string v6, "kern.ipc.soacceptqueue"

    invoke-static {v6}, Lio/netty/util/NetUtil;->access$100(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    move-object v5, v6

    .line 280
    if-eqz v5, :cond_3

    .line 281
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move v1, v6

    goto :goto_1

    .line 284
    :cond_2
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move v1, v6

    .line 288
    :cond_3
    :goto_1
    if-nez v5, :cond_4

    .line 289
    invoke-static {}, Lio/netty/util/NetUtil;->access$000()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v6

    .line 290
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 289
    invoke-interface {v6, v0, v2, v7}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    .end local v5    # "tmp":Ljava/lang/Integer;
    :cond_4
    :goto_2
    if-eqz v3, :cond_6

    .line 301
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 304
    :goto_3
    goto :goto_4

    .line 302
    :catch_0
    move-exception v0

    goto :goto_3

    .line 299
    :catchall_0
    move-exception v0

    goto :goto_5

    .line 293
    :catch_1
    move-exception v5

    .line 294
    .local v5, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {}, Lio/netty/util/NetUtil;->access$000()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v6

    invoke-interface {v6}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 295
    invoke-static {}, Lio/netty/util/NetUtil;->access$000()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v6

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v2, v7, v4

    const/4 v4, 0x1

    .line 296
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    const/4 v4, 0x2

    aput-object v5, v7, v4

    .line 295
    invoke-interface {v6, v0, v7}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 299
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_5
    if-eqz v3, :cond_6

    .line 301
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 307
    :cond_6
    :goto_4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 299
    :goto_5
    if-eqz v3, :cond_7

    .line 301
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 304
    goto :goto_6

    .line 302
    :catch_2
    move-exception v4

    .line 306
    :cond_7
    :goto_6
    throw v0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .line 253
    invoke-virtual {p0}, Lio/netty/util/NetUtil$1;->run()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
