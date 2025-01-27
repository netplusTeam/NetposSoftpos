.class public Lio/netty/channel/DefaultAddressedEnvelope;
.super Ljava/lang/Object;
.source "DefaultAddressedEnvelope.java"

# interfaces
.implements Lio/netty/channel/AddressedEnvelope;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Ljava/lang/Object;",
        "A:",
        "Ljava/net/SocketAddress;",
        ">",
        "Ljava/lang/Object;",
        "Lio/netty/channel/AddressedEnvelope<",
        "TM;TA;>;"
    }
.end annotation


# instance fields
.field private final message:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TM;"
        }
    .end annotation
.end field

.field private final recipient:Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field private final sender:Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/net/SocketAddress;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;TA;)V"
        }
    .end annotation

    .line 58
    .local p0, "this":Lio/netty/channel/DefaultAddressedEnvelope;, "Lio/netty/channel/DefaultAddressedEnvelope<TM;TA;>;"
    .local p1, "message":Ljava/lang/Object;, "TM;"
    .local p2, "recipient":Ljava/net/SocketAddress;, "TA;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lio/netty/channel/DefaultAddressedEnvelope;-><init>(Ljava/lang/Object;Ljava/net/SocketAddress;Ljava/net/SocketAddress;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/net/SocketAddress;Ljava/net/SocketAddress;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;TA;TA;)V"
        }
    .end annotation

    .line 42
    .local p0, "this":Lio/netty/channel/DefaultAddressedEnvelope;, "Lio/netty/channel/DefaultAddressedEnvelope<TM;TA;>;"
    .local p1, "message":Ljava/lang/Object;, "TM;"
    .local p2, "recipient":Ljava/net/SocketAddress;, "TA;"
    .local p3, "sender":Ljava/net/SocketAddress;, "TA;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, "message"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 44
    if-nez p2, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    .line 45
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "recipient and sender"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_1
    :goto_0
    iput-object p1, p0, Lio/netty/channel/DefaultAddressedEnvelope;->message:Ljava/lang/Object;

    .line 49
    iput-object p3, p0, Lio/netty/channel/DefaultAddressedEnvelope;->sender:Ljava/net/SocketAddress;

    .line 50
    iput-object p2, p0, Lio/netty/channel/DefaultAddressedEnvelope;->recipient:Ljava/net/SocketAddress;

    .line 51
    return-void
.end method


# virtual methods
.method public content()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    .line 63
    .local p0, "this":Lio/netty/channel/DefaultAddressedEnvelope;, "Lio/netty/channel/DefaultAddressedEnvelope<TM;TA;>;"
    iget-object v0, p0, Lio/netty/channel/DefaultAddressedEnvelope;->message:Ljava/lang/Object;

    return-object v0
.end method

.method public recipient()Ljava/net/SocketAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 73
    .local p0, "this":Lio/netty/channel/DefaultAddressedEnvelope;, "Lio/netty/channel/DefaultAddressedEnvelope<TM;TA;>;"
    iget-object v0, p0, Lio/netty/channel/DefaultAddressedEnvelope;->recipient:Ljava/net/SocketAddress;

    return-object v0
.end method

.method public refCnt()I
    .locals 2

    .line 78
    .local p0, "this":Lio/netty/channel/DefaultAddressedEnvelope;, "Lio/netty/channel/DefaultAddressedEnvelope<TM;TA;>;"
    iget-object v0, p0, Lio/netty/channel/DefaultAddressedEnvelope;->message:Ljava/lang/Object;

    instance-of v1, v0, Lio/netty/util/ReferenceCounted;

    if-eqz v1, :cond_0

    .line 79
    check-cast v0, Lio/netty/util/ReferenceCounted;

    invoke-interface {v0}, Lio/netty/util/ReferenceCounted;->refCnt()I

    move-result v0

    return v0

    .line 81
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public release()Z
    .locals 1

    .line 99
    .local p0, "this":Lio/netty/channel/DefaultAddressedEnvelope;, "Lio/netty/channel/DefaultAddressedEnvelope<TM;TA;>;"
    iget-object v0, p0, Lio/netty/channel/DefaultAddressedEnvelope;->message:Ljava/lang/Object;

    invoke-static {v0}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public release(I)Z
    .locals 1
    .param p1, "decrement"    # I

    .line 104
    .local p0, "this":Lio/netty/channel/DefaultAddressedEnvelope;, "Lio/netty/channel/DefaultAddressedEnvelope<TM;TA;>;"
    iget-object v0, p0, Lio/netty/channel/DefaultAddressedEnvelope;->message:Ljava/lang/Object;

    invoke-static {v0, p1}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;I)Z

    move-result v0

    return v0
.end method

