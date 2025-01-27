.class public final Lio/netty/util/internal/PlatformDependent;
.super Ljava/lang/Object;
.source "PlatformDependent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/util/internal/PlatformDependent$ThreadLocalRandomProvider;,
        Lio/netty/util/internal/PlatformDependent$AtomicLongCounter;,
        Lio/netty/util/internal/PlatformDependent$Mpsc;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ADDRESS_SIZE:I

.field private static final ALLOWED_LINUX_OS_CLASSIFIERS:[Ljava/lang/String;

.field public static final BIG_ENDIAN_NATIVE_ORDER:Z

.field private static final BIT_MODE:I

.field private static final BYTE_ARRAY_BASE_OFFSET:J

.field private static final CAN_ENABLE_TCP_NODELAY_BY_DEFAULT:Z

.field private static final CLEANER:Lio/netty/util/internal/Cleaner;

.field private static final DIRECT_BUFFER_PREFERRED:Z

.field private static final DIRECT_MEMORY_COUNTER:Ljava/util/concurrent/atomic/AtomicLong;

.field private static final DIRECT_MEMORY_LIMIT:J

.field private static final IS_IVKVM_DOT_NET:Z

.field private static final IS_J9_JVM:Z

.field private static final IS_OSX:Z

.field private static final IS_WINDOWS:Z

.field private static final LINUX_ID_LIKE_PREFIX:Ljava/lang/String; = "ID_LIKE="

.field private static final LINUX_ID_PREFIX:Ljava/lang/String; = "ID="

.field private static final LINUX_OS_CLASSIFIERS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_ALLOWED_MPSC_CAPACITY:I = 0x40000000

.field private static final MAX_DIRECT_MEMORY:J

.field private static final MAX_DIRECT_MEMORY_SIZE_ARG_PATTERN:Ljava/util/regex/Pattern;

.field private static final MAYBE_SUPER_USER:Z

.field private static final MIN_MAX_MPSC_CAPACITY:I = 0x800

.field private static final MPSC_CHUNK_SIZE:I = 0x400

.field private static final NOOP:Lio/netty/util/internal/Cleaner;

.field private static final NORMALIZED_ARCH:Ljava/lang/String;

.field private static final NORMALIZED_OS:Ljava/lang/String;

.field private static final OS_RELEASE_FILES:[Ljava/lang/String;

.field private static final RANDOM_PROVIDER:Lio/netty/util/internal/PlatformDependent$ThreadLocalRandomProvider;

.field private static final TMPDIR:Ljava/io/File;

.field private static final UNINITIALIZED_ARRAY_ALLOCATION_THRESHOLD:I

.field private static final UNSAFE_UNAVAILABILITY_CAUSE:Ljava/lang/Throwable;

.field private static final USE_DIRECT_BUFFER_NO_CLEANER:Z

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 78
    nop

    .line 80
    const-class v0, Lio/netty/util/internal/PlatformDependent;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/util/internal/PlatformDependent;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 82
    const-string v1, "\\s*-XX:MaxDirectMemorySize\\s*=\\s*([0-9]+)\\s*([kKmMgG]?)\\s*$"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lio/netty/util/internal/PlatformDependent;->MAX_DIRECT_MEMORY_SIZE_ARG_PATTERN:Ljava/util/regex/Pattern;

    .line 85
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->isWindows0()Z

    move-result v1

    sput-boolean v1, Lio/netty/util/internal/PlatformDependent;->IS_WINDOWS:Z

    .line 86
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->isOsx0()Z

    move-result v1

    sput-boolean v1, Lio/netty/util/internal/PlatformDependent;->IS_OSX:Z

    .line 87
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->isJ9Jvm0()Z

    move-result v1

    sput-boolean v1, Lio/netty/util/internal/PlatformDependent;->IS_J9_JVM:Z

    .line 88
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->isIkvmDotNet0()Z

    move-result v1

    sput-boolean v1, Lio/netty/util/internal/PlatformDependent;->IS_IVKVM_DOT_NET:Z

    .line 92
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->isAndroid()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    sput-boolean v1, Lio/netty/util/internal/PlatformDependent;->CAN_ENABLE_TCP_NODELAY_BY_DEFAULT:Z

    .line 94
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->unsafeUnavailabilityCause0()Ljava/lang/Throwable;

    move-result-object v1

    sput-object v1, Lio/netty/util/internal/PlatformDependent;->UNSAFE_UNAVAILABILITY_CAUSE:Ljava/lang/Throwable;

    .line 96
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->maxDirectMemory0()J

    move-result-wide v3

    sput-wide v3, Lio/netty/util/internal/PlatformDependent;->MAX_DIRECT_MEMORY:J

    .line 102
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->byteArrayBaseOffset0()J

    move-result-wide v5

    sput-wide v5, Lio/netty/util/internal/PlatformDependent;->BYTE_ARRAY_BASE_OFFSET:J

    .line 104
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->tmpdir0()Ljava/io/File;

    move-result-object v1

    sput-object v1, Lio/netty/util/internal/PlatformDependent;->TMPDIR:Ljava/io/File;

    .line 106
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->bitMode0()I

    move-result v1

    sput v1, Lio/netty/util/internal/PlatformDependent;->BIT_MODE:I

    .line 107
    const-string v1, "os.arch"

    const-string v5, ""

    invoke-static {v1, v5}, Lio/netty/util/internal/SystemPropertyUtil;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/netty/util/internal/PlatformDependent;->normalizeArch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lio/netty/util/internal/PlatformDependent;->NORMALIZED_ARCH:Ljava/lang/String;

    .line 108
    const-string v1, "os.name"

    invoke-static {v1, v5}, Lio/netty/util/internal/SystemPropertyUtil;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/netty/util/internal/PlatformDependent;->normalizeOs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lio/netty/util/internal/PlatformDependent;->NORMALIZED_OS:Ljava/lang/String;

    .line 111
    const-string v1, "fedora"

    const-string v5, "suse"

    const-string v6, "arch"

    filled-new-array {v1, v5, v6}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lio/netty/util/internal/PlatformDependent;->ALLOWED_LINUX_OS_CLASSIFIERS:[Ljava/lang/String;

    .line 114
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->addressSize0()I

    move-result v5

    sput v5, Lio/netty/util/internal/PlatformDependent;->ADDRESS_SIZE:I

    .line 122
    const-string v5, "/etc/os-release"

    const-string v6, "/usr/lib/os-release"

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lio/netty/util/internal/PlatformDependent;->OS_RELEASE_FILES:[Ljava/lang/String;

    .line 125
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    sget-object v7, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v8, 0x0

    if-ne v6, v7, :cond_0

    move v6, v2

    goto :goto_0

    :cond_0
    move v6, v8

    :goto_0
    sput-boolean v6, Lio/netty/util/internal/PlatformDependent;->BIG_ENDIAN_NATIVE_ORDER:Z

    .line 127
    new-instance v6, Lio/netty/util/internal/PlatformDependent$1;

    invoke-direct {v6}, Lio/netty/util/internal/PlatformDependent$1;-><init>()V

    sput-object v6, Lio/netty/util/internal/PlatformDependent;->NOOP:Lio/netty/util/internal/Cleaner;

    .line 135
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->javaVersion()I

    move-result v7

    const/4 v9, 0x7

    if-lt v7, v9, :cond_1

    .line 136
    new-instance v7, Lio/netty/util/internal/PlatformDependent$2;

    invoke-direct {v7}, Lio/netty/util/internal/PlatformDependent$2;-><init>()V

    sput-object v7, Lio/netty/util/internal/PlatformDependent;->RANDOM_PROVIDER:Lio/netty/util/internal/PlatformDependent$ThreadLocalRandomProvider;

    goto :goto_1

    .line 144
    :cond_1
    new-instance v7, Lio/netty/util/internal/PlatformDependent$3;

    invoke-direct {v7}, Lio/netty/util/internal/PlatformDependent$3;-><init>()V

    sput-object v7, Lio/netty/util/internal/PlatformDependent;->RANDOM_PROVIDER:Lio/netty/util/internal/PlatformDependent$ThreadLocalRandomProvider;

    .line 159
    :goto_1
    const-wide/16 v9, -0x1

    const-string v7, "io.netty.maxDirectMemory"

    invoke-static {v7, v9, v10}, Lio/netty/util/internal/SystemPropertyUtil;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    .line 161
    .local v9, "maxDirectMemory":J
    const-wide/16 v11, 0x0

    cmp-long v7, v9, v11

    const/4 v13, 0x0

    if-eqz v7, :cond_5

    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->hasUnsafe()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-static {}, Lio/netty/util/internal/PlatformDependent0;->hasDirectBufferNoCleanerConstructor()Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_2

    .line 165
    :cond_2
    sput-boolean v2, Lio/netty/util/internal/PlatformDependent;->USE_DIRECT_BUFFER_NO_CLEANER:Z

    .line 166
    cmp-long v7, v9, v11

    if-gez v7, :cond_4

    .line 167
    sget-wide v9, Lio/netty/util/internal/PlatformDependent;->MAX_DIRECT_MEMORY:J

    .line 168
    cmp-long v7, v9, v11

    if-gtz v7, :cond_3

    .line 169
    sput-object v13, Lio/netty/util/internal/PlatformDependent;->DIRECT_MEMORY_COUNTER:Ljava/util/concurrent/atomic/AtomicLong;

    goto :goto_3

    .line 171
    :cond_3
    new-instance v7, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v7}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v7, Lio/netty/util/internal/PlatformDependent;->DIRECT_MEMORY_COUNTER:Ljava/util/concurrent/atomic/AtomicLong;

    goto :goto_3

    .line 174
    :cond_4
    new-instance v7, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v7}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v7, Lio/netty/util/internal/PlatformDependent;->DIRECT_MEMORY_COUNTER:Ljava/util/concurrent/atomic/AtomicLong;

    goto :goto_3

    .line 162
    :cond_5
    :goto_2
    sput-boolean v8, Lio/netty/util/internal/PlatformDependent;->USE_DIRECT_BUFFER_NO_CLEANER:Z

    .line 163
    sput-object v13, Lio/netty/util/internal/PlatformDependent;->DIRECT_MEMORY_COUNTER:Ljava/util/concurrent/atomic/AtomicLong;

    .line 177
    :goto_3
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v11, "-Dio.netty.maxDirectMemory: {} bytes"

    invoke-interface {v0, v11, v7}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 178
    const-wide/16 v11, 0x1

    cmp-long v7, v9, v11

    if-ltz v7, :cond_6

    move-wide v3, v9

    :cond_6
    sput-wide v3, Lio/netty/util/internal/PlatformDependent;->DIRECT_MEMORY_LIMIT:J

    .line 180
    const/16 v3, 0x400

    .line 181
    const-string v4, "io.netty.uninitializedArrayAllocationThreshold"

    invoke-static {v4, v3}, Lio/netty/util/internal/SystemPropertyUtil;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 182
    .local v3, "tryAllocateUninitializedArray":I
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->javaVersion()I

    move-result v4

    const/16 v7, 0x9

    if-lt v4, v7, :cond_7

    invoke-static {}, Lio/netty/util/internal/PlatformDependent0;->hasAllocateArrayMethod()Z

    move-result v4

    if-eqz v4, :cond_7

    move v4, v3

    goto :goto_4

    :cond_7
    const/4 v4, -0x1

    :goto_4
    sput v4, Lio/netty/util/internal/PlatformDependent;->UNINITIALIZED_ARRAY_ALLOCATION_THRESHOLD:I

    .line 184
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v11, "-Dio.netty.uninitializedArrayAllocationThreshold: {}"

    invoke-interface {v0, v11, v4}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 186
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->maybeSuperUser0()Z

    move-result v4

    sput-boolean v4, Lio/netty/util/internal/PlatformDependent;->MAYBE_SUPER_USER:Z

    .line 188
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->isAndroid()Z

    move-result v4

    if-nez v4, :cond_b

    .line 191
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->javaVersion()I

    move-result v4

    if-lt v4, v7, :cond_9

    .line 192
    invoke-static {}, Lio/netty/util/internal/CleanerJava9;->isSupported()Z

    move-result v4

    if-eqz v4, :cond_8

    new-instance v4, Lio/netty/util/internal/CleanerJava9;

    invoke-direct {v4}, Lio/netty/util/internal/CleanerJava9;-><init>()V

    goto :goto_5

    :cond_8
    move-object v4, v6

    :goto_5
    sput-object v4, Lio/netty/util/internal/PlatformDependent;->CLEANER:Lio/netty/util/internal/Cleaner;

    goto :goto_7

    .line 194
    :cond_9
    invoke-static {}, Lio/netty/util/internal/CleanerJava6;->isSupported()Z

    move-result v4

    if-eqz v4, :cond_a

    new-instance v4, Lio/netty/util/internal/CleanerJava6;

    invoke-direct {v4}, Lio/netty/util/internal/CleanerJava6;-><init>()V

    goto :goto_6

    :cond_a
    move-object v4, v6

    :goto_6
    sput-object v4, Lio/netty/util/internal/PlatformDependent;->CLEANER:Lio/netty/util/internal/Cleaner;

    goto :goto_7

    .line 197
    :cond_b
    sput-object v6, Lio/netty/util/internal/PlatformDependent;->CLEANER:Lio/netty/util/internal/Cleaner;

    .line 201
    :goto_7
    sget-object v4, Lio/netty/util/internal/PlatformDependent;->CLEANER:Lio/netty/util/internal/Cleaner;

    if-eq v4, v6, :cond_c

    .line 202
    const-string v7, "io.netty.noPreferDirect"

    invoke-static {v7, v8}, Lio/netty/util/internal/SystemPropertyUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_c

    move v7, v2

    goto :goto_8

    :cond_c
    move v7, v8

    :goto_8
    sput-boolean v7, Lio/netty/util/internal/PlatformDependent;->DIRECT_BUFFER_PREFERRED:Z

    .line 203
    invoke-interface {v0}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    move-result v11

    if-eqz v11, :cond_d

    .line 204
    xor-int/2addr v2, v7

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v7, "-Dio.netty.noPreferDirect: {}"

    invoke-interface {v0, v7, v2}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 211
    :cond_d
    if-ne v4, v6, :cond_e

    invoke-static {}, Lio/netty/util/internal/PlatformDependent0;->isExplicitNoUnsafe()Z

    move-result v2

    if-nez v2, :cond_e

    .line 212
    const-string v2, "Your platform does not provide complete low-level API for accessing direct buffers reliably. Unless explicitly requested, heap buffer will always be preferred to avoid potential system instability."

    invoke-interface {v0, v2}, Lio/netty/util/internal/logging/InternalLogger;->info(Ljava/lang/String;)V

    .line 218
    :cond_e
    new-instance v0, Ljava/util/HashSet;

    .line 219
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 218
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 220
    .local v0, "allowedClassifiers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 221
    .local v1, "availableClassifiers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    array-length v2, v5

    :goto_9
    if-ge v8, v2, :cond_10

    aget-object v4, v5, v8

    .line 222
    .local v4, "osReleaseFileName":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 223
    .local v6, "file":Ljava/io/File;
    new-instance v7, Lio/netty/util/internal/PlatformDependent$4;

    invoke-direct {v7, v6, v0, v1, v4}, Lio/netty/util/internal/PlatformDependent$4;-><init>(Ljava/io/File;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V

    invoke-static {v7}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 269
    .local v7, "found":Z
    if-eqz v7, :cond_f

    .line 270
    goto :goto_a

    .line 221
    .end local v4    # "osReleaseFileName":Ljava/lang/String;
    .end local v6    # "file":Ljava/io/File;
    .end local v7    # "found":Z
    :cond_f
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    .line 273
    :cond_10
    :goto_a
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    sput-object v2, Lio/netty/util/internal/PlatformDependent;->LINUX_OS_CLASSIFIERS:Ljava/util/Set;

    .line 274
    .end local v0    # "allowedClassifiers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1    # "availableClassifiers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "tryAllocateUninitializedArray":I
    .end local v9    # "maxDirectMemory":J
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1490
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1492
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 78
    invoke-static {p0}, Lio/netty/util/internal/PlatformDependent;->normalizeOsReleaseVariableValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/util/Set;Ljava/util/Set;[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/util/Set;
    .param p1, "x1"    # Ljava/util/Set;
    .param p2, "x2"    # [Ljava/lang/String;

    .line 78
    invoke-static {p0, p1, p2}, Lio/netty/util/internal/PlatformDependent;->addClassifier(Ljava/util/Set;Ljava/util/Set;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200()Lio/netty/util/internal/logging/InternalLogger;
    .locals 1

    .line 78
    sget-object v0, Lio/netty/util/internal/PlatformDependent;->logger:Lio/netty/util/internal/logging/InternalLogger;

    return-object v0
.end method

.method private static varargs addClassifier(Ljava/util/Set;Ljava/util/Set;[Ljava/lang/String;)V
    .locals 4
    .param p2, "maybeClassifiers"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1365
    .local p0, "allowed":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p1, "dest":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    .line 1366
    .local v2, "id":Ljava/lang/String;
    invoke-interface {p0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1367
    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1365
    .end local v2    # "id":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1370
    :cond_1
    return-void
.end method

.method public static addressSize()I
    .locals 1

    .line 396
    sget v0, Lio/netty/util/internal/PlatformDependent;->ADDRESS_SIZE:I

    return v0
.end method

.method private static addressSize0()I
    .locals 1

    .line 1277
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->hasUnsafe()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1278
    const/4 v0, -0x1

    return v0

    .line 1280
    :cond_0
    invoke-static {}, Lio/netty/util/internal/PlatformDependent0;->addressSize()I

    move-result v0

    return v0
.end method

.method public static allocateDirectNoCleaner(I)Ljava/nio/ByteBuffer;
    .locals 2
    .param p0, "capacity"    # I

    .line 695
    sget-boolean v0, Lio/netty/util/internal/PlatformDependent;->USE_DIRECT_BUFFER_NO_CLEANER:Z

    if-eqz v0, :cond_0

    .line 697
    invoke-static {p0}, Lio/netty/util/internal/PlatformDependent;->incrementMemoryCounter(I)V

    .line 699
    :try_start_0
    invoke-static {p0}, Lio/netty/util/internal/PlatformDependent0;->allocateDirectNoCleaner(I)Ljava/nio/ByteBuffer;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 700
    :catchall_0
    move-exception v0

    .line 701
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {p0}, Lio/netty/util/internal/PlatformDependent;->decrementMemoryCounter(I)V

    .line 702
    invoke-static {v0}, Lio/netty/util/internal/PlatformDependent;->throwException(Ljava/lang/Throwable;)V

    .line 703
    const/4 v1, 0x0

    return-object v1

    .line 695
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static allocateMemory(J)J
    .locals 2
    .param p0, "size"    # J

    .line 400
    invoke-static {p0, p1}, Lio/netty/util/internal/PlatformDependent0;->allocateMemory(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static allocateUninitializedArray(I)[B
    .locals 1
    .param p0, "size"    # I

    .line 281
    sget v0, Lio/netty/util/internal/PlatformDependent;->UNINITIALIZED_ARRAY_ALLOCATION_THRESHOLD:I

    if-ltz v0, :cond_1

    if-le v0, p0, :cond_0

    goto :goto_0

    .line 282
    :cond_0
    invoke-static {p0}, Lio/netty/util/internal/PlatformDependent0;->allocateUninitializedArray(I)[B

    move-result-object v0

    goto :goto_1

    .line 281
    :cond_1
    :goto_0
    new-array v0, p0, [B

    :goto_1
    return-object v0
.end method

.method public static bitMode()I
    .locals 1

    .line 388
    sget v0, Lio/netty/util/internal/PlatformDependent;->BIT_MODE:I

    return v0
.end method

.method private static bitMode0()I
    .locals 6

    .line 1235
    const-string v0, "io.netty.bitMode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/netty/util/internal/SystemPropertyUtil;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1236
    .local v0, "bitMode":I
    if-lez v0, :cond_0

    .line 1237
    sget-object v1, Lio/netty/util/internal/PlatformDependent;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "-Dio.netty.bitMode: {}"

    invoke-interface {v1, v3, v2}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1238
    return v0

    .line 1242
    :cond_0
    const-string v2, "sun.arch.data.model"

    invoke-static {v2, v1}, Lio/netty/util/internal/SystemPropertyUtil;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1243
    if-lez v0, :cond_1

    .line 1244
    sget-object v1, Lio/netty/util/internal/PlatformDependent;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "-Dio.netty.bitMode: {} (sun.arch.data.model)"

    invoke-interface {v1, v3, v2}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1245
    return v0

    .line 1247
    :cond_1
    const-string v2, "com.ibm.vm.bitmode"

    invoke-static {v2, v1}, Lio/netty/util/internal/SystemPropertyUtil;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1248
    if-lez v0, :cond_2

    .line 1249
    sget-object v1, Lio/netty/util/internal/PlatformDependent;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "-Dio.netty.bitMode: {} (com.ibm.vm.bitmode)"

    invoke-interface {v1, v3, v2}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1250
    return v0

    .line 1254
    :cond_2
    const-string v1, "os.arch"

    const-string v2, ""

    invoke-static {v1, v2}, Lio/netty/util/internal/SystemPropertyUtil;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1255
    .local v1, "arch":Ljava/lang/String;
    const-string v3, "amd64"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "x86_64"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    .line 1257
    :cond_3
    const-string v3, "i386"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "i486"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "i586"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "i686"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1258
    :cond_4
    const/16 v0, 0x20

    goto :goto_1

    .line 1256
    :cond_5
    :goto_0
    const/16 v0, 0x40

    .line 1261
    :cond_6
    :goto_1
    if-lez v0, :cond_7

    .line 1262
    sget-object v3, Lio/netty/util/internal/PlatformDependent;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "-Dio.netty.bitMode: {} (os.arch: {})"

    invoke-interface {v3, v5, v4, v1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1266
    :cond_7
    const-string v3, "java.vm.name"

    invoke-static {v3, v2}, Lio/netty/util/internal/SystemPropertyUtil;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 1267
    .local v2, "vm":Ljava/lang/String;
    const-string v3, "([1-9][0-9]+)-?bit"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 1268
    .local v3, "bitPattern":Ljava/util/regex/Pattern;
    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 1269
    .local v4, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1270
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    return v5

    .line 1272
    :cond_8
    const/16 v5, 0x40

    return v5
.end method

.method private static byteArrayBaseOffset0()J
    .locals 2

    .line 1284
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->hasUnsafe()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1285
    const-wide/16 v0, -0x1

    return-wide v0

    .line 1287
    :cond_0
    invoke-static {}, Lio/netty/util/internal/PlatformDependent0;->byteArrayBaseOffset()J

    move-result-wide v0

    return-wide v0
.end method

.method public static canEnableTcpNoDelayByDefault()Z
    .locals 1

    .line 325
    sget-boolean v0, Lio/netty/util/internal/PlatformDependent;->CAN_ENABLE_TCP_NODELAY_BY_DEFAULT:Z

    return v0
.end method

.method public static copyMemory(JJJ)V
    .locals 0
    .param p0, "srcAddr"    # J
    .param p2, "dstAddr"    # J
    .param p4, "length"    # J

    .line 671
    invoke-static/range {p0 .. p5}, Lio/netty/util/internal/PlatformDependent0;->copyMemory(JJJ)V

    .line 672
    return-void
.end method

.method public static copyMemory(J[BIJ)V
    .locals 13
    .param p0, "srcAddr"    # J
    .param p2, "dst"    # [B
    .param p3, "dstIndex"    # I
    .param p4, "length"    # J

    .line 679
    sget-wide v0, Lio/netty/util/internal/PlatformDependent;->BYTE_ARRAY_BASE_OFFSET:J

    move/from16 v2, p3

    int-to-long v3, v2

    add-long v9, v0, v3

    const/4 v5, 0x0

    move-wide v6, p0

    move-object v8, p2

    move-wide/from16 v11, p4

    invoke-static/range {v5 .. v12}, Lio/netty/util/internal/PlatformDependent0;->copyMemory(Ljava/lang/Object;JLjava/lang/Object;JJ)V

    .line 680
    return-void
.end method

.method public static copyMemory([BIJJ)V
    .locals 13
    .param p0, "src"    # [B
    .param p1, "srcIndex"    # I
    .param p2, "dstAddr"    # J
    .param p4, "length"    # J

    .line 675
    sget-wide v0, Lio/netty/util/internal/PlatformDependent;->BYTE_ARRAY_BASE_OFFSET:J

    move v2, p1

    int-to-long v3, v2

    add-long v6, v0, v3

    const/4 v8, 0x0

    move-object v5, p0

    move-wide v9, p2

    move-wide/from16 v11, p4

    invoke-static/range {v5 .. v12}, Lio/netty/util/internal/PlatformDependent0;->copyMemory(Ljava/lang/Object;JLjava/lang/Object;JJ)V

    .line 676
    return-void
.end method

.method private static decrementMemoryCounter(I)V
    .locals 4
    .param p0, "capacity"    # I

    .line 750
    sget-object v0, Lio/netty/util/internal/PlatformDependent;->DIRECT_MEMORY_COUNTER:Ljava/util/concurrent/atomic/AtomicLong;

    if-eqz v0, :cond_1

    .line 751
    neg-int v1, p0

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide v0

    .line 752
    .local v0, "usedMemory":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 754
    .end local v0    # "usedMemory":J
    :cond_1
    :goto_0
    return-void
.end method

.method public static directBuffer(JI)Ljava/nio/ByteBuffer;
    .locals 2
    .param p0, "memoryAddress"    # J
    .param p2, "size"    # I

    .line 487
    invoke-static {}, Lio/netty/util/internal/PlatformDependent0;->hasDirectBufferNoCleanerConstructor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 488
    invoke-static {p0, p1, p2}, Lio/netty/util/internal/PlatformDependent0;->newDirectBuffer(JI)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    .line 490
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "sun.misc.Unsafe or java.nio.DirectByteBuffer.<init>(long, int) not available"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static directBufferAddress(Ljava/nio/ByteBuffer;)J
    .locals 2
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .line 483
    invoke-static {p0}, Lio/netty/util/internal/PlatformDependent0;->directBufferAddress(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static directBufferPreferred()Z
    .locals 1

    .line 357
    sget-boolean v0, Lio/netty/util/internal/PlatformDependent;->DIRECT_BUFFER_PREFERRED:Z

    return v0
.end method

.method public static equals([BI[BII)Z
    .locals 1
    .param p0, "bytes1"    # [B
    .param p1, "startPos1"    # I
    .param p2, "bytes2"    # [B
    .param p3, "startPos2"    # I
    .param p4, "length"    # I

    .line 772
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->hasUnsafe()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lio/netty/util/internal/PlatformDependent0;->unalignedAccess()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 774
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lio/netty/util/internal/PlatformDependent0;->equals([BI[BII)Z

    move-result v0

    goto :goto_1

    .line 773
    :cond_1
    :goto_0
    invoke-static {p0, p1, p2, p3, p4}, Lio/netty/util/internal/PlatformDependent;->equalsSafe([BI[BII)Z

    move-result v0

    .line 772
    :goto_1
    return v0
.end method

.method public static equalsConstantTime([BI[BII)I
    .locals 1
    .param p0, "bytes1"    # [B
    .param p1, "startPos1"    # I
    .param p2, "bytes2"    # [B
    .param p3, "startPos2"    # I
    .param p4, "length"    # I

    .line 812
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->hasUnsafe()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lio/netty/util/internal/PlatformDependent0;->unalignedAccess()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 814
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lio/netty/util/internal/PlatformDependent0;->equalsConstantTime([BI[BII)I

    move-result v0

    goto :goto_1

    .line 813
    :cond_1
    :goto_0
    invoke-static {p0, p1, p2, p3, p4}, Lio/netty/util/internal/ConstantTimeUtils;->equalsConstantTime([BI[BII)I

    move-result v0

    .line 812
    :goto_1
    return v0
.end method

.method private static equalsSafe([BI[BII)Z
    .locals 3
    .param p0, "bytes1"    # [B
    .param p1, "startPos1"    # I
    .param p2, "bytes2"    # [B
    .param p3, "startPos2"    # I
    .param p4, "length"    # I

    .line 1291
    add-int v0, p1, p4

    .line 1292
    .local v0, "end":I
    :goto_0
    if-ge p1, v0, :cond_1

    .line 1293
    aget-byte v1, p0, p1

    aget-byte v2, p2, p3

    if-eq v1, v2, :cond_0

    .line 1294
    const/4 v1, 0x0

    return v1

    .line 1292
    :cond_0
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 1297
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public static freeDirectBuffer(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .line 479
    sget-object v0, Lio/netty/util/internal/PlatformDependent;->CLEANER:Lio/netty/util/internal/Cleaner;

    invoke-interface {v0, p0}, Lio/netty/util/internal/Cleaner;->freeDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 480
    return-void
.end method

.method public static freeDirectNoCleaner(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .line 730
    sget-boolean v0, Lio/netty/util/internal/PlatformDependent;->USE_DIRECT_BUFFER_NO_CLEANER:Z

    if-eqz v0, :cond_0

    .line 732
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    .line 733
    .local v0, "capacity":I
    invoke-static {p0}, Lio/netty/util/internal/PlatformDependent0;->directBufferAddress(Ljava/nio/ByteBuffer;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lio/netty/util/internal/PlatformDependent0;->freeMemory(J)V

    .line 734
    invoke-static {v0}, Lio/netty/util/internal/PlatformDependent;->decrementMemoryCounter(I)V

    .line 735
    return-void

    .line 730
    .end local v0    # "capacity":I
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static freeMemory(J)V
    .locals 0
    .param p0, "address"    # J

    .line 404
    invoke-static {p0, p1}, Lio/netty/util/internal/PlatformDependent0;->freeMemory(J)V

    .line 405
    return-void
.end method

.method public static getByte(J)B
    .locals 1
    .param p0, "address"    # J

    .line 503
    invoke-static {p0, p1}, Lio/netty/util/internal/PlatformDependent0;->getByte(J)B

    move-result v0

    return v0
.end method

.method public static getByte([BI)B
    .locals 1
    .param p0, "data"    # [B
    .param p1, "index"    # I

    .line 519
    invoke-static {p0, p1}, Lio/netty/util/internal/PlatformDependent0;->getByte([BI)B

    move-result v0

    return v0
.end method

.method public static getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/ClassLoader;"
        }
    .end annotation

    .line 964
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Lio/netty/util/internal/PlatformDependent0;->getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public static getContextClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .line 971
    invoke-static {}, Lio/netty/util/internal/PlatformDependent0;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public static getInt(J)I
    .locals 1
    .param p0, "address"    # J

    .line 511
    invoke-static {p0, p1}, Lio/netty/util/internal/PlatformDependent0;->getInt(J)I

    move-result v0

    return v0
.end method

.method public static getInt(Ljava/lang/Object;J)I
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "fieldOffset"    # J

    .line 499
    invoke-static {p0, p1, p2}, Lio/netty/util/internal/PlatformDependent0;->getInt(Ljava/lang/Object;J)I

    move-result v0

    return v0
.end method

.method public static getInt([BI)I
    .locals 1
    .param p0, "data"    # [B
    .param p1, "index"    # I

    .line 527
    invoke-static {p0, p1}, Lio/netty/util/internal/PlatformDependent0;->getInt([BI)I

    move-result v0

    return v0
.end method

.method private static getIntSafe([BI)I
    .locals 2
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I

    .line 556
    sget-boolean v0, Lio/netty/util/internal/PlatformDependent;->BIG_ENDIAN_NATIVE_ORDER:Z

    if-eqz v0, :cond_0

    .line 557
    aget-byte v0, p0, p1

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0

    .line 562
    :cond_0
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public static getLong(J)J
    .locals 2
    .param p0, "address"    # J

    .line 515
    invoke-static {p0, p1}, Lio/netty/util/internal/PlatformDependent0;->getLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLong([BI)J
    .locals 2
    .param p0, "data"    # [B
    .param p1, "index"    # I

    .line 531
    invoke-static {p0, p1}, Lio/netty/util/internal/PlatformDependent0;->getLong([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getLongSafe([BI)J
    .locals 14
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I

    .line 535
    sget-boolean v0, Lio/netty/util/internal/PlatformDependent;->BIG_ENDIAN_NATIVE_ORDER:Z

    const/16 v1, 0x38

    const/16 v2, 0x30

    const/16 v3, 0x28

    const/16 v4, 0x20

    const/16 v5, 0x18

    const/16 v6, 0x10

    const/16 v7, 0x8

    const-wide/16 v8, 0xff

    if-eqz v0, :cond_0

    .line 536
    aget-byte v0, p0, p1

    int-to-long v10, v0

    shl-long v0, v10, v1

    add-int/lit8 v10, p1, 0x1

    aget-byte v10, p0, v10

    int-to-long v10, v10

    and-long/2addr v10, v8

    shl-long/2addr v10, v2

    or-long/2addr v0, v10

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    int-to-long v10, v2

    and-long/2addr v10, v8

    shl-long v2, v10, v3

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x3

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x4

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v8

    shl-long/2addr v2, v5

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x5

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v8

    shl-long/2addr v2, v6

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x6

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v8

    shl-long/2addr v2, v7

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x7

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v8

    or-long/2addr v0, v2

    return-wide v0

    .line 545
    :cond_0
    aget-byte v0, p0, p1

    int-to-long v10, v0

    and-long/2addr v10, v8

    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    int-to-long v12, v0

    and-long/2addr v12, v8

    shl-long/2addr v12, v7

    or-long/2addr v10, v12

    add-int/lit8 v0, p1, 0x2

    aget-byte v0, p0, v0

    int-to-long v12, v0

    and-long/2addr v12, v8

    shl-long v6, v12, v6

    or-long/2addr v6, v10

    add-int/lit8 v0, p1, 0x3

    aget-byte v0, p0, v0

    int-to-long v10, v0

    and-long/2addr v10, v8

    shl-long/2addr v10, v5

    or-long v5, v6, v10

    add-int/lit8 v0, p1, 0x4

    aget-byte v0, p0, v0

    int-to-long v10, v0

    and-long/2addr v10, v8

    shl-long/2addr v10, v4

    or-long v4, v5, v10

    add-int/lit8 v0, p1, 0x5

    aget-byte v0, p0, v0

    int-to-long v6, v0

    and-long/2addr v6, v8

    shl-long/2addr v6, v3

    or-long v3, v4, v6

    add-int/lit8 v0, p1, 0x6

    aget-byte v0, p0, v0

    int-to-long v5, v0

    and-long/2addr v5, v8

    shl-long/2addr v5, v2

    or-long v2, v3, v5

    add-int/lit8 v0, p1, 0x7

    aget-byte v0, p0, v0

    int-to-long v4, v0

    shl-long v0, v4, v1

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static getObject(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "fieldOffset"    # J

    .line 495
    invoke-static {p0, p1, p2}, Lio/netty/util/internal/PlatformDependent0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getShort(J)S
    .locals 1
    .param p0, "address"    # J

    .line 507
    invoke-static {p0, p1}, Lio/netty/util/internal/PlatformDependent0;->getShort(J)S

    move-result v0

    return v0
.end method

.method public static getShort([BI)S
    .locals 1
    .param p0, "data"    # [B
    .param p1, "index"    # I

    .line 523
    invoke-static {p0, p1}, Lio/netty/util/internal/PlatformDependent0;->getShort([BI)S

    move-result v0

    return v0
.end method

.method private static getShortSafe([BI)S
    .locals 2
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I

    .line 569
    sget-boolean v0, Lio/netty/util/internal/PlatformDependent;->BIG_ENDIAN_NATIVE_ORDER:Z

    if-eqz v0, :cond_0

    .line 570
    aget-byte v0, p0, p1

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0

    .line 572
    :cond_0
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public static getSystemClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .line 978
    invoke-static {}, Lio/netty/util/internal/PlatformDependent0;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public static getUnsafeUnavailabilityCause()Ljava/lang/Throwable;
    .locals 1

    .line 340
    sget-object v0, Lio/netty/util/internal/PlatformDependent;->UNSAFE_UNAVAILABILITY_CAUSE:Ljava/lang/Throwable;

    return-object v0
.end method

.method public static hasDirectBufferNoCleanerConstructor()Z
    .locals 1

    .line 277
    invoke-static {}, Lio/netty/util/internal/PlatformDependent0;->hasDirectBufferNoCleanerConstructor()Z

    move-result v0

    return v0
.end method

.method public static hasUnsafe()Z
    .locals 1

    .line 333
    sget-object v0, Lio/netty/util/internal/PlatformDependent;->UNSAFE_UNAVAILABILITY_CAUSE:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static hashCodeAscii(Ljava/lang/CharSequence;)I
    .locals 11
    .param p0, "bytes"    # Ljava/lang/CharSequence;

    .line 843
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 844
    .local v0, "length":I
    and-int/lit8 v1, v0, 0x7

    .line 845
    .local v1, "remainingBytes":I
    const v2, -0x3d4d51cb

    .line 849
    .local v2, "hash":I
    const/16 v3, 0x20

    if-lt v0, v3, :cond_1

    .line 850
    add-int/lit8 v3, v0, -0x8

    .local v3, "i":I
    :goto_0
    if-lt v3, v1, :cond_0

    .line 851
    invoke-static {p0, v3, v2}, Lio/netty/util/internal/PlatformDependent;->hashCodeAsciiCompute(Ljava/lang/CharSequence;II)I

    move-result v2

    .line 850
    add-int/lit8 v3, v3, -0x8

    goto :goto_0

    .end local v3    # "i":I
    :cond_0
    goto :goto_1

    .line 853
    :cond_1
    const/16 v3, 0x8

    if-lt v0, v3, :cond_2

    .line 854
    add-int/lit8 v3, v0, -0x8

    invoke-static {p0, v3, v2}, Lio/netty/util/internal/PlatformDependent;->hashCodeAsciiCompute(Ljava/lang/CharSequence;II)I

    move-result v2

    .line 855
    const/16 v3, 0x10

    if-lt v0, v3, :cond_2

    .line 856
    add-int/lit8 v3, v0, -0x10

    invoke-static {p0, v3, v2}, Lio/netty/util/internal/PlatformDependent;->hashCodeAsciiCompute(Ljava/lang/CharSequence;II)I

    move-result v2

    .line 857
    const/16 v3, 0x18

    if-lt v0, v3, :cond_2

    .line 858
    add-int/lit8 v3, v0, -0x18

    invoke-static {p0, v3, v2}, Lio/netty/util/internal/PlatformDependent;->hashCodeAsciiCompute(Ljava/lang/CharSequence;II)I

    move-result v2

    .line 862
    :cond_2
    :goto_1
    if-nez v1, :cond_3

    .line 863
    return v2

    .line 865
    :cond_3
    const/4 v3, 0x0

    .line 866
    .local v3, "offset":I
    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v1, v4, :cond_4

    move v4, v5

    goto :goto_2

    :cond_4
    move v4, v6

    :goto_2
    const/4 v7, 0x4

    if-eq v1, v7, :cond_5

    move v8, v5

    goto :goto_3

    :cond_5
    move v8, v6

    :goto_3
    and-int/2addr v4, v8

    const/4 v8, 0x6

    if-eq v1, v8, :cond_6

    move v8, v5

    goto :goto_4

    :cond_6
    move v8, v6

    :goto_4
    and-int/2addr v4, v8

    const v8, -0x3361d2af    # -8.2930312E7f

    if-eqz v4, :cond_7

    .line 867
    mul-int v4, v2, v8

    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-static {v9}, Lio/netty/util/internal/PlatformDependent;->hashCodeAsciiSanitizeByte(C)I

    move-result v9

    add-int v2, v4, v9

    .line 868
    const/4 v3, 0x1

    .line 870
    :cond_7
    if-eq v1, v5, :cond_8

    move v4, v5

    goto :goto_5

    :cond_8
    move v4, v6

    :goto_5
    if-eq v1, v7, :cond_9

    move v9, v5

    goto :goto_6

    :cond_9
    move v9, v6

    :goto_6
    and-int/2addr v4, v9

    const/4 v9, 0x5

    if-eq v1, v9, :cond_a

    move v9, v5

    goto :goto_7

    :cond_a
    move v9, v6

    :goto_7
    and-int/2addr v4, v9

    const v9, 0x1b873593

    if-eqz v4, :cond_c

    .line 871
    if-nez v3, :cond_b

    move v4, v8

    goto :goto_8

    :cond_b
    move v4, v9

    :goto_8
    mul-int/2addr v4, v2

    .line 872
    invoke-static {p0, v3}, Lio/netty/util/internal/PlatformDependent;->hashCodeAsciiSanitizeShort(Ljava/lang/CharSequence;I)I

    move-result v10

    invoke-static {v10}, Lio/netty/util/internal/PlatformDependent0;->hashCodeAsciiSanitize(I)I

    move-result v10

    add-int v2, v4, v10

    .line 873
    add-int/lit8 v3, v3, 0x2

    .line 875
    :cond_c
    if-lt v1, v7, :cond_10

    .line 876
    if-nez v3, :cond_d

    move v4, v5

    goto :goto_9

    :cond_d
    move v4, v6

    :goto_9
    const/4 v7, 0x3

    if-ne v3, v7, :cond_e

    goto :goto_a

    :cond_e
    move v5, v6

    :goto_a
    or-int/2addr v4, v5

    if-eqz v4, :cond_f

    goto :goto_b

    :cond_f
    move v8, v9

    :goto_b
    mul-int/2addr v8, v2

    .line 877
    invoke-static {p0, v3}, Lio/netty/util/internal/PlatformDependent;->hashCodeAsciiSanitizeInt(Ljava/lang/CharSequence;I)I

    move-result v4

    add-int/2addr v8, v4

    .line 876
    return v8

    .line 879
    :cond_10
    return v2
.end method

.method public static hashCodeAscii([BII)I
    .locals 1
    .param p0, "bytes"    # [B
    .param p1, "startPos"    # I
    .param p2, "length"    # I

    .line 827
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->hasUnsafe()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lio/netty/util/internal/PlatformDependent0;->unalignedAccess()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 829
    :cond_0
    invoke-static {p0, p1, p2}, Lio/netty/util/internal/PlatformDependent0;->hashCodeAscii([BII)I

    move-result v0

    goto :goto_1

    .line 828
    :cond_1
    :goto_0
    invoke-static {p0, p1, p2}, Lio/netty/util/internal/PlatformDependent;->hashCodeAsciiSafe([BII)I

    move-result v0

    .line 827
    :goto_1
    return v0
.end method

.method private static hashCodeAsciiCompute(Ljava/lang/CharSequence;II)I
    .locals 3
    .param p0, "value"    # Ljava/lang/CharSequence;
    .param p1, "offset"    # I
    .param p2, "hash"    # I

    .line 579
    sget-boolean v0, Lio/netty/util/internal/PlatformDependent;->BIG_ENDIAN_NATIVE_ORDER:Z

    const v1, 0x1b873593

    const v2, -0x3361d2af    # -8.2930312E7f

    if-eqz v0, :cond_0

    .line 580
    mul-int/2addr v2, p2

    add-int/lit8 v0, p1, 0x4

    .line 582
    invoke-static {p0, v0}, Lio/netty/util/internal/PlatformDependent;->hashCodeAsciiSanitizeInt(Ljava/lang/CharSequence;I)I

    move-result v0

    mul-int/2addr v0, v1

    add-int/2addr v2, v0

    .line 584
    invoke-static {p0, p1}, Lio/netty/util/internal/PlatformDependent;->hashCodeAsciiSanitizeInt(Ljava/lang/CharSequence;I)I

    move-result v0

    add-int/2addr v2, v0

    .line 580
    return v2

    .line 586
    :cond_0
    mul-int/2addr v2, p2

    .line 588
    invoke-static {p0, p1}, Lio/netty/util/internal/PlatformDependent;->hashCodeAsciiSanitizeInt(Ljava/lang/CharSequence;I)I

    move-result v0

    mul-int/2addr v0, v1

    add-int/2addr v2, v0

    add-int/lit8 v0, p1, 0x4

    .line 590
    invoke-static {p0, v0}, Lio/netty/util/internal/PlatformDependent;->hashCodeAsciiSanitizeInt(Ljava/lang/CharSequence;I)I

    move-result v0

    add-int/2addr v2, v0

    .line 586
    return v2
.end method

.method static hashCodeAsciiSafe([BII)I
    .locals 7
    .param p0, "bytes"    # [B
    .param p1, "startPos"    # I
    .param p2, "length"    # I

    .line 1314
    const v0, -0x3d4d51cb

    .line 1315
    .local v0, "hash":I
    and-int/lit8 v1, p2, 0x7

    .line 1316
    .local v1, "remainingBytes":I
    add-int v2, p1, v1

    .line 1317
    .local v2, "end":I
    add-int/lit8 v3, p1, -0x8

    add-int/2addr v3, p2

    .local v3, "i":I
    :goto_0
    if-lt v3, v2, :cond_0

    .line 1318
    invoke-static {p0, v3}, Lio/netty/util/internal/PlatformDependent;->getLongSafe([BI)J

    move-result-wide v4

    invoke-static {v4, v5, v0}, Lio/netty/util/internal/PlatformDependent0;->hashCodeAsciiCompute(JI)I

    move-result v0

    .line 1317
    add-int/lit8 v3, v3, -0x8

    goto :goto_0

    .line 1320
    .end local v3    # "i":I
    :cond_0
    const v3, 0x1b873593

    const v4, -0x3361d2af    # -8.2930312E7f

    packed-switch v1, :pswitch_data_0

    .line 1341
    return v0

    .line 1322
    :pswitch_0
    mul-int v5, v0, v4

    aget-byte v6, p0, p1

    invoke-static {v6}, Lio/netty/util/internal/PlatformDependent0;->hashCodeAsciiSanitize(B)I

    move-result v6

    add-int/2addr v5, v6

    mul-int/2addr v5, v3

    add-int/lit8 v3, p1, 0x1

    .line 1323
    invoke-static {p0, v3}, Lio/netty/util/internal/PlatformDependent;->getShortSafe([BI)S

    move-result v3

    invoke-static {v3}, Lio/netty/util/internal/PlatformDependent0;->hashCodeAsciiSanitize(S)I

    move-result v3

    add-int/2addr v5, v3

    mul-int/2addr v5, v4

    add-int/lit8 v3, p1, 0x3

    .line 1324
    invoke-static {p0, v3}, Lio/netty/util/internal/PlatformDependent;->getIntSafe([BI)I

    move-result v3

    invoke-static {v3}, Lio/netty/util/internal/PlatformDependent0;->hashCodeAsciiSanitize(I)I

    move-result v3

    add-int/2addr v5, v3

    .line 1322
    return v5

    .line 1326
    :pswitch_1
    mul-int/2addr v4, v0

    invoke-static {p0, p1}, Lio/netty/util/internal/PlatformDependent;->getShortSafe([BI)S

    move-result v5

    invoke-static {v5}, Lio/netty/util/internal/PlatformDependent0;->hashCodeAsciiSanitize(S)I

    move-result v5

    add-int/2addr v4, v5

    mul-int/2addr v4, v3

    add-int/lit8 v3, p1, 0x2

    .line 1327
    invoke-static {p0, v3}, Lio/netty/util/internal/PlatformDependent;->getIntSafe([BI)I

    move-result v3

    invoke-static {v3}, Lio/netty/util/internal/PlatformDependent0;->hashCodeAsciiSanitize(I)I

    move-result v3

    add-int/2addr v4, v3

    .line 1326
    return v4

    .line 1329
    :pswitch_2
    mul-int/2addr v4, v0

    aget-byte v5, p0, p1

    invoke-static {v5}, Lio/netty/util/internal/PlatformDependent0;->hashCodeAsciiSanitize(B)I

    move-result v5

    add-int/2addr v4, v5

    mul-int/2addr v4, v3

    add-int/lit8 v3, p1, 0x1

    .line 1330
    invoke-static {p0, v3}, Lio/netty/util/internal/PlatformDependent;->getIntSafe([BI)I

    move-result v3

    invoke-static {v3}, Lio/netty/util/internal/PlatformDependent0;->hashCodeAsciiSanitize(I)I

    move-result v3

    add-int/2addr v4, v3

    .line 1329
    return v4

    .line 1332
    :pswitch_3
    mul-int/2addr v4, v0

    invoke-static {p0, p1}, Lio/netty/util/internal/PlatformDependent;->getIntSafe([BI)I

    move-result v3

    invoke-static {v3}, Lio/netty/util/internal/PlatformDependent0;->hashCodeAsciiSanitize(I)I

    move-result v3

    add-int/2addr v4, v3

    return v4

    .line 1334
    :pswitch_4
    mul-int/2addr v4, v0

    aget-byte v5, p0, p1

    invoke-static {v5}, Lio/netty/util/internal/PlatformDependent0;->hashCodeAsciiSanitize(B)I

    move-result v5

    add-int/2addr v4, v5

    mul-int/2addr v4, v3

    add-int/lit8 v3, p1, 0x1

    .line 1335
    invoke-static {p0, v3}, Lio/netty/util/internal/PlatformDependent;->getShortSafe([BI)S

    move-result v3

    invoke-static {v3}, Lio/netty/util/internal/PlatformDependent0;->hashCodeAsciiSanitize(S)I

    move-result v3

    add-int/2addr v4, v3

    .line 1334
    return v4

    .line 1337
    :pswitch_5
    mul-int/2addr v4, v0

    invoke-static {p0, p1}, Lio/netty/util/internal/PlatformDependent;->getShortSafe([BI)S

    move-result v3

    invoke-static {v3}, Lio/netty/util/internal/PlatformDependent0;->hashCodeAsciiSanitize(S)I

    move-result v3

    add-int/2addr v4, v3

    return v4

    .line 1339
    :pswitch_6
    mul-int/2addr v4, v0

    aget-byte v3, p0, p1

    invoke-static {v3}, Lio/netty/util/internal/PlatformDependent0;->hashCodeAsciiSanitize(B)I

    move-result v3

    add-int/2addr v4, v3

    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static hashCodeAsciiSanitizeByte(C)I
    .locals 1
    .param p0, "value"    # C

    .line 627
    and-int/lit8 v0, p0, 0x1f

    return v0
.end method

.method private static hashCodeAsciiSanitizeInt(Ljava/lang/CharSequence;I)I
    .locals 2
    .param p0, "value"    # Ljava/lang/CharSequence;
    .param p1, "offset"    # I

    .line 597
    sget-boolean v0, Lio/netty/util/internal/PlatformDependent;->BIG_ENDIAN_NATIVE_ORDER:Z

    if-eqz v0, :cond_0

    .line 599
    add-int/lit8 v0, p1, 0x3

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    and-int/lit8 v0, v0, 0x1f

    add-int/lit8 v1, p1, 0x2

    .line 600
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    and-int/lit8 v1, v1, 0x1f

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x1

    .line 601
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    and-int/lit8 v1, v1, 0x1f

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 602
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    and-int/lit8 v1, v1, 0x1f

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    .line 599
    return v0

    .line 604
    :cond_0
    add-int/lit8 v0, p1, 0x3

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    and-int/lit8 v0, v0, 0x1f

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x2

    .line 605
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    and-int/lit8 v1, v1, 0x1f

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x1

    .line 606
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    and-int/lit8 v1, v1, 0x1f

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 607
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    and-int/lit8 v1, v1, 0x1f

    or-int/2addr v0, v1

    .line 604
    return v0
.end method

.method private static hashCodeAsciiSanitizeShort(Ljava/lang/CharSequence;I)I
    .locals 2
    .param p0, "value"    # Ljava/lang/CharSequence;
    .param p1, "offset"    # I

    .line 614
    sget-boolean v0, Lio/netty/util/internal/PlatformDependent;->BIG_ENDIAN_NATIVE_ORDER:Z

    if-eqz v0, :cond_0

    .line 616
    add-int/lit8 v0, p1, 0x1

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    and-int/lit8 v0, v0, 0x1f

    .line 617
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    and-int/lit8 v1, v1, 0x1f

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 616
    return v0

    .line 619
    :cond_0
    add-int/lit8 v0, p1, 0x1

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    and-int/lit8 v0, v0, 0x1f

    shl-int/lit8 v0, v0, 0x8

    .line 620
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    and-int/lit8 v1, v1, 0x1f

    or-int/2addr v0, v1

    .line 619
    return v0
.end method

.method private static incrementMemoryCounter(I)V
    .locals 8
    .param p0, "capacity"    # I

    .line 738
    sget-object v0, Lio/netty/util/internal/PlatformDependent;->DIRECT_MEMORY_COUNTER:Ljava/util/concurrent/atomic/AtomicLong;

    if-eqz v0, :cond_1

    .line 739
    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide v1

    .line 740
    .local v1, "newUsedMemory":J
    sget-wide v3, Lio/netty/util/internal/PlatformDependent;->DIRECT_MEMORY_LIMIT:J

    cmp-long v5, v1, v3

    if-gtz v5, :cond_0

    goto :goto_0

    .line 741
    :cond_0
    neg-int v5, p0

    int-to-long v5, v5

    invoke-virtual {v0, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 742
    new-instance v0, Lio/netty/util/internal/OutOfDirectMemoryError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed to allocate "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " byte(s) of direct memory (used: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    int-to-long v6, p0

    sub-long v6, v1, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", max: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x29

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lio/netty/util/internal/OutOfDirectMemoryError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 747
    .end local v1    # "newUsedMemory":J
    :cond_1
    :goto_0
    return-void
.end method

.method public static isAndroid()Z
    .locals 1

    .line 289
    invoke-static {}, Lio/netty/util/internal/PlatformDependent0;->isAndroid()Z

    move-result v0

    return v0
.end method

.method public static isIkvmDotNet()Z
    .locals 1

    .line 1072
    sget-boolean v0, Lio/netty/util/internal/PlatformDependent;->IS_IVKVM_DOT_NET:Z

    return v0
.end method

.method private static isIkvmDotNet0()Z
    .locals 2

    .line 1076
    const-string v0, "java.vm.name"

    const-string v1, ""

    invoke-static {v0, v1}, Lio/netty/util/internal/SystemPropertyUtil;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 1077
    .local v0, "vmName":Ljava/lang/String;
    const-string v1, "IKVM.NET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static isJ9Jvm()Z
    .locals 1

    .line 1060
    sget-boolean v0, Lio/netty/util/internal/PlatformDependent;->IS_J9_JVM:Z

    return v0
.end method

.method private static isJ9Jvm0()Z
    .locals 2

    .line 1064
    const-string v0, "java.vm.name"

    const-string v1, ""

    invoke-static {v0, v1}, Lio/netty/util/internal/SystemPropertyUtil;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 1065
    .local v0, "vmName":Ljava/lang/String;
    const-string v1, "ibm j9"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "eclipse openj9"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public static isOsx()Z
    .locals 1

    .line 303
    sget-boolean v0, Lio/netty/util/internal/PlatformDependent;->IS_OSX:Z

    return v0
.end method

.method private static isOsx0()Z
    .locals 4

    .line 1009
    const-string v0, "os.name"

    const-string v1, ""

    invoke-static {v0, v1}, Lio/netty/util/internal/SystemPropertyUtil;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 1010
    const-string v2, "[^a-z0-9]+"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1011
    .local v0, "osname":Ljava/lang/String;
    const-string v1, "macosx"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "osx"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 1013
    .local v1, "osx":Z
    :goto_1
    if-eqz v1, :cond_2

    .line 1014
    sget-object v2, Lio/netty/util/internal/PlatformDependent;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v3, "Platform: MacOS"

    invoke-interface {v2, v3}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    .line 1016
    :cond_2
    return v1
.end method

.method public static isUnaligned()Z
    .locals 1

    .line 349
    invoke-static {}, Lio/netty/util/internal/PlatformDependent0;->isUnaligned()Z

    move-result v0

    return v0
.end method

.method public static isWindows()Z
    .locals 1

    .line 296
    sget-boolean v0, Lio/netty/util/internal/PlatformDependent;->IS_WINDOWS:Z

    return v0
.end method

.method private static isWindows0()Z
    .locals 3

    .line 1001
    const-string v0, "os.name"

    const-string v1, ""

    invoke-static {v0, v1}, Lio/netty/util/internal/SystemPropertyUtil;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "win"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 1002
    .local v0, "windows":Z
    if-eqz v0, :cond_0

    .line 1003
    sget-object v1, Lio/netty/util/internal/PlatformDependent;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v2, "Platform: Windows"

    invoke-interface {v1, v2}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    .line 1005
    :cond_0
    return v0
.end method

.method public static isZero([BII)Z
    .locals 1
    .param p0, "bytes"    # [B
    .param p1, "startPos"    # I
    .param p2, "length"    # I

    .line 785
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->hasUnsafe()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lio/netty/util/internal/PlatformDependent0;->unalignedAccess()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 787
    :cond_0
    invoke-static {p0, p1, p2}, Lio/netty/util/internal/PlatformDependent0;->isZero([BII)Z

    move-result v0

    goto :goto_1

    .line 786
    :cond_1
    :goto_0
    invoke-static {p0, p1, p2}, Lio/netty/util/internal/PlatformDependent;->isZeroSafe([BII)Z

    move-result v0

    .line 785
    :goto_1
    return v0
.end method

.method private static isZeroSafe([BII)Z
    .locals 2
    .param p0, "bytes"    # [B
    .param p1, "startPos"    # I
    .param p2, "length"    # I

    .line 1301
    add-int v0, p1, p2

    .line 1302
    .local v0, "end":I
    :goto_0
    if-ge p1, v0, :cond_1

    .line 1303
    aget-byte v1, p0, p1

    if-eqz v1, :cond_0

    .line 1304
    const/4 v1, 0x0

    return v1

    .line 1302
    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 1307
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public static javaVersion()I
    .locals 1

    .line 318
    invoke-static {}, Lio/netty/util/internal/PlatformDependent0;->javaVersion()I

    move-result v0

    return v0
.end method

.method public static maxDirectMemory()J
    .locals 2

    .line 364
    sget-wide v0, Lio/netty/util/internal/PlatformDependent;->DIRECT_MEMORY_LIMIT:J

    return-wide v0
.end method

.method private static maxDirectMemory0()J
    .locals 15

    .line 1081
    const-wide/16 v0, 0x0

    .line 1083
    .local v0, "maxDirectMemory":J
    const/4 v2, 0x0

    .line 1085
    .local v2, "systemClassLoader":Ljava/lang/ClassLoader;
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_0
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    move-object v2, v6

    .line 1091
    const-string v6, "java.vm.name"

    const-string v7, ""

    invoke-static {v6, v7}, Lio/netty/util/internal/SystemPropertyUtil;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 1092
    .local v6, "vmName":Ljava/lang/String;
    const-string v7, "ibm j9"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "eclipse openj9"

    .line 1094
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1096
    const-string v7, "sun.misc.VM"

    invoke-static {v7, v4, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v7

    .line 1097
    .local v7, "vmClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v8, "maxDirectMemory"

    new-array v9, v5, [Ljava/lang/Class;

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 1098
    .local v8, "m":Ljava/lang/reflect/Method;
    new-array v9, v5, [Ljava/lang/Object;

    invoke-virtual {v8, v3, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->longValue()J

    move-result-wide v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v0, v9

    .line 1102
    .end local v6    # "vmName":Ljava/lang/String;
    .end local v7    # "vmClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "m":Ljava/lang/reflect/Method;
    :cond_0
    goto :goto_0

    .line 1100
    :catchall_0
    move-exception v6

    .line 1104
    :goto_0
    const-wide/16 v6, 0x0

    cmp-long v8, v0, v6

    if-lez v8, :cond_1

    .line 1105
    return-wide v0

    .line 1111
    :cond_1
    :try_start_1
    const-string v8, "java.lang.management.ManagementFactory"

    invoke-static {v8, v4, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v8

    .line 1113
    .local v8, "mgmtFactoryClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v9, "java.lang.management.RuntimeMXBean"

    invoke-static {v9, v4, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v9

    .line 1116
    .local v9, "runtimeClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v10, "getRuntimeMXBean"

    new-array v11, v5, [Ljava/lang/Class;

    invoke-virtual {v8, v10, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    new-array v11, v5, [Ljava/lang/Object;

    invoke-virtual {v10, v3, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1119
    .local v3, "runtime":Ljava/lang/Object;
    const-string v10, "getInputArguments"

    new-array v11, v5, [Ljava/lang/Class;

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    new-array v11, v5, [Ljava/lang/Object;

    invoke-virtual {v10, v3, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 1120
    .local v10, "vmArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    sub-int/2addr v11, v4

    .local v11, "i":I
    :goto_1
    if-ltz v11, :cond_3

    .line 1121
    sget-object v12, Lio/netty/util/internal/PlatformDependent;->MAX_DIRECT_MEMORY_SIZE_ARG_PATTERN:Ljava/util/regex/Pattern;

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/CharSequence;

    invoke-virtual {v12, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    .line 1122
    .local v12, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->matches()Z

    move-result v13

    if-nez v13, :cond_2

    .line 1123
    nop

    .line 1120
    .end local v12    # "m":Ljava/util/regex/Matcher;
    add-int/lit8 v11, v11, -0x1

    goto :goto_1

    .line 1126
    .restart local v12    # "m":Ljava/util/regex/Matcher;
    :cond_2
    invoke-virtual {v12, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    move-wide v0, v13

    .line 1127
    const/4 v4, 0x2

    invoke-virtual {v12, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    sparse-switch v4, :sswitch_data_0

    goto :goto_2

    .line 1132
    :sswitch_0
    const-wide/32 v4, 0x100000

    mul-long/2addr v0, v4

    .line 1133
    goto :goto_2

    .line 1129
    :sswitch_1
    const-wide/16 v4, 0x400

    mul-long/2addr v0, v4

    .line 1130
    goto :goto_2

    .line 1135
    :sswitch_2
    const-wide/32 v4, 0x40000000

    mul-long/2addr v0, v4

    .line 1142
    .end local v3    # "runtime":Ljava/lang/Object;
    .end local v8    # "mgmtFactoryClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v9    # "runtimeClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v10    # "vmArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "i":I
    .end local v12    # "m":Ljava/util/regex/Matcher;
    :cond_3
    :goto_2
    goto :goto_3

    .line 1140
    :catchall_1
    move-exception v3

    .line 1144
    :goto_3
    cmp-long v3, v0, v6

    if-gtz v3, :cond_4

    .line 1145
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    .line 1146
    sget-object v3, Lio/netty/util/internal/PlatformDependent;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "maxDirectMemory: {} bytes (maybe)"

    invoke-interface {v3, v5, v4}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    .line 1148
    :cond_4
    sget-object v3, Lio/netty/util/internal/PlatformDependent;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "maxDirectMemory: {} bytes"

    invoke-interface {v3, v5, v4}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1151
    :goto_4
    return-wide v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x47 -> :sswitch_2
        0x4b -> :sswitch_1
        0x4d -> :sswitch_0
        0x67 -> :sswitch_2
        0x6b -> :sswitch_1
        0x6d -> :sswitch_0
    .end sparse-switch
.end method

.method public static maybeSuperUser()Z
    .locals 1

    .line 311
    sget-boolean v0, Lio/netty/util/internal/PlatformDependent;->MAYBE_SUPER_USER:Z

    return v0
.end method

.method private static maybeSuperUser0()Z
    .locals 2

    .line 1020
    const-string v0, "user.name"

    invoke-static {v0}, Lio/netty/util/internal/SystemPropertyUtil;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1021
    .local v0, "username":Ljava/lang/String;
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->isWindows()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1022
    const-string v1, "Administrator"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 1025
    :cond_0
    const-string v1, "root"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "toor"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public static newConcurrentDeque()Ljava/util/Deque;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Deque<",
            "TC;>;"
        }
    .end annotation

    .line 986
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->javaVersion()I

    move-result v0

    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    .line 987
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    return-object v0

    .line 989
    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    return-object v0
.end method

.method public static newConcurrentHashMap()Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 431
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    return-object v0
.end method

.method public static newConcurrentHashMap(I)Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .param p0, "initialCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 449
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    return-object v0
.end method

.method public static newConcurrentHashMap(IF)Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .param p0, "initialCapacity"    # I
    .param p1, "loadFactor"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(IF)",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 456
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IF)V

    return-object v0
.end method

.method public static newConcurrentHashMap(IFI)Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .param p0, "initialCapacity"    # I
    .param p1, "loadFactor"    # F
    .param p2, "concurrencyLevel"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(IFI)",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 464
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    return-object v0
.end method

.method public static newConcurrentHashMap(Ljava/util/Map;)Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 471
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static newFixedMpscQueue(I)Ljava/util/Queue;
    .locals 1
    .param p0, "capacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/Queue<",
            "TT;>;"
        }
    .end annotation

    .line 957
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->hasUnsafe()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;

    invoke-direct {v0, p0}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;-><init>(I)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueue;

    invoke-direct {v0, p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueue;-><init>(I)V

    :goto_0
    return-object v0
.end method

.method public static newLongCounter()Lio/netty/util/internal/LongCounter;
    .locals 2

    .line 438
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->javaVersion()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 439
    new-instance v0, Lio/netty/util/internal/LongAdderCounter;

    invoke-direct {v0}, Lio/netty/util/internal/LongAdderCounter;-><init>()V

    return-object v0

    .line 441
    :cond_0
    new-instance v0, Lio/netty/util/internal/PlatformDependent$AtomicLongCounter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/netty/util/internal/PlatformDependent$AtomicLongCounter;-><init>(Lio/netty/util/internal/PlatformDependent$1;)V

    return-object v0
.end method

.method public static newMpscQueue()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Queue<",
            "TT;>;"
        }
    .end annotation

    .line 933
    invoke-static {}, Lio/netty/util/internal/PlatformDependent$Mpsc;->newMpscQueue()Ljava/util/Queue;

    move-result-object v0

    return-object v0
.end method

.method public static newMpscQueue(I)Ljava/util/Queue;
    .locals 1
    .param p0, "maxCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/Queue<",
            "TT;>;"
        }
    .end annotation

    .line 941
    invoke-static {p0}, Lio/netty/util/internal/PlatformDependent$Mpsc;->newMpscQueue(I)Ljava/util/Queue;

    move-result-object v0

    return-object v0
.end method

.method public static newSpscQueue()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Queue<",
            "TT;>;"
        }
    .end annotation

    .line 949
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->hasUnsafe()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lio/netty/util/internal/shaded/org/jctools/queues/SpscLinkedQueue;

    invoke-direct {v0}, Lio/netty/util/internal/shaded/org/jctools/queues/SpscLinkedQueue;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/SpscLinkedAtomicQueue;

    invoke-direct {v0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/SpscLinkedAtomicQueue;-><init>()V

    :goto_0
    return-object v0
.end method

.method private static normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "value"    # Ljava/lang/String;

    .line 1378
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[^a-z0-9]+"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static normalizeArch(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .line 1382
    invoke-static {p0}, Lio/netty/util/internal/PlatformDependent;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1383
    const-string v0, "^(x8664|amd64|ia32e|em64t|x64)$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1384
    const-string v0, "x86_64"

    return-object v0

    .line 1386
    :cond_0
    const-string v0, "^(x8632|x86|i[3-6]86|ia32|x32)$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1387
    const-string v0, "x86_32"

    return-object v0

    .line 1389
    :cond_1
    const-string v0, "^(ia64|itanium64)$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1390
    const-string v0, "itanium_64"

    return-object v0

    .line 1392
    :cond_2
    const-string v0, "^(sparc|sparc32)$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1393
    const-string v0, "sparc_32"

    return-object v0

    .line 1395
    :cond_3
    const-string v0, "^(sparcv9|sparc64)$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1396
    const-string v0, "sparc_64"

    return-object v0

    .line 1398
    :cond_4
    const-string v0, "^(arm|arm32)$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1399
    const-string v0, "arm_32"

    return-object v0

    .line 1401
    :cond_5
    const-string v0, "aarch64"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1402
    const-string v0, "aarch_64"

    return-object v0

    .line 1404
    :cond_6
    const-string v0, "^(ppc|ppc32)$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1405
    const-string v0, "ppc_32"

    return-object v0

    .line 1407
    :cond_7
    const-string v0, "ppc64"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1408
    const-string v0, "ppc_64"

    return-object v0

    .line 1410
    :cond_8
    const-string v0, "ppc64le"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1411
    const-string v0, "ppcle_64"

    return-object v0

    .line 1413
    :cond_9
    const-string v0, "s390"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1414
    const-string v0, "s390_32"

    return-object v0

    .line 1416
    :cond_a
    const-string v0, "s390x"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1417
    const-string v0, "s390_64"

    return-object v0

    .line 1420
    :cond_b
    const-string v0, "unknown"

    return-object v0
.end method

.method private static normalizeOs(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "value"    # Ljava/lang/String;

    .line 1424
    invoke-static {p0}, Lio/netty/util/internal/PlatformDependent;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1425
    const-string v0, "aix"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1426
    return-object v0

    .line 1428
    :cond_0
    const-string v0, "hpux"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1429
    return-object v0

    .line 1431
    :cond_1
    const-string v0, "os400"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1433
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-le v1, v2, :cond_2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1434
    :cond_2
    return-object v0

    .line 1437
    :cond_3
    const-string v0, "linux"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1438
    return-object v0

    .line 1440
    :cond_4
    const-string v0, "macosx"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "osx"

    if-nez v0, :cond_c

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    .line 1443
    :cond_5
    const-string v0, "freebsd"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1444
    return-object v0

    .line 1446
    :cond_6
    const-string v0, "openbsd"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1447
    return-object v0

    .line 1449
    :cond_7
    const-string v0, "netbsd"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1450
    return-object v0

    .line 1452
    :cond_8
    const-string v0, "solaris"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "sunos"

    if-nez v0, :cond_b

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_0

    .line 1455
    :cond_9
    const-string v0, "windows"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1456
    return-object v0

    .line 1459
    :cond_a
    const-string v0, "unknown"

    return-object v0

    .line 1453
    :cond_b
    :goto_0
    return-object v1

    .line 1441
    :cond_c
    :goto_1
    return-object v1
.end method

.method private static normalizeOsReleaseVariableValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "value"    # Ljava/lang/String;

    .line 1374
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[\"\']"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static normalizedArch()Ljava/lang/String;
    .locals 1

    .line 1346
    sget-object v0, Lio/netty/util/internal/PlatformDependent;->NORMALIZED_ARCH:Ljava/lang/String;

    return-object v0
.end method

.method public static normalizedLinuxClassifiers()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1354
    sget-object v0, Lio/netty/util/internal/PlatformDependent;->LINUX_OS_CLASSIFIERS:Ljava/util/Set;

    return-object v0
.end method

.method public static normalizedOs()Ljava/lang/String;
    .locals 1

    .line 1350
    sget-object v0, Lio/netty/util/internal/PlatformDependent;->NORMALIZED_OS:Ljava/lang/String;

    return-object v0
.end method

.method public static objectFieldOffset(Ljava/lang/reflect/Field;)J
    .locals 2
    .param p0, "field"    # Ljava/lang/reflect/Field;

    .line 667
    invoke-static {p0}, Lio/netty/util/internal/PlatformDependent0;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static putByte(JB)V
    .locals 0
    .param p0, "address"    # J
    .param p2, "value"    # B

    .line 631
    invoke-static {p0, p1, p2}, Lio/netty/util/internal/PlatformDependent0;->putByte(JB)V

    .line 632
    return-void
.end method

.method public static putByte([BIB)V
    .locals 0
    .param p0, "data"    # [B
    .param p1, "index"    # I
    .param p2, "value"    # B

    .line 647
    invoke-static {p0, p1, p2}, Lio/netty/util/internal/PlatformDependent0;->putByte([BIB)V

    .line 648
    return-void
.end method

.method public static putInt(JI)V
    .locals 0
    .param p0, "address"    # J
    .param p2, "value"    # I

    .line 639
    invoke-static {p0, p1, p2}, Lio/netty/util/internal/PlatformDependent0;->putInt(JI)V

    .line 640
    return-void
.end method

.method public static putInt([BII)V
    .locals 0
    .param p0, "data"    # [B
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 655
    invoke-static {p0, p1, p2}, Lio/netty/util/internal/PlatformDependent0;->putInt([BII)V

    .line 656
    return-void
.end method

.method public static putLong(JJ)V
    .locals 0
    .param p0, "address"    # J
    .param p2, "value"    # J

    .line 643
    invoke-static {p0, p1, p2, p3}, Lio/netty/util/internal/PlatformDependent0;->putLong(JJ)V

    .line 644
    return-void
.end method

.method public static putLong([BIJ)V
    .locals 0
    .param p0, "data"    # [B
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 659
    invoke-static {p0, p1, p2, p3}, Lio/netty/util/internal/PlatformDependent0;->putLong([BIJ)V

    .line 660
    return-void
.end method

.method public static putObject(Ljava/lang/Object;JLjava/lang/Object;)V
    .locals 0
    .param p0, "o"    # Ljava/lang/Object;
    .param p1, "offset"    # J
    .param p3, "x"    # Ljava/lang/Object;

    .line 663
    invoke-static {p0, p1, p2, p3}, Lio/netty/util/internal/PlatformDependent0;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 664
    return-void
.end method

.method public static putShort(JS)V
    .locals 0
    .param p0, "address"    # J
    .param p2, "value"    # S

    .line 635
    invoke-static {p0, p1, p2}, Lio/netty/util/internal/PlatformDependent0;->putShort(JS)V

    .line 636
    return-void
.end method

.method public static putShort([BIS)V
    .locals 0
    .param p0, "data"    # [B
    .param p1, "index"    # I
    .param p2, "value"    # S

    .line 651
    invoke-static {p0, p1, p2}, Lio/netty/util/internal/PlatformDependent0;->putShort([BIS)V

    .line 652
    return-void
.end method

.method public static reallocateDirectNoCleaner(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;
    .locals 3
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "capacity"    # I

    .line 712
    sget-boolean v0, Lio/netty/util/internal/PlatformDependent;->USE_DIRECT_BUFFER_NO_CLEANER:Z

    if-eqz v0, :cond_0

    .line 714
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    sub-int v0, p1, v0

    .line 715
    .local v0, "len":I
    invoke-static {v0}, Lio/netty/util/internal/PlatformDependent;->incrementMemoryCounter(I)V

    .line 717
    :try_start_0
    invoke-static {p0, p1}, Lio/netty/util/internal/PlatformDependent0;->reallocateDirectNoCleaner(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 718
    :catchall_0
    move-exception v1

    .line 719
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lio/netty/util/internal/PlatformDependent;->decrementMemoryCounter(I)V

    .line 720
    invoke-static {v1}, Lio/netty/util/internal/PlatformDependent;->throwException(Ljava/lang/Throwable;)V

    .line 721
    const/4 v2, 0x0

    return-object v2

    .line 712
    .end local v0    # "len":I
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static reallocateMemory(JJ)J
    .locals 2
    .param p0, "address"    # J
    .param p2, "newSize"    # J

    .line 408
    invoke-static {p0, p1, p2, p3}, Lio/netty/util/internal/PlatformDependent0;->reallocateMemory(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static setMemory(JJB)V
    .locals 0
    .param p0, "address"    # J
    .param p2, "bytes"    # J
    .param p4, "value"    # B

    .line 687
    invoke-static {p0, p1, p2, p3, p4}, Lio/netty/util/internal/PlatformDependent0;->setMemory(JJB)V

    .line 688
    return-void
.end method

.method public static setMemory([BIJB)V
    .locals 10
    .param p0, "dst"    # [B
    .param p1, "dstIndex"    # I
    .param p2, "bytes"    # J
    .param p4, "value"    # B

    .line 683
    sget-wide v0, Lio/netty/util/internal/PlatformDependent;->BYTE_ARRAY_BASE_OFFSET:J

    int-to-long v2, p1

    add-long v5, v0, v2

    move-object v4, p0

    move-wide v7, p2

    move v9, p4

    invoke-static/range {v4 .. v9}, Lio/netty/util/internal/PlatformDependent0;->setMemory(Ljava/lang/Object;JJB)V

    .line 684
    return-void
.end method

.method public static threadLocalRandom()Ljava/util/Random;
    .locals 1

    .line 997
    sget-object v0, Lio/netty/util/internal/PlatformDependent;->RANDOM_PROVIDER:Lio/netty/util/internal/PlatformDependent$ThreadLocalRandomProvider;

    invoke-interface {v0}, Lio/netty/util/internal/PlatformDependent$ThreadLocalRandomProvider;->current()Ljava/util/Random;

    move-result-object v0

    return-object v0
.end method

.method public static throwException(Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "t"    # Ljava/lang/Throwable;

    .line 415
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->hasUnsafe()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    invoke-static {p0}, Lio/netty/util/internal/PlatformDependent0;->throwException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 418
    :cond_0
    invoke-static {p0}, Lio/netty/util/internal/PlatformDependent;->throwException0(Ljava/lang/Throwable;)V

    .line 420
    :goto_0
    return-void
.end method

.method private static throwException0(Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Throwable;",
            ")V^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 424
    throw p0
.end method

.method public static tmpdir()Ljava/io/File;
    .locals 1

    .line 381
    sget-object v0, Lio/netty/util/internal/PlatformDependent;->TMPDIR:Ljava/io/File;

    return-object v0
.end method

.method private static tmpdir0()Ljava/io/File;
    .locals 4

    .line 1157
    :try_start_0
    const-string v0, "io.netty.tmpdir"

    invoke-static {v0}, Lio/netty/util/internal/SystemPropertyUtil;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/netty/util/internal/PlatformDependent;->toDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 1158
    .local v0, "f":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 1159
    sget-object v1, Lio/netty/util/internal/PlatformDependent;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v2, "-Dio.netty.tmpdir: {}"

    invoke-interface {v1, v2, v0}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1160
    return-object v0

    .line 1163
    :cond_0
    const-string v1, "java.io.tmpdir"

    invoke-static {v1}, Lio/netty/util/internal/SystemPropertyUtil;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/netty/util/internal/PlatformDependent;->toDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    move-object v0, v1

    .line 1164
    if-eqz v0, :cond_1

    .line 1165
    sget-object v1, Lio/netty/util/internal/PlatformDependent;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v2, "-Dio.netty.tmpdir: {} (java.io.tmpdir)"

    invoke-interface {v1, v2, v0}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1166
    return-object v0

    .line 1170
    :cond_1
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->isWindows()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1171
    const-string v1, "TEMP"

    invoke-static {v1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/netty/util/internal/PlatformDependent;->toDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    move-object v0, v1

    .line 1172
    if-eqz v0, :cond_2

    .line 1173
    sget-object v1, Lio/netty/util/internal/PlatformDependent;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v2, "-Dio.netty.tmpdir: {} (%TEMP%)"

    invoke-interface {v1, v2, v0}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1174
    return-object v0

    .line 1177
    :cond_2
    const-string v1, "USERPROFILE"

    invoke-static {v1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1178
    .local v1, "userprofile":Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 1179
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\\AppData\\Local\\Temp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/netty/util/internal/PlatformDependent;->toDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    move-object v0, v2

    .line 1180
    if-eqz v0, :cond_3

    .line 1181
    sget-object v2, Lio/netty/util/internal/PlatformDependent;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v3, "-Dio.netty.tmpdir: {} (%USERPROFILE%\\AppData\\Local\\Temp)"

    invoke-interface {v2, v3, v0}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1182
    return-object v0

    .line 1185
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\\Local Settings\\Temp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/netty/util/internal/PlatformDependent;->toDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    move-object v0, v2

    .line 1186
    if-eqz v0, :cond_4

    .line 1187
    sget-object v2, Lio/netty/util/internal/PlatformDependent;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v3, "-Dio.netty.tmpdir: {} (%USERPROFILE%\\Local Settings\\Temp)"

    invoke-interface {v2, v3, v0}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1188
    return-object v0

    .line 1191
    .end local v1    # "userprofile":Ljava/lang/String;
    :cond_4
    goto :goto_0

    .line 1192
    :cond_5
    const-string v1, "TMPDIR"

    invoke-static {v1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/netty/util/internal/PlatformDependent;->toDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    move-object v0, v1

    .line 1193
    if-eqz v0, :cond_6

    .line 1194
    sget-object v1, Lio/netty/util/internal/PlatformDependent;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v2, "-Dio.netty.tmpdir: {} ($TMPDIR)"

    invoke-interface {v1, v2, v0}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1195
    return-object v0

    .line 1200
    :cond_6
    :goto_0
    goto :goto_1

    .line 1198
    .end local v0    # "f":Ljava/io/File;
    :catchall_0
    move-exception v0

    .line 1203
    :goto_1
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->isWindows()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1204
    new-instance v0, Ljava/io/File;

    const-string v1, "C:\\Windows\\Temp"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v0    # "f":Ljava/io/File;
    goto :goto_2

    .line 1206
    .end local v0    # "f":Ljava/io/File;
    :cond_7
    new-instance v0, Ljava/io/File;

    const-string v1, "/tmp"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1209
    .restart local v0    # "f":Ljava/io/File;
    :goto_2
    sget-object v1, Lio/netty/util/internal/PlatformDependent;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v2, "Failed to get the temporary directory; falling back to: {}"

    invoke-interface {v1, v2, v0}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1210
    return-object v0
.end method

.method private static toDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p0, "path"    # Ljava/lang/String;

    .line 1215
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 1216
    return-object v0

    .line 1219
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1220
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 1222
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1223
    return-object v0

    .line 1227
    :cond_1
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1228
    :catch_0
    move-exception v0

    .line 1229
    .local v0, "ignored":Ljava/lang/Exception;
    return-object v1
.end method

.method private static unsafeUnavailabilityCause0()Ljava/lang/Throwable;
    .locals 5

    .line 1029
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->isAndroid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1030
    sget-object v0, Lio/netty/util/internal/PlatformDependent;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v1, "sun.misc.Unsafe: unavailable (Android)"

    invoke-interface {v0, v1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    .line 1031
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 1034
    :cond_0
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->isIkvmDotNet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1035
    sget-object v0, Lio/netty/util/internal/PlatformDependent;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v1, "sun.misc.Unsafe: unavailable (IKVM.NET)"

    invoke-interface {v0, v1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    .line 1036
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 1039
    :cond_1
    invoke-static {}, Lio/netty/util/internal/PlatformDependent0;->getUnsafeUnavailabilityCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 1040
    .local v0, "cause":Ljava/lang/Throwable;
    if-eqz v0, :cond_2

    .line 1041
    return-object v0

    .line 1045
    :cond_2
    :try_start_0
    invoke-static {}, Lio/netty/util/internal/PlatformDependent0;->hasUnsafe()Z

    move-result v1

    .line 1046
    .local v1, "hasUnsafe":Z
    sget-object v2, Lio/netty/util/internal/PlatformDependent;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v3, "sun.misc.Unsafe: {}"

    if-eqz v1, :cond_3

    const-string v4, "available"

    goto :goto_0

    :cond_3
    const-string v4, "unavailable"

    :goto_0
    invoke-interface {v2, v3, v4}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1047
    if-eqz v1, :cond_4

    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    invoke-static {}, Lio/netty/util/internal/PlatformDependent0;->getUnsafeUnavailabilityCause()Ljava/lang/Throwable;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    return-object v2

    .line 1048
    .end local v1    # "hasUnsafe":Z
    :catchall_0
    move-exception v1

    .line 1049
    .local v1, "t":Ljava/lang/Throwable;
    sget-object v2, Lio/netty/util/internal/PlatformDependent;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v3, "Could not determine if Unsafe is available"

    invoke-interface {v2, v3, v1}, Lio/netty/util/internal/logging/InternalLogger;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1051
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2, v3, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2
.end method

.method public static useDirectBufferNoCleaner()Z
    .locals 1

    .line 757
    sget-boolean v0, Lio/netty/util/internal/PlatformDependent;->USE_DIRECT_BUFFER_NO_CLEANER:Z

    return v0
.end method

.method public static usedDirectMemory()J
    .locals 2

    .line 374
    sget-object v0, Lio/netty/util/internal/PlatformDependent;->DIRECT_MEMORY_COUNTER:Ljava/util/concurrent/atomic/AtomicLong;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method
