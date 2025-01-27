.class final Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$PrivateKeyMethod;
.super Ljava/lang/Object;
.source "ReferenceCountedOpenSslContext.java"

# interfaces
.implements Lio/netty/internal/tcnative/SSLPrivateKeyMethod;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PrivateKeyMethod"
.end annotation


# instance fields
.field private final engineMap:Lio/netty/handler/ssl/OpenSslEngineMap;

.field private final keyMethod:Lio/netty/handler/ssl/OpenSslPrivateKeyMethod;


# direct methods
.method constructor <init>(Lio/netty/handler/ssl/OpenSslEngineMap;Lio/netty/handler/ssl/OpenSslPrivateKeyMethod;)V
    .locals 0
    .param p1, "engineMap"    # Lio/netty/handler/ssl/OpenSslEngineMap;
    .param p2, "keyMethod"    # Lio/netty/handler/ssl/OpenSslPrivateKeyMethod;

    .line 926
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 927
    iput-object p1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$PrivateKeyMethod;->engineMap:Lio/netty/handler/ssl/OpenSslEngineMap;

    .line 928
    iput-object p2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$PrivateKeyMethod;->keyMethod:Lio/netty/handler/ssl/OpenSslPrivateKeyMethod;

    .line 929
    return-void
.end method

.method private retrieveEngine(J)Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;
    .locals 4
    .param p1, "ssl"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 932
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$PrivateKeyMethod;->engineMap:Lio/netty/handler/ssl/OpenSslEngineMap;

    invoke-interface {v0, p1, p2}, Lio/netty/handler/ssl/OpenSslEngineMap;->get(J)Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    move-result-object v0

    .line 933
    .local v0, "engine":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;
    if-eqz v0, :cond_0

    .line 937
    return-object v0

    .line 934
    :cond_0
    new-instance v1, Ljavax/net/ssl/SSLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    .line 935
    invoke-static {v3}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for sslPointer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static verifyResult([B)[B
    .locals 1
    .param p0, "result"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 963
    if-eqz p0, :cond_0

    .line 966
    return-object p0

    .line 964
    :cond_0
    new-instance v0, Ljava/security/SignatureException;

    invoke-direct {v0}, Ljava/security/SignatureException;-><init>()V

    throw v0
.end method


# virtual methods
.method public decrypt(J[B)[B
    .locals 2
    .param p1, "ssl"    # J
    .param p3, "input"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 953
    invoke-direct {p0, p1, p2}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$PrivateKeyMethod;->retrieveEngine(J)Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    move-result-object v0

    .line 955
    .local v0, "engine":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;
    :try_start_0
    iget-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$PrivateKeyMethod;->keyMethod:Lio/netty/handler/ssl/OpenSslPrivateKeyMethod;

    invoke-interface {v1, v0, p3}, Lio/netty/handler/ssl/OpenSslPrivateKeyMethod;->decrypt(Ljavax/net/ssl/SSLEngine;[B)[B

    move-result-object v1

    invoke-static {v1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$PrivateKeyMethod;->verifyResult([B)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 956
    :catch_0
    move-exception v1

    .line 957
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v0, v1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->initHandshakeException(Ljava/lang/Throwable;)V

    .line 958
    throw v1
.end method

.method public sign(JI[B)[B
    .locals 2
    .param p1, "ssl"    # J
    .param p3, "signatureAlgorithm"    # I
    .param p4, "digest"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 942
    invoke-direct {p0, p1, p2}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$PrivateKeyMethod;->retrieveEngine(J)Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    move-result-object v0

    .line 944
    .local v0, "engine":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;
    :try_start_0
    iget-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$PrivateKeyMethod;->keyMethod:Lio/netty/handler/ssl/OpenSslPrivateKeyMethod;

    invoke-interface {v1, v0, p3, p4}, Lio/netty/handler/ssl/OpenSslPrivateKeyMethod;->sign(Ljavax/net/ssl/SSLEngine;I[B)[B

    move-result-object v1

    invoke-static {v1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$PrivateKeyMethod;->verifyResult([B)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 945
    :catch_0
    move-exception v1

    .line 946
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v0, v1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->initHandshakeException(Ljava/lang/Throwable;)V

    .line 947
    throw v1
.end method
