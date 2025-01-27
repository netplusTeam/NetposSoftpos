.class public final Lio/netty/resolver/HostsFileParser;
.super Ljava/lang/Object;
.source "HostsFileParser.java"


# static fields
.field private static final WHITESPACES:Ljava/util/regex/Pattern;

.field private static final WINDOWS_DEFAULT_SYSTEM_ROOT:Ljava/lang/String; = "C:\\Windows"

.field private static final WINDOWS_HOSTS_FILE_RELATIVE_PATH:Ljava/lang/String; = "\\system32\\drivers\\etc\\hosts"

.field private static final X_PLATFORMS_HOSTS_FILE_PATH:Ljava/lang/String; = "/etc/hosts"

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    const-string v0, "[ \t]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/netty/resolver/HostsFileParser;->WHITESPACES:Ljava/util/regex/Pattern;

    .line 53
    const-class v0, Lio/netty/resolver/HostsFileParser;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/resolver/HostsFileParser;->logger:Lio/netty/util/internal/logging/InternalLogger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    return-void
.end method

.method private static locateHostsFile()Ljava/io/File;
    .locals 3

    .line 57
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->isWindows()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SystemRoot"

    invoke-static {v2}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\\system32\\drivers\\etc\\hosts"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 59
    .local v0, "hostsFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 60
    new-instance v1, Ljava/io/File;

    const-string v2, "C:\\Windows\\system32\\drivers\\etc\\hosts"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    .line 63
    .end local v0    # "hostsFile":Ljava/io/File;
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/etc/hosts"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 65
    .restart local v0    # "hostsFile":Ljava/io/File;
    :cond_1
    :goto_0
    return-object v0
.end method

