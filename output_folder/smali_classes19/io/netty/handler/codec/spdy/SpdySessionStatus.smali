.class public Lio/netty/handler/codec/spdy/SpdySessionStatus;
.super Ljava/lang/Object;
.source "SpdySessionStatus.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lio/netty/handler/codec/spdy/SpdySessionStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final INTERNAL_ERROR:Lio/netty/handler/codec/spdy/SpdySessionStatus;

.field public static final OK:Lio/netty/handler/codec/spdy/SpdySessionStatus;

.field public static final PROTOCOL_ERROR:Lio/netty/handler/codec/spdy/SpdySessionStatus;


# instance fields
.field private final code:I

.field private final statusPhrase:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 28
    new-instance v0, Lio/netty/handler/codec/spdy/SpdySessionStatus;

    const/4 v1, 0x0

    const-string v2, "OK"

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/spdy/SpdySessionStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/netty/handler/codec/spdy/SpdySessionStatus;->OK:Lio/netty/handler/codec/spdy/SpdySessionStatus;

    .line 34
    new-instance v0, Lio/netty/handler/codec/spdy/SpdySessionStatus;

    const/4 v1, 0x1

    const-string v2, "PROTOCOL_ERROR"

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/spdy/SpdySessionStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/netty/handler/codec/spdy/SpdySessionStatus;->PROTOCOL_ERROR:Lio/netty/handler/codec/spdy/SpdySessionStatus;

    .line 40
    new-instance v0, Lio/netty/handler/codec/spdy/SpdySessionStatus;

    const/4 v1, 0x2

    const-string v2, "INTERNAL_ERROR"

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/spdy/SpdySessionStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/netty/handler/codec/spdy/SpdySessionStatus;->INTERNAL_ERROR:Lio/netty/handler/codec/spdy/SpdySessionStatus;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "statusPhrase"    # Ljava/lang/String;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const-string v0, "statusPhrase"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/netty/handler/codec/spdy/SpdySessionStatus;->statusPhrase:Ljava/lang/String;

    .line 71
    iput p1, p0, Lio/netty/handler/codec/spdy/SpdySessionStatus;->code:I

    .line 72
    return-void
.end method

.method public static valueOf(I)Lio/netty/handler/codec/spdy/SpdySessionStatus;
    .locals 3
    .param p0, "code"    # I

    .line 49
    packed-switch p0, :pswitch_data_0

    .line 58
    new-instance v0, Lio/netty/handler/codec/spdy/SpdySessionStatus;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UNKNOWN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lio/netty/handler/codec/spdy/SpdySessionStatus;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 55
    :pswitch_0
    sget-object v0, Lio/netty/handler/codec/spdy/SpdySessionStatus;->INTERNAL_ERROR:Lio/netty/handler/codec/spdy/SpdySessionStatus;

    return-object v0

    .line 53
    :pswitch_1
    sget-object v0, Lio/netty/handler/codec/spdy/SpdySessionStatus;->PROTOCOL_ERROR:Lio/netty/handler/codec/spdy/SpdySessionStatus;

    return-object v0

    .line 51
    :pswitch_2
    sget-object v0, Lio/netty/handler/codec/spdy/SpdySessionStatus;->OK:Lio/netty/handler/codec/spdy/SpdySessionStatus;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public code()I
    .locals 1

    .line 78
    iget v0, p0, Lio/netty/handler/codec/spdy/SpdySessionStatus;->code:I

    return v0
.end method

.method public compareTo(Lio/netty/handler/codec/spdy/SpdySessionStatus;)I
    .locals 2
    .param p1, "o"    # Lio/netty/handler/codec/spdy/SpdySessionStatus;

    .line 109
    invoke-virtual {p0}, Lio/netty/handler/codec/spdy/SpdySessionStatus;->code()I

    move-result v0

    invoke-virtual {p1}, Lio/netty/handler/codec/spdy/SpdySessionStatus;->code()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 23
    check-cast p1, Lio/netty/handler/codec/spdy/SpdySessionStatus;

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/spdy/SpdySessionStatus;->compareTo(Lio/netty/handler/codec/spdy/SpdySessionStatus;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 95
    instance-of v0, p1, Lio/netty/handler/codec/spdy/SpdySessionStatus;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 96
    return v1

    .line 99
    :cond_0
    invoke-virtual {p0}, Lio/netty/handler/codec/spdy/SpdySessionStatus;->code()I

    move-result v0

    move-object v2, p1

    check-cast v2, Lio/netty/handler/codec/spdy/SpdySessionStatus;

    invoke-virtual {v2}, Lio/netty/handler/codec/spdy/SpdySessionStatus;->code()I

    move-result v2

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 90
    invoke-virtual {p0}, Lio/netty/handler/codec/spdy/SpdySessionStatus;->code()I

    move-result v0

    return v0
.end method

.method public statusPhrase()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lio/netty/handler/codec/spdy/SpdySessionStatus;->statusPhrase:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 104
    invoke-virtual {p0}, Lio/netty/handler/codec/spdy/SpdySessionStatus;->statusPhrase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
