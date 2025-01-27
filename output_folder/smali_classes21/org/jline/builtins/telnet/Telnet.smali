.class public Lorg/jline/builtins/telnet/Telnet;
.super Ljava/lang/Object;
.source "Telnet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jline/builtins/telnet/Telnet$ShellProvider;
    }
.end annotation


# static fields
.field private static final defaultPort:I = 0x7e3

.field public static final functions:[Ljava/lang/String;


# instance fields
.field private ip:Ljava/lang/String;

.field private port:I

.field private portListener:Lorg/jline/builtins/telnet/PortListener;

.field private final provider:Lorg/jline/builtins/telnet/Telnet$ShellProvider;

.field private final terminal:Lorg/jline/terminal/Terminal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-string v0, "telnetd"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jline/builtins/telnet/Telnet;->functions:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/jline/terminal/Terminal;Lorg/jline/builtins/telnet/Telnet$ShellProvider;)V
    .locals 0
    .param p1, "terminal"    # Lorg/jline/terminal/Terminal;
    .param p2, "provider"    # Lorg/jline/builtins/telnet/Telnet$ShellProvider;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lorg/jline/builtins/telnet/Telnet;->terminal:Lorg/jline/terminal/Terminal;

    .line 49
    iput-object p2, p0, Lorg/jline/builtins/telnet/Telnet;->provider:Lorg/jline/builtins/telnet/Telnet$ShellProvider;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lorg/jline/builtins/telnet/Telnet;)Lorg/jline/terminal/Terminal;
    .locals 1
    .param p0, "x0"    # Lorg/jline/builtins/telnet/Telnet;

    .line 29
    iget-object v0, p0, Lorg/jline/builtins/telnet/Telnet;->terminal:Lorg/jline/terminal/Terminal;

    return-object v0
.end method

.method static synthetic access$100(Lorg/jline/builtins/telnet/Telnet;)Lorg/jline/builtins/telnet/Telnet$ShellProvider;
    .locals 1
    .param p0, "x0"    # Lorg/jline/builtins/telnet/Telnet;

    .line 29
    iget-object v0, p0, Lorg/jline/builtins/telnet/Telnet;->provider:Lorg/jline/builtins/telnet/Telnet$ShellProvider;

    return-object v0
.end method

.method private start()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    new-instance v9, Lorg/jline/builtins/telnet/Telnet$1;

    const/16 v2, 0x3e8

    const v3, 0x493e0

    const v4, 0x493e0

    const v5, 0xea60

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lorg/jline/builtins/telnet/Telnet$1;-><init>(Lorg/jline/builtins/telnet/Telnet;IIIILorg/jline/builtins/telnet/ConnectionFilter;Ljava/lang/String;Z)V

    .line 165
    .local v0, "connectionManager":Lorg/jline/builtins/telnet/ConnectionManager;
    new-instance v1, Lorg/jline/builtins/telnet/PortListener;

    iget v2, p0, Lorg/jline/builtins/telnet/Telnet;->port:I

    const-string v3, "gogo"

    const/16 v4, 0xa

    invoke-direct {v1, v3, v2, v4}, Lorg/jline/builtins/telnet/PortListener;-><init>(Ljava/lang/String;II)V

    iput-object v1, p0, Lorg/jline/builtins/telnet/Telnet;->portListener:Lorg/jline/builtins/telnet/PortListener;

    .line 166
    invoke-virtual {v1, v0}, Lorg/jline/builtins/telnet/PortListener;->setConnectionManager(Lorg/jline/builtins/telnet/ConnectionManager;)V

    .line 167
    iget-object v1, p0, Lorg/jline/builtins/telnet/Telnet;->portListener:Lorg/jline/builtins/telnet/PortListener;

    invoke-virtual {v1}, Lorg/jline/builtins/telnet/PortListener;->start()V

    .line 168
    return-void
.end method

