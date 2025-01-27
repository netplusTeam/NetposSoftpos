.class public final Lio/netty/resolver/DefaultHostsFileEntriesResolver;
.super Ljava/lang/Object;
.source "DefaultHostsFileEntriesResolver.java"

# interfaces
.implements Lio/netty/resolver/HostsFileEntriesResolver;


# instance fields
.field private final inet4Entries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/net/Inet4Address;",
            ">;"
        }
    .end annotation
.end field

.field private final inet6Entries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/net/Inet6Address;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-static {}, Lio/netty/resolver/DefaultHostsFileEntriesResolver;->parseEntries()Lio/netty/resolver/HostsFileEntries;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/netty/resolver/DefaultHostsFileEntriesResolver;-><init>(Lio/netty/resolver/HostsFileEntries;)V

    .line 38
    return-void
.end method

.method constructor <init>(Lio/netty/resolver/HostsFileEntries;)V
    .locals 1
    .param p1, "entries"    # Lio/netty/resolver/HostsFileEntries;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-virtual {p1}, Lio/netty/resolver/HostsFileEntries;->inet4Entries()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lio/netty/resolver/DefaultHostsFileEntriesResolver;->inet4Entries:Ljava/util/Map;

    .line 43
    invoke-virtual {p1}, Lio/netty/resolver/HostsFileEntries;->inet6Entries()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lio/netty/resolver/DefaultHostsFileEntriesResolver;->inet6Entries:Ljava/util/Map;

    .line 44
    return-void
.end method

.method private static parseEntries()Lio/netty/resolver/HostsFileEntries;
    .locals 3

    .line 71
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->isWindows()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/nio/charset/Charset;

    const/4 v1, 0x0

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lio/netty/util/CharsetUtil;->UTF_16:Ljava/nio/charset/Charset;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lio/netty/util/CharsetUtil;->UTF_8:Ljava/nio/charset/Charset;

    aput-object v2, v0, v1

    invoke-static {v0}, Lio/netty/resolver/HostsFileParser;->parseSilently([Ljava/nio/charset/Charset;)Lio/netty/resolver/HostsFileEntries;

    move-result-object v0

    return-object v0

    .line 77
    :cond_0
    invoke-static {}, Lio/netty/resolver/HostsFileParser;->parseSilently()Lio/netty/resolver/HostsFileEntries;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public address(Ljava/lang/String;Lio/netty/resolver/ResolvedAddressTypes;)Ljava/net/InetAddress;
    .locals 4
    .param p1, "inetHost"    # Ljava/lang/String;
    .param p2, "resolvedAddressTypes"    # Lio/netty/resolver/ResolvedAddressTypes;

    .line 48
    invoke-virtual {p0, p1}, Lio/netty/resolver/DefaultHostsFileEntriesResolver;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "normalized":Ljava/lang/String;
    sget-object v1, Lio/netty/resolver/DefaultHostsFileEntriesResolver$1;->$SwitchMap$io$netty$resolver$ResolvedAddressTypes:[I

    invoke-virtual {p2}, Lio/netty/resolver/ResolvedAddressTypes;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 61
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown ResolvedAddressTypes "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 58
    :pswitch_0
    iget-object v1, p0, Lio/netty/resolver/DefaultHostsFileEntriesResolver;->inet6Entries:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/Inet6Address;

    .line 59
    .local v1, "inet6Address":Ljava/net/Inet6Address;
    if-eqz v1, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lio/netty/resolver/DefaultHostsFileEntriesResolver;->inet4Entries:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    :goto_0
    return-object v2

    .line 55
    .end local v1    # "inet6Address":Ljava/net/Inet6Address;
    :pswitch_1
    iget-object v1, p0, Lio/netty/resolver/DefaultHostsFileEntriesResolver;->inet4Entries:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/Inet4Address;

    .line 56
    .local v1, "inet4Address":Ljava/net/Inet4Address;
    if-eqz v1, :cond_1

    move-object v2, v1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lio/netty/resolver/DefaultHostsFileEntriesResolver;->inet6Entries:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    :goto_1
    return-object v2

    .line 53
    .end local v1    # "inet4Address":Ljava/net/Inet4Address;
    :pswitch_2
    iget-object v1, p0, Lio/netty/resolver/DefaultHostsFileEntriesResolver;->inet6Entries:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    return-object v1

    .line 51
    :pswitch_3
    iget-object v1, p0, Lio/netty/resolver/DefaultHostsFileEntriesResolver;->inet4Entries:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "inetHost"    # Ljava/lang/String;

    .line 67
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
