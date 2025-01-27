.class public interface abstract Lorg/apache/sshd/server/ServerFactoryManager;
.super Ljava/lang/Object;
.source "ServerFactoryManager.java"

# interfaces
.implements Lorg/apache/sshd/common/FactoryManager;
.implements Lorg/apache/sshd/server/session/ServerProxyAcceptorHolder;
.implements Lorg/apache/sshd/server/ServerAuthenticationManager;


# static fields
.field public static final COMMAND_EXIT_TIMEOUT:Ljava/lang/String; = "command-exit-timeout"

.field public static final DEFAULT_COMMAND_EXIT_TIMEOUT:J

.field public static final MAX_CONCURRENT_SESSIONS:Ljava/lang/String; = "max-concurrent-sessions"

.field public static final MODULI_URL:Ljava/lang/String; = "moduli-url"

.field public static final SERVER_EXTRA_IDENTIFICATION_LINES:Ljava/lang/String; = "server-extra-identification-lines"

.field public static final SERVER_EXTRA_IDENT_LINES_SEPARATOR:C = '|'

.field public static final SERVER_IDENTIFICATION:Ljava/lang/String; = "server-identification"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 81
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lorg/apache/sshd/server/ServerFactoryManager;->DEFAULT_COMMAND_EXIT_TIMEOUT:J

    return-void
.end method


# virtual methods
.method public abstract getCommandFactory()Lorg/apache/sshd/server/command/CommandFactory;
.end method

.method public abstract getShellFactory()Lorg/apache/sshd/server/shell/ShellFactory;
.end method

.method public abstract getSubsystemFactories()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/sshd/server/subsystem/SubsystemFactory;",
            ">;"
        }
    .end annotation
.end method
