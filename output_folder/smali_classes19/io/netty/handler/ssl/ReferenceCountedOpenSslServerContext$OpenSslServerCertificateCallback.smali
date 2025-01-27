.class final Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext$OpenSslServerCertificateCallback;
.super Ljava/lang/Object;
.source "ReferenceCountedOpenSslServerContext.java"

# interfaces
.implements Lio/netty/internal/tcnative/CertificateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OpenSslServerCertificateCallback"
.end annotation


# instance fields
.field private final engineMap:Lio/netty/handler/ssl/OpenSslEngineMap;

.field private final keyManagerHolder:Lio/netty/handler/ssl/OpenSslKeyMaterialManager;


# direct methods
.method constructor <init>(Lio/netty/handler/ssl/OpenSslEngineMap;Lio/netty/handler/ssl/OpenSslKeyMaterialManager;)V
    .locals 0
    .param p1, "engineMap"    # Lio/netty/handler/ssl/OpenSslEngineMap;
    .param p2, "keyManagerHolder"    # Lio/netty/handler/ssl/OpenSslKeyMaterialManager;

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    iput-object p1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext$OpenSslServerCertificateCallback;->engineMap:Lio/netty/handler/ssl/OpenSslEngineMap;

    .line 209
    iput-object p2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext$OpenSslServerCertificateCallback;->keyManagerHolder:Lio/netty/handler/ssl/OpenSslKeyMaterialManager;

    .line 210
    return-void
.end method


# virtual methods
.method public handle(J[B[[B)V
    .locals 4
    .param p1, "ssl"    # J
    .param p3, "keyTypeBytes"    # [B
    .param p4, "asn1DerEncodedPrincipals"    # [[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 214
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext$OpenSslServerCertificateCallback;->engineMap:Lio/netty/handler/ssl/OpenSslEngineMap;

    invoke-interface {v0, p1, p2}, Lio/netty/handler/ssl/OpenSslEngineMap;->get(J)Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    move-result-object v0

    .line 215
    .local v0, "engine":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;
    if-nez v0, :cond_0

    .line 217
    return-void

    .line 222
    :cond_0
    :try_start_0
    iget-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext$OpenSslServerCertificateCallback;->keyManagerHolder:Lio/netty/handler/ssl/OpenSslKeyMaterialManager;

    invoke-virtual {v1, v0}, Lio/netty/handler/ssl/OpenSslKeyMaterialManager;->setKeyMaterialServerSide(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    goto :goto_0

    .line 223
    :catchall_0
    move-exception v1

    .line 224
    .local v1, "cause":Ljava/lang/Throwable;
    invoke-static {}, Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext;->access$000()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v2

    const-string v3, "Failed to set the server-side key material"

    invoke-interface {v2, v3, v1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 225
    invoke-virtual {v0, v1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->initHandshakeException(Ljava/lang/Throwable;)V

    .line 227
    .end local v1    # "cause":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method
