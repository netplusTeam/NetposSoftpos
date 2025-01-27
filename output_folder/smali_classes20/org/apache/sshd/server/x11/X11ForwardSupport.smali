.class public interface abstract Lorg/apache/sshd/server/x11/X11ForwardSupport;
.super Ljava/lang/Object;
.source "X11ForwardSupport.java"

# interfaces
.implements Lorg/apache/sshd/common/Closeable;
.implements Lorg/apache/sshd/common/io/IoHandler;


# static fields
.field public static final CHANNEL_OPEN_TIMEOUT_PROP:Ljava/lang/String; = "x11-fwd-open-timeout"

.field public static final DEFAULT_CHANNEL_OPEN_TIMEOUT:J

.field public static final DEFAULT_X11_BASE_PORT:I = 0x1770

.field public static final DEFAULT_X11_BIND_HOST:Ljava/lang/String; = "127.0.0.1"

.field public static final DEFAULT_X11_DISPLAY_OFFSET:I = 0xa

.field public static final DEFAULT_X11_MAX_DISPLAYS:I = 0x3e8

.field public static final ENV_DISPLAY:Ljava/lang/String; = "DISPLAY"

.field public static final X11_BASE_PORT:Ljava/lang/String; = "x11-fwd-base-port"

.field public static final X11_BIND_HOST:Ljava/lang/String; = "x11-fwd-bind-host"

.field public static final X11_DISPLAY_OFFSET:Ljava/lang/String; = "x11-fwd-display-offset"

.field public static final X11_MAX_DISPLAYS:Ljava/lang/String; = "x11-fwd-max-display"

.field public static final XAUTH_COMMAND:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 39
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lorg/apache/sshd/server/x11/X11ForwardSupport;->DEFAULT_CHANNEL_OPEN_TIMEOUT:J

    .line 81
    const-string v0, "sshd.XAUTH_COMMAND"

    const-string/jumbo v1, "xauth"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/server/x11/X11ForwardSupport;->XAUTH_COMMAND:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract createDisplay(ZLjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
