.class public interface abstract Lorg/apache/sshd/agent/SshAgentServer;
.super Ljava/lang/Object;
.source "SshAgentServer.java"

# interfaces
.implements Ljava/nio/channels/Channel;


# static fields
.field public static final CHANNEL_OPEN_TIMEOUT_PROP:Ljava/lang/String; = "ssh-agent-server-channel-open-timeout"

.field public static final DEFAULT_CHANNEL_OPEN_TIMEOUT:J

.field public static final DEFAULT_PROXY_CHANNEL_TYPE:Ljava/lang/String; = "auth-agent@openssh.com"

.field public static final PROXY_CHANNEL_TYPE:Ljava/lang/String; = "ssh-agent-server-channel-proxy-type"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 33
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lorg/apache/sshd/agent/SshAgentServer;->DEFAULT_CHANNEL_OPEN_TIMEOUT:J

    return-void
.end method


# virtual methods
.method public abstract getId()Ljava/lang/String;
.end method
