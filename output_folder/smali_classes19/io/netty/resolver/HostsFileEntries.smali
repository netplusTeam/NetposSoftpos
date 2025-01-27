.class public final Lio/netty/resolver/HostsFileEntries;
.super Ljava/lang/Object;
.source "HostsFileEntries.java"


# static fields
.field static final EMPTY:Lio/netty/resolver/HostsFileEntries;


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
.method static constructor <clinit>()V
    .locals 3

    .line 32
    new-instance v0, Lio/netty/resolver/HostsFileEntries;

    .line 34
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    .line 35
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lio/netty/resolver/HostsFileEntries;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    sput-object v0, Lio/netty/resolver/HostsFileEntries;->EMPTY:Lio/netty/resolver/HostsFileEntries;

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/net/Inet4Address;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/net/Inet6Address;",
            ">;)V"
        }
    .end annotation

    .line 40
    .local p1, "inet4Entries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/net/Inet4Address;>;"
    .local p2, "inet6Entries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/net/Inet6Address;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lio/netty/resolver/HostsFileEntries;->inet4Entries:Ljava/util/Map;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lio/netty/resolver/HostsFileEntries;->inet6Entries:Ljava/util/Map;

    .line 43
    return-void
.end method


# virtual methods
.method public inet4Entries()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/net/Inet4Address;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lio/netty/resolver/HostsFileEntries;->inet4Entries:Ljava/util/Map;

    return-object v0
.end method

.method public inet6Entries()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/net/Inet6Address;",
            ">;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lio/netty/resolver/HostsFileEntries;->inet6Entries:Ljava/util/Map;

    return-object v0
.end method
