.class public Lorg/apache/sshd/server/forward/DirectTcpipFactory;
.super Lorg/apache/sshd/server/forward/TcpipServerChannel$TcpipFactory;
.source "DirectTcpipFactory.java"


# static fields
.field public static final INSTANCE:Lorg/apache/sshd/server/forward/DirectTcpipFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lorg/apache/sshd/server/forward/DirectTcpipFactory;

    invoke-direct {v0}, Lorg/apache/sshd/server/forward/DirectTcpipFactory;-><init>()V

    sput-object v0, Lorg/apache/sshd/server/forward/DirectTcpipFactory;->INSTANCE:Lorg/apache/sshd/server/forward/DirectTcpipFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    sget-object v0, Lorg/apache/sshd/server/forward/TcpForwardingFilter$Type;->Direct:Lorg/apache/sshd/server/forward/TcpForwardingFilter$Type;

    invoke-direct {p0, v0}, Lorg/apache/sshd/server/forward/TcpipServerChannel$TcpipFactory;-><init>(Lorg/apache/sshd/server/forward/TcpForwardingFilter$Type;)V

    .line 32
    return-void
.end method
