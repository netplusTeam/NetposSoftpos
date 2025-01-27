.class final Lio/netty/util/internal/PlatformDependent0;
.super Ljava/lang/Object;
.source "PlatformDependent0.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ADDRESS_FIELD_OFFSET:J

.field private static final ALLOCATE_ARRAY_METHOD:Ljava/lang/reflect/Method;

.field private static final BYTE_ARRAY_BASE_OFFSET:J

.field private static final DIRECT_BUFFER_CONSTRUCTOR:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field private static final EXPLICIT_NO_UNSAFE_CAUSE:Ljava/lang/Throwable;

.field static final HASH_CODE_ASCII_SEED:I = -0x3d4d51cb

.field static final HASH_CODE_C1:I = -0x3361d2af

.field static final HASH_CODE_C2:I = 0x1b873593

.field private static final INTERNAL_UNSAFE:Ljava/lang/Object;

.field private static final IS_ANDROID:Z

.field private static final IS_EXPLICIT_TRY_REFLECTION_SET_ACCESSIBLE:Z

.field private static final JAVA_VERSION:I

.field private static final UNALIGNED:Z

.field static final UNSAFE:Lsun/misc/Unsafe;

.field private static final UNSAFE_COPY_THRESHOLD:J = 0x100000L

.field private static final UNSAFE_UNAVAILABILITY_CAUSE:Ljava/lang/Throwable;

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 36
    const-class v1, [B

    .line 39
    const-class v0, Lio/netty/util/internal/PlatformDependent0;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/util/internal/PlatformDependent0;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 43
    invoke-static {}, Lio/netty/util/internal/PlatformDependent0;->explicitNoUnsafeCause0()Ljava/lang/Throwable;

    move-result-object v2

    sput-object v2, Lio/netty/util/internal/PlatformDependent0;->EXPLICIT_NO_UNSAFE_CAUSE:Ljava/lang/Throwable;

    .line 45
    invoke-static {}, Lio/netty/util/internal/PlatformDependent0;->javaVersion0()I

    move-result v3

    sput v3, Lio/netty/util/internal/PlatformDependent0;->JAVA_VERSION:I

    .line 46
    invoke-static {}, Lio/netty/util/internal/PlatformDependent0;->isAndroid0()Z

    move-result v3

    sput-boolean v3, Lio/netty/util/internal/PlatformDependent0;->IS_ANDROID:Z

    .line 50
    invoke-static {}, Lio/netty/util/internal/PlatformDependent0;->explicitTryReflectionSetAccessible0()Z

    move-result v3

    sput-boolean v3, Lio/netty/util/internal/PlatformDependent0;->IS_EXPLICIT_TRY_REFLECTION_SET_ACCESSIBLE:Z

    .line 69
    const/4 v3, 0x0

    .line 70
    .local v3, "addressField":Ljava/lang/reflect/Field;
    const/4 v4, 0x0

    .line 71
    .local v4, "allocateArrayMethod":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    .line 73
    .local v5, "unsafeUnavailabilityCause":Ljava/lang/Throwable;
    const/4 v6, 0x0

    .line 75
    .local v6, "internalUnsafe":Ljava/lang/Object;
    move-object v5, v2

    const-wide/16 v7, 0x1

    const/4 v9, 0x1

    if-eqz v2, :cond_0

    .line 76
    const/4 v2, 0x0

    .line 77
    .local v2, "direct":Ljava/nio/ByteBuffer;
    const/4 v3, 0x0

    .line 78
    const/4 v10, 0x0

    .line 79
    .local v10, "unsafe":Lsun/misc/Unsafe;
    const/4 v6, 0x0

    goto/16 :goto_3

    .line 81
    .end local v2    # "direct":Ljava/nio/ByteBuffer;
    .end local v10    # "unsafe":Lsun/misc/Unsafe;
    :cond_0
    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 84
    .restart local v2    # "direct":Ljava/nio/ByteBuffer;
    new-instance v10, Lio/netty/util/internal/PlatformDependent0$1;

    invoke-direct {v10}, Lio/netty/util/internal/PlatformDependent0$1;-><init>()V

    invoke-static {v10}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v10

    .line 115
    .local v10, "maybeUnsafe":Ljava/lang/Object;
    instance-of v11, v10, Ljava/lang/Throwable;

    if-eqz v11, :cond_1

    .line 116
    const/4 v11, 0x0

    .line 117
    .local v11, "unsafe":Lsun/misc/Unsafe;
    move-object v5, v10

    check-cast v5, Ljava/lang/Throwable;

    .line 118
    move-object v12, v10

    check-cast v12, Ljava/lang/Throwable;

    const-string v13, "sun.misc.Unsafe.theUnsafe: unavailable"

    invoke-interface {v0, v13, v12}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 120
    .end local v11    # "unsafe":Lsun/misc/Unsafe;
    :cond_1
    move-object v11, v10

    check-cast v11, Lsun/misc/Unsafe;

    .line 121
    .restart local v11    # "unsafe":Lsun/misc/Unsafe;
    const-string v12, "sun.misc.Unsafe.theUnsafe: available"

    invoke-interface {v0, v12}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    .line 127
    :goto_0
    if-eqz v11, :cond_3

    .line 128
    move-object v12, v11

    .line 129
    .local v12, "finalUnsafe":Lsun/misc/Unsafe;
    new-instance v13, Lio/netty/util/internal/PlatformDependent0$2;

    invoke-direct {v13, v12}, Lio/netty/util/internal/PlatformDependent0$2;-><init>(Lsun/misc/Unsafe;)V

    invoke-static {v13}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v13

    .line 144
    .local v13, "maybeException":Ljava/lang/Object;
    if-nez v13, :cond_2

    .line 145
    const-string v14, "sun.misc.Unsafe.copyMemory: available"

    invoke-interface {v0, v14}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 148
    :cond_2
    const/4 v11, 0x0

    .line 149
    move-object v5, v13

    check-cast v5, Ljava/lang/Throwable;

    .line 150
    move-object v14, v13

    check-cast v14, Ljava/lang/Throwable;

    const-string v15, "sun.misc.Unsafe.copyMemory: unavailable"

    invoke-interface {v0, v15, v14}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 154
    .end local v12    # "finalUnsafe":Lsun/misc/Unsafe;
    .end local v13    # "maybeException":Ljava/lang/Object;
    :cond_3
    :goto_1
    if-eqz v11, :cond_5

    .line 155
    move-object v12, v11

    .line 158
    .restart local v12    # "finalUnsafe":Lsun/misc/Unsafe;
    new-instance v13, Lio/netty/util/internal/PlatformDependent0$3;

    invoke-direct {v13, v12, v2}, Lio/netty/util/internal/PlatformDependent0$3;-><init>(Lsun/misc/Unsafe;Ljava/nio/ByteBuffer;)V

    invoke-static {v13}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v13

    .line 181
    .local v13, "maybeAddressField":Ljava/lang/Object;
    instance-of v14, v13, Ljava/lang/reflect/Field;

    if-eqz v14, :cond_4

    .line 182
    move-object v3, v13

    check-cast v3, Ljava/lang/reflect/Field;

    .line 183
    const-string v14, "java.nio.Buffer.address: available"

    invoke-interface {v0, v14}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    goto :goto_2

    .line 185
    :cond_4
    move-object v5, v13

    check-cast v5, Ljava/lang/Throwable;

    .line 186
    move-object v14, v13

    check-cast v14, Ljava/lang/Throwable;

    const-string v15, "java.nio.Buffer.address: unavailable"

    invoke-interface {v0, v15, v14}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 190
    const/4 v11, 0x0

    .line 194
    .end local v12    # "finalUnsafe":Lsun/misc/Unsafe;
    .end local v13    # "maybeAddressField":Ljava/lang/Object;
    :cond_5
    :goto_2
    if-eqz v11, :cond_6

    .line 197
    invoke-virtual {v11, v1}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v12

    int-to-long v12, v12

    .line 198
    .local v12, "byteArrayIndexScale":J
    cmp-long v14, v12, v7

    if-eqz v14, :cond_6

    .line 199
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const-string v15, "unsafe.arrayIndexScale is {} (expected: 1). Not using unsafe."

    invoke-interface {v0, v15, v14}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 200
    new-instance v14, Ljava/lang/UnsupportedOperationException;

    const-string v15, "Unexpected unsafe.arrayIndexScale"

    invoke-direct {v14, v15}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    move-object v5, v14

    .line 201
    const/4 v11, 0x0

    move-object v10, v11

    goto :goto_3

    .line 205
    .end local v10    # "maybeUnsafe":Ljava/lang/Object;
    .end local v12    # "byteArrayIndexScale":J
    :cond_6
    move-object v10, v11

    .end local v11    # "unsafe":Lsun/misc/Unsafe;
    .local v10, "unsafe":Lsun/misc/Unsafe;
    :goto_3
    sput-object v5, Lio/netty/util/internal/PlatformDependent0;->UNSAFE_UNAVAILABILITY_CAUSE:Ljava/lang/Throwable;

    .line 206
    sput-object v10, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    .line 208
    const/4 v11, 0x0

    const-wide/16 v12, -0x1

    if-nez v10, :cond_7

    .line 209
    sput-wide v12, Lio/netty/util/internal/PlatformDependent0;->ADDRESS_FIELD_OFFSET:J

    .line 210
    sput-wide v12, Lio/netty/util/internal/PlatformDependent0;->BYTE_ARRAY_BASE_OFFSET:J

    .line 211
    sput-boolean v11, Lio/netty/util/internal/PlatformDependent0;->UNALIGNED:Z

    .line 212
    const/4 v0, 0x0

    sput-object v0, Lio/netty/util/internal/PlatformDependent0;->DIRECT_BUFFER_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    .line 213
    sput-object v0, Lio/netty/util/internal/PlatformDependent0;->ALLOCATE_ARRAY_METHOD:Ljava/lang/reflect/Method;

    goto/16 :goto_c

    .line 216
    :cond_7
    const-wide/16 v14, -0x1

    .line 218
    .local v14, "address":J
    :try_start_0
    new-instance v12, Lio/netty/util/internal/PlatformDependent0$4;

    invoke-direct {v12, v2}, Lio/netty/util/internal/PlatformDependent0$4;-><init>(Ljava/nio/ByteBuffer;)V

    .line 219
    invoke-static {v12}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v12

    .line 238
    .local v12, "maybeDirectBufferConstructor":Ljava/lang/Object;
    instance-of v13, v12, Ljava/lang/reflect/Constructor;

    const/4 v9, 0x2

    if-eqz v13, :cond_8

    .line 239
    invoke-virtual {v10, v7, v8}, Lsun/misc/Unsafe;->allocateMemory(J)J

    move-result-wide v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v14, v7

    .line 242
    :try_start_1
    move-object v7, v12

    check-cast v7, Ljava/lang/reflect/Constructor;

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v8, v11

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v8, v13

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    move-object v7, v12

    check-cast v7, Ljava/lang/reflect/Constructor;

    .line 244
    .local v7, "directBufferConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const-string v8, "direct buffer constructor: available"

    invoke-interface {v0, v8}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 249
    .end local v7    # "directBufferConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :catch_0
    move-exception v0

    .line 250
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    const/4 v7, 0x0

    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    .restart local v7    # "directBufferConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    goto :goto_4

    .line 247
    .end local v7    # "directBufferConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :catch_1
    move-exception v0

    .line 248
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const/4 v7, 0x0

    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    .restart local v7    # "directBufferConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    goto :goto_4

    .line 245
    .end local v7    # "directBufferConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :catch_2
    move-exception v0

    .line 246
    .local v0, "e":Ljava/lang/InstantiationException;
    const/4 v7, 0x0

    .line 251
    .end local v0    # "e":Ljava/lang/InstantiationException;
    .restart local v7    # "directBufferConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :goto_4
    goto :goto_5

    .line 253
    .end local v7    # "directBufferConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_8
    :try_start_2
    const-string v7, "direct buffer constructor: unavailable"

    move-object v8, v12

    check-cast v8, Ljava/lang/Throwable;

    invoke-interface {v0, v7, v8}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 256
    const/4 v7, 0x0

    .line 259
    .end local v12    # "maybeDirectBufferConstructor":Ljava/lang/Object;
    .restart local v7    # "directBufferConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :goto_5
    const-wide/16 v12, -0x1

    cmp-long v0, v14, v12

    if-eqz v0, :cond_9

    .line 260
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, v14, v15}, Lsun/misc/Unsafe;->freeMemory(J)V

    .line 263
    :cond_9
    sput-object v7, Lio/netty/util/internal/PlatformDependent0;->DIRECT_BUFFER_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    .line 264
    invoke-static {v3}, Lio/netty/util/internal/PlatformDependent0;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v12

    sput-wide v12, Lio/netty/util/internal/PlatformDependent0;->ADDRESS_FIELD_OFFSET:J

    .line 265
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lio/netty/util/internal/PlatformDependent0;->BYTE_ARRAY_BASE_OFFSET:J

    .line 267
    new-instance v0, Lio/netty/util/internal/PlatformDependent0$5;

    invoke-direct {v0}, Lio/netty/util/internal/PlatformDependent0$5;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    .line 312
    .local v1, "maybeUnaligned":Ljava/lang/Object;
    instance-of v0, v1, Ljava/lang/Boolean;

    if-eqz v0, :cond_a

    .line 313
    move-object v0, v1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 314
    .local v0, "unaligned":Z
    sget-object v8, Lio/netty/util/internal/PlatformDependent0;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const-string v13, "java.nio.Bits.unaligned: available, {}"

    invoke-interface {v8, v13, v12}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    move v8, v0

    goto :goto_6

    .line 316
    .end local v0    # "unaligned":Z
    :cond_a
    const-string v0, "os.arch"

    const-string v8, ""

    invoke-static {v0, v8}, Lio/netty/util/internal/SystemPropertyUtil;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 318
    .local v0, "arch":Ljava/lang/String;
    const-string v8, "^(i[3-6]86|x86(_64)?|x64|amd64)$"

    invoke-virtual {v0, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    .line 319
    .local v8, "unaligned":Z
    move-object v12, v1

    check-cast v12, Ljava/lang/Throwable;

    .line 320
    .local v12, "t":Ljava/lang/Throwable;
    sget-object v13, Lio/netty/util/internal/PlatformDependent0;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const-string v9, "java.nio.Bits.unaligned: unavailable {}"

    invoke-interface {v13, v9, v11, v12}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 323
    .end local v0    # "arch":Ljava/lang/String;
    .end local v12    # "t":Ljava/lang/Throwable;
    :goto_6
    sput-boolean v8, Lio/netty/util/internal/PlatformDependent0;->UNALIGNED:Z

    .line 325
    invoke-static {}, Lio/netty/util/internal/PlatformDependent0;->javaVersion()I

    move-result v0

    const/16 v9, 0x9

    if-lt v0, v9, :cond_f

    .line 326
    new-instance v0, Lio/netty/util/internal/PlatformDependent0$6;

    invoke-direct {v0}, Lio/netty/util/internal/PlatformDependent0$6;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    .line 341
    .local v0, "maybeException":Ljava/lang/Object;
    instance-of v9, v0, Ljava/lang/Throwable;

    if-nez v9, :cond_d

    .line 342
    move-object v6, v0

    .line 343
    move-object v9, v6

    .line 344
    .local v9, "finalInternalUnsafe":Ljava/lang/Object;
    new-instance v11, Lio/netty/util/internal/PlatformDependent0$7;

    invoke-direct {v11, v9}, Lio/netty/util/internal/PlatformDependent0$7;-><init>(Ljava/lang/Object;)V

    invoke-static {v11}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v11

    .line 358
    .end local v0    # "maybeException":Ljava/lang/Object;
    .local v11, "maybeException":Ljava/lang/Object;
    instance-of v0, v11, Ljava/lang/reflect/Method;

    if-eqz v0, :cond_c

    .line 360
    :try_start_3
    move-object v0, v11

    check-cast v0, Ljava/lang/reflect/Method;

    .line 361
    .local v0, "m":Ljava/lang/reflect/Method;
    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    sget-object v13, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const/16 v16, 0x0

    aput-object v13, v12, v16

    const/16 v13, 0x8

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, 0x1

    aput-object v16, v12, v17

    invoke-virtual {v0, v9, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [B

    check-cast v12, [B

    .line 362
    .local v12, "bytes":[B
    array-length v13, v12
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_5

    move-object/from16 v17, v1

    const/16 v1, 0x8

    .end local v1    # "maybeUnaligned":Ljava/lang/Object;
    .local v17, "maybeUnaligned":Ljava/lang/Object;
    if-ne v13, v1, :cond_b

    .line 363
    move-object v4, v0

    .line 368
    .end local v0    # "m":Ljava/lang/reflect/Method;
    .end local v12    # "bytes":[B
    move-object v0, v11

    goto :goto_9

    .line 362
    .restart local v0    # "m":Ljava/lang/reflect/Method;
    .restart local v12    # "bytes":[B
    :cond_b
    :try_start_4
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    .end local v2    # "direct":Ljava/nio/ByteBuffer;
    .end local v3    # "addressField":Ljava/lang/reflect/Field;
    .end local v4    # "allocateArrayMethod":Ljava/lang/reflect/Method;
    .end local v5    # "unsafeUnavailabilityCause":Ljava/lang/Throwable;
    .end local v6    # "internalUnsafe":Ljava/lang/Object;
    .end local v7    # "directBufferConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v8    # "unaligned":Z
    .end local v9    # "finalInternalUnsafe":Ljava/lang/Object;
    .end local v10    # "unsafe":Lsun/misc/Unsafe;
    .end local v11    # "maybeException":Ljava/lang/Object;
    .end local v14    # "address":J
    .end local v17    # "maybeUnaligned":Ljava/lang/Object;
    throw v1
    :try_end_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_3

    .line 366
    .end local v0    # "m":Ljava/lang/reflect/Method;
    .end local v12    # "bytes":[B
    .restart local v2    # "direct":Ljava/nio/ByteBuffer;
    .restart local v3    # "addressField":Ljava/lang/reflect/Field;
    .restart local v4    # "allocateArrayMethod":Ljava/lang/reflect/Method;
    .restart local v5    # "unsafeUnavailabilityCause":Ljava/lang/Throwable;
    .restart local v6    # "internalUnsafe":Ljava/lang/Object;
    .restart local v7    # "directBufferConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v8    # "unaligned":Z
    .restart local v9    # "finalInternalUnsafe":Ljava/lang/Object;
    .restart local v10    # "unsafe":Lsun/misc/Unsafe;
    .restart local v11    # "maybeException":Ljava/lang/Object;
    .restart local v14    # "address":J
    .restart local v17    # "maybeUnaligned":Ljava/lang/Object;
    :catch_3
    move-exception v0

    goto :goto_7

    .line 364
    :catch_4
    move-exception v0

    goto :goto_8

    .line 366
    .end local v17    # "maybeUnaligned":Ljava/lang/Object;
    .restart local v1    # "maybeUnaligned":Ljava/lang/Object;
    :catch_5
    move-exception v0

    move-object/from16 v17, v1

    .line 367
    .end local v1    # "maybeUnaligned":Ljava/lang/Object;
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    .restart local v17    # "maybeUnaligned":Ljava/lang/Object;
    :goto_7
    move-object v1, v0

    .end local v11    # "maybeException":Ljava/lang/Object;
    .local v1, "maybeException":Ljava/lang/Object;
    goto :goto_9

    .line 364
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v17    # "maybeUnaligned":Ljava/lang/Object;
    .local v1, "maybeUnaligned":Ljava/lang/Object;
    .restart local v11    # "maybeException":Ljava/lang/Object;
    :catch_6
    move-exception v0

    move-object/from16 v17, v1

    .line 365
    .end local v1    # "maybeUnaligned":Ljava/lang/Object;
    .local v0, "e":Ljava/lang/IllegalAccessException;
    .restart local v17    # "maybeUnaligned":Ljava/lang/Object;
    :goto_8
    nop

    .line 368
    .end local v11    # "maybeException":Ljava/lang/Object;
    .local v0, "maybeException":Ljava/lang/Object;
    goto :goto_9

    .line 358
    .end local v0    # "maybeException":Ljava/lang/Object;
    .end local v17    # "maybeUnaligned":Ljava/lang/Object;
    .restart local v1    # "maybeUnaligned":Ljava/lang/Object;
    .restart local v11    # "maybeException":Ljava/lang/Object;
    :cond_c
    move-object/from16 v17, v1

    .end local v1    # "maybeUnaligned":Ljava/lang/Object;
    .restart local v17    # "maybeUnaligned":Ljava/lang/Object;
    move-object v0, v11

    goto :goto_9

    .line 341
    .end local v9    # "finalInternalUnsafe":Ljava/lang/Object;
    .end local v11    # "maybeException":Ljava/lang/Object;
    .end local v17    # "maybeUnaligned":Ljava/lang/Object;
    .restart local v0    # "maybeException":Ljava/lang/Object;
    .restart local v1    # "maybeUnaligned":Ljava/lang/Object;
    :cond_d
    move-object/from16 v17, v1

    .line 372
    .end local v1    # "maybeUnaligned":Ljava/lang/Object;
    .restart local v17    # "maybeUnaligned":Ljava/lang/Object;
    :goto_9
    instance-of v1, v0, Ljava/lang/Throwable;

    if-eqz v1, :cond_e

    .line 373
    sget-object v1, Lio/netty/util/internal/PlatformDependent0;->logger:Lio/netty/util/internal/logging/InternalLogger;

    move-object v9, v0

    check-cast v9, Ljava/lang/Throwable;

    const-string v11, "jdk.internal.misc.Unsafe.allocateUninitializedArray(int): unavailable"

    invoke-interface {v1, v11, v9}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a

    .line 376
    :cond_e
    sget-object v1, Lio/netty/util/internal/PlatformDependent0;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v9, "jdk.internal.misc.Unsafe.allocateUninitializedArray(int): available"

    invoke-interface {v1, v9}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    .line 378
    .end local v0    # "maybeException":Ljava/lang/Object;
    :goto_a
    goto :goto_b

    .line 379
    .end local v17    # "maybeUnaligned":Ljava/lang/Object;
    .restart local v1    # "maybeUnaligned":Ljava/lang/Object;
    :cond_f
    move-object/from16 v17, v1

    .end local v1    # "maybeUnaligned":Ljava/lang/Object;
    .restart local v17    # "maybeUnaligned":Ljava/lang/Object;
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v1, "jdk.internal.misc.Unsafe.allocateUninitializedArray(int): unavailable prior to Java9"

    invoke-interface {v0, v1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    .line 381
    :goto_b
    sput-object v4, Lio/netty/util/internal/PlatformDependent0;->ALLOCATE_ARRAY_METHOD:Ljava/lang/reflect/Method;

    .line 384
    .end local v7    # "directBufferConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v8    # "unaligned":Z
    .end local v14    # "address":J
    .end local v17    # "maybeUnaligned":Ljava/lang/Object;
    :goto_c
    sput-object v6, Lio/netty/util/internal/PlatformDependent0;->INTERNAL_UNSAFE:Ljava/lang/Object;

    .line 386
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->logger:Lio/netty/util/internal/logging/InternalLogger;

    sget-object v1, Lio/netty/util/internal/PlatformDependent0;->DIRECT_BUFFER_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    if-eqz v1, :cond_10

    const-string v1, "available"

    goto :goto_d

    :cond_10
    const-string v1, "unavailable"

    :goto_d
    const-string v7, "java.nio.DirectByteBuffer.<init>(long, int): {}"

    invoke-interface {v0, v7, v1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 388
    .end local v2    # "direct":Ljava/nio/ByteBuffer;
    .end local v3    # "addressField":Ljava/lang/reflect/Field;
    .end local v4    # "allocateArrayMethod":Ljava/lang/reflect/Method;
    .end local v5    # "unsafeUnavailabilityCause":Ljava/lang/Throwable;
    .end local v6    # "internalUnsafe":Ljava/lang/Object;
    .end local v10    # "unsafe":Lsun/misc/Unsafe;
    return-void

    .line 259
    .restart local v2    # "direct":Ljava/nio/ByteBuffer;
    .restart local v3    # "addressField":Ljava/lang/reflect/Field;
    .restart local v4    # "allocateArrayMethod":Ljava/lang/reflect/Method;
    .restart local v5    # "unsafeUnavailabilityCause":Ljava/lang/Throwable;
    .restart local v6    # "internalUnsafe":Ljava/lang/Object;
    .restart local v10    # "unsafe":Lsun/misc/Unsafe;
    .restart local v14    # "address":J
    :catchall_0
    move-exception v0

    const-wide/16 v7, -0x1

    cmp-long v1, v14, v7

    if-eqz v1, :cond_11

    .line 260
    sget-object v1, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v1, v14, v15}, Lsun/misc/Unsafe;->freeMemory(J)V

    .line 262
    :cond_11
    throw v0
.end method

.method private constructor <init>()V
    .locals 0

    .line 878
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 879
    return-void
.end method

.method static addressSize()I
    .locals 1

    .line 795
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0}, Lsun/misc/Unsafe;->addressSize()I

    move-result v0

    return v0
.end method

.method static allocateDirectNoCleaner(I)Ljava/nio/ByteBuffer;
    .locals 3
    .param p0, "capacity"    # I

    .line 453
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    const/4 v1, 0x1

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lsun/misc/Unsafe;->allocateMemory(J)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lio/netty/util/internal/PlatformDependent0;->newDirectBuffer(JI)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method static allocateMemory(J)J
    .locals 2
    .param p0, "size"    # J

    .line 799
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1}, Lsun/misc/Unsafe;->allocateMemory(J)J

    move-result-wide v0

    return-wide v0
.end method

.method static allocateUninitializedArray(I)[B
    .locals 5
    .param p0, "size"    # I

    .line 462
    :try_start_0
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->ALLOCATE_ARRAY_METHOD:Ljava/lang/reflect/Method;

    sget-object v1, Lio/netty/util/internal/PlatformDependent0;->INTERNAL_UNSAFE:Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 465
    :catch_0
    move-exception v0

    .line 466
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 463
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 464
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static byteArrayBaseOffset()J
    .locals 2

    .line 489
    sget-wide v0, Lio/netty/util/internal/PlatformDependent0;->BYTE_ARRAY_BASE_OFFSET:J

    return-wide v0
.end method

.method static copyMemory(JJJ)V
    .locals 9
    .param p0, "srcAddr"    # J
    .param p2, "dstAddr"    # J
    .param p4, "length"    # J

    .line 579
    invoke-static {}, Lio/netty/util/internal/PlatformDependent0;->javaVersion()I

    move-result v0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    .line 580
    invoke-static/range {p0 .. p5}, Lio/netty/util/internal/PlatformDependent0;->copyMemoryWithSafePointPolling(JJJ)V

    goto :goto_0

    .line 582
    :cond_0
    sget-object v2, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    move-wide v3, p0

    move-wide v5, p2

    move-wide v7, p4

    invoke-virtual/range {v2 .. v8}, Lsun/misc/Unsafe;->copyMemory(JJJ)V

    .line 584
    :goto_0
    return-void
.end method

.method static copyMemory(Ljava/lang/Object;JLjava/lang/Object;JJ)V
    .locals 11
    .param p0, "src"    # Ljava/lang/Object;
    .param p1, "srcOffset"    # J
    .param p3, "dst"    # Ljava/lang/Object;
    .param p4, "dstOffset"    # J
    .param p6, "length"    # J

    .line 599
    invoke-static {}, Lio/netty/util/internal/PlatformDependent0;->javaVersion()I

    move-result v0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    .line 600
    invoke-static/range {p0 .. p7}, Lio/netty/util/internal/PlatformDependent0;->copyMemoryWithSafePointPolling(Ljava/lang/Object;JLjava/lang/Object;JJ)V

    goto :goto_0

    .line 602
    :cond_0
    sget-object v2, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    move-object v3, p0

    move-wide v4, p1

    move-object v6, p3

    move-wide v7, p4

    move-wide/from16 v9, p6

    invoke-virtual/range {v2 .. v10}, Lsun/misc/Unsafe;->copyMemory(Ljava/lang/Object;JLjava/lang/Object;JJ)V

    .line 604
    :goto_0
    return-void
.end method

.method private static copyMemoryWithSafePointPolling(JJJ)V
    .locals 9
    .param p0, "srcAddr"    # J
    .param p2, "dstAddr"    # J
    .param p4, "length"    # J

    .line 587
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-lez v0, :cond_0

    .line 588
    const-wide/32 v0, 0x100000

    invoke-static {p4, p5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    .line 589
    .local v7, "size":J
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    move-wide v1, p0

    move-wide v3, p2

    move-wide v5, v7

    invoke-virtual/range {v0 .. v6}, Lsun/misc/Unsafe;->copyMemory(JJJ)V

    .line 590
    sub-long/2addr p4, v7

    .line 591
    add-long/2addr p0, v7

    .line 592
    add-long/2addr p2, v7

    .line 593
    .end local v7    # "size":J
    goto :goto_0

    .line 594
    :cond_0
    return-void
.end method

.method private static copyMemoryWithSafePointPolling(Ljava/lang/Object;JLjava/lang/Object;JJ)V
    .locals 17
    .param p0, "src"    # Ljava/lang/Object;
    .param p1, "srcOffset"    # J
    .param p3, "dst"    # Ljava/lang/Object;
    .param p4, "dstOffset"    # J
    .param p6, "length"    # J

    move-wide/from16 v9, p1

    move-wide/from16 v11, p4

    move-wide/from16 v13, p6

    .line 608
    .end local p1    # "srcOffset":J
    .end local p4    # "dstOffset":J
    .end local p6    # "length":J
    .local v9, "srcOffset":J
    .local v11, "dstOffset":J
    .local v13, "length":J
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, v13, v0

    if-lez v0, :cond_0

    .line 609
    const-wide/32 v0, 0x100000

    invoke-static {v13, v14, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v15

    .line 610
    .local v15, "size":J
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    move-object/from16 v1, p0

    move-wide v2, v9

    move-object/from16 v4, p3

    move-wide v5, v11

    move-wide v7, v15

    invoke-virtual/range {v0 .. v8}, Lsun/misc/Unsafe;->copyMemory(Ljava/lang/Object;JLjava/lang/Object;JJ)V

    .line 611
    sub-long/2addr v13, v15

    .line 612
    add-long/2addr v9, v15

    .line 613
    add-long/2addr v11, v15

    .line 614
    .end local v15    # "size":J
    goto :goto_0

    .line 615
    :cond_0
    return-void
.end method

.method static directBufferAddress(Ljava/nio/ByteBuffer;)J
    .locals 2
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .line 485
    sget-wide v0, Lio/netty/util/internal/PlatformDependent0;->ADDRESS_FIELD_OFFSET:J

    invoke-static {p0, v0, v1}, Lio/netty/util/internal/PlatformDependent0;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static equals([BI[BII)Z
    .locals 21
    .param p0, "bytes1"    # [B
    .param p1, "startPos1"    # I
    .param p2, "bytes2"    # [B
    .param p3, "startPos2"    # I
    .param p4, "length"    # I

    .line 626
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    and-int/lit8 v4, v3, 0x7

    .line 627
    .local v4, "remainingBytes":I
    sget-wide v5, Lio/netty/util/internal/PlatformDependent0;->BYTE_ARRAY_BASE_OFFSET:J

    int-to-long v7, v1

    add-long/2addr v5, v7

    .line 628
    .local v5, "baseOffset1":J
    sub-int v7, p3, v1

    int-to-long v7, v7

    .line 629
    .local v7, "diff":J
    const/16 v10, 0x8

    if-lt v3, v10, :cond_2

    .line 630
    int-to-long v10, v4

    add-long/2addr v10, v5

    .line 631
    .local v10, "end":J
    const-wide/16 v12, 0x8

    sub-long v14, v5, v12

    int-to-long v12, v3

    add-long/2addr v14, v12

    .local v14, "i":J
    :goto_0
    cmp-long v12, v14, v10

    if-ltz v12, :cond_1

    .line 632
    sget-object v12, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v12, v0, v14, v15}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v17

    move-wide/from16 v19, v10

    .end local v10    # "end":J
    .local v19, "end":J
    add-long v9, v14, v7

    invoke-virtual {v12, v2, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    cmp-long v9, v17, v9

    if-eqz v9, :cond_0

    .line 633
    const/4 v9, 0x0

    return v9

    .line 631
    :cond_0
    const-wide/16 v9, 0x8

    sub-long/2addr v14, v9

    move-wide/from16 v10, v19

    goto :goto_0

    .end local v19    # "end":J
    .restart local v10    # "end":J
    :cond_1
    move-wide/from16 v19, v10

    .line 637
    .end local v10    # "end":J
    .end local v14    # "i":J
    :cond_2
    const/4 v9, 0x4

    if-lt v4, v9, :cond_4

    .line 638
    add-int/lit8 v4, v4, -0x4

    .line 639
    int-to-long v9, v4

    add-long/2addr v9, v5

    .line 640
    .local v9, "pos":J
    sget-object v11, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v11, v0, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v12

    add-long v14, v9, v7

    invoke-virtual {v11, v2, v14, v15}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v11

    if-eq v12, v11, :cond_3

    .line 641
    const/4 v11, 0x0

    return v11

    .line 640
    :cond_3
    const/4 v11, 0x0

    goto :goto_1

    .line 637
    .end local v9    # "pos":J
    :cond_4
    const/4 v11, 0x0

    .line 644
    :goto_1
    add-long v9, v5, v7

    .line 645
    .local v9, "baseOffset2":J
    const/4 v13, 0x2

    if-lt v4, v13, :cond_8

    .line 646
    sget-object v14, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v14, v0, v5, v6}, Lsun/misc/Unsafe;->getChar(Ljava/lang/Object;J)C

    move-result v15

    invoke-virtual {v14, v2, v9, v10}, Lsun/misc/Unsafe;->getChar(Ljava/lang/Object;J)C

    move-result v11

    if-ne v15, v11, :cond_6

    if-eq v4, v13, :cond_5

    const-wide/16 v16, 0x2

    add-long v12, v5, v16

    .line 648
    invoke-virtual {v14, v0, v12, v13}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result v12

    move-wide/from16 v18, v7

    .end local v7    # "diff":J
    .local v18, "diff":J
    add-long v7, v9, v16

    invoke-virtual {v14, v2, v7, v8}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result v7

    if-ne v12, v7, :cond_7

    goto :goto_2

    .line 646
    .end local v18    # "diff":J
    .restart local v7    # "diff":J
    :cond_5
    move-wide/from16 v18, v7

    .line 648
    .end local v7    # "diff":J
    .restart local v18    # "diff":J
    :goto_2
    const/4 v11, 0x1

    goto :goto_3

    .line 646
    .end local v18    # "diff":J
    .restart local v7    # "diff":J
    :cond_6
    move-wide/from16 v18, v7

    .line 648
    .end local v7    # "diff":J
    .restart local v18    # "diff":J
    :cond_7
    const/4 v11, 0x0

    .line 646
    :goto_3
    return v11

    .line 650
    .end local v18    # "diff":J
    .restart local v7    # "diff":J
    :cond_8
    move-wide/from16 v18, v7

    .end local v7    # "diff":J
    .restart local v18    # "diff":J
    if-eqz v4, :cond_a

    sget-object v7, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    .line 651
    invoke-virtual {v7, v0, v5, v6}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result v8

    invoke-virtual {v7, v2, v9, v10}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result v7

    if-ne v8, v7, :cond_9

    goto :goto_4

    :cond_9
    const/4 v11, 0x0

    goto :goto_5

    :cond_a
    :goto_4
    const/4 v11, 0x1

    .line 650
    :goto_5
    return v11
.end method

.method static equalsConstantTime([BI[BII)I
    .locals 20
    .param p0, "bytes1"    # [B
    .param p1, "startPos1"    # I
    .param p2, "bytes2"    # [B
    .param p3, "startPos2"    # I
    .param p4, "length"    # I

    .line 655
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    const-wide/16 v4, 0x0

    .line 656
    .local v4, "result":J
    and-int/lit8 v6, v3, 0x7

    int-to-long v6, v6

    .line 657
    .local v6, "remainingBytes":J
    sget-wide v8, Lio/netty/util/internal/PlatformDependent0;->BYTE_ARRAY_BASE_OFFSET:J

    int-to-long v10, v1

    add-long/2addr v8, v10

    .line 658
    .local v8, "baseOffset1":J
    add-long v10, v8, v6

    .line 659
    .local v10, "end":J
    sub-int v12, p3, v1

    int-to-long v12, v12

    .line 660
    .local v12, "diff":J
    const-wide/16 v14, 0x8

    sub-long v16, v8, v14

    int-to-long v14, v3

    add-long v16, v16, v14

    move-wide/from16 v14, v16

    .local v14, "i":J
    :goto_0
    cmp-long v16, v14, v10

    if-ltz v16, :cond_0

    .line 661
    sget-object v1, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v1, v0, v14, v15}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v16

    move-wide/from16 v18, v10

    .end local v10    # "end":J
    .local v18, "end":J
    add-long v10, v14, v12

    invoke-virtual {v1, v2, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v10

    xor-long v10, v16, v10

    or-long/2addr v4, v10

    .line 660
    const-wide/16 v10, 0x8

    sub-long/2addr v14, v10

    move/from16 v1, p1

    move-wide/from16 v10, v18

    goto :goto_0

    .end local v18    # "end":J
    .restart local v10    # "end":J
    :cond_0
    move-wide/from16 v18, v10

    .line 663
    .end local v10    # "end":J
    .end local v14    # "i":J
    .restart local v18    # "end":J
    const-wide/16 v10, 0x4

    cmp-long v1, v6, v10

    if-ltz v1, :cond_1

    .line 664
    sget-object v1, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v1, v0, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v14

    add-long v10, v8, v12

    invoke-virtual {v1, v2, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    xor-int/2addr v1, v14

    int-to-long v10, v1

    or-long/2addr v4, v10

    .line 665
    const-wide/16 v10, 0x4

    sub-long/2addr v6, v10

    .line 667
    :cond_1
    const-wide/16 v10, 0x2

    cmp-long v1, v6, v10

    if-ltz v1, :cond_2

    .line 668
    sub-long v14, v18, v6

    .line 669
    .local v14, "pos":J
    sget-object v1, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v1, v0, v14, v15}, Lsun/misc/Unsafe;->getChar(Ljava/lang/Object;J)C

    move-result v16

    add-long v10, v14, v12

    invoke-virtual {v1, v2, v10, v11}, Lsun/misc/Unsafe;->getChar(Ljava/lang/Object;J)C

    move-result v1

    xor-int v1, v16, v1

    int-to-long v10, v1

    or-long/2addr v4, v10

    .line 670
    const-wide/16 v10, 0x2

    sub-long/2addr v6, v10

    .line 672
    .end local v14    # "pos":J
    :cond_2
    const-wide/16 v10, 0x1

    cmp-long v1, v6, v10

    if-nez v1, :cond_3

    .line 673
    sub-long v10, v18, v10

    .line 674
    .local v10, "pos":J
    sget-object v1, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v1, v0, v10, v11}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result v14

    move-wide v15, v6

    .end local v6    # "remainingBytes":J
    .local v15, "remainingBytes":J
    add-long v6, v10, v12

    invoke-virtual {v1, v2, v6, v7}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result v1

    xor-int/2addr v1, v14

    int-to-long v6, v1

    or-long/2addr v4, v6

    goto :goto_1

    .line 672
    .end local v10    # "pos":J
    .end local v15    # "remainingBytes":J
    .restart local v6    # "remainingBytes":J
    :cond_3
    move-wide v15, v6

    .line 676
    .end local v6    # "remainingBytes":J
    .restart local v15    # "remainingBytes":J
    :goto_1
    const-wide/16 v6, 0x0

    invoke-static {v4, v5, v6, v7}, Lio/netty/util/internal/ConstantTimeUtils;->equalsConstantTime(JJ)I

    move-result v1

    return v1
.end method

.method private static explicitNoUnsafeCause0()Ljava/lang/Throwable;
    .locals 5

    .line 395
    const-string v0, "io.netty.noUnsafe"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/netty/util/internal/SystemPropertyUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 396
    .local v0, "noUnsafe":Z
    sget-object v1, Lio/netty/util/internal/PlatformDependent0;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "-Dio.netty.noUnsafe: {}"

    invoke-interface {v1, v3, v2}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 398
    if-eqz v0, :cond_0

    .line 399
    const-string v2, "sun.misc.Unsafe: unavailable (io.netty.noUnsafe)"

    invoke-interface {v1, v2}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    .line 400
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 405
    :cond_0
    const-string v2, "io.netty.tryUnsafe"

    invoke-static {v2}, Lio/netty/util/internal/SystemPropertyUtil;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 406
    const-string v2, "io.netty.tryUnsafe"

    .local v2, "unsafePropName":Ljava/lang/String;
    goto :goto_0

    .line 408
    .end local v2    # "unsafePropName":Ljava/lang/String;
    :cond_1
    const-string v2, "org.jboss.netty.tryUnsafe"

    .line 411
    .restart local v2    # "unsafePropName":Ljava/lang/String;
    :goto_0
    const/4 v3, 0x1

    invoke-static {v2, v3}, Lio/netty/util/internal/SystemPropertyUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_2

    .line 412
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sun.misc.Unsafe: unavailable ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 413
    .local v3, "msg":Ljava/lang/String;
    invoke-interface {v1, v3}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    .line 414
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 417
    .end local v3    # "msg":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method private static explicitTryReflectionSetAccessible0()Z
    .locals 2

    .line 832
    invoke-static {}, Lio/netty/util/internal/PlatformDependent0;->javaVersion()I

    move-result v0

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "io.netty.tryReflectionSetAccessible"

    invoke-static {v1, v0}, Lio/netty/util/internal/SystemPropertyUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static freeMemory(J)V
    .locals 1
    .param p0, "address"    # J

    .line 803
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1}, Lsun/misc/Unsafe;->freeMemory(J)V

    .line 804
    return-void
.end method

.method static getByte(J)B
    .locals 1
    .param p0, "address"    # J

    .line 509
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1}, Lsun/misc/Unsafe;->getByte(J)B

    move-result v0

    return v0
.end method

.method static getByte([BI)B
    .locals 5
    .param p0, "data"    # [B
    .param p1, "index"    # I

    .line 525
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lio/netty/util/internal/PlatformDependent0;->BYTE_ARRAY_BASE_OFFSET:J

    int-to-long v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result v0

    return v0
.end method

.method static getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/ClassLoader;"
        }
    .end annotation

    .line 756
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 757
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0

    .line 759
    :cond_0
    new-instance v0, Lio/netty/util/internal/PlatformDependent0$8;

    invoke-direct {v0, p0}, Lio/netty/util/internal/PlatformDependent0$8;-><init>(Ljava/lang/Class;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    return-object v0
.end method

.method static getContextClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .line 769
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 770
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0

    .line 772
    :cond_0
    new-instance v0, Lio/netty/util/internal/PlatformDependent0$9;

    invoke-direct {v0}, Lio/netty/util/internal/PlatformDependent0$9;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    return-object v0
.end method

.method static getInt(J)I
    .locals 1
    .param p0, "address"    # J

    .line 517
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1}, Lsun/misc/Unsafe;->getInt(J)I

    move-result v0

    return v0
.end method

.method static getInt(Ljava/lang/Object;J)I
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "fieldOffset"    # J

    .line 497
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    return v0
.end method

.method static getInt([BI)I
    .locals 5
    .param p0, "data"    # [B
    .param p1, "index"    # I

    .line 533
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lio/netty/util/internal/PlatformDependent0;->BYTE_ARRAY_BASE_OFFSET:J

    int-to-long v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    return v0
.end method

.method static getLong(J)J
    .locals 2
    .param p0, "address"    # J

    .line 521
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1}, Lsun/misc/Unsafe;->getLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getLong(Ljava/lang/Object;J)J
    .locals 2
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "fieldOffset"    # J

    .line 501
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static getLong([BI)J
    .locals 5
    .param p0, "data"    # [B
    .param p1, "index"    # I

    .line 537
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lio/netty/util/internal/PlatformDependent0;->BYTE_ARRAY_BASE_OFFSET:J

    int-to-long v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static getObject(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "fieldOffset"    # J

    .line 493
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static getShort(J)S
    .locals 1
    .param p0, "address"    # J

    .line 513
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1}, Lsun/misc/Unsafe;->getShort(J)S

    move-result v0

    return v0
.end method

.method static getShort([BI)S
    .locals 5
    .param p0, "data"    # [B
    .param p1, "index"    # I

    .line 529
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lio/netty/util/internal/PlatformDependent0;->BYTE_ARRAY_BASE_OFFSET:J

    int-to-long v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getShort(Ljava/lang/Object;J)S

    move-result v0

    return v0
.end method

.method static getSystemClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .line 782
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 783
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0

    .line 785
    :cond_0
    new-instance v0, Lio/netty/util/internal/PlatformDependent0$10;

    invoke-direct {v0}, Lio/netty/util/internal/PlatformDependent0$10;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    return-object v0
.end method

.method static getUnsafeUnavailabilityCause()Ljava/lang/Throwable;
    .locals 1

    .line 429
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE_UNAVAILABILITY_CAUSE:Ljava/lang/Throwable;

    return-object v0
.end method

.method static hasAllocateArrayMethod()Z
    .locals 1

    .line 457
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->ALLOCATE_ARRAY_METHOD:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static hasDirectBufferNoCleanerConstructor()Z
    .locals 1

    .line 442
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->DIRECT_BUFFER_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static hasUnsafe()Z
    .locals 1

    .line 425
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static hashCodeAscii([BII)I
    .locals 17
    .param p0, "bytes"    # [B
    .param p1, "startPos"    # I
    .param p2, "length"    # I

    .line 706
    move-object/from16 v0, p0

    move/from16 v1, p2

    const v2, -0x3d4d51cb

    .line 707
    .local v2, "hash":I
    sget-wide v3, Lio/netty/util/internal/PlatformDependent0;->BYTE_ARRAY_BASE_OFFSET:J

    move/from16 v5, p1

    int-to-long v6, v5

    add-long/2addr v3, v6

    .line 708
    .local v3, "baseOffset":J
    and-int/lit8 v6, v1, 0x7

    .line 709
    .local v6, "remainingBytes":I
    int-to-long v7, v6

    add-long/2addr v7, v3

    .line 710
    .local v7, "end":J
    const-wide/16 v9, 0x8

    sub-long v11, v3, v9

    int-to-long v13, v1

    add-long/2addr v11, v13

    .local v11, "i":J
    :goto_0
    cmp-long v13, v11, v7

    if-ltz v13, :cond_0

    .line 711
    sget-object v13, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v13, v0, v11, v12}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-static {v13, v14, v2}, Lio/netty/util/internal/PlatformDependent0;->hashCodeAsciiCompute(JI)I

    move-result v2

    .line 710
    sub-long/2addr v11, v9

    goto :goto_0

    .line 713
    .end local v11    # "i":J
    :cond_0
    if-nez v6, :cond_1

    .line 714
    return v2

    .line 716
    :cond_1
    const v9, -0x3361d2af    # -8.2930312E7f

    .line 717
    .local v9, "hcConst":I
    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eq v6, v10, :cond_2

    move v10, v12

    goto :goto_1

    :cond_2
    move v10, v11

    :goto_1
    const/4 v13, 0x4

    if-eq v6, v13, :cond_3

    move v14, v12

    goto :goto_2

    :cond_3
    move v14, v11

    :goto_2
    and-int/2addr v10, v14

    const/4 v14, 0x6

    if-eq v6, v14, :cond_4

    move v14, v12

    goto :goto_3

    :cond_4
    move v14, v11

    :goto_3
    and-int/2addr v10, v14

    const v14, -0x3361d2af    # -8.2930312E7f

    if-eqz v10, :cond_5

    .line 718
    mul-int v10, v2, v14

    sget-object v15, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v15, v0, v3, v4}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result v15

    invoke-static {v15}, Lio/netty/util/internal/PlatformDependent0;->hashCodeAsciiSanitize(B)I

    move-result v15

    add-int v2, v10, v15

    .line 719
    const v9, 0x1b873593

    .line 720
    const-wide/16 v15, 0x1

    add-long/2addr v3, v15

    .line 722
    :cond_5
    if-eq v6, v12, :cond_6

    move v10, v12

    goto :goto_4

    :cond_6
    move v10, v11

    :goto_4
    if-eq v6, v13, :cond_7

    move v15, v12

    goto :goto_5

    :cond_7
    move v15, v11

    :goto_5
    and-int/2addr v10, v15

    const/4 v15, 0x5

    if-eq v6, v15, :cond_8

    move v11, v12

    :cond_8
    and-int/2addr v10, v11

    if-eqz v10, :cond_a

    .line 723
    mul-int v10, v2, v9

    sget-object v11, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v11, v0, v3, v4}, Lsun/misc/Unsafe;->getShort(Ljava/lang/Object;J)S

    move-result v11

    invoke-static {v11}, Lio/netty/util/internal/PlatformDependent0;->hashCodeAsciiSanitize(S)I

    move-result v11

    add-int v2, v10, v11

    .line 724
    if-ne v9, v14, :cond_9

    const v14, 0x1b873593

    :cond_9
    move v9, v14

    .line 725
    const-wide/16 v10, 0x2

    add-long/2addr v3, v10

    .line 727
    :cond_a
    if-lt v6, v13, :cond_b

    .line 728
    mul-int v10, v2, v9

    sget-object v11, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v11, v0, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v11

    invoke-static {v11}, Lio/netty/util/internal/PlatformDependent0;->hashCodeAsciiSanitize(I)I

    move-result v11

    add-int/2addr v10, v11

    return v10

    .line 730
    :cond_b
    return v2
.end method

.method static hashCodeAsciiCompute(JI)I
    .locals 4
    .param p0, "value"    # J
    .param p2, "hash"    # I

    .line 736
    const v0, -0x3361d2af    # -8.2930312E7f

    mul-int/2addr v0, p2

    long-to-int v1, p0

    .line 738
    invoke-static {v1}, Lio/netty/util/internal/PlatformDependent0;->hashCodeAsciiSanitize(I)I

    move-result v1

    const v2, 0x1b873593

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    const-wide v1, 0x1f1f1f1f00000000L    # 8.854494059669966E-159

    and-long/2addr v1, p0

    const/16 v3, 0x20

    ushr-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    .line 736
    return v0
.end method

.method static hashCodeAsciiSanitize(B)I
    .locals 1
    .param p0, "value"    # B

    .line 752
    and-int/lit8 v0, p0, 0x1f

    return v0
.end method

.method static hashCodeAsciiSanitize(I)I
    .locals 1
    .param p0, "value"    # I

    .line 744
    const v0, 0x1f1f1f1f

    and-int/2addr v0, p0

    return v0
.end method

.method static hashCodeAsciiSanitize(S)I
    .locals 1
    .param p0, "value"    # S

    .line 748
    and-int/lit16 v0, p0, 0x1f1f

    return v0
.end method

.method static isAndroid()Z
    .locals 1

    .line 811
    sget-boolean v0, Lio/netty/util/internal/PlatformDependent0;->IS_ANDROID:Z

    return v0
.end method

.method private static isAndroid0()Z
    .locals 4

    .line 822
    const-string v0, "java.vm.name"

    invoke-static {v0}, Lio/netty/util/internal/SystemPropertyUtil;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 823
    .local v0, "vmName":Ljava/lang/String;
    const-string v1, "Dalvik"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 824
    .local v1, "isAndroid":Z
    if-eqz v1, :cond_0

    .line 825
    sget-object v2, Lio/netty/util/internal/PlatformDependent0;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v3, "Platform: Android"

    invoke-interface {v2, v3}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    .line 827
    :cond_0
    return v1
.end method

.method static isExplicitNoUnsafe()Z
    .locals 1

    .line 391
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->EXPLICIT_NO_UNSAFE_CAUSE:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static isExplicitTryReflectionSetAccessible()Z
    .locals 1

    .line 836
    sget-boolean v0, Lio/netty/util/internal/PlatformDependent0;->IS_EXPLICIT_TRY_REFLECTION_SET_ACCESSIBLE:Z

    return v0
.end method

.method static isUnaligned()Z
    .locals 1

    .line 421
    sget-boolean v0, Lio/netty/util/internal/PlatformDependent0;->UNALIGNED:Z

    return v0
.end method

.method static isZero([BII)Z
    .locals 19
    .param p0, "bytes"    # [B
    .param p1, "startPos"    # I
    .param p2, "length"    # I

    .line 680
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x1

    if-gtz v2, :cond_0

    .line 681
    return v3

    .line 683
    :cond_0
    sget-wide v4, Lio/netty/util/internal/PlatformDependent0;->BYTE_ARRAY_BASE_OFFSET:J

    int-to-long v6, v1

    add-long/2addr v4, v6

    .line 684
    .local v4, "baseOffset":J
    and-int/lit8 v6, v2, 0x7

    .line 685
    .local v6, "remainingBytes":I
    int-to-long v7, v6

    add-long/2addr v7, v4

    .line 686
    .local v7, "end":J
    const-wide/16 v9, 0x8

    sub-long v11, v4, v9

    int-to-long v13, v2

    add-long/2addr v11, v13

    .local v11, "i":J
    :goto_0
    cmp-long v13, v11, v7

    const/4 v14, 0x0

    if-ltz v13, :cond_2

    .line 687
    sget-object v13, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v13, v0, v11, v12}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v15

    const-wide/16 v17, 0x0

    cmp-long v13, v15, v17

    if-eqz v13, :cond_1

    .line 688
    return v14

    .line 686
    :cond_1
    sub-long/2addr v11, v9

    goto :goto_0

    .line 692
    .end local v11    # "i":J
    :cond_2
    const/4 v9, 0x4

    if-lt v6, v9, :cond_3

    .line 693
    add-int/lit8 v6, v6, -0x4

    .line 694
    sget-object v9, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    int-to-long v10, v6

    add-long/2addr v10, v4

    invoke-virtual {v9, v0, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v9

    if-eqz v9, :cond_3

    .line 695
    return v14

    .line 698
    :cond_3
    const/4 v9, 0x2

    if-lt v6, v9, :cond_6

    .line 699
    sget-object v10, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v10, v0, v4, v5}, Lsun/misc/Unsafe;->getChar(Ljava/lang/Object;J)C

    move-result v10

    if-nez v10, :cond_5

    if-eq v6, v9, :cond_4

    add-int/lit8 v9, v1, 0x2

    aget-byte v9, v0, v9

    if-nez v9, :cond_5

    :cond_4
    goto :goto_1

    :cond_5
    move v3, v14

    :goto_1
    return v3

    .line 702
    :cond_6
    aget-byte v9, v0, v1

    if-nez v9, :cond_7

    goto :goto_2

    :cond_7
    move v3, v14

    :goto_2
    return v3
.end method

.method static javaVersion()I
    .locals 1

    .line 840
    sget v0, Lio/netty/util/internal/PlatformDependent0;->JAVA_VERSION:I

    return v0
.end method

.method private static javaVersion0()I
    .locals 4

    .line 846
    invoke-static {}, Lio/netty/util/internal/PlatformDependent0;->isAndroid0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 847
    const/4 v0, 0x6

    .local v0, "majorVersion":I
    goto :goto_0

    .line 849
    .end local v0    # "majorVersion":I
    :cond_0
    invoke-static {}, Lio/netty/util/internal/PlatformDependent0;->majorVersionFromJavaSpecificationVersion()I

    move-result v0

    .line 852
    .restart local v0    # "majorVersion":I
    :goto_0
    sget-object v1, Lio/netty/util/internal/PlatformDependent0;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Java version: {}"

    invoke-interface {v1, v3, v2}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 854
    return v0
.end method

.method static majorVersion(Ljava/lang/String;)I
    .locals 5
    .param p0, "javaSpecVersion"    # Ljava/lang/String;

    .line 864
    const-string v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 865
    .local v0, "components":[Ljava/lang/String;
    array-length v1, v0

    new-array v1, v1, [I

    .line 866
    .local v1, "version":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 867
    aget-object v3, v0, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v2

    .line 866
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 870
    .end local v2    # "i":I
    :cond_0
    const/4 v2, 0x0

    aget v3, v1, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 871
    aget v2, v1, v4

    const/4 v3, 0x6

    if-lt v2, v3, :cond_1

    .line 872
    aget v2, v1, v4

    return v2

    .line 871
    :cond_1
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 874
    :cond_2
    aget v2, v1, v2

    return v2
.end method

.method static majorVersionFromJavaSpecificationVersion()I
    .locals 2

    .line 859
    const-string v0, "java.specification.version"

    const-string v1, "1.6"

    invoke-static {v0, v1}, Lio/netty/util/internal/SystemPropertyUtil;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/netty/util/internal/PlatformDependent0;->majorVersion(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static newDirectBuffer(JI)Ljava/nio/ByteBuffer;
    .locals 4
    .param p0, "address"    # J
    .param p2, "capacity"    # I

    .line 471
    const-string v0, "capacity"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(ILjava/lang/String;)I

    .line 474
    :try_start_0
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->DIRECT_BUFFER_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 475
    :catchall_0
    move-exception v0

    .line 477
    .local v0, "cause":Ljava/lang/Throwable;
    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_0

    .line 478
    move-object v1, v0

    check-cast v1, Ljava/lang/Error;

    throw v1

    .line 480
    :cond_0
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static objectFieldOffset(Ljava/lang/reflect/Field;)J
    .locals 2
    .param p0, "field"    # Ljava/lang/reflect/Field;

    .line 505
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    return-wide v0
.end method

.method static putByte(JB)V
    .locals 1
    .param p0, "address"    # J
    .param p2, "value"    # B

    .line 541
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->putByte(JB)V

    .line 542
    return-void
.end method

.method static putByte([BIB)V
    .locals 5
    .param p0, "data"    # [B
    .param p1, "index"    # I
    .param p2, "value"    # B

    .line 557
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lio/netty/util/internal/PlatformDependent0;->BYTE_ARRAY_BASE_OFFSET:J

    int-to-long v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2, p2}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    .line 558
    return-void
.end method

.method static putInt(JI)V
    .locals 1
    .param p0, "address"    # J
    .param p2, "value"    # I

    .line 549
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->putInt(JI)V

    .line 550
    return-void
.end method

.method static putInt([BII)V
    .locals 5
    .param p0, "data"    # [B
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 565
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lio/netty/util/internal/PlatformDependent0;->BYTE_ARRAY_BASE_OFFSET:J

    int-to-long v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2, p2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 566
    return-void
.end method

.method static putLong(JJ)V
    .locals 1
    .param p0, "address"    # J
    .param p2, "value"    # J

    .line 553
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2, p3}, Lsun/misc/Unsafe;->putLong(JJ)V

    .line 554
    return-void
.end method

.method static putLong([BIJ)V
    .locals 6
    .param p0, "data"    # [B
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 569
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lio/netty/util/internal/PlatformDependent0;->BYTE_ARRAY_BASE_OFFSET:J

    int-to-long v3, p1

    add-long v2, v1, v3

    move-object v1, p0

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 570
    return-void
.end method

.method static putObject(Ljava/lang/Object;JLjava/lang/Object;)V
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;
    .param p1, "offset"    # J
    .param p3, "x"    # Ljava/lang/Object;

    .line 573
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 574
    return-void
.end method

.method static putShort(JS)V
    .locals 1
    .param p0, "address"    # J
    .param p2, "value"    # S

    .line 545
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->putShort(JS)V

    .line 546
    return-void
.end method

.method static putShort([BIS)V
    .locals 5
    .param p0, "data"    # [B
    .param p1, "index"    # I
    .param p2, "value"    # S

    .line 561
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lio/netty/util/internal/PlatformDependent0;->BYTE_ARRAY_BASE_OFFSET:J

    int-to-long v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2, p2}, Lsun/misc/Unsafe;->putShort(Ljava/lang/Object;JS)V

    .line 562
    return-void
.end method

.method static reallocateDirectNoCleaner(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;
    .locals 5
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "capacity"    # I

    .line 446
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-static {p0}, Lio/netty/util/internal/PlatformDependent0;->directBufferAddress(Ljava/nio/ByteBuffer;)J

    move-result-wide v1

    int-to-long v3, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Lsun/misc/Unsafe;->reallocateMemory(JJ)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lio/netty/util/internal/PlatformDependent0;->newDirectBuffer(JI)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method static reallocateMemory(JJ)J
    .locals 2
    .param p0, "address"    # J
    .param p2, "newSize"    # J

    .line 807
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2, p3}, Lsun/misc/Unsafe;->reallocateMemory(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method static setMemory(JJB)V
    .locals 6
    .param p0, "address"    # J
    .param p2, "bytes"    # J
    .param p4, "value"    # B

    .line 618
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    move-wide v1, p0

    move-wide v3, p2

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->setMemory(JJB)V

    .line 619
    return-void
.end method

.method static setMemory(Ljava/lang/Object;JJB)V
    .locals 7
    .param p0, "o"    # Ljava/lang/Object;
    .param p1, "offset"    # J
    .param p3, "bytes"    # J
    .param p5, "value"    # B

    .line 622
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lsun/misc/Unsafe;->setMemory(Ljava/lang/Object;JJB)V

    .line 623
    return-void
.end method

.method static throwException(Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "cause"    # Ljava/lang/Throwable;

    .line 438
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    const-string v1, "cause"

    invoke-static {p0, v1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->throwException(Ljava/lang/Throwable;)V

    .line 439
    return-void
.end method

.method static unalignedAccess()Z
    .locals 1

    .line 433
    sget-boolean v0, Lio/netty/util/internal/PlatformDependent0;->UNALIGNED:Z

    return v0
.end method
