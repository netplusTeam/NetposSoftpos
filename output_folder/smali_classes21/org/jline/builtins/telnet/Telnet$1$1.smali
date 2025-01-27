.class Lorg/jline/builtins/telnet/Telnet$1$1;
.super Lorg/jline/builtins/telnet/Connection;
.source "Telnet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jline/builtins/telnet/Telnet$1;->createConnection(Ljava/lang/ThreadGroup;Lorg/jline/builtins/telnet/ConnectionData;)Lorg/jline/builtins/telnet/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field telnetIO:Lorg/jline/builtins/telnet/TelnetIO;

.field final synthetic this$1:Lorg/jline/builtins/telnet/Telnet$1;


# direct methods
.method constructor <init>(Lorg/jline/builtins/telnet/Telnet$1;Ljava/lang/ThreadGroup;Lorg/jline/builtins/telnet/ConnectionData;)V
    .locals 0
    .param p1, "this$1"    # Lorg/jline/builtins/telnet/Telnet$1;
    .param p2, "tcg"    # Ljava/lang/ThreadGroup;
    .param p3, "cd"    # Lorg/jline/builtins/telnet/ConnectionData;

    .line 100
    iput-object p1, p0, Lorg/jline/builtins/telnet/Telnet$1$1;->this$1:Lorg/jline/builtins/telnet/Telnet$1;

    invoke-direct {p0, p2, p3}, Lorg/jline/builtins/telnet/Connection;-><init>(Ljava/lang/ThreadGroup;Lorg/jline/builtins/telnet/ConnectionData;)V

    return-void
.end method


# virtual methods
.method protected doClose()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lorg/jline/builtins/telnet/Telnet$1$1;->telnetIO:Lorg/jline/builtins/telnet/TelnetIO;

    invoke-virtual {v0}, Lorg/jline/builtins/telnet/TelnetIO;->closeOutput()V

    .line 160
    iget-object v0, p0, Lorg/jline/builtins/telnet/Telnet$1$1;->telnetIO:Lorg/jline/builtins/telnet/TelnetIO;

    invoke-virtual {v0}, Lorg/jline/builtins/telnet/TelnetIO;->closeInput()V

    .line 161
    return-void
.end method

