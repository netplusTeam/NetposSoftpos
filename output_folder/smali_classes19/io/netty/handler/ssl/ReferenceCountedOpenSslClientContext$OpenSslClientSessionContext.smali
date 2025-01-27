.class final Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext$OpenSslClientSessionContext;
.super Lio/netty/handler/ssl/OpenSslSessionContext;
.source "ReferenceCountedOpenSslClientContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OpenSslClientSessionContext"
.end annotation


# direct methods
.method constructor <init>(Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;)V
    .locals 0
    .param p1, "context"    # Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;
    .param p2, "provider"    # Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;

    .line 190
    invoke-direct {p0, p1, p2}, Lio/netty/handler/ssl/OpenSslSessionContext;-><init>(Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;)V

    .line 191
    return-void
.end method


# virtual methods
.method public getSessionCacheSize()I
    .locals 1

    .line 214
    const/4 v0, 0x0

    return v0
.end method

.method public getSessionTimeout()I
    .locals 1

    .line 202
    const/4 v0, 0x0

    return v0
.end method

.method public isSessionCacheEnabled()Z
    .locals 1

    .line 224
    const/4 v0, 0x0

    return v0
.end method

.method public setSessionCacheEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 220
    return-void
.end method

.method public setSessionCacheSize(I)V
    .locals 1
    .param p1, "size"    # I

    .line 207
    if-ltz p1, :cond_0

    .line 210
    return-void

    .line 208
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public setSessionTimeout(I)V
    .locals 1
    .param p1, "seconds"    # I

    .line 195
    if-ltz p1, :cond_0

    .line 198
    return-void

    .line 196
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method
