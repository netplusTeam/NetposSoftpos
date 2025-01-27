.class public Lorg/jline/builtins/ssh/Ssh$ExecuteParams;
.super Ljava/lang/Object;
.source "Ssh.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/builtins/ssh/Ssh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExecuteParams"
.end annotation


# instance fields
.field private final command:Ljava/lang/String;

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

.field private final err:Ljava/io/OutputStream;

.field private final in:Ljava/io/InputStream;

.field private final out:Ljava/io/OutputStream;

.field private final session:Lorg/apache/sshd/server/session/ServerSession;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Lorg/apache/sshd/server/session/ServerSession;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "command"    # Ljava/lang/String;
    .param p3, "session"    # Lorg/apache/sshd/server/session/ServerSession;
    .param p4, "in"    # Ljava/io/InputStream;
    .param p5, "out"    # Ljava/io/OutputStream;
    .param p6, "err"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/apache/sshd/server/session/ServerSession;",
            "Ljava/io/InputStream;",
            "Ljava/io/OutputStream;",
            "Ljava/io/OutputStream;",
            ")V"
        }
    .end annotation

    .line 75
    .local p2, "env":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lorg/jline/builtins/ssh/Ssh$ExecuteParams;->command:Ljava/lang/String;

    .line 77
    iput-object p3, p0, Lorg/jline/builtins/ssh/Ssh$ExecuteParams;->session:Lorg/apache/sshd/server/session/ServerSession;

    .line 78
    iput-object p2, p0, Lorg/jline/builtins/ssh/Ssh$ExecuteParams;->env:Ljava/util/Map;

    .line 79
    iput-object p4, p0, Lorg/jline/builtins/ssh/Ssh$ExecuteParams;->in:Ljava/io/InputStream;

    .line 80
    iput-object p5, p0, Lorg/jline/builtins/ssh/Ssh$ExecuteParams;->out:Ljava/io/OutputStream;

    .line 81
    iput-object p6, p0, Lorg/jline/builtins/ssh/Ssh$ExecuteParams;->err:Ljava/io/OutputStream;

    .line 82
    return-void
.end method


# virtual methods
.method public getCommand()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/jline/builtins/ssh/Ssh$ExecuteParams;->command:Ljava/lang/String;

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

    .line 87
    iget-object v0, p0, Lorg/jline/builtins/ssh/Ssh$ExecuteParams;->env:Ljava/util/Map;

    return-object v0
.end method

.method public getErr()Ljava/io/OutputStream;
    .locals 1

    .line 99
    iget-object v0, p0, Lorg/jline/builtins/ssh/Ssh$ExecuteParams;->err:Ljava/io/OutputStream;

    return-object v0
.end method

.method public getIn()Ljava/io/InputStream;
    .locals 1

    .line 93
    iget-object v0, p0, Lorg/jline/builtins/ssh/Ssh$ExecuteParams;->in:Ljava/io/InputStream;

    return-object v0
.end method

.method public getOut()Ljava/io/OutputStream;
    .locals 1

    .line 96
    iget-object v0, p0, Lorg/jline/builtins/ssh/Ssh$ExecuteParams;->out:Ljava/io/OutputStream;

    return-object v0
.end method

.method public getSession()Lorg/apache/sshd/server/session/ServerSession;
    .locals 1

    .line 90
    iget-object v0, p0, Lorg/jline/builtins/ssh/Ssh$ExecuteParams;->session:Lorg/apache/sshd/server/session/ServerSession;

    return-object v0
.end method
