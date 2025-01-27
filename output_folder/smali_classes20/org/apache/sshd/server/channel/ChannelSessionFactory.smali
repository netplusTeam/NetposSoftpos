.class public Lorg/apache/sshd/server/channel/ChannelSessionFactory;
.super Ljava/lang/Object;
.source "ChannelSessionFactory.java"

# interfaces
.implements Lorg/apache/sshd/common/channel/ChannelFactory;


# static fields
.field public static final INSTANCE:Lorg/apache/sshd/server/channel/ChannelSessionFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lorg/apache/sshd/server/channel/ChannelSessionFactory;

    invoke-direct {v0}, Lorg/apache/sshd/server/channel/ChannelSessionFactory;-><init>()V

    sput-object v0, Lorg/apache/sshd/server/channel/ChannelSessionFactory;->INSTANCE:Lorg/apache/sshd/server/channel/ChannelSessionFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method


# virtual methods
.method public createChannel(Lorg/apache/sshd/common/session/Session;)Lorg/apache/sshd/common/channel/Channel;
    .locals 1
    .param p1, "session"    # Lorg/apache/sshd/common/session/Session;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    new-instance v0, Lorg/apache/sshd/server/channel/ChannelSession;

    invoke-direct {v0}, Lorg/apache/sshd/server/channel/ChannelSession;-><init>()V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 39
    const-string v0, "session"

    return-object v0
.end method
