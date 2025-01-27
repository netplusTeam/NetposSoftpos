.class public final synthetic Lorg/apache/sshd/common/channel/throttle/ChannelStreamPacketWriterResolver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/apache/sshd/common/channel/throttle/ChannelStreamPacketWriterResolver;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final resolveChannelStreamPacketWriter(Lorg/apache/sshd/common/channel/Channel;B)Lorg/apache/sshd/common/io/PacketWriter;
    .locals 0

    invoke-static {p1, p2}, Lorg/apache/sshd/common/channel/throttle/ChannelStreamPacketWriterResolver;->lambda$static$0(Lorg/apache/sshd/common/channel/Channel;B)Lorg/apache/sshd/common/io/PacketWriter;

    move-result-object p1

    return-object p1
.end method
