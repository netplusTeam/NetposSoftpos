.class public Lorg/jline/builtins/ssh/Ssh$ShellParams;
.super Ljava/lang/Object;
.source "Ssh.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/builtins/ssh/Ssh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShellParams"
.end annotation


# instance fields
.field private final closer:Ljava/lang/Runnable;

.field private final env:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final session:Lorg/apache/sshd/server/session/ServerSession;

.field private final terminal:Lorg/jline/terminal/Terminal;


# direct methods
.method public constructor <init>(Ljava/util/Map;Lorg/apache/sshd/server/session/ServerSession;Lorg/jline/terminal/Terminal;Ljava/lang/Runnable;)V
    .locals 0
    .param p2, "session"    # Lorg/apache/sshd/server/session/ServerSession;
    .param p3, "terminal"    # Lorg/jline/terminal/Terminal;
    .param p4, "closer"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/apache/sshd/server/session/ServerSession;",
            "Lorg/jline/terminal/Terminal;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 48
    .local p1, "env":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lorg/jline/builtins/ssh/Ssh$ShellParams;->env:Ljava/util/Map;

    .line 50
    iput-object p2, p0, Lorg/jline/builtins/ssh/Ssh$ShellParams;->session:Lorg/apache/sshd/server/session/ServerSession;

    .line 51
    iput-object p3, p0, Lorg/jline/builtins/ssh/Ssh$ShellParams;->terminal:Lorg/jline/terminal/Terminal;

    .line 52
    iput-object p4, p0, Lorg/jline/builtins/ssh/Ssh$ShellParams;->closer:Ljava/lang/Runnable;

    .line 53
    return-void
.end method


# virtual methods
.method public getCloser()Ljava/lang/Runnable;
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/jline/builtins/ssh/Ssh$ShellParams;->closer:Ljava/lang/Runnable;

    return-object v0
.end method

.method public getEnv()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lorg/jline/builtins/ssh/Ssh$ShellParams;->env:Ljava/util/Map;

    return-object v0
.end method

.method public getSession()Lorg/apache/sshd/server/session/ServerSession;
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/jline/builtins/ssh/Ssh$ShellParams;->session:Lorg/apache/sshd/server/session/ServerSession;

    return-object v0
.end method

.method public getTerminal()Lorg/jline/terminal/Terminal;
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/jline/builtins/ssh/Ssh$ShellParams;->terminal:Lorg/jline/terminal/Terminal;

    return-object v0
.end method
