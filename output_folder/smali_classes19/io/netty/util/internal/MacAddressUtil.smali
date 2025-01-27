.class public final Lio/netty/util/internal/MacAddressUtil;
.super Ljava/lang/Object;
.source "MacAddressUtil.java"


# static fields
.field private static final EUI48_MAC_ADDRESS_LENGTH:I = 0x6

.field private static final EUI64_MAC_ADDRESS_LENGTH:I = 0x8

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-class v0, Lio/netty/util/internal/MacAddressUtil;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/util/internal/MacAddressUtil;->logger:Lio/netty/util/internal/logging/InternalLogger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bestAvailableMac()[B
    .locals 12

    .line 49
    sget-object v0, Lio/netty/util/internal/EmptyArrays;->EMPTY_BYTES:[B

    .line 50
    .local v0, "bestMacAddr":[B
    sget-object v1, Lio/netty/util/NetUtil;->LOCALHOST4:Ljava/net/Inet4Address;

    .line 53
    .local v1, "bestInetAddr":Ljava/net/InetAddress;
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 55
    .local v2, "ifaces":Ljava/util/Map;, "Ljava/util/Map<Ljava/net/NetworkInterface;Ljava/net/InetAddress;>;"
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v3

    .line 56
    .local v3, "interfaces":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    if-eqz v3, :cond_1

    .line 57
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 58
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    .line 60
    .local v4, "iface":Ljava/net/NetworkInterface;
    invoke-static {v4}, Lio/netty/util/internal/SocketUtils;->addressesFromNetworkInterface(Ljava/net/NetworkInterface;)Ljava/util/Enumeration;

    move-result-object v5

    .line 61
    .local v5, "addrs":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 62
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/InetAddress;

    .line 63
    .local v6, "a":Ljava/net/InetAddress;
    invoke-virtual {v6}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v7

    if-nez v7, :cond_0

    .line 64
    invoke-interface {v2, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .end local v4    # "iface":Ljava/net/NetworkInterface;
    .end local v5    # "addrs":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v6    # "a":Ljava/net/InetAddress;
    :cond_0
    goto :goto_0

    .line 71
    .end local v3    # "interfaces":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_1
    goto :goto_1

    .line 69
    :catch_0
    move-exception v3

    .line 70
    .local v3, "e":Ljava/net/SocketException;
    sget-object v4, Lio/netty/util/internal/MacAddressUtil;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v5, "Failed to retrieve the list of available network interfaces"

    invoke-interface {v4, v5, v3}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    .end local v3    # "e":Ljava/net/SocketException;
    :goto_1
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 74
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/NetworkInterface;Ljava/net/InetAddress;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/NetworkInterface;

    .line 75
    .local v5, "iface":Ljava/net/NetworkInterface;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/InetAddress;

    .line 76
    .local v6, "inetAddr":Ljava/net/InetAddress;
    invoke-virtual {v5}, Ljava/net/NetworkInterface;->isVirtual()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 77
    goto :goto_2

    .line 82
    :cond_2
    :try_start_1
    invoke-static {v5}, Lio/netty/util/internal/SocketUtils;->hardwareAddressFromNetworkInterface(Ljava/net/NetworkInterface;)[B

    move-result-object v7
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_1

    .line 86
    .local v7, "macAddr":[B
    nop

    .line 88
    const/4 v8, 0x0

    .line 89
    .local v8, "replace":Z
    invoke-static {v0, v7}, Lio/netty/util/internal/MacAddressUtil;->compareAddresses([B[B)I

    move-result v9

    .line 90
    .local v9, "res":I
    if-gez v9, :cond_3

    .line 92
    const/4 v8, 0x1

    goto :goto_3

    .line 93
    :cond_3
    if-nez v9, :cond_5

    .line 95
    invoke-static {v1, v6}, Lio/netty/util/internal/MacAddressUtil;->compareAddresses(Ljava/net/InetAddress;Ljava/net/InetAddress;)I

    move-result v9

    .line 96
    if-gez v9, :cond_4

    .line 98
    const/4 v8, 0x1

    goto :goto_3

    .line 99
    :cond_4
    if-nez v9, :cond_5

    .line 101
    array-length v10, v0

    array-length v11, v7

    if-ge v10, v11, :cond_5

    .line 102
    const/4 v8, 0x1

    .line 107
    :cond_5
    :goto_3
    if-eqz v8, :cond_6

    .line 108
    move-object v0, v7

    .line 109
    move-object v1, v6

    .line 111
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/NetworkInterface;Ljava/net/InetAddress;>;"
    .end local v5    # "iface":Ljava/net/NetworkInterface;
    .end local v6    # "inetAddr":Ljava/net/InetAddress;
    .end local v7    # "macAddr":[B
    .end local v8    # "replace":Z
    .end local v9    # "res":I
    :cond_6
    goto :goto_2

    .line 83
    .restart local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/NetworkInterface;Ljava/net/InetAddress;>;"
    .restart local v5    # "iface":Ljava/net/NetworkInterface;
    .restart local v6    # "inetAddr":Ljava/net/InetAddress;
    :catch_1
    move-exception v7

    .line 84
    .local v7, "e":Ljava/net/SocketException;
    sget-object v8, Lio/netty/util/internal/MacAddressUtil;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v9, "Failed to get the hardware address of a network interface: {}"

    invoke-interface {v8, v9, v5, v7}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 85
    goto :goto_2

    .line 113
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/NetworkInterface;Ljava/net/InetAddress;>;"
    .end local v5    # "iface":Ljava/net/NetworkInterface;
    .end local v6    # "inetAddr":Ljava/net/InetAddress;
    .end local v7    # "e":Ljava/net/SocketException;
    :cond_7
    sget-object v3, Lio/netty/util/internal/EmptyArrays;->EMPTY_BYTES:[B

    if-ne v0, v3, :cond_8

    .line 114
    const/4 v3, 0x0

    return-object v3

    .line 117
    :cond_8
    array-length v3, v0

    const/16 v4, 0x8

    packed-switch v3, :pswitch_data_0

    .line 127
    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    goto :goto_4

    .line 119
    :pswitch_0
    new-array v3, v4, [B

    .line 120
    .local v3, "newAddr":[B
    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-static {v0, v4, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 121
    const/4 v4, -0x1

    aput-byte v4, v3, v5

    .line 122
    const/4 v4, 0x4

    const/4 v6, -0x2

    aput-byte v6, v3, v4

    .line 123
    const/4 v4, 0x5

    invoke-static {v0, v5, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 124
    move-object v0, v3

    .line 125
    nop

    .line 130
    .end local v3    # "newAddr":[B
    :goto_4
    return-object v0

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method private static compareAddresses(Ljava/net/InetAddress;Ljava/net/InetAddress;)I
    .locals 2
    .param p0, "current"    # Ljava/net/InetAddress;
    .param p1, "candidate"    # Ljava/net/InetAddress;

    .line 257
    invoke-static {p0}, Lio/netty/util/internal/MacAddressUtil;->scoreAddress(Ljava/net/InetAddress;)I

    move-result v0

    invoke-static {p1}, Lio/netty/util/internal/MacAddressUtil;->scoreAddress(Ljava/net/InetAddress;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method static compareAddresses([B[B)I
    .locals 6
    .param p0, "current"    # [B
    .param p1, "candidate"    # [B

    .line 211
    const/4 v0, 0x1

    if-eqz p1, :cond_8

    array-length v1, p1

    const/4 v2, 0x6

    if-ge v1, v2, :cond_0

    goto :goto_2

    .line 216
    :cond_0
    const/4 v1, 0x1

    .line 217
    .local v1, "onlyZeroAndOne":Z
    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-byte v5, p1, v4

    .line 218
    .local v5, "b":B
    if-eqz v5, :cond_1

    if-eq v5, v0, :cond_1

    .line 219
    const/4 v1, 0x0

    .line 220
    goto :goto_1

    .line 217
    .end local v5    # "b":B
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 224
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 225
    return v0

    .line 229
    :cond_3
    aget-byte v2, p1, v3

    and-int/2addr v2, v0

    if-eqz v2, :cond_4

    .line 230
    return v0

    .line 234
    :cond_4
    aget-byte v2, p1, v3

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_6

    .line 235
    array-length v0, p0

    if-eqz v0, :cond_5

    aget-byte v0, p0, v3

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_5

    .line 237
    return v3

    .line 240
    :cond_5
    const/4 v0, -0x1

    return v0

    .line 243
    :cond_6
    array-length v2, p0

    if-eqz v2, :cond_7

    aget-byte v2, p0, v3

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_7

    .line 245
    return v0

    .line 248
    :cond_7
    return v3

    .line 212
    .end local v1    # "onlyZeroAndOne":Z
    :cond_8
    :goto_2
    return v0
.end method

.method public static defaultMachineId()[B
    .locals 4

    .line 138
    invoke-static {}, Lio/netty/util/internal/MacAddressUtil;->bestAvailableMac()[B

    move-result-object v0

    .line 139
    .local v0, "bestMacAddr":[B
    if-nez v0, :cond_0

    .line 140
    const/16 v1, 0x8

    new-array v0, v1, [B

    .line 141
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->threadLocalRandom()Ljava/util/Random;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextBytes([B)V

    .line 142
    sget-object v1, Lio/netty/util/internal/MacAddressUtil;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 144
    invoke-static {v0}, Lio/netty/util/internal/MacAddressUtil;->formatAddress([B)Ljava/lang/String;

    move-result-object v2

    .line 142
    const-string v3, "Failed to find a usable hardware address from the network interfaces; using random bytes: {}"

    invoke-interface {v1, v3, v2}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 146
    :cond_0
    return-object v0
.end method

.method public static formatAddress([B)Ljava/lang/String;
    .locals 7
    .param p0, "addr"    # [B

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 200
    .local v0, "buf":Ljava/lang/StringBuilder;
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_0

    aget-byte v5, p0, v3

    .line 201
    .local v5, "b":B
    new-array v4, v4, [Ljava/lang/Object;

    and-int/lit16 v6, v5, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v2

    const-string v6, "%02x:"

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .end local v5    # "b":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 203
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static parseMAC(Ljava/lang/String;)[B
    .locals 9
    .param p0, "value"    # Ljava/lang/String;

    .line 157
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    sparse-switch v0, :sswitch_data_0

    .line 169
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "value is not supported [MAC-48, EUI-48, EUI-64]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :sswitch_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 165
    .local v0, "separator":C
    invoke-static {v0}, Lio/netty/util/internal/MacAddressUtil;->validateMacSeparator(C)V

    .line 166
    const/16 v1, 0x8

    new-array v1, v1, [B

    .line 167
    .local v1, "machineId":[B
    goto :goto_0

    .line 159
    .end local v0    # "separator":C
    .end local v1    # "machineId":[B
    :sswitch_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 160
    .restart local v0    # "separator":C
    invoke-static {v0}, Lio/netty/util/internal/MacAddressUtil;->validateMacSeparator(C)V

    .line 161
    const/4 v1, 0x6

    new-array v1, v1, [B

    .line 162
    .restart local v1    # "machineId":[B
    nop

    .line 172
    :goto_0
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    .line 173
    .local v2, "end":I
    const/4 v3, 0x0

    .line 174
    .local v3, "j":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v2, :cond_1

    .line 175
    add-int/lit8 v5, v3, 0x2

    .line 176
    .local v5, "sIndex":I
    invoke-static {p0, v3}, Lio/netty/util/internal/StringUtil;->decodeHexByte(Ljava/lang/CharSequence;I)B

    move-result v6

    aput-byte v6, v1, v4

    .line 177
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v0, :cond_0

    .line 174
    .end local v5    # "sIndex":I
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x3

    goto :goto_1

    .line 178
    .restart local v5    # "sIndex":I
    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "expected separator \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " but got \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 179
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' at index: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 183
    .end local v4    # "i":I
    .end local v5    # "sIndex":I
    :cond_1
    invoke-static {p0, v3}, Lio/netty/util/internal/StringUtil;->decodeHexByte(Ljava/lang/CharSequence;I)B

    move-result v4

    aput-byte v4, v1, v2

    .line 185
    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_1
        0x17 -> :sswitch_0
    .end sparse-switch
.end method

.method private static scoreAddress(Ljava/net/InetAddress;)I
    .locals 1
    .param p0, "addr"    # Ljava/net/InetAddress;

    .line 261
    invoke-virtual {p0}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 264
    :cond_0
    invoke-virtual {p0}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 265
    const/4 v0, 0x1

    return v0

    .line 267
    :cond_1
    invoke-virtual {p0}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 268
    const/4 v0, 0x2

    return v0

    .line 270
    :cond_2
    invoke-virtual {p0}, Ljava/net/InetAddress;->isSiteLocalAddress()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 271
    const/4 v0, 0x3

    return v0

    .line 274
    :cond_3
    const/4 v0, 0x4

    return v0

    .line 262
    :cond_4
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private static validateMacSeparator(C)V
    .locals 3
    .param p0, "separator"    # C

    .line 189
    const/16 v0, 0x3a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2d

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 190
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported separator: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected: [:-])"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_1
    :goto_0
    return-void
.end method
