.class public interface abstract Lorg/apache/sshd/server/forward/TcpForwardingFilter;
.super Ljava/lang/Object;
.source "TcpForwardingFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/sshd/server/forward/TcpForwardingFilter$Type;
    }
.end annotation


# static fields
.field public static final DEFAULT:Lorg/apache/sshd/server/forward/TcpForwardingFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Lorg/apache/sshd/server/forward/TcpForwardingFilter$1;

    invoke-direct {v0}, Lorg/apache/sshd/server/forward/TcpForwardingFilter$1;-><init>()V

    sput-object v0, Lorg/apache/sshd/server/forward/TcpForwardingFilter;->DEFAULT:Lorg/apache/sshd/server/forward/TcpForwardingFilter;

    return-void
.end method


# virtual methods
.method public abstract canConnect(Lorg/apache/sshd/server/forward/TcpForwardingFilter$Type;Lorg/apache/sshd/common/util/net/SshdSocketAddress;Lorg/apache/sshd/common/session/Session;)Z
.end method

.method public abstract canListen(Lorg/apache/sshd/common/util/net/SshdSocketAddress;Lorg/apache/sshd/common/session/Session;)Z
.end method
