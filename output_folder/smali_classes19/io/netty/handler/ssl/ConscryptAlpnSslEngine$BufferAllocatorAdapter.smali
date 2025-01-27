.class final Lio/netty/handler/ssl/ConscryptAlpnSslEngine$BufferAllocatorAdapter;
.super Lorg/conscrypt/BufferAllocator;
.source "ConscryptAlpnSslEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/ssl/ConscryptAlpnSslEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BufferAllocatorAdapter"
.end annotation


# instance fields
.field private final alloc:Lio/netty/buffer/ByteBufAllocator;


# direct methods
.method constructor <init>(Lio/netty/buffer/ByteBufAllocator;)V
    .locals 0
    .param p1, "alloc"    # Lio/netty/buffer/ByteBufAllocator;

    .line 160
    invoke-direct {p0}, Lorg/conscrypt/BufferAllocator;-><init>()V

    .line 161
    iput-object p1, p0, Lio/netty/handler/ssl/ConscryptAlpnSslEngine$BufferAllocatorAdapter;->alloc:Lio/netty/buffer/ByteBufAllocator;

    .line 162
    return-void
.end method


# virtual methods
.method public allocateDirectBuffer(I)Lorg/conscrypt/AllocatedBuffer;
    .locals 2
    .param p1, "capacity"    # I

    .line 166
    new-instance v0, Lio/netty/handler/ssl/ConscryptAlpnSslEngine$BufferAdapter;

    iget-object v1, p0, Lio/netty/handler/ssl/ConscryptAlpnSslEngine$BufferAllocatorAdapter;->alloc:Lio/netty/buffer/ByteBufAllocator;

    invoke-interface {v1, p1}, Lio/netty/buffer/ByteBufAllocator;->directBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/netty/handler/ssl/ConscryptAlpnSslEngine$BufferAdapter;-><init>(Lio/netty/buffer/ByteBuf;)V

    return-object v0
.end method