.method public retain()Lio/netty/channel/AddressedEnvelope;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/channel/AddressedEnvelope<",
            "TM;TA;>;"
        }
    .end annotation

    .line 87
    .local p0, "this":Lio/netty/channel/DefaultAddressedEnvelope;, "Lio/netty/channel/DefaultAddressedEnvelope<TM;TA;>;"
    iget-object v0, p0, Lio/netty/channel/DefaultAddressedEnvelope;->message:Ljava/lang/Object;

    invoke-static {v0}, Lio/netty/util/ReferenceCountUtil;->retain(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    return-object p0
.end method

.method public retain(I)Lio/netty/channel/AddressedEnvelope;
    .locals 1
    .param p1, "increment"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/netty/channel/AddressedEnvelope<",
            "TM;TA;>;"
        }
    .end annotation

    .line 93
    .local p0, "this":Lio/netty/channel/DefaultAddressedEnvelope;, "Lio/netty/channel/DefaultAddressedEnvelope<TM;TA;>;"
    iget-object v0, p0, Lio/netty/channel/DefaultAddressedEnvelope;->message:Ljava/lang/Object;

    invoke-static {v0, p1}, Lio/netty/util/ReferenceCountUtil;->retain(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 94
    return-object p0
.end method

.method public bridge synthetic retain()Lio/netty/util/ReferenceCounted;
    .locals 1

    .line 32
    .local p0, "this":Lio/netty/channel/DefaultAddressedEnvelope;, "Lio/netty/channel/DefaultAddressedEnvelope<TM;TA;>;"
    invoke-virtual {p0}, Lio/netty/channel/DefaultAddressedEnvelope;->retain()Lio/netty/channel/AddressedEnvelope;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/util/ReferenceCounted;
    .locals 0

    .line 32
    .local p0, "this":Lio/netty/channel/DefaultAddressedEnvelope;, "Lio/netty/channel/DefaultAddressedEnvelope<TM;TA;>;"
    invoke-virtual {p0, p1}, Lio/netty/channel/DefaultAddressedEnvelope;->retain(I)Lio/netty/channel/AddressedEnvelope;

    move-result-object p1

    return-object p1
.end method

.method public sender()Ljava/net/SocketAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 68
    .local p0, "this":Lio/netty/channel/DefaultAddressedEnvelope;, "Lio/netty/channel/DefaultAddressedEnvelope<TM;TA;>;"
    iget-object v0, p0, Lio/netty/channel/DefaultAddressedEnvelope;->sender:Ljava/net/SocketAddress;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 121
    .local p0, "this":Lio/netty/channel/DefaultAddressedEnvelope;, "Lio/netty/channel/DefaultAddressedEnvelope<TM;TA;>;"
    iget-object v0, p0, Lio/netty/channel/DefaultAddressedEnvelope;->sender:Ljava/net/SocketAddress;

    const/16 v1, 0x29

    const-string v2, ", "

    if-eqz v0, :cond_0

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0x28

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lio/netty/channel/DefaultAddressedEnvelope;->sender:Ljava/net/SocketAddress;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " => "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lio/netty/channel/DefaultAddressedEnvelope;->recipient:Ljava/net/SocketAddress;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lio/netty/channel/DefaultAddressedEnvelope;->message:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 125
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "(=> "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lio/netty/channel/DefaultAddressedEnvelope;->recipient:Ljava/net/SocketAddress;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lio/netty/channel/DefaultAddressedEnvelope;->message:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public touch()Lio/netty/channel/AddressedEnvelope;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/channel/AddressedEnvelope<",
            "TM;TA;>;"
        }
    .end annotation

    .line 109
    .local p0, "this":Lio/netty/channel/DefaultAddressedEnvelope;, "Lio/netty/channel/DefaultAddressedEnvelope<TM;TA;>;"
    iget-object v0, p0, Lio/netty/channel/DefaultAddressedEnvelope;->message:Ljava/lang/Object;

    invoke-static {v0}, Lio/netty/util/ReferenceCountUtil;->touch(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    return-object p0
.end method

.method public touch(Ljava/lang/Object;)Lio/netty/channel/AddressedEnvelope;
    .locals 1
    .param p1, "hint"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lio/netty/channel/AddressedEnvelope<",
            "TM;TA;>;"
        }
    .end annotation

    .line 115
    .local p0, "this":Lio/netty/channel/DefaultAddressedEnvelope;, "Lio/netty/channel/DefaultAddressedEnvelope<TM;TA;>;"
    iget-object v0, p0, Lio/netty/channel/DefaultAddressedEnvelope;->message:Ljava/lang/Object;

    invoke-static {v0, p1}, Lio/netty/util/ReferenceCountUtil;->touch(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    return-object p0
.end method

.method public bridge synthetic touch()Lio/netty/util/ReferenceCounted;
    .locals 1

    .line 32
    .local p0, "this":Lio/netty/channel/DefaultAddressedEnvelope;, "Lio/netty/channel/DefaultAddressedEnvelope<TM;TA;>;"
    invoke-virtual {p0}, Lio/netty/channel/DefaultAddressedEnvelope;->touch()Lio/netty/channel/AddressedEnvelope;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/util/ReferenceCounted;
    .locals 0

    .line 32
    .local p0, "this":Lio/netty/channel/DefaultAddressedEnvelope;, "Lio/netty/channel/DefaultAddressedEnvelope<TM;TA;>;"
    invoke-virtual {p0, p1}, Lio/netty/channel/DefaultAddressedEnvelope;->touch(Ljava/lang/Object;)Lio/netty/channel/AddressedEnvelope;

    move-result-object p1

    return-object p1
.end method
