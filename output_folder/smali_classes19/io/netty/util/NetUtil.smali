.class public final Lio/netty/util/NetUtil;
.super Ljava/lang/Object;
.source "NetUtil.java"


# static fields
.field private static final IPV4_MAX_CHAR_BETWEEN_SEPARATOR:I = 0x3

.field private static final IPV4_PREFERRED:Z

.field private static final IPV4_SEPARATORS:I = 0x3

.field private static final IPV6_ADDRESSES_PREFERRED:Z

.field private static final IPV6_BYTE_COUNT:I = 0x10

.field private static final IPV6_MAX_CHAR_BETWEEN_SEPARATOR:I = 0x4

.field private static final IPV6_MAX_CHAR_COUNT:I = 0x27

.field private static final IPV6_MAX_SEPARATORS:I = 0x8

.field private static final IPV6_MIN_SEPARATORS:I = 0x2

.field private static final IPV6_WORD_COUNT:I = 0x8

.field public static final LOCALHOST:Ljava/net/InetAddress;

.field public static final LOCALHOST4:Ljava/net/Inet4Address;

.field public static final LOCALHOST6:Ljava/net/Inet6Address;

.field public static final LOOPBACK_IF:Ljava/net/NetworkInterface;

.field public static final SOMAXCONN:I

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 125
    const-string v0, "Failed to find the loopback interface"

    const-string v1, "localhost"

    const-string v2, "Using hard-coded IPv4 localhost address: {}"

    const-string v3, "java.net.preferIPv4Stack"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lio/netty/util/internal/SystemPropertyUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lio/netty/util/NetUtil;->IPV4_PREFERRED:Z

    .line 130
    nop

    .line 131
    const-string v5, "java.net.preferIPv6Addresses"

    invoke-static {v5, v4}, Lio/netty/util/internal/SystemPropertyUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    sput-boolean v5, Lio/netty/util/NetUtil;->IPV6_ADDRESSES_PREFERRED:Z

    .line 136
    const-class v6, Lio/netty/util/NetUtil;

    invoke-static {v6}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v6

    sput-object v6, Lio/netty/util/NetUtil;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 139
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v7, "-Djava.net.preferIPv4Stack: {}"

    invoke-interface {v6, v7, v3}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 140
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v5, "-Djava.net.preferIPv6Addresses: {}"

    invoke-interface {v6, v5, v3}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 142
    const/4 v3, 0x4

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    .line 143
    .local v3, "LOCALHOST4_BYTES":[B
    const/16 v5, 0x10

    new-array v5, v5, [B

    fill-array-data v5, :array_1

    .line 146
    .local v5, "LOCALHOST6_BYTES":[B
    const/4 v6, 0x0

    .line 148
    .local v6, "localhost4":Ljava/net/Inet4Address;
    :try_start_0
    invoke-static {v1, v3}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;

    move-result-object v7

    check-cast v7, Ljava/net/Inet4Address;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v7

    .line 152
    goto :goto_0

    .line 149
    :catch_0
    move-exception v7

    .line 151
    .local v7, "e":Ljava/lang/Exception;
    invoke-static {v7}, Lio/netty/util/internal/PlatformDependent;->throwException(Ljava/lang/Throwable;)V

    .line 153
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_0
    sput-object v6, Lio/netty/util/NetUtil;->LOCALHOST4:Ljava/net/Inet4Address;

    .line 156
    const/4 v7, 0x0

    .line 158
    .local v7, "localhost6":Ljava/net/Inet6Address;
    :try_start_1
    invoke-static {v1, v5}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;

    move-result-object v1

    check-cast v1, Ljava/net/Inet6Address;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v7, v1

    .line 162
    goto :goto_1

    .line 159
    :catch_1
    move-exception v1

    .line 161
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lio/netty/util/internal/PlatformDependent;->throwException(Ljava/lang/Throwable;)V

    .line 163
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    sput-object v7, Lio/netty/util/NetUtil;->LOCALHOST6:Ljava/net/Inet6Address;

    .line 166
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 168
    .local v1, "ifaces":Ljava/util/List;, "Ljava/util/List<Ljava/net/NetworkInterface;>;"
    :try_start_2
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v8

    .line 169
    .local v8, "interfaces":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    if-eqz v8, :cond_1

    .line 170
    :goto_2
    invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 171
    invoke-interface {v8}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/net/NetworkInterface;

    .line 173
    .local v9, "iface":Ljava/net/NetworkInterface;
    invoke-static {v9}, Lio/netty/util/internal/SocketUtils;->addressesFromNetworkInterface(Ljava/net/NetworkInterface;)Ljava/util/Enumeration;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 174
    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_2

    .line 176
    .end local v9    # "iface":Ljava/net/NetworkInterface;
    :cond_0
    goto :goto_2

    .line 180
    .end local v8    # "interfaces":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_1
    goto :goto_3

    .line 178
    :catch_2
    move-exception v8

    .line 179
    .local v8, "e":Ljava/net/SocketException;
    sget-object v9, Lio/netty/util/NetUtil;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v10, "Failed to retrieve the list of available network interfaces"

    invoke-interface {v9, v10, v8}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 185
    .end local v8    # "e":Ljava/net/SocketException;
    :goto_3
    const/4 v8, 0x0

    .line 186
    .local v8, "loopbackIface":Ljava/net/NetworkInterface;
    const/4 v9, 0x0

    .line 187
    .local v9, "loopbackAddr":Ljava/net/InetAddress;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/net/NetworkInterface;

    .line 188
    .local v11, "iface":Ljava/net/NetworkInterface;
    invoke-static {v11}, Lio/netty/util/internal/SocketUtils;->addressesFromNetworkInterface(Ljava/net/NetworkInterface;)Ljava/util/Enumeration;

    move-result-object v12

    .local v12, "i":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :goto_5
    invoke-interface {v12}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 189
    invoke-interface {v12}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/net/InetAddress;

    .line 190
    .local v13, "addr":Ljava/net/InetAddress;
    invoke-virtual {v13}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 192
    move-object v8, v11

    .line 193
    move-object v9, v13

    .line 194
    goto :goto_6

    .line 196
    .end local v13    # "addr":Ljava/net/InetAddress;
    :cond_2
    goto :goto_5

    .line 197
    .end local v11    # "iface":Ljava/net/NetworkInterface;
    .end local v12    # "i":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_3
    goto :goto_4

    .line 200
    :cond_4
    :goto_6
    if-nez v8, :cond_8

    .line 202
    :try_start_3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/net/NetworkInterface;

    .line 203
    .restart local v11    # "iface":Ljava/net/NetworkInterface;
    invoke-virtual {v11}, Ljava/net/NetworkInterface;->isLoopback()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 204
    invoke-static {v11}, Lio/netty/util/internal/SocketUtils;->addressesFromNetworkInterface(Ljava/net/NetworkInterface;)Ljava/util/Enumeration;

    move-result-object v12

    .line 205
    .restart local v12    # "i":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    invoke-interface {v12}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 207
    move-object v8, v11

    .line 208
    invoke-interface {v12}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/net/InetAddress;

    move-object v9, v10

    .line 209
    goto :goto_8

    .line 212
    .end local v11    # "iface":Ljava/net/NetworkInterface;
    .end local v12    # "i":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_5
    goto :goto_7

    .line 214
    :cond_6
    :goto_8
    if-nez v8, :cond_7

    .line 215
    sget-object v10, Lio/netty/util/NetUtil;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v10, v0}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_3

    .line 219
    :cond_7
    goto :goto_9

    .line 217
    :catch_3
    move-exception v10

    .line 218
    .local v10, "e":Ljava/net/SocketException;
    sget-object v11, Lio/netty/util/NetUtil;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v11, v0, v10}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 222
    .end local v10    # "e":Ljava/net/SocketException;
    :cond_8
    :goto_9
    if-eqz v8, :cond_9

    .line 224
    sget-object v0, Lio/netty/util/NetUtil;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 226
    invoke-virtual {v8}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v2, v4

    const/4 v4, 0x1

    invoke-virtual {v8}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v2, v4

    const/4 v4, 0x2

    invoke-virtual {v9}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v2, v4

    .line 224
    const-string v4, "Loopback interface: {} ({}, {})"

    invoke-interface {v0, v4, v2}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_b

    .line 230
    :cond_9
    if-nez v9, :cond_c

    .line 232
    :try_start_4
    sget-object v0, Lio/netty/util/NetUtil;->LOCALHOST6:Ljava/net/Inet6Address;

    invoke-static {v0}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 233
    sget-object v0, Lio/netty/util/NetUtil;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v4, "Using hard-coded IPv6 localhost address: {}"

    invoke-interface {v0, v4, v7}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 234
    move-object v0, v7

    move-object v9, v0

    .line 239
    :cond_a
    if-nez v9, :cond_c

    .line 240
    goto :goto_a

    .line 239
    :catchall_0
    move-exception v0

    if-nez v9, :cond_b

    .line 240
    sget-object v4, Lio/netty/util/NetUtil;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v4, v2, v6}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 241
    move-object v9, v6

    .line 243
    :cond_b
    throw v0

    .line 236
    :catch_4
    move-exception v0

    .line 239
    if-nez v9, :cond_c

    .line 240
    :goto_a
    sget-object v0, Lio/netty/util/NetUtil;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v0, v2, v6}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 241
    move-object v9, v6

    .line 247
    :cond_c
    :goto_b
    sput-object v8, Lio/netty/util/NetUtil;->LOOPBACK_IF:Ljava/net/NetworkInterface;

    .line 248
    sput-object v9, Lio/netty/util/NetUtil;->LOCALHOST:Ljava/net/InetAddress;

    .line 253
    new-instance v0, Lio/netty/util/NetUtil$1;

    invoke-direct {v0}, Lio/netty/util/NetUtil$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lio/netty/util/NetUtil;->SOMAXCONN:I

    .line 310
    .end local v1    # "ifaces":Ljava/util/List;, "Ljava/util/List<Ljava/net/NetworkInterface;>;"
    .end local v3    # "LOCALHOST4_BYTES":[B
    .end local v5    # "LOCALHOST6_BYTES":[B
    .end local v6    # "localhost4":Ljava/net/Inet4Address;
    .end local v7    # "localhost6":Ljava/net/Inet6Address;
    .end local v8    # "loopbackIface":Ljava/net/NetworkInterface;
    .end local v9    # "loopbackAddr":Ljava/net/InetAddress;
    return-void

    :array_0
    .array-data 1
        0x7ft
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 1146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1148
    return-void
