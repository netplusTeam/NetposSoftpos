.class Lio/netty/handler/ssl/JdkBaseApplicationProtocolNegotiator;
.super Ljava/lang/Object;
.source "JdkBaseApplicationProtocolNegotiator.java"

# interfaces
.implements Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/ssl/JdkBaseApplicationProtocolNegotiator$FailProtocolSelectionListener;,
        Lio/netty/handler/ssl/JdkBaseApplicationProtocolNegotiator$NoFailProtocolSelectionListener;,
        Lio/netty/handler/ssl/JdkBaseApplicationProtocolNegotiator$FailProtocolSelector;,
        Lio/netty/handler/ssl/JdkBaseApplicationProtocolNegotiator$NoFailProtocolSelector;
    }
.end annotation


# static fields
.field static final FAIL_SELECTION_LISTENER_FACTORY:Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelectionListenerFactory;

.field static final FAIL_SELECTOR_FACTORY:Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelectorFactory;

.field static final NO_FAIL_SELECTION_LISTENER_FACTORY:Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelectionListenerFactory;

.field static final NO_FAIL_SELECTOR_FACTORY:Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelectorFactory;


# instance fields
.field private final listenerFactory:Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelectionListenerFactory;

.field private final protocols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final selectorFactory:Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelectorFactory;

.field private final wrapperFactory:Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$SslEngineWrapperFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 99
    new-instance v0, Lio/netty/handler/ssl/JdkBaseApplicationProtocolNegotiator$1;

    invoke-direct {v0}, Lio/netty/handler/ssl/JdkBaseApplicationProtocolNegotiator$1;-><init>()V

    sput-object v0, Lio/netty/handler/ssl/JdkBaseApplicationProtocolNegotiator;->FAIL_SELECTOR_FACTORY:Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelectorFactory;

    .line 106
    new-instance v0, Lio/netty/handler/ssl/JdkBaseApplicationProtocolNegotiator$2;

    invoke-direct {v0}, Lio/netty/handler/ssl/JdkBaseApplicationProtocolNegotiator$2;-><init>()V

    sput-object v0, Lio/netty/handler/ssl/JdkBaseApplicationProtocolNegotiator;->NO_FAIL_SELECTOR_FACTORY:Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelectorFactory;

    .line 113
    new-instance v0, Lio/netty/handler/ssl/JdkBaseApplicationProtocolNegotiator$3;

    invoke-direct {v0}, Lio/netty/handler/ssl/JdkBaseApplicationProtocolNegotiator$3;-><init>()V

    sput-object v0, Lio/netty/handler/ssl/JdkBaseApplicationProtocolNegotiator;->FAIL_SELECTION_LISTENER_FACTORY:Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelectionListenerFactory;

    .line 121
    new-instance v0, Lio/netty/handler/ssl/JdkBaseApplicationProtocolNegotiator$4;

    invoke-direct {v0}, Lio/netty/handler/ssl/JdkBaseApplicationProtocolNegotiator$4;-><init>()V

    sput-object v0, Lio/netty/handler/ssl/JdkBaseApplicationProtocolNegotiator;->NO_FAIL_SELECTION_LISTENER_FACTORY:Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelectionListenerFactory;

    return-void
.end method

.method constructor <init>(Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$SslEngineWrapperFactory;Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelectorFactory;Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelectionListenerFactory;Ljava/lang/Iterable;)V
    .locals 1
    .param p1, "wrapperFactory"    # Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$SslEngineWrapperFactory;
    .param p2, "selectorFactory"    # Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelectorFactory;
    .param p3, "listenerFactory"    # Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelectionListenerFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$SslEngineWrapperFactory;",
            "Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelectorFactory;",
            "Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelectionListenerFactory;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 47
    .local p4, "protocols":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-static {p4}, Lio/netty/handler/ssl/ApplicationProtocolUtil;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lio/netty/handler/ssl/JdkBaseApplicationProtocolNegotiator;-><init>(Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$SslEngineWrapperFactory;Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelectorFactory;Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelectionListenerFactory;Ljava/util/List;)V

    .line 48
    return-void
.end method

.method private constructor <init>(Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$SslEngineWrapperFactory;Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelectorFactory;Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelectionListenerFactory;Ljava/util/List;)V
    .locals 1
    .param p1, "wrapperFactory"    # Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$SslEngineWrapperFactory;
    .param p2, "selectorFactory"    # Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelectorFactory;
    .param p3, "listenerFactory"    # Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelectionListenerFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$SslEngineWrapperFactory;",
            "Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelectorFactory;",
            "Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelectionListenerFactory;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 72
    .local p4, "protocols":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const-string v0, "wrapperFactory"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$SslEngineWrapperFactory;

    iput-object v0, p0, Lio/netty/handler/ssl/JdkBaseApplicationProtocolNegotiator;->wrapperFactory:Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$SslEngineWrapperFactory;

    .line 74
    const-string v0, "selectorFactory"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelectorFactory;

    iput-object v0, p0, Lio/netty/handler/ssl/JdkBaseApplicationProtocolNegotiator;->selectorFactory:Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelectorFactory;

    .line 75
    const-string v0, "listenerFactory"

    invoke-static {p3, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelectionListenerFactory;

    iput-object v0, p0, Lio/netty/handler/ssl/JdkBaseApplicationProtocolNegotiator;->listenerFactory:Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelectionListenerFactory;

    .line 76
    const-string v0, "protocols"

    invoke-static {p4, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/ssl/JdkBaseApplicationProtocolNegotiator;->protocols:Ljava/util/List;

    .line 77
    return-void
.end method

.method varargs constructor <init>(Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$SslEngineWrapperFactory;Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelectorFactory;Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelectionListenerFactory;[Ljava/lang/String;)V
    .locals 1
    .param p1, "wrapperFactory"    # Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$SslEngineWrapperFactory;
    .param p2, "selectorFactory"    # Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelectorFactory;
    .param p3, "listenerFactory"    # Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelectionListenerFactory;
    .param p4, "protocols"    # [Ljava/lang/String;

    .line 60
    invoke-static {p4}, Lio/netty/handler/ssl/ApplicationProtocolUtil;->toList([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lio/netty/handler/ssl/JdkBaseApplicationProtocolNegotiator;-><init>(Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$SslEngineWrapperFactory;Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelectorFactory;Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelectionListenerFactory;Ljava/util/List;)V

    .line 61
    return-void
.end method


# virtual methods
.method public protocolListenerFactory()Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelectionListenerFactory;
    .locals 1

    .line 91
    iget-object v0, p0, Lio/netty/handler/ssl/JdkBaseApplicationProtocolNegotiator;->listenerFactory:Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelectionListenerFactory;

    return-object v0
.end method

.method public protocolSelectorFactory()Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelectorFactory;
    .locals 1

    .line 86
    iget-object v0, p0, Lio/netty/handler/ssl/JdkBaseApplicationProtocolNegotiator;->selectorFactory:Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelectorFactory;

    return-object v0
.end method

.method public protocols()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lio/netty/handler/ssl/JdkBaseApplicationProtocolNegotiator;->protocols:Ljava/util/List;

    return-object v0
.end method

.method public wrapperFactory()Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$SslEngineWrapperFactory;
    .locals 1

    .line 96
    iget-object v0, p0, Lio/netty/handler/ssl/JdkBaseApplicationProtocolNegotiator;->wrapperFactory:Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$SslEngineWrapperFactory;

    return-object v0
.end method
