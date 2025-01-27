.class public final synthetic Lorg/apache/sshd/common/util/net/SshdSocketAddress$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/net/SocketAddress;

    check-cast p2, Ljava/net/SocketAddress;

    invoke-static {p1, p2}, Lorg/apache/sshd/common/util/net/SshdSocketAddress;->lambda$static$1(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)I

    move-result p1

    return p1
.end method
