.class final Lio/netty/channel/socket/nio/ProtocolFamilyConverter;
.super Ljava/lang/Object;
.source "ProtocolFamilyConverter.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static convert(Lio/netty/channel/socket/InternetProtocolFamily;)Ljava/net/ProtocolFamily;
    .locals 2
    .param p0, "family"    # Lio/netty/channel/socket/InternetProtocolFamily;

    .line 38
    sget-object v0, Lio/netty/channel/socket/nio/ProtocolFamilyConverter$1;->$SwitchMap$io$netty$channel$socket$InternetProtocolFamily:[I

    invoke-virtual {p0}, Lio/netty/channel/socket/InternetProtocolFamily;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 42
    :pswitch_0
    sget-object v0, Ljava/net/StandardProtocolFamily;->INET6:Ljava/net/StandardProtocolFamily;

    return-object v0

    .line 40
    :pswitch_1
    sget-object v0, Ljava/net/StandardProtocolFamily;->INET:Ljava/net/StandardProtocolFamily;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
