.class final Lio/netty/util/internal/CleanerJava6;
.super Ljava/lang/Object;
.source "CleanerJava6.java"

# interfaces
.implements Lio/netty/util/internal/Cleaner;


# static fields
.field private static final CLEANER_FIELD:Ljava/lang/reflect/Field;

.field private static final CLEANER_FIELD_OFFSET:J

.field private static final CLEAN_METHOD:Ljava/lang/reflect/Method;

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 39
    const-class v0, Lio/netty/util/internal/CleanerJava6;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/util/internal/CleanerJava6;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 45
    const/4 v0, 0x0

    .line 46
    .local v0, "error":Ljava/lang/Throwable;
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 48
    .local v1, "direct":Ljava/nio/ByteBuffer;
    :try_start_0
    new-instance v2, Lio/netty/util/internal/CleanerJava6$1;

    invoke-direct {v2, v1}, Lio/netty/util/internal/CleanerJava6$1;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v2

    .line 64
    .local v2, "mayBeCleanerField":Ljava/lang/Object;
    instance-of v3, v2, Ljava/lang/Throwable;

    if-nez v3, :cond_1

    .line 68
    move-object v3, v2

    check-cast v3, Ljava/lang/reflect/Field;

    .line 74
    .local v3, "cleanerField":Ljava/lang/reflect/Field;
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->hasUnsafe()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 75
    invoke-static {v3}, Lio/netty/util/internal/PlatformDependent0;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    .line 76
    .local v4, "fieldOffset":J
    invoke-static {v1, v4, v5}, Lio/netty/util/internal/PlatformDependent0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .local v6, "cleaner":Ljava/lang/Object;
    goto :goto_0

    .line 78
    .end local v4    # "fieldOffset":J
    .end local v6    # "cleaner":Ljava/lang/Object;
    :cond_0
    const-wide/16 v4, -0x1

    .line 79
    .restart local v4    # "fieldOffset":J
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 81
    .restart local v6    # "cleaner":Ljava/lang/Object;
    :goto_0
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "clean"

    const/4 v9, 0x0

    new-array v10, v9, [Ljava/lang/Class;

    invoke-virtual {v7, v8, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 82
    .local v7, "clean":Ljava/lang/reflect/Method;
    new-array v8, v9, [Ljava/lang/Object;

    invoke-virtual {v7, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    nop

    .end local v2    # "mayBeCleanerField":Ljava/lang/Object;
    .end local v6    # "cleaner":Ljava/lang/Object;
    goto :goto_1

    .line 65
    .end local v3    # "cleanerField":Ljava/lang/reflect/Field;
    .end local v4    # "fieldOffset":J
    .end local v7    # "clean":Ljava/lang/reflect/Method;
    .restart local v2    # "mayBeCleanerField":Ljava/lang/Object;
    :cond_1
    move-object v3, v2

    check-cast v3, Ljava/lang/Throwable;

    .end local v0    # "error":Ljava/lang/Throwable;
    .end local v1    # "direct":Ljava/nio/ByteBuffer;
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    .end local v2    # "mayBeCleanerField":Ljava/lang/Object;
    .restart local v0    # "error":Ljava/lang/Throwable;
    .restart local v1    # "direct":Ljava/nio/ByteBuffer;
    :catchall_0
    move-exception v2

    .line 85
    .local v2, "t":Ljava/lang/Throwable;
    const-wide/16 v4, -0x1

    .line 86
    .restart local v4    # "fieldOffset":J
    const/4 v7, 0x0

    .line 87
    .restart local v7    # "clean":Ljava/lang/reflect/Method;
    move-object v0, v2

    .line 88
    const/4 v3, 0x0

    .line 91
    .end local v2    # "t":Ljava/lang/Throwable;
    .restart local v3    # "cleanerField":Ljava/lang/reflect/Field;
    :goto_1
    if-nez v0, :cond_2

    .line 92
    sget-object v2, Lio/netty/util/internal/CleanerJava6;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v6, "java.nio.ByteBuffer.cleaner(): available"

    invoke-interface {v2, v6}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    goto :goto_2

    .line 94
    :cond_2
    sget-object v2, Lio/netty/util/internal/CleanerJava6;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v6, "java.nio.ByteBuffer.cleaner(): unavailable"

    invoke-interface {v2, v6, v0}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 96
    :goto_2
    sput-object v3, Lio/netty/util/internal/CleanerJava6;->CLEANER_FIELD:Ljava/lang/reflect/Field;

    .line 97
    sput-wide v4, Lio/netty/util/internal/CleanerJava6;->CLEANER_FIELD_OFFSET:J

    .line 98
    sput-object v7, Lio/netty/util/internal/CleanerJava6;->CLEAN_METHOD:Ljava/lang/reflect/Method;

    .line 99
    .end local v0    # "error":Ljava/lang/Throwable;
    .end local v1    # "direct":Ljava/nio/ByteBuffer;
    .end local v3    # "cleanerField":Ljava/lang/reflect/Field;
    .end local v4    # "fieldOffset":J
    .end local v7    # "clean":Ljava/lang/reflect/Method;
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p0, "x0"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 34
    invoke-static {p0}, Lio/netty/util/internal/CleanerJava6;->freeDirectBuffer0(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method private static freeDirectBuffer0(Ljava/nio/ByteBuffer;)V
    .locals 4
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 142
    sget-wide v0, Lio/netty/util/internal/CleanerJava6;->CLEANER_FIELD_OFFSET:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 143
    sget-object v0, Lio/netty/util/internal/CleanerJava6;->CLEANER_FIELD:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .local v0, "cleaner":Ljava/lang/Object;
    goto :goto_0

    .line 145
    .end local v0    # "cleaner":Ljava/lang/Object;
    :cond_0
    invoke-static {p0, v0, v1}, Lio/netty/util/internal/PlatformDependent0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 147
    .restart local v0    # "cleaner":Ljava/lang/Object;
    :goto_0
    if-eqz v0, :cond_1

    .line 148
    sget-object v1, Lio/netty/util/internal/CleanerJava6;->CLEAN_METHOD:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    :cond_1
    return-void
.end method

.method private static freeDirectBufferPrivileged(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .line 122
    new-instance v0, Lio/netty/util/internal/CleanerJava6$2;

    invoke-direct {v0, p0}, Lio/netty/util/internal/CleanerJava6$2;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 133
    .local v0, "cause":Ljava/lang/Throwable;
    if-eqz v0, :cond_0

    .line 134
    invoke-static {v0}, Lio/netty/util/internal/PlatformDependent0;->throwException(Ljava/lang/Throwable;)V

    .line 136
    :cond_0
    return-void
.end method

.method static isSupported()Z
    .locals 4

    .line 102
    sget-wide v0, Lio/netty/util/internal/CleanerJava6;->CLEANER_FIELD_OFFSET:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    sget-object v0, Lio/netty/util/internal/CleanerJava6;->CLEANER_FIELD:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public freeDirectBuffer(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 107
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    return-void

    .line 110
    :cond_0
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-nez v0, :cond_1

    .line 112
    :try_start_0
    invoke-static {p1}, Lio/netty/util/internal/CleanerJava6;->freeDirectBuffer0(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    :goto_0
    goto :goto_1

    .line 113
    :catchall_0
    move-exception v0

    .line 114
    .local v0, "cause":Ljava/lang/Throwable;
    invoke-static {v0}, Lio/netty/util/internal/PlatformDependent0;->throwException(Ljava/lang/Throwable;)V

    .end local v0    # "cause":Ljava/lang/Throwable;
    goto :goto_0

    .line 117
    :cond_1
    invoke-static {p1}, Lio/netty/util/internal/CleanerJava6;->freeDirectBufferPrivileged(Ljava/nio/ByteBuffer;)V

    .line 119
    :goto_1
    return-void
.end method
