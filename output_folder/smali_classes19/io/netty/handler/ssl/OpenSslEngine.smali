.class public final Lio/netty/handler/ssl/OpenSslEngine;
.super Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;
.source "OpenSslEngine.java"


# direct methods
.method constructor <init>(Lio/netty/handler/ssl/OpenSslContext;Lio/netty/buffer/ByteBufAllocator;Ljava/lang/String;IZ)V
    .locals 7
    .param p1, "context"    # Lio/netty/handler/ssl/OpenSslContext;
    .param p2, "alloc"    # Lio/netty/buffer/ByteBufAllocator;
    .param p3, "peerHost"    # Ljava/lang/String;
    .param p4, "peerPort"    # I
    .param p5, "jdkCompatibilityMode"    # Z

    .line 32
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;-><init>(Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;Lio/netty/buffer/ByteBufAllocator;Ljava/lang/String;IZZ)V

    .line 33
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 38
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 39
    invoke-static {p0}, Lio/netty/handler/ssl/OpenSsl;->releaseIfNeeded(Lio/netty/util/ReferenceCounted;)V

    .line 40
    return-void
.end method
