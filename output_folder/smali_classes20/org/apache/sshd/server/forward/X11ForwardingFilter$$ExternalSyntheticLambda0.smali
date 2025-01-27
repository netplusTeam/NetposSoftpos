.class public final synthetic Lorg/apache/sshd/server/forward/X11ForwardingFilter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/apache/sshd/server/forward/X11ForwardingFilter;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final canForwardX11(Lorg/apache/sshd/common/session/Session;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1, p2}, Lorg/apache/sshd/server/forward/X11ForwardingFilter;->lambda$static$0(Lorg/apache/sshd/common/session/Session;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
