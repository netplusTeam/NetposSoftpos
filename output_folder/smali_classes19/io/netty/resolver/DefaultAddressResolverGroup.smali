.class public final Lio/netty/resolver/DefaultAddressResolverGroup;
.super Lio/netty/resolver/AddressResolverGroup;
.source "DefaultAddressResolverGroup.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/resolver/AddressResolverGroup<",
        "Ljava/net/InetSocketAddress;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lio/netty/resolver/DefaultAddressResolverGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lio/netty/resolver/DefaultAddressResolverGroup;

    invoke-direct {v0}, Lio/netty/resolver/DefaultAddressResolverGroup;-><init>()V

    sput-object v0, Lio/netty/resolver/DefaultAddressResolverGroup;->INSTANCE:Lio/netty/resolver/DefaultAddressResolverGroup;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lio/netty/resolver/AddressResolverGroup;-><init>()V

    return-void
.end method


# virtual methods
.method protected newResolver(Lio/netty/util/concurrent/EventExecutor;)Lio/netty/resolver/AddressResolver;
    .locals 1
    .param p1, "executor"    # Lio/netty/util/concurrent/EventExecutor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/EventExecutor;",
            ")",
            "Lio/netty/resolver/AddressResolver<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 34
    new-instance v0, Lio/netty/resolver/DefaultNameResolver;

    invoke-direct {v0, p1}, Lio/netty/resolver/DefaultNameResolver;-><init>(Lio/netty/util/concurrent/EventExecutor;)V

    invoke-virtual {v0}, Lio/netty/resolver/DefaultNameResolver;->asAddressResolver()Lio/netty/resolver/AddressResolver;

    move-result-object v0

    return-object v0
.end method
