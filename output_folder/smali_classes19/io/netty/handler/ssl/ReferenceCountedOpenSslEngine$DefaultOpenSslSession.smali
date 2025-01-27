.class final Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;
.super Ljava/lang/Object;
.source "ReferenceCountedOpenSslEngine.java"

# interfaces
.implements Lio/netty/handler/ssl/OpenSslSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DefaultOpenSslSession"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private volatile applicationBufferSize:I

.field private cipher:Ljava/lang/String;

.field private creationTime:J

.field private id:[B

.field private peerCerts:[Ljava/security/cert/Certificate;

.field private protocol:Ljava/lang/String;

.field private final sessionContext:Lio/netty/handler/ssl/OpenSslSessionContext;

.field final synthetic this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

.field private values:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private x509PeerCerts:[Ljavax/security/cert/X509Certificate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2050
    const-class v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    return-void
.end method

.method constructor <init>(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;Lio/netty/handler/ssl/OpenSslSessionContext;)V
    .locals 0
    .param p2, "sessionContext"    # Lio/netty/handler/ssl/OpenSslSessionContext;

    .line 2067
    iput-object p1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2062
    sget p1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->MAX_PLAINTEXT_LENGTH:I

    iput p1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->applicationBufferSize:I

    .line 2068
    iput-object p2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->sessionContext:Lio/netty/handler/ssl/OpenSslSessionContext;

    .line 2069
    return-void
.end method

.method private initCerts([[BI)V
    .locals 5
    .param p1, "chain"    # [[B
    .param p2, "startPos"    # I

    .line 2258
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 2259
    add-int v1, p2, v0

    .line 2260
    .local v1, "certPos":I
    iget-object v2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->peerCerts:[Ljava/security/cert/Certificate;

    new-instance v3, Lio/netty/handler/ssl/OpenSslX509Certificate;

    aget-object v4, p1, v0

    invoke-direct {v3, v4}, Lio/netty/handler/ssl/OpenSslX509Certificate;-><init>([B)V

    aput-object v3, v2, v1

    .line 2261
    iget-object v2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->x509PeerCerts:[Ljavax/security/cert/X509Certificate;

    new-instance v3, Lio/netty/handler/ssl/OpenSslJavaxX509Certificate;

    aget-object v4, p1, v0

    invoke-direct {v3, v4}, Lio/netty/handler/ssl/OpenSslJavaxX509Certificate;-><init>([B)V

    aput-object v3, v2, v1

    .line 2258
    .end local v1    # "certPos":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2263
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private initPeerCerts()V
    .locals 6

    .line 2222
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    invoke-static {v0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->access$500(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lio/netty/internal/tcnative/SSL;->getPeerCertChain(J)[[B

    move-result-object v0

    .line 2223
    .local v0, "chain":[[B
    iget-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    invoke-static {v1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->access$200(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 2224
    invoke-static {v0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->access$1300([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2225
    sget-object v1, Lio/netty/util/internal/EmptyArrays;->EMPTY_CERTIFICATES:[Ljava/security/cert/Certificate;

    iput-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->peerCerts:[Ljava/security/cert/Certificate;

    .line 2226
    sget-object v1, Lio/netty/util/internal/EmptyArrays;->EMPTY_JAVAX_X509_CERTIFICATES:[Ljavax/security/cert/X509Certificate;

    iput-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->x509PeerCerts:[Ljavax/security/cert/X509Certificate;

    goto :goto_0

    .line 2228
    :cond_0
    array-length v1, v0

    new-array v1, v1, [Ljava/security/cert/Certificate;

    iput-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->peerCerts:[Ljava/security/cert/Certificate;

    .line 2229
    array-length v1, v0

    new-array v1, v1, [Ljavax/security/cert/X509Certificate;

    iput-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->x509PeerCerts:[Ljavax/security/cert/X509Certificate;

    .line 2230
    invoke-direct {p0, v0, v2}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->initCerts([[BI)V

    goto :goto_0

    .line 2238
    :cond_1
    iget-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    invoke-static {v1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->access$500(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;)J

    move-result-wide v3

    invoke-static {v3, v4}, Lio/netty/internal/tcnative/SSL;->getPeerCertificate(J)[B

    move-result-object v1

    .line 2239
    .local v1, "clientCert":[B
    invoke-static {v1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->access$1400([B)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2240
    sget-object v2, Lio/netty/util/internal/EmptyArrays;->EMPTY_CERTIFICATES:[Ljava/security/cert/Certificate;

    iput-object v2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->peerCerts:[Ljava/security/cert/Certificate;

    .line 2241
    sget-object v2, Lio/netty/util/internal/EmptyArrays;->EMPTY_JAVAX_X509_CERTIFICATES:[Ljavax/security/cert/X509Certificate;

    iput-object v2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->x509PeerCerts:[Ljavax/security/cert/X509Certificate;

    goto :goto_0

    .line 2243
    :cond_2
    invoke-static {v0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->access$1300([Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    .line 2244
    new-array v3, v4, [Ljava/security/cert/Certificate;

    new-instance v5, Lio/netty/handler/ssl/OpenSslX509Certificate;

    invoke-direct {v5, v1}, Lio/netty/handler/ssl/OpenSslX509Certificate;-><init>([B)V

    aput-object v5, v3, v2

    iput-object v3, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->peerCerts:[Ljava/security/cert/Certificate;

    .line 2245
    new-array v3, v4, [Ljavax/security/cert/X509Certificate;

    new-instance v4, Lio/netty/handler/ssl/OpenSslJavaxX509Certificate;

    invoke-direct {v4, v1}, Lio/netty/handler/ssl/OpenSslJavaxX509Certificate;-><init>([B)V

    aput-object v4, v3, v2

    iput-object v3, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->x509PeerCerts:[Ljavax/security/cert/X509Certificate;

    goto :goto_0

    .line 2247
    :cond_3
    array-length v3, v0

    add-int/2addr v3, v4

    new-array v3, v3, [Ljava/security/cert/Certificate;

    iput-object v3, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->peerCerts:[Ljava/security/cert/Certificate;

    .line 2248
    array-length v5, v0

    add-int/2addr v5, v4

    new-array v5, v5, [Ljavax/security/cert/X509Certificate;

    iput-object v5, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->x509PeerCerts:[Ljavax/security/cert/X509Certificate;

    .line 2249
    new-instance v5, Lio/netty/handler/ssl/OpenSslX509Certificate;

    invoke-direct {v5, v1}, Lio/netty/handler/ssl/OpenSslX509Certificate;-><init>([B)V

    aput-object v5, v3, v2

    .line 2250
    iget-object v3, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->x509PeerCerts:[Ljavax/security/cert/X509Certificate;

    new-instance v5, Lio/netty/handler/ssl/OpenSslJavaxX509Certificate;

    invoke-direct {v5, v1}, Lio/netty/handler/ssl/OpenSslJavaxX509Certificate;-><init>([B)V

    aput-object v5, v3, v2

    .line 2251
    invoke-direct {p0, v0, v4}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->initCerts([[BI)V

    .line 2255
    .end local v1    # "clientCert":[B
    :goto_0
    return-void
.end method

.method private newSSLSessionBindingEvent(Ljava/lang/String;)Ljavax/net/ssl/SSLSessionBindingEvent;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 2072
    new-instance v0, Ljavax/net/ssl/SSLSessionBindingEvent;

    iget-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    invoke-static {v1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->access$800(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;)Lio/netty/handler/ssl/OpenSslSession;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljavax/net/ssl/SSLSessionBindingEvent;-><init>(Ljavax/net/ssl/SSLSession;Ljava/lang/String;)V

    return-object v0
.end method

.method private notifyUnbound(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;

    .line 2187
    instance-of v0, p1, Ljavax/net/ssl/SSLSessionBindingListener;

    if-eqz v0, :cond_0

    .line 2189
    move-object v0, p1

    check-cast v0, Ljavax/net/ssl/SSLSessionBindingListener;

    invoke-direct {p0, p2}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->newSSLSessionBindingEvent(Ljava/lang/String;)Ljavax/net/ssl/SSLSessionBindingEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Ljavax/net/ssl/SSLSessionBindingListener;->valueUnbound(Ljavax/net/ssl/SSLSessionBindingEvent;)V

    .line 2191
    :cond_0
    return-void
.end method

.method private selectApplicationProtocol(Ljava/util/List;Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectedListenerFailureBehavior;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p2, "behavior"    # Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectedListenerFailureBehavior;
    .param p3, "applicationProtocol"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectedListenerFailureBehavior;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 2309
    .local p1, "protocols":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectedListenerFailureBehavior;->ACCEPT:Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectedListenerFailureBehavior;

    if-ne p2, v0, :cond_0

    .line 2310
    return-object p3

    .line 2312
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 2313
    .local v0, "size":I
    if-lez v0, :cond_3

    .line 2314
    invoke-interface {p1, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2315
    return-object p3

    .line 2317
    :cond_1
    sget-object v1, Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectedListenerFailureBehavior;->CHOOSE_MY_LAST_PROTOCOL:Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectedListenerFailureBehavior;

    if-ne p2, v1, :cond_2

    .line 2318
    add-int/lit8 v1, v0, -0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 2320
    :cond_2
    new-instance v1, Ljavax/net/ssl/SSLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown protocol "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2313
    :cond_3
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method private selectApplicationProtocol()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 2269
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    invoke-static {v0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->access$1500(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;)Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;->selectedListenerFailureBehavior()Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectedListenerFailureBehavior;

    move-result-object v0

    .line 2270
    .local v0, "behavior":Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectedListenerFailureBehavior;
    iget-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    invoke-static {v1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->access$1500(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;)Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;->protocols()Ljava/util/List;

    move-result-object v1

    .line 2272
    .local v1, "protocols":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v2, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$4;->$SwitchMap$io$netty$handler$ssl$ApplicationProtocolConfig$Protocol:[I

    iget-object v3, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    invoke-static {v3}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->access$1500(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;)Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;

    move-result-object v3

    invoke-interface {v3}, Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;->protocol()Lio/netty/handler/ssl/ApplicationProtocolConfig$Protocol;

    move-result-object v3

    invoke-virtual {v3}, Lio/netty/handler/ssl/ApplicationProtocolConfig$Protocol;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 2302
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2}, Ljava/lang/Error;-><init>()V

    throw v2

    .line 2292
    :pswitch_0
    iget-object v2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    invoke-static {v2}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->access$500(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lio/netty/internal/tcnative/SSL;->getAlpnSelected(J)Ljava/lang/String;

    move-result-object v2

    .line 2293
    .local v2, "applicationProtocol":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 2294
    iget-object v3, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    invoke-static {v3}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->access$500(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;)J

    move-result-wide v3

    invoke-static {v3, v4}, Lio/netty/internal/tcnative/SSL;->getNextProtoNegotiated(J)Ljava/lang/String;

    move-result-object v2

    .line 2296
    :cond_0
    if-eqz v2, :cond_1

    .line 2297
    iget-object v3, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    invoke-direct {p0, v1, v0, v2}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->selectApplicationProtocol(Ljava/util/List;Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectedListenerFailureBehavior;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->access$1602(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 2285
    .end local v2    # "applicationProtocol":Ljava/lang/String;
    :pswitch_1
    iget-object v2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    invoke-static {v2}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->access$500(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lio/netty/internal/tcnative/SSL;->getNextProtoNegotiated(J)Ljava/lang/String;

    move-result-object v2

    .line 2286
    .restart local v2    # "applicationProtocol":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 2287
    iget-object v3, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    invoke-direct {p0, v1, v0, v2}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->selectApplicationProtocol(Ljava/util/List;Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectedListenerFailureBehavior;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->access$1602(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 2278
    .end local v2    # "applicationProtocol":Ljava/lang/String;
    :pswitch_2
    iget-object v2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    invoke-static {v2}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->access$500(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lio/netty/internal/tcnative/SSL;->getAlpnSelected(J)Ljava/lang/String;

    move-result-object v2

    .line 2279
    .restart local v2    # "applicationProtocol":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 2280
    iget-object v3, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    invoke-direct {p0, v1, v0, v2}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->selectApplicationProtocol(Ljava/util/List;Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectedListenerFailureBehavior;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->access$1602(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 2274
    .end local v2    # "applicationProtocol":Ljava/lang/String;
    :pswitch_3
    nop

    .line 2304
    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getApplicationBufferSize()I
    .locals 1

    .line 2414
    iget v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->applicationBufferSize:I

    return v0
.end method

.method public getCipherSuite()Ljava/lang/String;
    .locals 2

    .line 2374
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    monitor-enter v0

    .line 2375
    :try_start_0
    iget-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->cipher:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2376
    const-string v1, "SSL_NULL_WITH_NULL_NULL"

    monitor-exit v0

    return-object v1

    .line 2378
    :cond_0
    monitor-exit v0

    return-object v1

    .line 2379
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCreationTime()J
    .locals 5

    .line 2092
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    monitor-enter v0

    .line 2093
    :try_start_0
    iget-wide v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->creationTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    invoke-static {v1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->access$400(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2094
    iget-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    invoke-static {v1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->access$500(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lio/netty/internal/tcnative/SSL;->getTime(J)J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    iput-wide v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->creationTime:J

    .line 2096
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2097
    iget-wide v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->creationTime:J

    return-wide v0

    .line 2096
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getId()[B
    .locals 2

    .line 2077
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    monitor-enter v0

    .line 2078
    :try_start_0
    iget-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->id:[B

    if-nez v1, :cond_0

    .line 2079
    sget-object v1, Lio/netty/util/internal/EmptyArrays;->EMPTY_BYTES:[B

    monitor-exit v0

    return-object v1

    .line 2081
    :cond_0
    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    monitor-exit v0

    return-object v1

    .line 2082
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getLastAccessedTime()J
    .locals 4

    .line 2102
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    invoke-static {v0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->access$900(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;)J

    move-result-wide v0

    .line 2104
    .local v0, "lastAccessed":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->getCreationTime()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    move-wide v2, v0

    :goto_0
    return-wide v2
.end method

.method public getLocalCertificates()[Ljava/security/cert/Certificate;
    .locals 2

    .line 2338
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    invoke-static {v0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->access$1700(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;)[Ljava/security/cert/Certificate;

    move-result-object v0

    .line 2339
    .local v0, "localCerts":[Ljava/security/cert/Certificate;
    if-nez v0, :cond_0

    .line 2340
    const/4 v1, 0x0

    return-object v1

    .line 2342
    :cond_0
    invoke-virtual {v0}, [Ljava/security/cert/Certificate;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/security/cert/Certificate;

    return-object v1
.end method

.method public getLocalPrincipal()Ljava/security/Principal;
    .locals 2

    .line 2365
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    invoke-static {v0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->access$1700(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;)[Ljava/security/cert/Certificate;

    move-result-object v0

    .line 2366
    .local v0, "local":[Ljava/security/cert/Certificate;
    if-eqz v0, :cond_1

    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_0

    .line 2369
    :cond_0
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    return-object v1

    .line 2367
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getPacketBufferSize()I
    .locals 1

    .line 2409
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    invoke-virtual {v0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->maxEncryptedPacketLength()I

    move-result v0

    return v0
.end method

.method public getPeerCertificateChain()[Ljavax/security/cert/X509Certificate;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 2347
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    monitor-enter v0

    .line 2348
    :try_start_0
    iget-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->x509PeerCerts:[Ljavax/security/cert/X509Certificate;

    invoke-static {v1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->access$1300([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2351
    iget-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->x509PeerCerts:[Ljavax/security/cert/X509Certificate;

    invoke-virtual {v1}, [Ljavax/security/cert/X509Certificate;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljavax/security/cert/X509Certificate;

    monitor-exit v0

    return-object v1

    .line 2349
    :cond_0
    new-instance v1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    const-string v2, "peer not verified"

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2352
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPeerCertificates()[Ljava/security/cert/Certificate;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 2328
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    monitor-enter v0

    .line 2329
    :try_start_0
    iget-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->peerCerts:[Ljava/security/cert/Certificate;

    invoke-static {v1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->access$1300([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2332
    iget-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->peerCerts:[Ljava/security/cert/Certificate;

    invoke-virtual {v1}, [Ljava/security/cert/Certificate;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/security/cert/Certificate;

    monitor-exit v0

    return-object v1

    .line 2330
    :cond_0
    new-instance v1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    const-string v2, "peer not verified"

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2333
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPeerHost()Ljava/lang/String;
    .locals 1

    .line 2399
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    invoke-virtual {v0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->getPeerHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPeerPort()I
    .locals 1

    .line 2404
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    invoke-virtual {v0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->getPeerPort()I

    move-result v0

    return v0
.end method

.method public getPeerPrincipal()Ljava/security/Principal;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 2357
    invoke-virtual {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    .line 2360
    .local v0, "peer":[Ljava/security/cert/Certificate;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    return-object v1
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 4

    .line 2384
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->protocol:Ljava/lang/String;

    .line 2385
    .local v0, "protocol":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 2386
    iget-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    monitor-enter v1

    .line 2387
    :try_start_0
    iget-object v2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    invoke-static {v2}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->access$400(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2388
    iget-object v2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    invoke-static {v2}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->access$500(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lio/netty/internal/tcnative/SSL;->getVersion(J)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 2390
    :cond_0
    const-string v2, ""

    move-object v0, v2

    .line 2392
    :goto_0
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2394
    :cond_1
    :goto_1
    return-object v0
.end method

.method public getSessionContext()Ljavax/net/ssl/SSLSessionContext;
    .locals 1

    .line 2087
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->sessionContext:Lio/netty/handler/ssl/OpenSslSessionContext;

    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 2150
    const-string v0, "name"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2151
    monitor-enter p0

    .line 2152
    :try_start_0
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->values:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 2153
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 2155
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 2156
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getValueNames()[Ljava/lang/String;
    .locals 3

    .line 2177
    monitor-enter p0

    .line 2178
    :try_start_0
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->values:Ljava/util/Map;

    .line 2179
    .local v0, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2182
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    monitor-exit p0

    return-object v1

    .line 2180
    :cond_1
    :goto_0
    sget-object v1, Lio/netty/util/internal/EmptyArrays;->EMPTY_STRINGS:[Ljava/lang/String;

    monitor-exit p0

    return-object v1

    .line 2183
    .end local v0    # "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public handshakeFinished()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 2199
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    monitor-enter v0

    .line 2200
    :try_start_0
    iget-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    invoke-static {v1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->access$400(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2201
    iget-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    invoke-static {v1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->access$500(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lio/netty/internal/tcnative/SSL;->getSessionId(J)[B

    move-result-object v1

    iput-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->id:[B

    .line 2202
    iget-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    invoke-static {v1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->access$500(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lio/netty/internal/tcnative/SSL;->getCipherForSSL(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->access$1000(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->cipher:Ljava/lang/String;

    .line 2203
    iget-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    invoke-static {v1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->access$500(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lio/netty/internal/tcnative/SSL;->getVersion(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->protocol:Ljava/lang/String;

    .line 2205
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->initPeerCerts()V

    .line 2206
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->selectApplicationProtocol()V

    .line 2207
    iget-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    invoke-static {v1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->access$1100(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;)V

    .line 2209
    iget-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    sget-object v2, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;->FINISHED:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    invoke-static {v1, v2}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->access$1202(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;)Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    .line 2213
    monitor-exit v0

    .line 2214
    return-void

    .line 2211
    :cond_0
    new-instance v1, Ljavax/net/ssl/SSLException;

    const-string v2, "Already closed"

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2213
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public invalidate()V
    .locals 5

    .line 2109
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    monitor-enter v0

    .line 2110
    :try_start_0
    iget-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    invoke-static {v1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->access$400(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2111
    iget-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    invoke-static {v1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->access$500(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    invoke-static {v1, v2, v3, v4}, Lio/netty/internal/tcnative/SSL;->setTimeout(JJ)J

    .line 2113
    :cond_0
    monitor-exit v0

    .line 2114
    return-void

    .line 2113
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isValid()Z
    .locals 9

    .line 2118
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    monitor-enter v0

    .line 2119
    :try_start_0
    iget-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    invoke-static {v1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->access$400(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 2120
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    invoke-static {v1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->access$500(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;)J

    move-result-wide v5

    invoke-static {v5, v6}, Lio/netty/internal/tcnative/SSL;->getTimeout(J)J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    sub-long/2addr v3, v5

    iget-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    invoke-static {v1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->access$500(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;)J

    move-result-wide v5

    invoke-static {v5, v6}, Lio/netty/internal/tcnative/SSL;->getTime(J)J

    move-result-wide v5

    mul-long/2addr v5, v7

    cmp-long v1, v3, v5

    if-gez v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    monitor-exit v0

    return v2

    .line 2122
    :cond_1
    monitor-exit v0

    .line 2123
    return v2

    .line 2122
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public putValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 2128
    const-string v0, "name"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2129
    const-string v0, "value"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2132
    monitor-enter p0

    .line 2133
    :try_start_0
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->values:Ljava/util/Map;

    .line 2134
    .local v0, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v0, :cond_0

    .line 2136
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->values:Ljava/util/Map;

    move-object v0, v1

    .line 2138
    :cond_0
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .line 2139
    .local v0, "old":Ljava/lang/Object;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2141
    instance-of v1, p2, Ljavax/net/ssl/SSLSessionBindingListener;

    if-eqz v1, :cond_1

    .line 2143
    move-object v1, p2

    check-cast v1, Ljavax/net/ssl/SSLSessionBindingListener;

    invoke-direct {p0, p1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->newSSLSessionBindingEvent(Ljava/lang/String;)Ljavax/net/ssl/SSLSessionBindingEvent;

    move-result-object v2

    invoke-interface {v1, v2}, Ljavax/net/ssl/SSLSessionBindingListener;->valueBound(Ljavax/net/ssl/SSLSessionBindingEvent;)V

    .line 2145
    :cond_1
    invoke-direct {p0, v0, p1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->notifyUnbound(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2146
    return-void

    .line 2139
    .end local v0    # "old":Ljava/lang/Object;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public removeValue(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 2161
    const-string v0, "name"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2164
    monitor-enter p0

    .line 2165
    :try_start_0
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->values:Ljava/util/Map;

    .line 2166
    .local v0, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v0, :cond_0

    .line 2167
    monitor-exit p0

    return-void

    .line 2169
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .line 2170
    .local v0, "old":Ljava/lang/Object;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2172
    invoke-direct {p0, v0, p1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->notifyUnbound(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2173
    return-void

    .line 2170
    .end local v0    # "old":Ljava/lang/Object;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public tryExpandApplicationBufferSize(I)V
    .locals 2
    .param p1, "packetLengthDataOnly"    # I

    .line 2419
    sget v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->MAX_PLAINTEXT_LENGTH:I

    if-le p1, v0, :cond_0

    iget v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->applicationBufferSize:I

    invoke-static {}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->access$1800()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 2420
    invoke-static {}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->access$1800()I

    move-result v0

    iput v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->applicationBufferSize:I

    .line 2422
    :cond_0
    return-void
.end method
