.class synthetic Lorg/apache/sshd/server/forward/TcpipServerChannel$3;
.super Ljava/lang/Object;
.source "TcpipServerChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sshd/server/forward/TcpipServerChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$apache$sshd$server$forward$TcpForwardingFilter$Type:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 154
    invoke-static {}, Lorg/apache/sshd/server/forward/TcpForwardingFilter$Type;->values()[Lorg/apache/sshd/server/forward/TcpForwardingFilter$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/apache/sshd/server/forward/TcpipServerChannel$3;->$SwitchMap$org$apache$sshd$server$forward$TcpForwardingFilter$Type:[I

    :try_start_0
    sget-object v1, Lorg/apache/sshd/server/forward/TcpForwardingFilter$Type;->Direct:Lorg/apache/sshd/server/forward/TcpForwardingFilter$Type;

    invoke-virtual {v1}, Lorg/apache/sshd/server/forward/TcpForwardingFilter$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    :try_start_1
    sget-object v0, Lorg/apache/sshd/server/forward/TcpipServerChannel$3;->$SwitchMap$org$apache$sshd$server$forward$TcpForwardingFilter$Type:[I

    sget-object v1, Lorg/apache/sshd/server/forward/TcpForwardingFilter$Type;->Forwarded:Lorg/apache/sshd/server/forward/TcpForwardingFilter$Type;

    invoke-virtual {v1}, Lorg/apache/sshd/server/forward/TcpForwardingFilter$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    return-void
.end method
