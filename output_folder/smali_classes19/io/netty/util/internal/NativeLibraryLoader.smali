.class public final Lio/netty/util/internal/NativeLibraryLoader;
.super Ljava/lang/Object;
.source "NativeLibraryLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/util/internal/NativeLibraryLoader$NoexecVolumeDetector;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DELETE_NATIVE_LIB_AFTER_LOADING:Z

.field private static final NATIVE_RESOURCE_HOME:Ljava/lang/String; = "META-INF/native/"

.field private static final TRY_TO_PATCH_SHADED_ID:Z

.field private static final UNIQUE_ID_BYTES:[B

.field private static final WORKDIR:Ljava/io/File;

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 44
    nop

    .line 46
    const-class v0, Lio/netty/util/internal/NativeLibraryLoader;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/util/internal/NativeLibraryLoader;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 54
    sget-object v1, Lio/netty/util/CharsetUtil;->US_ASCII:Ljava/nio/charset/Charset;

    .line 55
    const-string v2, "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    sput-object v1, Lio/netty/util/internal/NativeLibraryLoader;->UNIQUE_ID_BYTES:[B

    .line 58
    const-string v1, "io.netty.native.workdir"

    invoke-static {v1}, Lio/netty/util/internal/SystemPropertyUtil;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, "workdir":Ljava/lang/String;
    const-string v2, "-Dio.netty.native.workdir: "

    if-eqz v1, :cond_0

    .line 60
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 61
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 64
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 67
    goto :goto_0

    .line 65
    :catch_0
    move-exception v3

    .line 69
    :goto_0
    sput-object v0, Lio/netty/util/internal/NativeLibraryLoader;->WORKDIR:Ljava/io/File;

    .line 70
    sget-object v3, Lio/netty/util/internal/NativeLibraryLoader;->logger:Lio/netty/util/internal/logging/InternalLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    .line 71
    .end local v0    # "f":Ljava/io/File;
    goto :goto_1

    .line 72
    :cond_0
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->tmpdir()Ljava/io/File;

    move-result-object v3

    sput-object v3, Lio/netty/util/internal/NativeLibraryLoader;->WORKDIR:Ljava/io/File;

    .line 73
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (io.netty.tmpdir)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    .line 76
    :goto_1
    const-string v0, "io.netty.native.deleteLibAfterLoading"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lio/netty/util/internal/SystemPropertyUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lio/netty/util/internal/NativeLibraryLoader;->DELETE_NATIVE_LIB_AFTER_LOADING:Z

    .line 78
    sget-object v3, Lio/netty/util/internal/NativeLibraryLoader;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v4, "-Dio.netty.native.deleteLibAfterLoading: {}"

    invoke-interface {v3, v4, v0}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 80
    const-string v0, "io.netty.native.tryPatchShadedId"

    invoke-static {v0, v2}, Lio/netty/util/internal/SystemPropertyUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lio/netty/util/internal/NativeLibraryLoader;->TRY_TO_PATCH_SHADED_ID:Z

    .line 82
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v2, "-Dio.netty.native.tryPatchShadedId: {}"

    invoke-interface {v3, v2, v0}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 83
    .end local v1    # "workdir":Ljava/lang/String;
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 481
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 483
    return-void
.end method

.method private static calculatePackagePrefix()Ljava/lang/String;
    .locals 5

    .line 115
    const-class v0, Lio/netty/util/internal/NativeLibraryLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "maybeShaded":Ljava/lang/String;
    const-string v1, "io!netty!util!internal!NativeLibraryLoader"

    const/16 v2, 0x21

    const/16 v3, 0x2e

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, "expected":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 123
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v2, v4

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 119
    :cond_0
    new-instance v2, Ljava/lang/UnsatisfiedLinkError;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v3

    const/4 v3, 0x1

    aput-object v0, v4, v3

    const-string v3, "Could not find prefix added to %s to get %s. When shading, only adding a package prefix is supported"

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static classToByteArray(Ljava/lang/Class;)[B
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 445
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 446
    .local v0, "fileName":Ljava/lang/String;
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 447
    .local v1, "lastDot":I
    if-lez v1, :cond_0

    .line 448
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 450
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".class"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2

    .line 451
    .local v2, "classUrl":Ljava/net/URL;
    if-eqz v2, :cond_2

    .line 454
    const/16 v3, 0x400

    new-array v3, v3, [B

    .line 455
    .local v3, "buf":[B
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    const/16 v5, 0x1000

    invoke-direct {v4, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 456
    .local v4, "out":Ljava/io/ByteArrayOutputStream;
    const/4 v5, 0x0

    .line 458
    .local v5, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v6

    move-object v5, v6

    .line 459
    :goto_0
    invoke-virtual {v5, v3}, Ljava/io/InputStream;->read([B)I

    move-result v6

    move v7, v6

    .local v7, "r":I
    const/4 v8, -0x1

    if-eq v6, v8, :cond_1

    .line 460
    const/4 v6, 0x0

    invoke-virtual {v4, v3, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 462
    .end local v7    # "r":I
    :cond_1
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 466
    invoke-static {v5}, Lio/netty/util/internal/NativeLibraryLoader;->closeQuietly(Ljava/io/Closeable;)V

    .line 467
    invoke-static {v4}, Lio/netty/util/internal/NativeLibraryLoader;->closeQuietly(Ljava/io/Closeable;)V

    .line 462
    return-object v6

    .line 466
    :catchall_0
    move-exception v6

    goto :goto_1

    .line 463
    :catch_0
    move-exception v6

    .line 464
    .local v6, "ex":Ljava/io/IOException;
    :try_start_1
    new-instance v7, Ljava/lang/ClassNotFoundException;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v6}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "fileName":Ljava/lang/String;
    .end local v1    # "lastDot":I
    .end local v2    # "classUrl":Ljava/net/URL;
    .end local v3    # "buf":[B
    .end local v4    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "in":Ljava/io/InputStream;
    .end local p0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 466
    .end local v6    # "ex":Ljava/io/IOException;
    .restart local v0    # "fileName":Ljava/lang/String;
    .restart local v1    # "lastDot":I
    .restart local v2    # "classUrl":Ljava/net/URL;
    .restart local v3    # "buf":[B
    .restart local v4    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "in":Ljava/io/InputStream;
    .restart local p0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    invoke-static {v5}, Lio/netty/util/internal/NativeLibraryLoader;->closeQuietly(Ljava/io/Closeable;)V

    .line 467
    invoke-static {v4}, Lio/netty/util/internal/NativeLibraryLoader;->closeQuietly(Ljava/io/Closeable;)V

    .line 468
    throw v6

    .line 452
    .end local v3    # "buf":[B
    .end local v4    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "in":Ljava/io/InputStream;
    :cond_2
    new-instance v3, Ljava/lang/ClassNotFoundException;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static closeQuietly(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "c"    # Ljava/io/Closeable;

    .line 472
    if-eqz p0, :cond_0

    .line 474
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 477
    goto :goto_0

    .line 475
    :catch_0
    move-exception v0

    .line 479
    :cond_0
    :goto_0
    return-void
.end method

.method public static load(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 18
    .param p0, "originalName"    # Ljava/lang/String;
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .line 131
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, ".jnilib"

    invoke-static {}, Lio/netty/util/internal/NativeLibraryLoader;->calculatePackagePrefix()Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x2e

    const/16 v5, 0x5f

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    .line 132
    .local v5, "packagePrefix":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 133
    .local v6, "name":Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v0

    .line 136
    .local v7, "suppressed":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    const/4 v8, 0x0

    :try_start_0
    invoke-static {v2, v6, v8}, Lio/netty/util/internal/NativeLibraryLoader;->loadLibrary(Ljava/lang/ClassLoader;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    return-void

    .line 138
    :catchall_0
    move-exception v0

    move-object v9, v0

    move-object v0, v9

    .line 139
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    sget-object v9, Lio/netty/util/internal/NativeLibraryLoader;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v9}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    move-result v9

    const/4 v10, 0x1

    if-eqz v9, :cond_0

    .line 141
    sget-object v9, Lio/netty/util/internal/NativeLibraryLoader;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v6, v11, v8

    sget-object v12, Lio/netty/util/internal/NativeLibraryLoader;->WORKDIR:Ljava/io/File;

    aput-object v12, v11, v10

    const/4 v12, 0x2

    aput-object v0, v11, v12

    const-string v12, "{} cannot be loaded from java.library.path, now trying export to -Dio.netty.native.workdir: {}"

    invoke-interface {v9, v12, v11}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_0
    invoke-static {v6}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 148
    .local v9, "libname":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "META-INF/native/"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 150
    .local v11, "path":Ljava/lang/String;
    const/4 v12, 0x0

    .line 151
    .local v12, "in":Ljava/io/InputStream;
    const/4 v13, 0x0

    .line 152
    .local v13, "out":Ljava/io/OutputStream;
    const/4 v14, 0x0

    .line 154
    .local v14, "tmpFile":Ljava/io/File;
    if-nez v2, :cond_1

    .line 155
    invoke-static {v11}, Ljava/lang/ClassLoader;->getSystemResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    move-object v15, v0

    .local v0, "url":Ljava/net/URL;
    goto :goto_0

    .line 157
    .end local v0    # "url":Ljava/net/URL;
    :cond_1
    invoke-virtual {v2, v11}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    move-object v15, v0

    .line 160
    .local v15, "url":Ljava/net/URL;
    :goto_0
    if-nez v15, :cond_6

    .line 161
    :try_start_1
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->isOsx()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 162
    invoke-virtual {v11, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string v10, "META-INF/native/lib"

    if-eqz v0, :cond_2

    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".dynlib"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "fileName":Ljava/lang/String;
    if-nez v2, :cond_3

    .line 165
    invoke-static {v0}, Ljava/lang/ClassLoader;->getSystemResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v3

    move-object v15, v3

    .end local v15    # "url":Ljava/net/URL;
    .local v3, "url":Ljava/net/URL;
    goto :goto_2

    .line 167
    .end local v3    # "url":Ljava/net/URL;
    .restart local v15    # "url":Ljava/net/URL;
    :cond_3
    invoke-virtual {v2, v0}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v3

    move-object v15, v3

    .line 169
    :goto_2
    if-eqz v15, :cond_4

    .line 174
    .end local v0    # "fileName":Ljava/lang/String;
    goto :goto_3

    .line 170
    .restart local v0    # "fileName":Ljava/lang/String;
    :cond_4
    new-instance v3, Ljava/io/FileNotFoundException;

    invoke-direct {v3, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 171
    .local v3, "fnf":Ljava/io/FileNotFoundException;
    invoke-static {v3, v7}, Lio/netty/util/internal/ThrowableUtil;->addSuppressedAndClear(Ljava/lang/Throwable;Ljava/util/List;)V

    .line 172
    nop

    .end local v5    # "packagePrefix":Ljava/lang/String;
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "suppressed":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    .end local v9    # "libname":Ljava/lang/String;
    .end local v11    # "path":Ljava/lang/String;
    .end local v12    # "in":Ljava/io/InputStream;
    .end local v13    # "out":Ljava/io/OutputStream;
    .end local v14    # "tmpFile":Ljava/io/File;
    .end local v15    # "url":Ljava/net/URL;
    .end local p0    # "originalName":Ljava/lang/String;
    .end local p1    # "loader":Ljava/lang/ClassLoader;
    throw v3

    .line 175
    .end local v0    # "fileName":Ljava/lang/String;
    .end local v3    # "fnf":Ljava/io/FileNotFoundException;
    .restart local v5    # "packagePrefix":Ljava/lang/String;
    .restart local v6    # "name":Ljava/lang/String;
    .restart local v7    # "suppressed":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    .restart local v9    # "libname":Ljava/lang/String;
    .restart local v11    # "path":Ljava/lang/String;
    .restart local v12    # "in":Ljava/io/InputStream;
    .restart local v13    # "out":Ljava/io/OutputStream;
    .restart local v14    # "tmpFile":Ljava/io/File;
    .restart local v15    # "url":Ljava/net/URL;
    .restart local p0    # "originalName":Ljava/lang/String;
    .restart local p1    # "loader":Ljava/lang/ClassLoader;
    :cond_5
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0, v11}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 176
    .local v0, "fnf":Ljava/io/FileNotFoundException;
    invoke-static {v0, v7}, Lio/netty/util/internal/ThrowableUtil;->addSuppressedAndClear(Ljava/lang/Throwable;Ljava/util/List;)V

    .line 177
    nop

    .end local v5    # "packagePrefix":Ljava/lang/String;
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "suppressed":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    .end local v9    # "libname":Ljava/lang/String;
    .end local v11    # "path":Ljava/lang/String;
    .end local v12    # "in":Ljava/io/InputStream;
    .end local v13    # "out":Ljava/io/OutputStream;
    .end local v14    # "tmpFile":Ljava/io/File;
    .end local v15    # "url":Ljava/net/URL;
    .end local p0    # "originalName":Ljava/lang/String;
    .end local p1    # "loader":Ljava/lang/ClassLoader;
    throw v0

    .line 181
    .end local v0    # "fnf":Ljava/io/FileNotFoundException;
    .restart local v5    # "packagePrefix":Ljava/lang/String;
    .restart local v6    # "name":Ljava/lang/String;
    .restart local v7    # "suppressed":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    .restart local v9    # "libname":Ljava/lang/String;
    .restart local v11    # "path":Ljava/lang/String;
    .restart local v12    # "in":Ljava/io/InputStream;
    .restart local v13    # "out":Ljava/io/OutputStream;
    .restart local v14    # "tmpFile":Ljava/io/File;
    .restart local v15    # "url":Ljava/net/URL;
    .restart local p0    # "originalName":Ljava/lang/String;
    .restart local p1    # "loader":Ljava/lang/ClassLoader;
    :cond_6
    :goto_3
    invoke-virtual {v9, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 182
    .local v0, "index":I
    invoke-virtual {v9, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 183
    .local v3, "prefix":Ljava/lang/String;
    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 185
    .local v4, "suffix":Ljava/lang/String;
    sget-object v10, Lio/netty/util/internal/NativeLibraryLoader;->WORKDIR:Ljava/io/File;

    invoke-static {v3, v4, v10}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v10

    move-object v14, v10

    .line 186
    invoke-virtual {v15}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v10

    move-object v12, v10

    .line 187
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v13, v10

    .line 189
    invoke-static {v5}, Lio/netty/util/internal/NativeLibraryLoader;->shouldShadedLibraryIdBePatched(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 190
    invoke-static {v12, v13, v1, v6}, Lio/netty/util/internal/NativeLibraryLoader;->patchShadedLibraryId(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)Z

    move/from16 v16, v0

    goto :goto_5

    .line 192
    :cond_7
    const/16 v10, 0x2000

    new-array v10, v10, [B

    .line 194
    .local v10, "buffer":[B
    :goto_4
    invoke-virtual {v12, v10}, Ljava/io/InputStream;->read([B)I

    move-result v16

    move/from16 v17, v16

    .local v17, "length":I
    if-lez v16, :cond_8

    .line 195
    move/from16 v16, v0

    move/from16 v0, v17

    .end local v17    # "length":I
    .local v0, "length":I
    .local v16, "index":I
    invoke-virtual {v13, v10, v8, v0}, Ljava/io/OutputStream;->write([BII)V

    move/from16 v0, v16

    goto :goto_4

    .line 194
    .end local v16    # "index":I
    .local v0, "index":I
    .restart local v17    # "length":I
    :cond_8
    move/from16 v16, v0

    move/from16 v0, v17

    .line 199
    .end local v0    # "index":I
    .end local v10    # "buffer":[B
    .end local v17    # "length":I
    .restart local v16    # "index":I
    :goto_5
    invoke-virtual {v13}, Ljava/io/OutputStream;->flush()V

    .line 203
    invoke-static {v13}, Lio/netty/util/internal/NativeLibraryLoader;->closeQuietly(Ljava/io/Closeable;)V

    .line 204
    const/4 v13, 0x0

    .line 205
    invoke-virtual {v14}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x1

    invoke-static {v2, v0, v8}, Lio/netty/util/internal/NativeLibraryLoader;->loadLibrary(Ljava/lang/ClassLoader;Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 231
    .end local v3    # "prefix":Ljava/lang/String;
    .end local v4    # "suffix":Ljava/lang/String;
    .end local v16    # "index":I
    invoke-static {v12}, Lio/netty/util/internal/NativeLibraryLoader;->closeQuietly(Ljava/io/Closeable;)V

    .line 232
    invoke-static {v13}, Lio/netty/util/internal/NativeLibraryLoader;->closeQuietly(Ljava/io/Closeable;)V

    .line 236
    if-eqz v14, :cond_a

    sget-boolean v0, Lio/netty/util/internal/NativeLibraryLoader;->DELETE_NATIVE_LIB_AFTER_LOADING:Z

    if-eqz v0, :cond_9

    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_a

    .line 237
    :cond_9
    invoke-virtual {v14}, Ljava/io/File;->deleteOnExit()V

    .line 240
    :cond_a
    return-void

    .line 231
    :catchall_1
    move-exception v0

    goto :goto_8

    .line 225
    :catch_0
    move-exception v0

    .line 226
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v3, Ljava/lang/UnsatisfiedLinkError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "could not load a native library: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    .line 227
    .local v3, "ule":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v3, v0}, Ljava/lang/UnsatisfiedLinkError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 228
    invoke-static {v3, v7}, Lio/netty/util/internal/ThrowableUtil;->addSuppressedAndClear(Ljava/lang/Throwable;Ljava/util/List;)V

    .line 229
    nop

    .end local v5    # "packagePrefix":Ljava/lang/String;
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "suppressed":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    .end local v9    # "libname":Ljava/lang/String;
    .end local v11    # "path":Ljava/lang/String;
    .end local v12    # "in":Ljava/io/InputStream;
    .end local v13    # "out":Ljava/io/OutputStream;
    .end local v14    # "tmpFile":Ljava/io/File;
    .end local v15    # "url":Ljava/net/URL;
    .end local p0    # "originalName":Ljava/lang/String;
    .end local p1    # "loader":Ljava/lang/ClassLoader;
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 206
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "ule":Ljava/lang/UnsatisfiedLinkError;
    .restart local v5    # "packagePrefix":Ljava/lang/String;
    .restart local v6    # "name":Ljava/lang/String;
    .restart local v7    # "suppressed":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    .restart local v9    # "libname":Ljava/lang/String;
    .restart local v11    # "path":Ljava/lang/String;
    .restart local v12    # "in":Ljava/io/InputStream;
    .restart local v13    # "out":Ljava/io/OutputStream;
    .restart local v14    # "tmpFile":Ljava/io/File;
    .restart local v15    # "url":Ljava/net/URL;
    .restart local p0    # "originalName":Ljava/lang/String;
    .restart local p1    # "loader":Ljava/lang/ClassLoader;
    :catch_1
    move-exception v0

    move-object v3, v0

    .line 208
    .local v3, "e":Ljava/lang/UnsatisfiedLinkError;
    if-eqz v14, :cond_b

    :try_start_4
    invoke-virtual {v14}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v14}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 209
    invoke-static {v14}, Lio/netty/util/internal/NativeLibraryLoader$NoexecVolumeDetector;->access$000(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 213
    sget-object v0, Lio/netty/util/internal/NativeLibraryLoader;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v4, "{} exists but cannot be executed even when execute permissions set; check volume for \"noexec\" flag; use -D{}=[path] to set native working directory separately."

    .line 216
    invoke-virtual {v14}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    const-string v10, "io.netty.native.workdir"

    .line 213
    invoke-interface {v0, v4, v8, v10}, Lio/netty/util/internal/logging/InternalLogger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_6

    .line 218
    :catchall_2
    move-exception v0

    .line 219
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_5
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    sget-object v4, Lio/netty/util/internal/NativeLibraryLoader;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v8, "Error checking if {} is on a file store mounted with noexec"

    invoke-interface {v4, v8, v14, v0}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_7

    .line 221
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_b
    :goto_6
    nop

    .line 223
    :goto_7
    invoke-static {v3, v7}, Lio/netty/util/internal/ThrowableUtil;->addSuppressedAndClear(Ljava/lang/Throwable;Ljava/util/List;)V

    .line 224
    nop

    .end local v5    # "packagePrefix":Ljava/lang/String;
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "suppressed":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    .end local v9    # "libname":Ljava/lang/String;
    .end local v11    # "path":Ljava/lang/String;
    .end local v12    # "in":Ljava/io/InputStream;
    .end local v13    # "out":Ljava/io/OutputStream;
    .end local v14    # "tmpFile":Ljava/io/File;
    .end local v15    # "url":Ljava/net/URL;
    .end local p0    # "originalName":Ljava/lang/String;
    .end local p1    # "loader":Ljava/lang/ClassLoader;
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 231
    .end local v3    # "e":Ljava/lang/UnsatisfiedLinkError;
    .restart local v5    # "packagePrefix":Ljava/lang/String;
    .restart local v6    # "name":Ljava/lang/String;
    .restart local v7    # "suppressed":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    .restart local v9    # "libname":Ljava/lang/String;
    .restart local v11    # "path":Ljava/lang/String;
    .restart local v12    # "in":Ljava/io/InputStream;
    .restart local v13    # "out":Ljava/io/OutputStream;
    .restart local v14    # "tmpFile":Ljava/io/File;
    .restart local v15    # "url":Ljava/net/URL;
    .restart local p0    # "originalName":Ljava/lang/String;
    .restart local p1    # "loader":Ljava/lang/ClassLoader;
    :goto_8
    invoke-static {v12}, Lio/netty/util/internal/NativeLibraryLoader;->closeQuietly(Ljava/io/Closeable;)V

    .line 232
    invoke-static {v13}, Lio/netty/util/internal/NativeLibraryLoader;->closeQuietly(Ljava/io/Closeable;)V

    .line 236
    if-eqz v14, :cond_d

    sget-boolean v3, Lio/netty/util/internal/NativeLibraryLoader;->DELETE_NATIVE_LIB_AFTER_LOADING:Z

    if-eqz v3, :cond_c

    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_d

    .line 237
    :cond_c
    invoke-virtual {v14}, Ljava/io/File;->deleteOnExit()V

    .line 239
    :cond_d
    throw v0
.end method

.method public static varargs loadFirstAvailable(Ljava/lang/ClassLoader;[Ljava/lang/String;)V
    .locals 7
    .param p0, "loader"    # Ljava/lang/ClassLoader;
    .param p1, "names"    # [Ljava/lang/String;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .local v0, "suppressed":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 96
    .local v3, "name":Ljava/lang/String;
    :try_start_0
    invoke-static {v3, p0}, Lio/netty/util/internal/NativeLibraryLoader;->load(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    return-void

    .line 98
    :catchall_0
    move-exception v4

    .line 99
    .local v4, "t":Ljava/lang/Throwable;
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    sget-object v5, Lio/netty/util/internal/NativeLibraryLoader;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v6, "Unable to load the library \'{}\', trying next name..."

    invoke-interface {v5, v6, v3, v4}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 94
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "t":Ljava/lang/Throwable;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 103
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load any of the given libraries: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 104
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 105
    .local v1, "iae":Ljava/lang/IllegalArgumentException;
    invoke-static {v1, v0}, Lio/netty/util/internal/ThrowableUtil;->addSuppressedAndClear(Ljava/lang/Throwable;Ljava/util/List;)V

    .line 106
    throw v1
.end method

.method private static loadLibrary(Ljava/lang/ClassLoader;Ljava/lang/String;Z)V
    .locals 5
    .param p0, "loader"    # Ljava/lang/ClassLoader;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "absolute"    # Z

    .line 336
    const-string v0, "Successfully loaded the library {}"

    const-string v1, "Unable to load the library \'{}\', trying other loading mechanism."

    const/4 v2, 0x0

    .line 340
    .local v2, "suppressed":Ljava/lang/Throwable;
    :try_start_0
    const-class v3, Lio/netty/util/internal/NativeLibraryUtil;

    invoke-static {p0, v3}, Lio/netty/util/internal/NativeLibraryLoader;->tryToLoadClass(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3

    .line 341
    .local v3, "newHelper":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v3, p1, p2}, Lio/netty/util/internal/NativeLibraryLoader;->loadLibraryByHelper(Ljava/lang/Class;Ljava/lang/String;Z)V

    .line 342
    sget-object v4, Lio/netty/util/internal/NativeLibraryLoader;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v4, v0, p1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 343
    return-void

    .line 347
    .end local v3    # "newHelper":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v3

    .line 348
    .local v3, "e":Ljava/lang/Exception;
    move-object v2, v3

    .line 349
    :try_start_1
    sget-object v4, Lio/netty/util/internal/NativeLibraryLoader;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v4, v1, p1, v3}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 344
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 345
    .local v3, "e":Ljava/lang/UnsatisfiedLinkError;
    move-object v2, v3

    .line 346
    sget-object v4, Lio/netty/util/internal/NativeLibraryLoader;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v4, v1, p1, v3}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 350
    .end local v3    # "e":Ljava/lang/UnsatisfiedLinkError;
    nop

    .line 351
    :goto_0
    invoke-static {p1, p2}, Lio/netty/util/internal/NativeLibraryUtil;->loadLibrary(Ljava/lang/String;Z)V

    .line 352
    sget-object v1, Lio/netty/util/internal/NativeLibraryLoader;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v1, v0, p1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_2

    .line 358
    nop

    .line 359
    return-void

    .line 353
    :catch_2
    move-exception v0

    .line 354
    .local v0, "ule":Ljava/lang/UnsatisfiedLinkError;
    nop

    .line 355
    invoke-static {v0, v2}, Lio/netty/util/internal/ThrowableUtil;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 357
    throw v0
.end method

.method private static loadLibraryByHelper(Ljava/lang/Class;Ljava/lang/String;Z)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "absolute"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsatisfiedLinkError;
        }
    .end annotation

    .line 363
    .local p0, "helper":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lio/netty/util/internal/NativeLibraryLoader$1;

    invoke-direct {v0, p0, p1, p2}, Lio/netty/util/internal/NativeLibraryLoader$1;-><init>(Ljava/lang/Class;Ljava/lang/String;Z)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    .line 377
    .local v0, "ret":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Throwable;

    if-eqz v1, :cond_2

    .line 378
    move-object v1, v0

    check-cast v1, Ljava/lang/Throwable;

    .line 379
    .local v1, "t":Ljava/lang/Throwable;
    instance-of v2, v1, Ljava/lang/UnsatisfiedLinkError;

    if-nez v2, :cond_1

    .line 380
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    .line 381
    .local v2, "cause":Ljava/lang/Throwable;
    instance-of v3, v2, Ljava/lang/UnsatisfiedLinkError;

    if-eqz v3, :cond_0

    .line 382
    move-object v3, v2

    check-cast v3, Ljava/lang/UnsatisfiedLinkError;

    throw v3

    .line 384
    :cond_0
    new-instance v3, Ljava/lang/UnsatisfiedLinkError;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    .line 385
    .local v3, "ule":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v3, v1}, Ljava/lang/UnsatisfiedLinkError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 386
    throw v3

    .line 379
    .end local v2    # "cause":Ljava/lang/Throwable;
    .end local v3    # "ule":Ljava/lang/UnsatisfiedLinkError;
    :cond_1
    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " should be a wrapper throwable"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 388
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_2
    return-void
.end method

.method static patchShadedLibraryId(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "originalName"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 245
    const/16 v0, 0x2000

    new-array v0, v0, [B

    .line 248
    .local v0, "buffer":[B
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 250
    .local v1, "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    move v3, v2

    .local v3, "length":I
    const/4 v4, 0x0

    if-lez v2, :cond_0

    .line 251
    invoke-virtual {v1, v0, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 253
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 254
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 255
    .local v2, "bytes":[B
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 259
    invoke-static {v2, p2, p3}, Lio/netty/util/internal/NativeLibraryLoader;->patchShadedLibraryId([BLjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 262
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->normalizedOs()Ljava/lang/String;

    move-result-object v5

    .line 263
    .local v5, "os":Ljava/lang/String;
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->normalizedArch()Ljava/lang/String;

    move-result-object v6

    .line 264
    .local v6, "arch":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 265
    .local v7, "osArch":Ljava/lang/String;
    invoke-virtual {p2, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 266
    nop

    .line 267
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p2, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 266
    invoke-static {v2, v8, p3}, Lio/netty/util/internal/NativeLibraryLoader;->patchShadedLibraryId([BLjava/lang/String;Ljava/lang/String;)Z

    move-result v8

    .local v8, "patched":Z
    goto :goto_1

    .line 269
    .end local v8    # "patched":Z
    :cond_1
    const/4 v8, 0x0

    .line 271
    .end local v5    # "os":Ljava/lang/String;
    .end local v6    # "arch":Ljava/lang/String;
    .end local v7    # "osArch":Ljava/lang/String;
    .restart local v8    # "patched":Z
    :goto_1
    goto :goto_2

    .line 272
    .end local v8    # "patched":Z
    :cond_2
    const/4 v8, 0x1

    .line 274
    .restart local v8    # "patched":Z
    :goto_2
    array-length v5, v2

    invoke-virtual {p1, v2, v4, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 275
    return v8
.end method

.method private static patchShadedLibraryId([BLjava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p0, "bytes"    # [B
    .param p1, "originalName"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .line 288
    sget-object v0, Lio/netty/util/CharsetUtil;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 289
    .local v0, "nameBytes":[B
    const/4 v1, -0x1

    .line 295
    .local v1, "idIdx":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_3

    array-length v3, p0

    sub-int/2addr v3, v2

    array-length v4, v0

    if-lt v3, v4, :cond_3

    .line 296
    move v3, v2

    .line 297
    .local v3, "idx":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    array-length v5, v0

    if-ge v4, v5, :cond_2

    .line 298
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "idx":I
    .local v5, "idx":I
    aget-byte v3, p0, v3

    add-int/lit8 v6, v4, 0x1

    .end local v4    # "j":I
    .local v6, "j":I
    aget-byte v4, v0, v4

    if-eq v3, v4, :cond_0

    .line 300
    goto :goto_2

    .line 301
    :cond_0
    array-length v3, v0

    if-ne v6, v3, :cond_1

    .line 303
    move v1, v2

    .line 304
    goto :goto_3

    .line 301
    :cond_1
    move v3, v5

    move v4, v6

    goto :goto_1

    .line 295
    .end local v5    # "idx":I
    .end local v6    # "j":I
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 309
    .end local v2    # "i":I
    :cond_3
    :goto_3
    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_4

    .line 310
    sget-object v2, Lio/netty/util/internal/NativeLibraryLoader;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v4, "Was not able to find the ID of the shaded native library {}, can\'t adjust it."

    invoke-interface {v2, v4, p2}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 311
    return v3

    .line 314
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_4
    array-length v4, v0

    if-ge v2, v4, :cond_5

    .line 316
    add-int v4, v1, v2

    sget-object v5, Lio/netty/util/internal/NativeLibraryLoader;->UNIQUE_ID_BYTES:[B

    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->threadLocalRandom()Ljava/util/Random;

    move-result-object v6

    array-length v7, v5

    .line 317
    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    aget-byte v5, v5, v6

    aput-byte v5, p0, v4

    .line 314
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 320
    .end local v2    # "i":I
    :cond_5
    sget-object v2, Lio/netty/util/internal/NativeLibraryLoader;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v2}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_6

    .line 321
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v3

    aput-object p1, v4, v5

    const/4 v3, 0x2

    new-instance v6, Ljava/lang/String;

    array-length v7, v0

    sget-object v8, Lio/netty/util/CharsetUtil;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, p0, v1, v7, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    aput-object v6, v4, v3

    const-string v3, "Found the ID of the shaded native library {}. Replacing ID part {} with {}"

    invoke-interface {v2, v3, v4}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 325
    :cond_6
    return v5
.end method

.method private static shouldShadedLibraryIdBePatched(Ljava/lang/String;)Z
    .locals 1
    .param p0, "packagePrefix"    # Ljava/lang/String;

    .line 279
    sget-boolean v0, Lio/netty/util/internal/NativeLibraryLoader;->TRY_TO_PATCH_SHADED_ID:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->isOsx()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static tryToLoadClass(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Class;
    .locals 3
    .param p0, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 400
    .local p1, "helper":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 401
    :catch_0
    move-exception v0

    .line 402
    .local v0, "e1":Ljava/lang/ClassNotFoundException;
    if-eqz p0, :cond_0

    .line 408
    :try_start_1
    invoke-static {p1}, Lio/netty/util/internal/NativeLibraryLoader;->classToByteArray(Ljava/lang/Class;)[B

    move-result-object v1

    .line 409
    .local v1, "classBinary":[B
    new-instance v2, Lio/netty/util/internal/NativeLibraryLoader$2;

    invoke-direct {v2, p0, p1, v1}, Lio/netty/util/internal/NativeLibraryLoader$2;-><init>(Ljava/lang/ClassLoader;Ljava/lang/Class;[B)V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    return-object v2

    .line 431
    .end local v1    # "classBinary":[B
    :catch_1
    move-exception v1

    .line 432
    .local v1, "e2":Ljava/lang/Error;
    invoke-static {v1, v0}, Lio/netty/util/internal/ThrowableUtil;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 433
    throw v1

    .line 428
    .end local v1    # "e2":Ljava/lang/Error;
    :catch_2
    move-exception v1

    .line 429
    .local v1, "e2":Ljava/lang/RuntimeException;
    invoke-static {v1, v0}, Lio/netty/util/internal/ThrowableUtil;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 430
    throw v1

    .line 425
    .end local v1    # "e2":Ljava/lang/RuntimeException;
    :catch_3
    move-exception v1

    .line 426
    .local v1, "e2":Ljava/lang/ClassNotFoundException;
    invoke-static {v1, v0}, Lio/netty/util/internal/ThrowableUtil;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 427
    throw v1

    .line 404
    .end local v1    # "e2":Ljava/lang/ClassNotFoundException;
    :cond_0
    throw v0
.end method
