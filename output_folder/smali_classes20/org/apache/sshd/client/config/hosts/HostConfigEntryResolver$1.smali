.class final Lorg/apache/sshd/client/config/hosts/HostConfigEntryResolver$1;
.super Ljava/lang/Object;
.source "HostConfigEntryResolver.java"

# interfaces
.implements Lorg/apache/sshd/client/config/hosts/HostConfigEntryResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sshd/client/config/hosts/HostConfigEntryResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public resolveEffectiveHost(Ljava/lang/String;ILjava/net/SocketAddress;Ljava/lang/String;Lorg/apache/sshd/common/AttributeRepository;)Lorg/apache/sshd/client/config/hosts/HostConfigEntry;
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "localAddress"    # Ljava/net/SocketAddress;
    .param p4, "username"    # Ljava/lang/String;
    .param p5, "context"    # Lorg/apache/sshd/common/AttributeRepository;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 47
    const-string v0, "EMPTY"

    return-object v0
.end method