.method private status()V
    .locals 3

    .line 89
    iget-object v0, p0, Lorg/jline/builtins/telnet/Telnet;->portListener:Lorg/jline/builtins/telnet/PortListener;

    if-eqz v0, :cond_0

    .line 90
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "telnetd is running on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jline/builtins/telnet/Telnet;->ip:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/jline/builtins/telnet/Telnet;->port:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 92
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "telnetd is not running."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 94
    :goto_0
    return-void
.end method

.method private stop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lorg/jline/builtins/telnet/Telnet;->portListener:Lorg/jline/builtins/telnet/PortListener;

    invoke-virtual {v0}, Lorg/jline/builtins/telnet/PortListener;->stop()V

    .line 172
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jline/builtins/telnet/Telnet;->portListener:Lorg/jline/builtins/telnet/PortListener;

    .line 173
    return-void
.end method


# virtual methods
.method public telnetd([Ljava/lang/String;)V
    .locals 7
    .param p1, "argv"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 53
    const-string v0, "telnetd - start simple telnet server"

    const-string v1, "Usage: telnetd [-i ip] [-p port] start | stop | status"

    const-string v2, "  -i --ip=INTERFACE        listen interface (default=127.0.0.1)"

    const-string v3, "  -p --port=PORT           listen port (default=2019)"

    const-string v4, "  -? --help                show help"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "usage":[Ljava/lang/String;
    invoke-static {v0}, Lorg/jline/builtins/Options;->compile([Ljava/lang/String;)Lorg/jline/builtins/Options;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lorg/jline/builtins/Options;->parse([Ljava/lang/Object;Z)Lorg/jline/builtins/Options;

    move-result-object v1

    .line 60
    .local v1, "opt":Lorg/jline/builtins/Options;
    invoke-virtual {v1}, Lorg/jline/builtins/Options;->args()Ljava/util/List;

    move-result-object v2

    .line 62
    .local v2, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "help"

    invoke-virtual {v1, v3}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 66
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 68
    .local v3, "command":Ljava/lang/String;
    const-string v4, "start"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 69
    iget-object v4, p0, Lorg/jline/builtins/telnet/Telnet;->portListener:Lorg/jline/builtins/telnet/PortListener;

    if-nez v4, :cond_0

    .line 72
    const-string v4, "ip"

    invoke-virtual {v1, v4}, Lorg/jline/builtins/Options;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/jline/builtins/telnet/Telnet;->ip:Ljava/lang/String;

    .line 73
    const-string v4, "port"

    invoke-virtual {v1, v4}, Lorg/jline/builtins/Options;->getNumber(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lorg/jline/builtins/telnet/Telnet;->port:I

    .line 74
    invoke-direct {p0}, Lorg/jline/builtins/telnet/Telnet;->start()V

    .line 75
    invoke-direct {p0}, Lorg/jline/builtins/telnet/Telnet;->status()V

    goto :goto_0

    .line 70
    :cond_0
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "telnetd is already running on port "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lorg/jline/builtins/telnet/Telnet;->port:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 76
    :cond_1
    const-string v4, "stop"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 77
    iget-object v4, p0, Lorg/jline/builtins/telnet/Telnet;->portListener:Lorg/jline/builtins/telnet/PortListener;

    if-eqz v4, :cond_2

    .line 80
    invoke-direct {p0}, Lorg/jline/builtins/telnet/Telnet;->stop()V

    goto :goto_0

    .line 78
    :cond_2
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "telnetd is not running."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 81
    :cond_3
    const-string v4, "status"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 82
    invoke-direct {p0}, Lorg/jline/builtins/telnet/Telnet;->status()V

    .line 86
    :goto_0
    return-void

    .line 84
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bad command: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/jline/builtins/Options;->usageError(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v4

    throw v4

    .line 63
    .end local v3    # "command":Ljava/lang/String;
    :cond_5
    new-instance v3, Lorg/jline/builtins/Options$HelpException;

    invoke-virtual {v1}, Lorg/jline/builtins/Options;->usage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/jline/builtins/Options$HelpException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