.end method

.method static synthetic access$000()Lio/netty/util/internal/logging/InternalLogger;
    .locals 1

    .line 53
    sget-object v0, Lio/netty/util/NetUtil;->logger:Lio/netty/util/internal/logging/InternalLogger;

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    invoke-static {p0}, Lio/netty/util/NetUtil;->sysctlGetInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static bytesToIpAddress([B)Ljava/lang/String;
    .locals 2
    .param p0, "bytes"    # [B

    .line 441
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lio/netty/util/NetUtil;->bytesToIpAddress([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static bytesToIpAddress([BII)Ljava/lang/String;
    .locals 3
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 451
    sparse-switch p2, :sswitch_data_0

    .line 465
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected: 4 or 16)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 463
    :sswitch_0
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lio/netty/util/NetUtil;->toAddressString([BIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 453
    :sswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    .line 454
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 455
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    .line 456
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 457
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    .line 458
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 459
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    .line 460
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 453
    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x10 -> :sswitch_0
    .end sparse-switch
.end method

.method public static createByteArrayFromIpAddressString(Ljava/lang/String;)[B
    .locals 4
    .param p0, "ipAddressString"    # Ljava/lang/String;

    .line 371
    invoke-static {p0}, Lio/netty/util/NetUtil;->isValidIpV4Address(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    invoke-static {p0}, Lio/netty/util/NetUtil;->validIpV4ToBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    .line 375
    :cond_0
    invoke-static {p0}, Lio/netty/util/NetUtil;->isValidIpV6Address(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 376
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5b

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    .line 377
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 380
    :cond_1
    const/16 v1, 0x25

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 381
    .local v1, "percentPos":I
    if-ltz v1, :cond_2

    .line 382
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 385
    :cond_2
    invoke-static {p0, v3}, Lio/netty/util/NetUtil;->getIPv6ByName(Ljava/lang/CharSequence;Z)[B

    move-result-object v0

    return-object v0

    .line 387
    .end local v1    # "percentPos":I
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method private static decimalDigit(Ljava/lang/String;I)I
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "pos"    # I

    .line 391
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    return v0
.end method

.method public static getByName(Ljava/lang/CharSequence;)Ljava/net/Inet6Address;
    .locals 1
    .param p0, "ip"    # Ljava/lang/CharSequence;

    .line 701
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lio/netty/util/NetUtil;->getByName(Ljava/lang/CharSequence;Z)Ljava/net/Inet6Address;

    move-result-object v0

    return-object v0
.end method

.method public static getByName(Ljava/lang/CharSequence;Z)Ljava/net/Inet6Address;
    .locals 3
    .param p0, "ip"    # Ljava/lang/CharSequence;
    .param p1, "ipv4Mapped"    # Z

    .line 719
    invoke-static {p0, p1}, Lio/netty/util/NetUtil;->getIPv6ByName(Ljava/lang/CharSequence;Z)[B

    move-result-object v0

    .line 720
    .local v0, "bytes":[B
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 721
    return-object v1

    .line 724
    :cond_0
    const/4 v2, -0x1

    :try_start_0
    invoke-static {v1, v0, v2}, Ljava/net/Inet6Address;->getByAddress(Ljava/lang/String;[BI)Ljava/net/Inet6Address;

    move-result-object v1
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 725
    :catch_0
    move-exception v1

    .line 726
    .local v1, "e":Ljava/net/UnknownHostException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static getHostname(Ljava/net/InetSocketAddress;)Ljava/lang/String;
    .locals 2
    .param p0, "addr"    # Ljava/net/InetSocketAddress;

    .line 1125
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->javaVersion()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getHostString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static getIPv6ByName(Ljava/lang/CharSequence;Z)[B
    .locals 21
    .param p0, "ip"    # Ljava/lang/CharSequence;
    .param p1, "ipv4Mapped"    # Z

    .line 745
    move-object/from16 v0, p0

    const/16 v1, 0x10

    new-array v1, v1, [B

    .line 746
    .local v1, "bytes":[B
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 747
    .local v2, "ipLength":I
    const/4 v3, 0x0

    .line 748
    .local v3, "compressBegin":I
    const/4 v4, 0x0

    .line 749
    .local v4, "compressLength":I
    const/4 v5, 0x0

    .line 750
    .local v5, "currentIndex":I
    const/4 v6, 0x0

    .line 751
    .local v6, "value":I
    const/4 v7, -0x1

    .line 752
    .local v7, "begin":I
    const/4 v8, 0x0

    .line 753
    .local v8, "i":I
    const/4 v9, 0x0

    .line 754
    .local v9, "ipv6Separators":I
    const/4 v10, 0x0

    .line 756
    .local v10, "ipv4Separators":I
    const/4 v11, 0x0

    .line 757
    .local v11, "needsShift":Z
    :goto_0
    const/16 v15, 0x8

    const/16 v18, 0x0

    const/4 v13, 0x4

    const/4 v14, 0x2

    if-ge v8, v2, :cond_13

    .line 758
    invoke-interface {v0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v19

    .line 759
    .local v19, "c":C
    sparse-switch v19, :sswitch_data_0

    .line 828
    invoke-static/range {v19 .. v19}, Lio/netty/util/NetUtil;->isValidHexChar(C)Z

    move-result v12

    if-eqz v12, :cond_12

    if-lez v10, :cond_f

    invoke-static/range {v19 .. v19}, Lio/netty/util/NetUtil;->isValidNumericChar(C)Z

    move-result v12

    if-nez v12, :cond_f

    goto/16 :goto_9

    .line 761
    :sswitch_0
    add-int/lit8 v9, v9, 0x1

    .line 762
    sub-int v12, v8, v7

    if-gt v12, v13, :cond_6

    if-gtz v10, :cond_6

    if-gt v9, v15, :cond_6

    add-int/lit8 v12, v5, 0x1

    array-length v15, v1

    if-lt v12, v15, :cond_0

    goto :goto_4

    .line 767
    :cond_0
    sub-int v12, v8, v7

    rsub-int/lit8 v12, v12, 0x4

    shl-int/2addr v12, v14

    shl-int/2addr v6, v12

    .line 769
    if-lez v4, :cond_1

    .line 770
    add-int/lit8 v4, v4, -0x2

    .line 776
    :cond_1
    add-int/lit8 v12, v5, 0x1

    .end local v5    # "currentIndex":I
    .local v12, "currentIndex":I
    and-int/lit8 v15, v6, 0xf

    shl-int/2addr v15, v13

    shr-int/lit8 v16, v6, 0x4

    and-int/lit8 v16, v16, 0xf

    or-int v15, v15, v16

    int-to-byte v15, v15

    aput-byte v15, v1, v5

    .line 777
    add-int/lit8 v5, v12, 0x1

    .end local v12    # "currentIndex":I
    .restart local v5    # "currentIndex":I
    shr-int/lit8 v15, v6, 0x8

    and-int/lit8 v15, v15, 0xf

    shl-int/lit8 v13, v15, 0x4

    shr-int/lit8 v15, v6, 0xc

    and-int/lit8 v15, v15, 0xf

    or-int/2addr v13, v15

    int-to-byte v13, v13

    aput-byte v13, v1, v12

    .line 778
    add-int/lit8 v12, v8, 0x1

    .line 779
    .local v12, "tmp":I
    if-ge v12, v2, :cond_5

    invoke-interface {v0, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    const/16 v15, 0x3a

    if-ne v13, v15, :cond_5

    .line 780
    add-int/lit8 v12, v12, 0x1

    .line 781
    if-nez v3, :cond_4

    if-ge v12, v2, :cond_2

    invoke-interface {v0, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    if-ne v13, v15, :cond_2

    goto :goto_2

    .line 784
    :cond_2
    add-int/lit8 v9, v9, 0x1

    .line 785
    if-ne v9, v14, :cond_3

    if-nez v6, :cond_3

    const/16 v17, 0x1

    goto :goto_1

    :cond_3
    const/16 v17, 0x0

    :goto_1
    move/from16 v11, v17

    .line 786
    move v3, v5

    .line 787
    array-length v13, v1

    sub-int/2addr v13, v3

    add-int/lit8 v4, v13, -0x2

    .line 788
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 782
    :cond_4
    :goto_2
    return-object v18

    .line 790
    :cond_5
    :goto_3
    const/4 v6, 0x0

    .line 791
    const/4 v7, -0x1

    .line 792
    goto/16 :goto_8

    .line 765
    .end local v12    # "tmp":I
    :cond_6
    :goto_4
    return-object v18

    .line 794
    :sswitch_1
    add-int/lit8 v10, v10, 0x1

    .line 795
    sub-int v12, v8, v7

    .line 796
    .restart local v12    # "tmp":I
    const/4 v13, 0x3

    if-gt v12, v13, :cond_e

    if-ltz v7, :cond_e

    if-gt v10, v13, :cond_e

    if-lez v9, :cond_7

    add-int v13, v5, v4

    const/16 v15, 0xc

    if-lt v13, v15, :cond_e

    :cond_7
    add-int/lit8 v13, v8, 0x1

    if-ge v13, v2, :cond_e

    array-length v13, v1

    if-ge v5, v13, :cond_e

    const/4 v13, 0x1

    if-ne v10, v13, :cond_b

    if-eqz p1, :cond_e

    if-eqz v5, :cond_8

    .line 804
    invoke-static {v1, v5, v3, v4}, Lio/netty/util/NetUtil;->isValidIPv4Mapped([BIII)Z

    move-result v13

    if-eqz v13, :cond_e

    :cond_8
    const/4 v13, 0x3

    if-ne v12, v13, :cond_9

    add-int/lit8 v13, v8, -0x1

    .line 806
    invoke-interface {v0, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    invoke-static {v13}, Lio/netty/util/NetUtil;->isValidNumericChar(C)Z

    move-result v13

    if-eqz v13, :cond_e

    add-int/lit8 v13, v8, -0x2

    .line 807
    invoke-interface {v0, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    invoke-static {v13}, Lio/netty/util/NetUtil;->isValidNumericChar(C)Z

    move-result v13

    if-eqz v13, :cond_e

    add-int/lit8 v13, v8, -0x3

    .line 808
    invoke-interface {v0, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    invoke-static {v13}, Lio/netty/util/NetUtil;->isValidNumericChar(C)Z

    move-result v13

    if-eqz v13, :cond_e

    :cond_9
    if-ne v12, v14, :cond_a

    add-int/lit8 v13, v8, -0x1

    .line 809
    invoke-interface {v0, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    invoke-static {v13}, Lio/netty/util/NetUtil;->isValidNumericChar(C)Z

    move-result v13

    if-eqz v13, :cond_e

    add-int/lit8 v13, v8, -0x2

    .line 810
    invoke-interface {v0, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    invoke-static {v13}, Lio/netty/util/NetUtil;->isValidNumericChar(C)Z

    move-result v13

    if-eqz v13, :cond_e

    :cond_a
    const/4 v13, 0x1

    if-ne v12, v13, :cond_b

    add-int/lit8 v13, v8, -0x1

    .line 811
    invoke-interface {v0, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    invoke-static {v13}, Lio/netty/util/NetUtil;->isValidNumericChar(C)Z

    move-result v13

    if-nez v13, :cond_b

    goto :goto_6

    .line 814
    :cond_b
    rsub-int/lit8 v13, v12, 0x3

    shl-int/2addr v13, v14

    shl-int/2addr v6, v13

    .line 819
    and-int/lit8 v13, v6, 0xf

    mul-int/lit8 v13, v13, 0x64

    shr-int/lit8 v14, v6, 0x4

    and-int/lit8 v14, v14, 0xf

    const/16 v15, 0xa

    mul-int/2addr v14, v15

    add-int/2addr v13, v14

    shr-int/lit8 v14, v6, 0x8

    and-int/lit8 v14, v14, 0xf

    add-int/2addr v13, v14

    .line 820
    .end local v7    # "begin":I
    .local v13, "begin":I
    if-ltz v13, :cond_d

    const/16 v7, 0xff

    if-le v13, v7, :cond_c

    goto :goto_5

    .line 823
    :cond_c
    add-int/lit8 v7, v5, 0x1

    .end local v5    # "currentIndex":I
    .local v7, "currentIndex":I
    int-to-byte v14, v13

    aput-byte v14, v1, v5

    .line 824
    const/4 v5, 0x0

    .line 825
    .end local v6    # "value":I
    .local v5, "value":I
    const/4 v6, -0x1

    .line 826
    .end local v13    # "begin":I
    .local v6, "begin":I
    move/from16 v20, v6

    move v6, v5

    move v5, v7

    move/from16 v7, v20

    goto :goto_8

    .line 821
    .end local v7    # "currentIndex":I
    .local v5, "currentIndex":I
    .local v6, "value":I
    .restart local v13    # "begin":I
    :cond_d
    :goto_5
    return-object v18

    .line 812
    .end local v13    # "begin":I
    .local v7, "begin":I
    :cond_e
    :goto_6
    return-object v18

    .line 831
    .end local v12    # "tmp":I
    :cond_f
    if-gez v7, :cond_10

    .line 832
    move v7, v8

    goto :goto_7

    .line 833
    :cond_10
    sub-int v12, v8, v7

    if-le v12, v13, :cond_11

    .line 834
    return-object v18

    .line 840
    :cond_11
    :goto_7
    invoke-static/range {v19 .. v19}, Lio/netty/util/internal/StringUtil;->decodeHexNibble(C)I

    move-result v12

    sub-int v13, v8, v7

    shl-int/2addr v13, v14

    shl-int/2addr v12, v13

    add-int/2addr v6, v12

    .line 757
    .end local v19    # "c":C
    :goto_8
    const/4 v12, 0x1

    add-int/2addr v8, v12

    goto/16 :goto_0

    .line 829
    .restart local v19    # "c":C
    :cond_12
    :goto_9
    return-object v18

    .line 845
    .end local v19    # "c":C
    :cond_13
    if-lez v3, :cond_14

    const/4 v12, 0x1

    goto :goto_a

    :cond_14
    const/4 v12, 0x0

    .line 847
    .local v12, "isCompressed":Z
    :goto_a
    if-lez v10, :cond_1e

    .line 848
    if-lez v7, :cond_15

    sub-int v13, v8, v7

    const/4 v15, 0x3

    if-gt v13, v15, :cond_1d

    goto :goto_b

    :cond_15
    const/4 v15, 0x3

    :goto_b
    if-ne v10, v15, :cond_1d

    array-length v13, v1

    if-lt v5, v13, :cond_16

    goto :goto_e

    .line 853
    :cond_16
    if-nez v9, :cond_17

    .line 854
    const/16 v4, 0xc

    goto :goto_c

    .line 855
    :cond_17
    if-lt v9, v14, :cond_1c

    if-nez v12, :cond_18

    const/4 v13, 0x6

    if-ne v9, v13, :cond_18

    .line 856
    const/4 v13, 0x0

    invoke-interface {v0, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v15

    const/16 v13, 0x3a

    if-ne v15, v13, :cond_19

    :cond_18
    if-eqz v12, :cond_1c

    const/16 v13, 0x8

    if-ge v9, v13, :cond_1c

    .line 858
    const/4 v13, 0x0

    invoke-interface {v0, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v15

    const/16 v13, 0x3a

    if-ne v15, v13, :cond_19

    if-gt v3, v14, :cond_1c

    .line 859
    :cond_19
    add-int/lit8 v4, v4, -0x2

    .line 863
    :goto_c
    sub-int v13, v8, v7

    const/4 v15, 0x3

    rsub-int/lit8 v13, v13, 0x3

    shl-int/2addr v13, v14

    shl-int/2addr v6, v13

    .line 868
    and-int/lit8 v13, v6, 0xf

    mul-int/lit8 v13, v13, 0x64

    shr-int/lit8 v14, v6, 0x4

    and-int/lit8 v14, v14, 0xf

    const/16 v15, 0xa

    mul-int/2addr v14, v15

    add-int/2addr v13, v14

    shr-int/lit8 v14, v6, 0x8

    and-int/lit8 v14, v14, 0xf

    add-int v7, v13, v14

    .line 869
    if-ltz v7, :cond_1b

    const/16 v13, 0xff

    if-le v7, v13, :cond_1a

    goto :goto_d

    .line 872
    :cond_1a
    add-int/lit8 v13, v5, 0x1

    .end local v5    # "currentIndex":I
    .local v13, "currentIndex":I
    int-to-byte v14, v7

    aput-byte v14, v1, v5

    goto/16 :goto_f

    .line 870
    .end local v13    # "currentIndex":I
    .restart local v5    # "currentIndex":I
    :cond_1b
    :goto_d
    return-object v18

    .line 861
    :cond_1c
    return-object v18

    .line 851
    :cond_1d
    :goto_e
    return-object v18

    .line 874
    :cond_1e
    add-int/lit8 v15, v2, -0x1

    .line 875
    .local v15, "tmp":I
    if-lez v7, :cond_1f

    sub-int v14, v8, v7

    if-gt v14, v13, :cond_2c

    :cond_1f
    const/4 v14, 0x2

    if-lt v9, v14, :cond_2c

    if-nez v12, :cond_20

    add-int/lit8 v14, v9, 0x1

    const/16 v13, 0x8

    if-ne v14, v13, :cond_2c

    .line 878
    const/4 v13, 0x0

    invoke-interface {v0, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v14

    const/16 v13, 0x3a

    if-eq v14, v13, :cond_2c

    invoke-interface {v0, v15}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v14

    if-eq v14, v13, :cond_2c

    :cond_20
    if-eqz v12, :cond_22

    const/16 v13, 0x8

    if-gt v9, v13, :cond_2c

    if-ne v9, v13, :cond_22

    const/4 v13, 0x2

    if-gt v3, v13, :cond_21

    .line 881
    const/4 v13, 0x0

    invoke-interface {v0, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v14

    const/16 v13, 0x3a

    if-ne v14, v13, :cond_2c

    :cond_21
    const/16 v13, 0xe

    if-lt v3, v13, :cond_22

    .line 882
    invoke-interface {v0, v15}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    const/16 v14, 0x3a

    if-ne v13, v14, :cond_2c

    :cond_22
    add-int/lit8 v13, v5, 0x1

    array-length v14, v1

    if-ge v13, v14, :cond_2c

    if-gez v7, :cond_23

    add-int/lit8 v13, v15, -0x1

    .line 884
    invoke-interface {v0, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    const/16 v14, 0x3a

    if-ne v13, v14, :cond_2c

    :cond_23
    const/4 v13, 0x2

    if-le v3, v13, :cond_24

    .line 885
    const/4 v13, 0x0

    invoke-interface {v0, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v14

    const/16 v13, 0x3a

    if-ne v14, v13, :cond_24

    goto/16 :goto_14

    .line 888
    :cond_24
    if-ltz v7, :cond_25

    sub-int v13, v8, v7

    const/4 v14, 0x4

    if-gt v13, v14, :cond_25

    .line 889
    sub-int v13, v8, v7

    rsub-int/lit8 v13, v13, 0x4

    const/4 v14, 0x2

    shl-int/2addr v13, v14

    shl-int/2addr v6, v13

    .line 894
    :cond_25
    add-int/lit8 v13, v5, 0x1

    .end local v5    # "currentIndex":I
    .restart local v13    # "currentIndex":I
    and-int/lit8 v14, v6, 0xf

    const/16 v16, 0x4

    shl-int/lit8 v14, v14, 0x4

    shr-int/lit8 v16, v6, 0x4

    and-int/lit8 v16, v16, 0xf

    or-int v14, v14, v16

    int-to-byte v14, v14

    aput-byte v14, v1, v5

    .line 895
    add-int/lit8 v5, v13, 0x1

    .end local v13    # "currentIndex":I
    .restart local v5    # "currentIndex":I
    shr-int/lit8 v14, v6, 0x8

    and-int/lit8 v14, v14, 0xf

    const/16 v16, 0x4

    shl-int/lit8 v14, v14, 0x4

    shr-int/lit8 v16, v6, 0xc

    and-int/lit8 v16, v16, 0xf

    or-int v14, v14, v16

    int-to-byte v14, v14

    aput-byte v14, v1, v13

    move v13, v5

    .line 898
    .end local v5    # "currentIndex":I
    .end local v15    # "tmp":I
    .restart local v13    # "currentIndex":I
    :goto_f
    add-int v5, v13, v4

    .line 899
    .end local v8    # "i":I
    .local v5, "i":I
    if-nez v11, :cond_27

    array-length v8, v1

    if-lt v5, v8, :cond_26

    goto :goto_11

    .line 913
    :cond_26
    const/4 v5, 0x0

    :goto_10
    if-ge v5, v4, :cond_2a

    .line 914
    add-int v7, v5, v3

    .line 915
    add-int v13, v7, v4

    .line 916
    array-length v8, v1

    if-ge v13, v8, :cond_2a

    .line 917
    aget-byte v8, v1, v7

    aput-byte v8, v1, v13

    .line 918
    const/4 v8, 0x0

    aput-byte v8, v1, v7

    .line 913
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    .line 901
    :cond_27
    :goto_11
    array-length v8, v1

    if-lt v5, v8, :cond_28

    .line 902
    add-int/lit8 v3, v3, 0x1

    .line 904
    :cond_28
    move v5, v13

    :goto_12
    array-length v8, v1

    if-ge v5, v8, :cond_2a

    .line 905
    array-length v8, v1

    const/4 v14, 0x1

    sub-int/2addr v8, v14

    move v7, v8

    :goto_13
    if-lt v7, v3, :cond_29

    .line 906
    add-int/lit8 v8, v7, -0x1

    aget-byte v8, v1, v8

    aput-byte v8, v1, v7

    .line 905
    add-int/lit8 v7, v7, -0x1

    goto :goto_13

    .line 908
    :cond_29
    const/4 v8, 0x0

    aput-byte v8, v1, v7

    .line 909
    add-int/lit8 v3, v3, 0x1

    .line 904
    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    .line 925
    :cond_2a
    if-lez v10, :cond_2b

    .line 929
    const/16 v8, 0xb

    const/4 v14, -0x1

    aput-byte v14, v1, v8

    const/16 v8, 0xa

    aput-byte v14, v1, v8

    .line 932
    :cond_2b
    return-object v1

    .line 886
    .end local v13    # "currentIndex":I
    .local v5, "currentIndex":I
    .restart local v8    # "i":I
    .restart local v15    # "tmp":I
    :cond_2c
    :goto_14
    return-object v18

    :sswitch_data_0
    .sparse-switch
        0x2e -> :sswitch_1
        0x3a -> :sswitch_0
    .end sparse-switch
.end method

.method private static inRangeEndExclusive(III)Z
    .locals 1
    .param p0, "value"    # I
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 1140
    if-lt p0, p1, :cond_0

    if-ge p0, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static intToIpAddress(I)Ljava/lang/String;
    .locals 3
    .param p0, "i"    # I

    .line 423
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 424
    .local v0, "buf":Ljava/lang/StringBuilder;
    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 425
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 426
    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 427
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 428
    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 429
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 430
    and-int/lit16 v1, p0, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 431
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static ipv4WordToByte(Ljava/lang/String;II)B
    .locals 3
    .param p0, "ip"    # Ljava/lang/String;
    .param p1, "from"    # I
    .param p2, "toExclusive"    # I

    .line 395
    invoke-static {p0, p1}, Lio/netty/util/NetUtil;->decimalDigit(Ljava/lang/String;I)I

    move-result v0

    .line 396
    .local v0, "ret":I
    add-int/lit8 p1, p1, 0x1

    .line 397
    if-ne p1, p2, :cond_0

    .line 398
    int-to-byte v1, v0

    return v1

    .line 400
    :cond_0
    mul-int/lit8 v1, v0, 0xa

    invoke-static {p0, p1}, Lio/netty/util/NetUtil;->decimalDigit(Ljava/lang/String;I)I

    move-result v2

    add-int/2addr v1, v2

    .line 401
    .end local v0    # "ret":I
    .local v1, "ret":I
    add-int/lit8 p1, p1, 0x1

    .line 402
    if-ne p1, p2, :cond_1

    .line 403
    int-to-byte v0, v1

    return v0

    .line 405
    :cond_1
    mul-int/lit8 v0, v1, 0xa

    invoke-static {p0, p1}, Lio/netty/util/NetUtil;->decimalDigit(Ljava/lang/String;I)I

    move-result v2

    add-int/2addr v0, v2

    int-to-byte v0, v0

    return v0
.end method

.method public static isIpV4StackPreferred()Z
    .locals 1

    .line 352
    sget-boolean v0, Lio/netty/util/NetUtil;->IPV4_PREFERRED:Z

    return v0
.end method

.method public static isIpV6AddressesPreferred()Z
    .locals 1

    .line 363
    sget-boolean v0, Lio/netty/util/NetUtil;->IPV6_ADDRESSES_PREFERRED:Z

    return v0
.end method

.method private static isValidHexChar(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 609
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x46

    if-le p0, v0, :cond_2

    :cond_1
    const/16 v0, 0x61

    if-lt p0, v0, :cond_3

    const/16 v0, 0x66

    if-gt p0, v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isValidIPv4Mapped([BIII)Z
    .locals 5
    .param p0, "bytes"    # [B
    .param p1, "currentIndex"    # I
    .param p2, "compressBegin"    # I
    .param p3, "compressLength"    # I

    .line 628
    add-int v0, p2, p3

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0xe

    if-lt v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 629
    .local v0, "mustBeZero":Z
    :goto_0
    const/16 v3, 0xc

    if-gt p1, v3, :cond_2

    const/4 v4, 0x2

    if-lt p1, v4, :cond_2

    if-eqz v0, :cond_1

    if-ge p2, v3, :cond_2

    :cond_1
    add-int/lit8 v3, p1, -0x1

    aget-byte v3, p0, v3

    add-int/lit8 v4, p1, -0x2

    aget-byte v4, p0, v4

    .line 630
    invoke-static {v3, v4, v0}, Lio/netty/util/NetUtil;->isValidIPv4MappedSeparators(BBZ)Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v3, p1, -0x3

    .line 631
    invoke-static {p0, v2, v3}, Lio/netty/util/internal/PlatformDependent;->isZero([BII)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    .line 629
    :goto_1
    return v1
.end method

.method private static isValidIPv4MappedChar(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 617
    const/16 v0, 0x66

    if-eq p0, v0, :cond_1

    const/16 v0, 0x46

    if-ne p0, v0, :cond_0

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

.method private static isValidIPv4MappedSeparators(BBZ)Z
    .locals 1
    .param p0, "b0"    # B
    .param p1, "b1"    # B
    .param p2, "mustBeZero"    # Z

    .line 624
    if-ne p0, p1, :cond_1

    if-eqz p0, :cond_0

    if-nez p2, :cond_1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isValidIpV4Address(Lio/netty/util/AsciiString;II)Z
    .locals 4
    .param p0, "ip"    # Lio/netty/util/AsciiString;
    .param p1, "from"    # I
    .param p2, "toExcluded"    # I

    .line 673
    sub-int v0, p2, p1

    .line 675
    .local v0, "len":I
    const/16 v1, 0xf

    if-gt v0, v1, :cond_0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    add-int/lit8 v1, p1, 0x1

    .line 676
    const/16 v2, 0x2e

    invoke-virtual {p0, v2, v1}, Lio/netty/util/AsciiString;->indexOf(CI)I

    move-result v1

    move v3, v1

    .local v3, "i":I
    if-lez v1, :cond_0

    invoke-static {p0, p1, v3}, Lio/netty/util/NetUtil;->isValidIpV4Word(Ljava/lang/CharSequence;II)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v1, v3, 0x2

    move p1, v1

    .line 677
    invoke-virtual {p0, v2, v1}, Lio/netty/util/AsciiString;->indexOf(CI)I

    move-result v1

    move v3, v1

    if-lez v1, :cond_0

    add-int/lit8 v1, p1, -0x1

    invoke-static {p0, v1, v3}, Lio/netty/util/NetUtil;->isValidIpV4Word(Ljava/lang/CharSequence;II)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v1, v3, 0x2

    move p1, v1

    .line 678
    invoke-virtual {p0, v2, v1}, Lio/netty/util/AsciiString;->indexOf(CI)I

    move-result v1

    move v2, v1

    .end local v3    # "i":I
    .local v2, "i":I
    if-lez v1, :cond_0

    add-int/lit8 v1, p1, -0x1

    invoke-static {p0, v1, v2}, Lio/netty/util/NetUtil;->isValidIpV4Word(Ljava/lang/CharSequence;II)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v1, v2, 0x1

    .line 679
    invoke-static {p0, v1, p2}, Lio/netty/util/NetUtil;->isValidIpV4Word(Ljava/lang/CharSequence;II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .end local v2    # "i":I
    :cond_0
    const/4 v1, 0x0

    .line 675
    :goto_0
    return v1
.end method

.method public static isValidIpV4Address(Ljava/lang/CharSequence;)Z
    .locals 2
    .param p0, "ip"    # Ljava/lang/CharSequence;

    .line 641
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lio/netty/util/NetUtil;->isValidIpV4Address(Ljava/lang/CharSequence;II)Z

    move-result v0

    return v0
.end method

.method private static isValidIpV4Address(Ljava/lang/CharSequence;II)Z
    .locals 1
    .param p0, "ip"    # Ljava/lang/CharSequence;
    .param p1, "from"    # I
    .param p2, "toExcluded"    # I

    .line 655
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lio/netty/util/NetUtil;->isValidIpV4Address(Ljava/lang/String;II)Z

    move-result v0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lio/netty/util/AsciiString;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lio/netty/util/AsciiString;

    .line 656
    invoke-static {v0, p1, p2}, Lio/netty/util/NetUtil;->isValidIpV4Address(Lio/netty/util/AsciiString;II)Z

    move-result v0

    goto :goto_0

    .line 657
    :cond_1
    invoke-static {p0, p1, p2}, Lio/netty/util/NetUtil;->isValidIpV4Address0(Ljava/lang/CharSequence;II)Z

    move-result v0

    .line 655
    :goto_0
    return v0
.end method

.method public static isValidIpV4Address(Ljava/lang/String;)Z
    .locals 2
    .param p0, "ip"    # Ljava/lang/String;

    .line 651
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lio/netty/util/NetUtil;->isValidIpV4Address(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method private static isValidIpV4Address(Ljava/lang/String;II)Z
    .locals 4
    .param p0, "ip"    # Ljava/lang/String;
    .param p1, "from"    # I
    .param p2, "toExcluded"    # I

    .line 662
    sub-int v0, p2, p1

    .line 664
    .local v0, "len":I
    const/16 v1, 0xf

    if-gt v0, v1, :cond_0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    add-int/lit8 v1, p1, 0x1

    .line 665
    const/16 v2, 0x2e

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    move v3, v1

    .local v3, "i":I
    if-lez v1, :cond_0

    invoke-static {p0, p1, v3}, Lio/netty/util/NetUtil;->isValidIpV4Word(Ljava/lang/CharSequence;II)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v1, v3, 0x2

    move p1, v1

    .line 666
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    move v3, v1

    if-lez v1, :cond_0

    add-int/lit8 v1, p1, -0x1

    invoke-static {p0, v1, v3}, Lio/netty/util/NetUtil;->isValidIpV4Word(Ljava/lang/CharSequence;II)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v1, v3, 0x2

    move p1, v1

    .line 667
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    move v2, v1

    .end local v3    # "i":I
    .local v2, "i":I
    if-lez v1, :cond_0

    add-int/lit8 v1, p1, -0x1

    invoke-static {p0, v1, v2}, Lio/netty/util/NetUtil;->isValidIpV4Word(Ljava/lang/CharSequence;II)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v1, v2, 0x1

    .line 668
    invoke-static {p0, v1, p2}, Lio/netty/util/NetUtil;->isValidIpV4Word(Ljava/lang/CharSequence;II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .end local v2    # "i":I
    :cond_0
    const/4 v1, 0x0

    .line 664
    :goto_0
    return v1
.end method

.method private static isValidIpV4Address0(Ljava/lang/CharSequence;II)Z
    .locals 4
    .param p0, "ip"    # Ljava/lang/CharSequence;
    .param p1, "from"    # I
    .param p2, "toExcluded"    # I

    .line 684
    sub-int v0, p2, p1

    .line 686
    .local v0, "len":I
    const/16 v1, 0xf

    if-gt v0, v1, :cond_0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    add-int/lit8 v1, p1, 0x1

    .line 687
    const/16 v2, 0x2e

    invoke-static {p0, v2, v1}, Lio/netty/util/AsciiString;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v1

    move v3, v1

    .local v3, "i":I
    if-lez v1, :cond_0

    invoke-static {p0, p1, v3}, Lio/netty/util/NetUtil;->isValidIpV4Word(Ljava/lang/CharSequence;II)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v1, v3, 0x2

    move p1, v1

    .line 688
    invoke-static {p0, v2, v1}, Lio/netty/util/AsciiString;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v1

    move v3, v1

    if-lez v1, :cond_0

    add-int/lit8 v1, p1, -0x1

    invoke-static {p0, v1, v3}, Lio/netty/util/NetUtil;->isValidIpV4Word(Ljava/lang/CharSequence;II)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v1, v3, 0x2

    move p1, v1

    .line 689
    invoke-static {p0, v2, v1}, Lio/netty/util/AsciiString;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v1

    move v2, v1

    .end local v3    # "i":I
    .local v2, "i":I
    if-lez v1, :cond_0

    add-int/lit8 v1, p1, -0x1

    invoke-static {p0, v1, v2}, Lio/netty/util/NetUtil;->isValidIpV4Word(Ljava/lang/CharSequence;II)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v1, v2, 0x1

    .line 690
    invoke-static {p0, v1, p2}, Lio/netty/util/NetUtil;->isValidIpV4Word(Ljava/lang/CharSequence;II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .end local v2    # "i":I
    :cond_0
    const/4 v1, 0x0

    .line 686
    :goto_0
    return v1
.end method

.method private static isValidIpV4Word(Ljava/lang/CharSequence;II)Z
    .locals 9
    .param p0, "word"    # Ljava/lang/CharSequence;
    .param p1, "from"    # I
    .param p2, "toExclusive"    # I

    .line 594
    sub-int v0, p2, p1

    .line 596
    .local v0, "len":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lt v0, v2, :cond_7

    const/4 v3, 0x3

    if-gt v0, v3, :cond_7

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    move v5, v4

    .local v5, "c0":C
    const/16 v6, 0x30

    if-ge v4, v6, :cond_0

    goto :goto_1

    .line 599
    :cond_0
    const/16 v4, 0x39

    if-ne v0, v3, :cond_4

    .line 600
    add-int/lit8 v3, p1, 0x1

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    move v7, v3

    .local v7, "c1":C
    if-lt v3, v6, :cond_3

    add-int/lit8 v3, p1, 0x2

    .line 601
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    move v8, v3

    .local v8, "c2":C
    if-lt v3, v6, :cond_3

    const/16 v3, 0x31

    if-gt v5, v3, :cond_1

    if-gt v7, v4, :cond_1

    if-le v8, v4, :cond_2

    :cond_1
    const/16 v3, 0x32

    if-ne v5, v3, :cond_3

    const/16 v3, 0x35

    if-gt v7, v3, :cond_3

    if-le v8, v3, :cond_2

    if-ge v7, v3, :cond_3

    if-gt v8, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    .end local v8    # "c2":C
    :cond_3
    nop

    .line 600
    :goto_0
    return v1

    .line 605
    .end local v7    # "c1":C
    :cond_4
    if-gt v5, v4, :cond_6

    if-eq v0, v2, :cond_5

    add-int/lit8 v3, p1, 0x1

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lio/netty/util/NetUtil;->isValidNumericChar(C)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    move v1, v2

    :cond_6
    return v1

    .line 597
    .end local v5    # "c0":C
    :cond_7
    :goto_1
    return v1
.end method

.method public static isValidIpV6Address(Ljava/lang/CharSequence;)Z
    .locals 13
    .param p0, "ip"    # Ljava/lang/CharSequence;

    .line 474
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 475
    .local v0, "end":I
    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 476
    return v2

    .line 481
    :cond_0
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 482
    .local v1, "c":C
    const/16 v3, 0x5b

    const/4 v4, 0x1

    if-ne v1, v3, :cond_2

    .line 483
    add-int/lit8 v0, v0, -0x1

    .line 484
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v5, 0x5d

    if-eq v3, v5, :cond_1

    .line 486
    return v2

    .line 488
    :cond_1
    const/4 v3, 0x1

    .line 489
    .local v3, "start":I
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    goto :goto_0

    .line 491
    .end local v3    # "start":I
    :cond_2
    const/4 v3, 0x0

    .line 496
    .restart local v3    # "start":I
    :goto_0
    const/16 v5, 0x3a

    if-ne v1, v5, :cond_4

    .line 498
    add-int/lit8 v6, v3, 0x1

    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-eq v6, v5, :cond_3

    .line 499
    return v2

    .line 501
    :cond_3
    const/4 v6, 0x2

    .line 502
    .local v6, "colons":I
    move v7, v3

    .line 503
    .local v7, "compressBegin":I
    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    .line 505
    .end local v6    # "colons":I
    .end local v7    # "compressBegin":I
    :cond_4
    const/4 v6, 0x0

    .line 506
    .restart local v6    # "colons":I
    const/4 v7, -0x1

    .line 509
    .restart local v7    # "compressBegin":I
    :goto_1
    const/4 v8, 0x0

    .line 511
    .local v8, "wordLen":I
    move v9, v3

    .local v9, "i":I
    :goto_2
    const/4 v10, 0x7

    if-ge v9, v0, :cond_14

    .line 512
    invoke-interface {p0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 513
    invoke-static {v1}, Lio/netty/util/NetUtil;->isValidHexChar(C)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 514
    const/4 v10, 0x4

    if-ge v8, v10, :cond_5

    .line 515
    add-int/lit8 v8, v8, 0x1

    .line 516
    goto :goto_4

    .line 518
    :cond_5
    return v2

    .line 521
    :cond_6
    sparse-switch v1, :sswitch_data_0

    .line 579
    return v2

    .line 523
    :sswitch_0
    if-le v6, v10, :cond_7

    .line 524
    return v2

    .line 526
    :cond_7
    add-int/lit8 v10, v9, -0x1

    invoke-interface {p0, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    if-ne v10, v5, :cond_9

    .line 527
    if-ltz v7, :cond_8

    .line 528
    return v2

    .line 530
    :cond_8
    add-int/lit8 v7, v9, -0x1

    goto :goto_3

    .line 532
    :cond_9
    const/4 v8, 0x0

    .line 534
    :goto_3
    add-int/lit8 v6, v6, 0x1

    .line 535
    nop

    .line 511
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 540
    :sswitch_1
    if-gez v7, :cond_a

    const/4 v4, 0x6

    if-ne v6, v4, :cond_c

    :cond_a
    if-ne v6, v10, :cond_b

    if-ge v7, v3, :cond_c

    :cond_b
    if-le v6, v10, :cond_d

    .line 544
    :cond_c
    return v2

    .line 550
    :cond_d
    sub-int v4, v9, v8

    .line 551
    .local v4, "ipv4Start":I
    add-int/lit8 v10, v4, -0x2

    .line 552
    .local v10, "j":I
    invoke-interface {p0, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    invoke-static {v11}, Lio/netty/util/NetUtil;->isValidIPv4MappedChar(C)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 553
    add-int/lit8 v11, v10, -0x1

    invoke-interface {p0, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    invoke-static {v11}, Lio/netty/util/NetUtil;->isValidIPv4MappedChar(C)Z

    move-result v11

    if-eqz v11, :cond_f

    add-int/lit8 v11, v10, -0x2

    .line 554
    invoke-interface {p0, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    invoke-static {v11}, Lio/netty/util/NetUtil;->isValidIPv4MappedChar(C)Z

    move-result v11

    if-eqz v11, :cond_f

    add-int/lit8 v11, v10, -0x3

    .line 555
    invoke-interface {p0, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    invoke-static {v11}, Lio/netty/util/NetUtil;->isValidIPv4MappedChar(C)Z

    move-result v11

    if-nez v11, :cond_e

    goto :goto_5

    .line 558
    :cond_e
    add-int/lit8 v10, v10, -0x5

    goto :goto_6

    .line 556
    :cond_f
    :goto_5
    return v2

    .line 561
    :cond_10
    :goto_6
    if-lt v10, v3, :cond_12

    .line 562
    invoke-interface {p0, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    .line 563
    .local v11, "tmpChar":C
    const/16 v12, 0x30

    if-eq v11, v12, :cond_11

    if-eq v11, v5, :cond_11

    .line 564
    return v2

    .line 561
    .end local v11    # "tmpChar":C
    :cond_11
    add-int/lit8 v10, v10, -0x1

    goto :goto_6

    .line 569
    :cond_12
    const/16 v2, 0x25

    add-int/lit8 v5, v4, 0x7

    invoke-static {p0, v2, v5}, Lio/netty/util/AsciiString;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v2

    .line 570
    .local v2, "ipv4End":I
    if-gez v2, :cond_13

    .line 571
    move v2, v0

    .line 573
    :cond_13
    invoke-static {p0, v4, v2}, Lio/netty/util/NetUtil;->isValidIpV4Address(Ljava/lang/CharSequence;II)Z

    move-result v5

    return v5

    .line 576
    .end local v2    # "ipv4End":I
    .end local v4    # "ipv4Start":I
    .end local v10    # "j":I
    :sswitch_2
    move v0, v9

    .line 584
    .end local v9    # "i":I
    :cond_14
    if-gez v7, :cond_16

    .line 585
    if-ne v6, v10, :cond_15

    if-lez v8, :cond_15

    move v2, v4

    :cond_15
    return v2

    .line 588
    :cond_16
    add-int/lit8 v5, v7, 0x2

    if-eq v5, v0, :cond_17

    if-lez v8, :cond_18

    const/16 v5, 0x8

    if-lt v6, v5, :cond_17

    if-gt v7, v3, :cond_18

    :cond_17
    move v2, v4

    :cond_18
    return v2

    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_2
        0x2e -> :sswitch_1
        0x3a -> :sswitch_0
    .end sparse-switch
.end method

.method public static isValidIpV6Address(Ljava/lang/String;)Z
    .locals 1
    .param p0, "ip"    # Ljava/lang/String;

    .line 470
    invoke-static {p0}, Lio/netty/util/NetUtil;->isValidIpV6Address(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private static isValidNumericChar(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 613
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static newSocketAddressStringBuilder(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;
    .locals 5
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "port"    # Ljava/lang/String;
    .param p2, "ipv4"    # Z

    .line 967
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 968
    .local v0, "hostLen":I
    if-eqz p2, :cond_0

    .line 970
    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    return-object v1

    .line 973
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v0, 0x3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 974
    .local v1, "stringBuilder":Ljava/lang/StringBuilder;
    const/16 v2, 0x5d

    const/16 v3, 0x5b

    const/4 v4, 0x1

    if-le v0, v4, :cond_1

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v3, :cond_1

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v2, :cond_1

    .line 975
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    return-object v2

    .line 977
    :cond_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    return-object v2
.end method

.method private static sysctlGetInt(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 7
    .param p0, "sysctlKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 319
    new-instance v0, Ljava/lang/ProcessBuilder;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "sysctl"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v0

    .line 321
    .local v0, "process":Ljava/lang/Process;
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 322
    .local v1, "is":Ljava/io/InputStream;
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 323
    .local v3, "isr":Ljava/io/InputStreamReader;
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 325
    .local v4, "br":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 326
    .local v5, "line":Ljava/lang/String;
    if-eqz v5, :cond_2

    invoke-virtual {v5, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 327
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v2

    move v2, v6

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-le v2, v6, :cond_2

    .line 328
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-nez v6, :cond_1

    .line 329
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 335
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 338
    if-eqz v0, :cond_0

    .line 339
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 329
    :cond_0
    return-object v6

    .line 327
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 333
    .end local v2    # "i":I
    :cond_2
    const/4 v2, 0x0

    .line 335
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 338
    if-eqz v0, :cond_3

    .line 339
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 333
    :cond_3
    return-object v2

    .line 335
    .end local v5    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v2

    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 336
    nop

    .end local v0    # "process":Ljava/lang/Process;
    .end local p0    # "sysctlKey":Ljava/lang/String;
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 338
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v3    # "isr":Ljava/io/InputStreamReader;
    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "process":Ljava/lang/Process;
    .restart local p0    # "sysctlKey":Ljava/lang/String;
    :catchall_1
    move-exception v1

    if-eqz v0, :cond_4

    .line 339
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 341
    :cond_4
    throw v1
.end method

.method public static toAddressString(Ljava/net/InetAddress;)Ljava/lang/String;
    .locals 1
    .param p0, "ip"    # Ljava/net/InetAddress;

    .line 993
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lio/netty/util/NetUtil;->toAddressString(Ljava/net/InetAddress;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toAddressString(Ljava/net/InetAddress;Z)Ljava/lang/String;
    .locals 3
    .param p0, "ip"    # Ljava/net/InetAddress;
    .param p1, "ipv4Mapped"    # Z

    .line 1021
    instance-of v0, p0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_0

    .line 1022
    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1024
    :cond_0
    instance-of v0, p0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_1

    .line 1028
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lio/netty/util/NetUtil;->toAddressString([BIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1025
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static toAddressString([BIZ)Ljava/lang/String;
    .locals 16
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "ipv4Mapped"    # Z

    .line 1032
    const/16 v0, 0x8

    new-array v1, v0, [I

    .line 1034
    .local v1, "words":[I
    array-length v2, v1

    add-int v2, p1, v2

    .line 1035
    .local v2, "end":I
    move/from16 v3, p1

    .local v3, "i":I
    :goto_0
    const/4 v4, 0x1

    if-ge v3, v2, :cond_0

    .line 1036
    shl-int/lit8 v5, v3, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/2addr v5, v0

    shl-int/lit8 v6, v3, 0x1

    add-int/2addr v6, v4

    aget-byte v4, p0, v6

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v4, v5

    aput v4, v1, v3

    .line 1035
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1040
    :cond_0
    const/4 v5, -0x1

    .line 1042
    .local v5, "currentStart":I
    const/4 v6, -0x1

    .line 1043
    .local v6, "shortestStart":I
    const/4 v7, 0x0

    .line 1044
    .local v7, "shortestLength":I
    const/4 v3, 0x0

    :goto_1
    array-length v8, v1

    if-ge v3, v8, :cond_4

    .line 1045
    aget v8, v1, v3

    if-nez v8, :cond_1

    .line 1046
    if-gez v5, :cond_3

    .line 1047
    move v5, v3

    goto :goto_2

    .line 1049
    :cond_1
    if-ltz v5, :cond_3

    .line 1050
    sub-int v8, v3, v5

    .line 1051
    .local v8, "currentLength":I
    if-le v8, v7, :cond_2

    .line 1052
    move v6, v5

    .line 1053
    move v7, v8

    .line 1055
    :cond_2
    const/4 v5, -0x1

    .line 1044
    .end local v8    # "currentLength":I
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1059
    :cond_4
    if-ltz v5, :cond_5

    .line 1060
    sub-int v8, v3, v5

    .line 1061
    .restart local v8    # "currentLength":I
    if-le v8, v7, :cond_5

    .line 1062
    move v6, v5

    .line 1063
    move v7, v8

    .line 1067
    .end local v8    # "currentLength":I
    :cond_5
    if-ne v7, v4, :cond_6

    .line 1068
    const/4 v7, 0x0

    .line 1069
    const/4 v6, -0x1

    .line 1073
    :cond_6
    add-int v8, v6, v7

    .line 1074
    .local v8, "shortestEnd":I
    new-instance v9, Ljava/lang/StringBuilder;

    const/16 v10, 0x27

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1075
    .local v9, "b":Ljava/lang/StringBuilder;
    const/16 v10, 0x3a

    const/4 v11, 0x0

    if-gez v8, :cond_7

    .line 1076
    aget v0, v1, v11

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1077
    const/4 v0, 0x1

    .end local v3    # "i":I
    .local v0, "i":I
    :goto_3
    array-length v3, v1

    if-ge v0, v3, :cond_11

    .line 1078
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1079
    aget v3, v1, v0

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1077
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1084
    .end local v0    # "i":I
    .restart local v3    # "i":I
    :cond_7
    invoke-static {v11, v6, v8}, Lio/netty/util/NetUtil;->inRangeEndExclusive(III)Z

    move-result v12

    const-string v13, "::"

    const/4 v14, 0x5

    if-eqz v12, :cond_9

    .line 1085
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1086
    if-eqz p2, :cond_8

    if-ne v8, v14, :cond_8

    aget v12, v1, v14

    const v15, 0xffff

    if-ne v12, v15, :cond_8

    goto :goto_4

    :cond_8
    move v4, v11

    .local v4, "isIpv4Mapped":Z
    :goto_4
    goto :goto_5

    .line 1088
    .end local v4    # "isIpv4Mapped":Z
    :cond_9
    aget v4, v1, v11

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1089
    const/4 v4, 0x0

    .line 1091
    .restart local v4    # "isIpv4Mapped":Z
    :goto_5
    const/4 v3, 0x1

    :goto_6
    array-length v11, v1

    if-ge v3, v11, :cond_10

    .line 1092
    invoke-static {v3, v6, v8}, Lio/netty/util/NetUtil;->inRangeEndExclusive(III)Z

    move-result v11

    if-nez v11, :cond_e

    .line 1093
    add-int/lit8 v11, v3, -0x1

    invoke-static {v11, v6, v8}, Lio/netty/util/NetUtil;->inRangeEndExclusive(III)Z

    move-result v11

    const/16 v12, 0x2e

    if-nez v11, :cond_c

    .line 1095
    if-eqz v4, :cond_b

    const/4 v11, 0x6

    if-ne v3, v11, :cond_a

    goto :goto_7

    .line 1098
    :cond_a
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 1096
    :cond_b
    :goto_7
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1101
    :cond_c
    :goto_8
    if-eqz v4, :cond_d

    if-le v3, v14, :cond_d

    .line 1102
    aget v11, v1, v3

    shr-int/2addr v11, v0

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1103
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1104
    aget v11, v1, v3

    and-int/lit16 v11, v11, 0xff

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 1106
    :cond_d
    aget v11, v1, v3

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 1108
    :cond_e
    add-int/lit8 v11, v3, -0x1

    invoke-static {v11, v6, v8}, Lio/netty/util/NetUtil;->inRangeEndExclusive(III)Z

    move-result v11

    if-nez v11, :cond_f

    .line 1110
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1091
    :cond_f
    :goto_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_10
    move v0, v3

    .line 1115
    .end local v3    # "i":I
    .end local v4    # "isIpv4Mapped":Z
    .restart local v0    # "i":I
    :cond_11
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static toSocketAddressString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "port"    # I

    .line 961
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 962
    .local v0, "portStr":Ljava/lang/String;
    nop

    .line 963
    invoke-static {p0}, Lio/netty/util/NetUtil;->isValidIpV6Address(Ljava/lang/String;)Z

    move-result v1

    .line 962
    xor-int/lit8 v1, v1, 0x1

    invoke-static {p0, v0, v1}, Lio/netty/util/NetUtil;->newSocketAddressStringBuilder(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3a

    .line 963
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 962
    return-object v1
.end method

.method public static toSocketAddressString(Ljava/net/InetSocketAddress;)Ljava/lang/String;
    .locals 4
    .param p0, "addr"    # Ljava/net/InetSocketAddress;

    .line 943
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 946
    .local v0, "port":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 947
    invoke-static {p0}, Lio/netty/util/NetUtil;->getHostname(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v1

    .line 948
    .local v1, "hostname":Ljava/lang/String;
    invoke-static {v1}, Lio/netty/util/NetUtil;->isValidIpV6Address(Ljava/lang/String;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-static {v1, v0, v2}, Lio/netty/util/NetUtil;->newSocketAddressStringBuilder(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 949
    .local v1, "sb":Ljava/lang/StringBuilder;
    goto :goto_0

    .line 950
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 951
    .local v1, "address":Ljava/net/InetAddress;
    invoke-static {v1}, Lio/netty/util/NetUtil;->toAddressString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v2

    .line 952
    .local v2, "hostString":Ljava/lang/String;
    instance-of v3, v1, Ljava/net/Inet4Address;

    invoke-static {v2, v0, v3}, Lio/netty/util/NetUtil;->newSocketAddressStringBuilder(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v1, v3

    .line 954
    .end local v2    # "hostString":Ljava/lang/String;
    .local v1, "sb":Ljava/lang/StringBuilder;
    :goto_0
    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method static validIpV4ToBytes(Ljava/lang/String;)[B
    .locals 6
    .param p0, "ip"    # Ljava/lang/String;

    .line 411
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 412
    const/16 v1, 0x2e

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    move v4, v3

    .local v4, "i":I
    const/4 v5, 0x0

    invoke-static {p0, v5, v3}, Lio/netty/util/NetUtil;->ipv4WordToByte(Ljava/lang/String;II)B

    move-result v3

    aput-byte v3, v0, v5

    add-int/lit8 v3, v4, 0x1

    add-int/lit8 v5, v4, 0x2

    .line 413
    invoke-virtual {p0, v1, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    move v4, v5

    invoke-static {p0, v3, v5}, Lio/netty/util/NetUtil;->ipv4WordToByte(Ljava/lang/String;II)B

    move-result v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v4, 0x1

    add-int/lit8 v3, v4, 0x2

    .line 414
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    move v3, v1

    .end local v4    # "i":I
    .local v3, "i":I
    invoke-static {p0, v2, v1}, Lio/netty/util/NetUtil;->ipv4WordToByte(Ljava/lang/String;II)B

    move-result v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    add-int/lit8 v1, v3, 0x1

    .line 415
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p0, v1, v2}, Lio/netty/util/NetUtil;->ipv4WordToByte(Ljava/lang/String;II)B

    move-result v1

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    .line 411
    return-object v0
.end method