.method protected doRun()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 105
    new-instance v0, Lorg/jline/builtins/telnet/TelnetIO;

    invoke-direct {v0}, Lorg/jline/builtins/telnet/TelnetIO;-><init>()V

    iput-object v0, p0, Lorg/jline/builtins/telnet/Telnet$1$1;->telnetIO:Lorg/jline/builtins/telnet/TelnetIO;

    .line 106
    invoke-virtual {v0, p0}, Lorg/jline/builtins/telnet/TelnetIO;->setConnection(Lorg/jline/builtins/telnet/Connection;)V

    .line 107
    iget-object v0, p0, Lorg/jline/builtins/telnet/Telnet$1$1;->telnetIO:Lorg/jline/builtins/telnet/TelnetIO;

    invoke-virtual {v0}, Lorg/jline/builtins/telnet/TelnetIO;->initIO()V

    .line 109
    new-instance v0, Lorg/jline/builtins/telnet/Telnet$1$1$1;

    invoke-direct {v0, p0}, Lorg/jline/builtins/telnet/Telnet$1$1$1;-><init>(Lorg/jline/builtins/telnet/Telnet$1$1;)V

    .line 125
    .local v0, "in":Ljava/io/InputStream;
    new-instance v1, Ljava/io/PrintStream;

    new-instance v2, Lorg/jline/builtins/telnet/Telnet$1$1$2;

    invoke-direct {v2, p0}, Lorg/jline/builtins/telnet/Telnet$1$1$2;-><init>(Lorg/jline/builtins/telnet/Telnet$1$1;)V

    invoke-direct {v1, v2}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 135
    .local v1, "out":Ljava/io/PrintStream;
    invoke-static {}, Lorg/jline/terminal/TerminalBuilder;->builder()Lorg/jline/terminal/TerminalBuilder;

    move-result-object v2

    .line 136
    invoke-virtual {p0}, Lorg/jline/builtins/telnet/Telnet$1$1;->getConnectionData()Lorg/jline/builtins/telnet/ConnectionData;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jline/builtins/telnet/ConnectionData;->getNegotiatedTerminalType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jline/terminal/TerminalBuilder;->type(Ljava/lang/String;)Lorg/jline/terminal/TerminalBuilder;

    move-result-object v2

    .line 137
    invoke-virtual {v2, v0, v1}, Lorg/jline/terminal/TerminalBuilder;->streams(Ljava/io/InputStream;Ljava/io/OutputStream;)Lorg/jline/terminal/TerminalBuilder;

    move-result-object v2

    .line 138
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/jline/terminal/TerminalBuilder;->system(Z)Lorg/jline/terminal/TerminalBuilder;

    move-result-object v2

    .line 139
    const-string v3, "telnet"

    invoke-virtual {v2, v3}, Lorg/jline/terminal/TerminalBuilder;->name(Ljava/lang/String;)Lorg/jline/terminal/TerminalBuilder;

    move-result-object v2

    .line 140
    invoke-virtual {v2}, Lorg/jline/terminal/TerminalBuilder;->build()Lorg/jline/terminal/Terminal;

    move-result-object v2

    .line 141
    .local v2, "terminal":Lorg/jline/terminal/Terminal;
    new-instance v3, Lorg/jline/terminal/Size;

    invoke-virtual {p0}, Lorg/jline/builtins/telnet/Telnet$1$1;->getConnectionData()Lorg/jline/builtins/telnet/ConnectionData;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jline/builtins/telnet/ConnectionData;->getTerminalColumns()I

    move-result v4

    invoke-virtual {p0}, Lorg/jline/builtins/telnet/Telnet$1$1;->getConnectionData()Lorg/jline/builtins/telnet/ConnectionData;

    move-result-object v5

    invoke-virtual {v5}, Lorg/jline/builtins/telnet/ConnectionData;->getTerminalRows()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lorg/jline/terminal/Size;-><init>(II)V

    invoke-interface {v2, v3}, Lorg/jline/terminal/Terminal;->setSize(Lorg/jline/terminal/Size;)V

    .line 142
    iget-object v3, p0, Lorg/jline/builtins/telnet/Telnet$1$1;->this$1:Lorg/jline/builtins/telnet/Telnet$1;

    iget-object v3, v3, Lorg/jline/builtins/telnet/Telnet$1;->this$0:Lorg/jline/builtins/telnet/Telnet;

    invoke-static {v3}, Lorg/jline/builtins/telnet/Telnet;->access$000(Lorg/jline/builtins/telnet/Telnet;)Lorg/jline/terminal/Terminal;

    move-result-object v3

    invoke-interface {v3}, Lorg/jline/terminal/Terminal;->getAttributes()Lorg/jline/terminal/Attributes;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/jline/terminal/Terminal;->setAttributes(Lorg/jline/terminal/Attributes;)V

    .line 143
    new-instance v3, Lorg/jline/builtins/telnet/Telnet$1$1$3;

    invoke-direct {v3, p0, v2}, Lorg/jline/builtins/telnet/Telnet$1$1$3;-><init>(Lorg/jline/builtins/telnet/Telnet$1$1;Lorg/jline/terminal/Terminal;)V

    invoke-virtual {p0, v3}, Lorg/jline/builtins/telnet/Telnet$1$1;->addConnectionListener(Lorg/jline/builtins/telnet/ConnectionListener;)V

    .line 151
    :try_start_0
    iget-object v3, p0, Lorg/jline/builtins/telnet/Telnet$1$1;->this$1:Lorg/jline/builtins/telnet/Telnet$1;

    iget-object v3, v3, Lorg/jline/builtins/telnet/Telnet$1;->this$0:Lorg/jline/builtins/telnet/Telnet;

    invoke-static {v3}, Lorg/jline/builtins/telnet/Telnet;->access$100(Lorg/jline/builtins/telnet/Telnet;)Lorg/jline/builtins/telnet/Telnet$ShellProvider;

    move-result-object v3

    invoke-virtual {p0}, Lorg/jline/builtins/telnet/Telnet$1$1;->getConnectionData()Lorg/jline/builtins/telnet/ConnectionData;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jline/builtins/telnet/ConnectionData;->getEnvironment()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lorg/jline/builtins/telnet/Telnet$ShellProvider;->shell(Lorg/jline/terminal/Terminal;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    invoke-virtual {p0}, Lorg/jline/builtins/telnet/Telnet$1$1;->close()V

    .line 154
    nop

    .line 155
    return-void

    .line 153
    :catchall_0
    move-exception v3

    invoke-virtual {p0}, Lorg/jline/builtins/telnet/Telnet$1$1;->close()V

    .line 154
    throw v3
.end method
