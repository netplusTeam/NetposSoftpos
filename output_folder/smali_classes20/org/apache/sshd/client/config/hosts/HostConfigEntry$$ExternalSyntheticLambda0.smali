.class public final synthetic Lorg/apache/sshd/client/config/hosts/HostConfigEntry$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/apache/sshd/client/config/hosts/HostConfigEntryResolver;


# instance fields
.field public final synthetic f$0:Ljava/util/Collection;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Collection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/sshd/client/config/hosts/HostConfigEntry$$ExternalSyntheticLambda0;->f$0:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public final resolveEffectiveHost(Ljava/lang/String;ILjava/net/SocketAddress;Ljava/lang/String;Lorg/apache/sshd/common/AttributeRepository;)Lorg/apache/sshd/client/config/hosts/HostConfigEntry;
    .locals 6

    iget-object v0, p0, Lorg/apache/sshd/client/config/hosts/HostConfigEntry$$ExternalSyntheticLambda0;->f$0:Ljava/util/Collection;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->lambda$toHostConfigEntryResolver$0(Ljava/util/Collection;Ljava/lang/String;ILjava/net/SocketAddress;Ljava/lang/String;Lorg/apache/sshd/common/AttributeRepository;)Lorg/apache/sshd/client/config/hosts/HostConfigEntry;

    move-result-object p1

    return-object p1
.end method
