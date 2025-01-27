.class public interface abstract Lorg/apache/sshd/common/channel/throttle/ChannelStreamPacketWriterResolver;
.super Ljava/lang/Object;
.source "ChannelStreamPacketWriterResolver.java"


# annotations
.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# static fields
.field public static final NONE:Lorg/apache/sshd/common/channel/throttle/ChannelStreamPacketWriterResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Lorg/apache/sshd/common/channel/throttle/ChannelStreamPacketWriterResolver$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/apache/sshd/common/channel/throttle/ChannelStreamPacketWriterResolver$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lorg/apache/sshd/common/channel/throttle/ChannelStreamPacketWriterResolver;->NONE:Lorg/apache/sshd/common/channel/throttle/ChannelStreamPacketWriterResolver;

    return-void
.end method

.method public static synthetic lambda$static$0(Lorg/apache/sshd/common/channel/Channel;B)Lorg/apache/sshd/common/io/PacketWriter;
    .locals 0
    .param p0, "channel"    # Lorg/apache/sshd/common/channel/Channel;
    .param p1, "cmd"    # B

    .line 35
    return-object p0
.end method


# virtual methods
.method public abstract resolveChannelStreamPacketWriter(Lorg/apache/sshd/common/channel/Channel;B)Lorg/apache/sshd/common/io/PacketWriter;
.end method