.method public static parse()Lio/netty/resolver/HostsFileEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    invoke-static {}, Lio/netty/resolver/HostsFileParser;->locateHostsFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lio/netty/resolver/HostsFileParser;->parse(Ljava/io/File;)Lio/netty/resolver/HostsFileEntries;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/io/File;)Lio/netty/resolver/HostsFileEntries;
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/nio/charset/Charset;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p0, v0}, Lio/netty/resolver/HostsFileParser;->parse(Ljava/io/File;[Ljava/nio/charset/Charset;)Lio/netty/resolver/HostsFileEntries;

    move-result-object v0

    return-object v0
.end method

.method public static varargs parse(Ljava/io/File;[Ljava/nio/charset/Charset;)Lio/netty/resolver/HostsFileEntries;
    .locals 6
    .param p0, "file"    # Ljava/io/File;
    .param p1, "charsets"    # [Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    const-string v0, "file"

    invoke-static {p0, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 127
    const-string v0, "charsets"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 128
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 130
    .local v2, "charset":Ljava/nio/charset/Charset;
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-static {v3}, Lio/netty/resolver/HostsFileParser;->parse(Ljava/io/Reader;)Lio/netty/resolver/HostsFileEntries;

    move-result-object v3

    .line 132
    .local v3, "entries":Lio/netty/resolver/HostsFileEntries;
    sget-object v4, Lio/netty/resolver/HostsFileEntries;->EMPTY:Lio/netty/resolver/HostsFileEntries;

    if-eq v3, v4, :cond_0

    .line 133
    return-object v3

    .line 129
    .end local v2    # "charset":Ljava/nio/charset/Charset;
    .end local v3    # "entries":Lio/netty/resolver/HostsFileEntries;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 137
    :cond_1
    sget-object v0, Lio/netty/resolver/HostsFileEntries;->EMPTY:Lio/netty/resolver/HostsFileEntries;

    return-object v0
.end method

.method public static parse(Ljava/io/Reader;)Lio/netty/resolver/HostsFileEntries;
    .locals 13
    .param p0, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    const-string v0, "Failed to close a reader"

    const-string v1, "reader"

    invoke-static {p0, v1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 149
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 151
    .local v1, "buff":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 152
    .local v2, "ipv4Entries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/net/Inet4Address;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 154
    .local v3, "ipv6Entries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/net/Inet6Address;>;"
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    .local v5, "line":Ljava/lang/String;
    if-eqz v4, :cond_a

    .line 156
    const/16 v4, 0x23

    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 157
    .local v4, "commentPosition":I
    const/4 v6, -0x1

    const/4 v7, 0x0

    if-eq v4, v6, :cond_0

    .line 158
    invoke-virtual {v5, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 161
    :cond_0
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 162
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 163
    goto :goto_0

    .line 167
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 168
    .local v6, "lineParts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v8, Lio/netty/resolver/HostsFileParser;->WHITESPACES:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v5}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    move v10, v7

    :goto_1
    if-ge v10, v9, :cond_3

    aget-object v11, v8, v10

    .line 169
    .local v11, "s":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_2

    .line 170
    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    .end local v11    # "s":Ljava/lang/String;
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 175
    :cond_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x2

    if-ge v8, v9, :cond_4

    .line 177
    goto :goto_0

    .line 180
    :cond_4
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Lio/netty/util/NetUtil;->createByteArrayFromIpAddressString(Ljava/lang/String;)[B

    move-result-object v7

    .line 182
    .local v7, "ipBytes":[B
    if-nez v7, :cond_5

    .line 184
    goto :goto_0

    .line 188
    :cond_5
    const/4 v8, 0x1

    .local v8, "i":I
    :goto_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_9

    .line 189
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 190
    .local v9, "hostname":Ljava/lang/String;
    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v9, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    .line 191
    .local v10, "hostnameLower":Ljava/lang/String;
    invoke-static {v9, v7}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;

    move-result-object v11

    .line 192
    .local v11, "address":Ljava/net/InetAddress;
    instance-of v12, v11, Ljava/net/Inet4Address;

    if-eqz v12, :cond_7

    .line 193
    move-object v12, v11

    check-cast v12, Ljava/net/Inet4Address;

    invoke-interface {v2, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/net/Inet4Address;

    .line 194
    .local v12, "previous":Ljava/net/Inet4Address;
    if-eqz v12, :cond_6

    .line 196
    invoke-interface {v2, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    .end local v12    # "previous":Ljava/net/Inet4Address;
    :cond_6
    goto :goto_3

    .line 199
    :cond_7
    move-object v12, v11

    check-cast v12, Ljava/net/Inet6Address;

    invoke-interface {v3, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/net/Inet6Address;

    .line 200
    .local v12, "previous":Ljava/net/Inet6Address;
    if-eqz v12, :cond_8

    .line 202
    invoke-interface {v3, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    .end local v9    # "hostname":Ljava/lang/String;
    .end local v10    # "hostnameLower":Ljava/lang/String;
    .end local v11    # "address":Ljava/net/InetAddress;
    .end local v12    # "previous":Ljava/net/Inet6Address;
    :cond_8
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 206
    .end local v4    # "commentPosition":I
    .end local v6    # "lineParts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "ipBytes":[B
    .end local v8    # "i":I
    :cond_9
    goto/16 :goto_0

    .line 207
    :cond_a
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_b

    sget-object v4, Lio/netty/resolver/HostsFileEntries;->EMPTY:Lio/netty/resolver/HostsFileEntries;

    goto :goto_4

    :cond_b
    new-instance v4, Lio/netty/resolver/HostsFileEntries;

    invoke-direct {v4, v2, v3}, Lio/netty/resolver/HostsFileEntries;-><init>(Ljava/util/Map;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    :goto_4
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 215
    goto :goto_5

    .line 213
    :catch_0
    move-exception v6

    .line 214
    .local v6, "e":Ljava/io/IOException;
    sget-object v7, Lio/netty/resolver/HostsFileParser;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v7, v0, v6}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 207
    .end local v6    # "e":Ljava/io/IOException;
    :goto_5
    return-object v4

    .line 211
    .end local v2    # "ipv4Entries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/net/Inet4Address;>;"
    .end local v3    # "ipv6Entries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/net/Inet6Address;>;"
    .end local v5    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v2

    .line 212
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 215
    goto :goto_6

    .line 213
    :catch_1
    move-exception v3

    .line 214
    .local v3, "e":Ljava/io/IOException;
    sget-object v4, Lio/netty/resolver/HostsFileParser;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v4, v0, v3}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 216
    .end local v3    # "e":Ljava/io/IOException;
    :goto_6
    throw v2
.end method

.method public static parseSilently()Lio/netty/resolver/HostsFileEntries;
    .locals 3

    .line 74
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/nio/charset/Charset;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lio/netty/resolver/HostsFileParser;->parseSilently([Ljava/nio/charset/Charset;)Lio/netty/resolver/HostsFileEntries;

    move-result-object v0

    return-object v0
.end method

.method public static varargs parseSilently([Ljava/nio/charset/Charset;)Lio/netty/resolver/HostsFileEntries;
    .locals 5
    .param p0, "charsets"    # [Ljava/nio/charset/Charset;

    .line 85
    invoke-static {}, Lio/netty/resolver/HostsFileParser;->locateHostsFile()Ljava/io/File;

    move-result-object v0

    .line 87
    .local v0, "hostsFile":Ljava/io/File;
    :try_start_0
    invoke-static {v0, p0}, Lio/netty/resolver/HostsFileParser;->parse(Ljava/io/File;[Ljava/nio/charset/Charset;)Lio/netty/resolver/HostsFileEntries;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 88
    :catch_0
    move-exception v1

    .line 89
    .local v1, "e":Ljava/io/IOException;
    sget-object v2, Lio/netty/resolver/HostsFileParser;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v2}, Lio/netty/util/internal/logging/InternalLogger;->isWarnEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 90
    sget-object v2, Lio/netty/resolver/HostsFileParser;->logger:Lio/netty/util/internal/logging/InternalLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to load and parse hosts file at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 92
    :cond_0
    sget-object v2, Lio/netty/resolver/HostsFileEntries;->EMPTY:Lio/netty/resolver/HostsFileEntries;

    return-object v2
.end method
