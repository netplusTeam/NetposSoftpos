.class public Lorg/apache/sshd/server/forward/ForwardedTcpipFactory;
.super Lorg/apache/sshd/server/forward/TcpipServerChannel$TcpipFactory;
.source "ForwardedTcpipFactory.java"


# static fields
.field public static final INSTANCE:Lorg/apache/sshd/server/forward/ForwardedTcpipFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lorg/apache/sshd/server/forward/ForwardedTcpipFactory;

    invoke-direct {v0}, Lorg/apache/sshd/server/forward/ForwardedTcpipFactory;-><init>()V

    sput-object v0, Lorg/apache/sshd/server/forward/ForwardedTcpipFactory;->INSTANCE:Lorg/apache/sshd/server/forward/ForwardedTcpipFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    sget-object v0, Lorg/apache/sshd/server/forward/TcpForwardingFilter$Type;->Forwarded:Lorg/apache/sshd/server/forward/TcpForwardingFilter$Type;

    invoke-direct {p0, v0}, Lorg/apache/sshd/server/forward/TcpipServerChannel$TcpipFactory;-><init>(Lorg/apache/sshd/server/forward/TcpForwardingFilter$Type;)V

    .line 32
    return-void
.end method
