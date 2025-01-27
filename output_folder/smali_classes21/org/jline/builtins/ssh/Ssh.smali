.class public Lorg/jline/builtins/ssh/Ssh;
.super Ljava/lang/Object;
.source "Ssh.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jline/builtins/ssh/Ssh$JLineUserInteraction;,
        Lorg/jline/builtins/ssh/Ssh$ExecuteParams;,
        Lorg/jline/builtins/ssh/Ssh$ShellParams;
    }
.end annotation


# static fields
.field private static final defaultPort:I = 0x7e6

.field public static final functions:[Ljava/lang/String;


# instance fields
.field private final clientBuilder:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Lorg/apache/sshd/client/SshClient;",
            ">;"
        }
    .end annotation
.end field

.field private final execute:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lorg/jline/builtins/ssh/Ssh$ExecuteParams;",
            ">;"
        }
    .end annotation
.end field

.field private ip:Ljava/lang/String;

.field private port:I

.field private server:Lorg/apache/sshd/server/SshServer;

.field private final serverBuilder:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Lorg/apache/sshd/server/SshServer;",
            ">;"
        }
    .end annotation
.end field

.field private final shell:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lorg/jline/builtins/ssh/Ssh$ShellParams;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    const-string v0, "ssh"

    const-string v1, "sshd"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jline/builtins/ssh/Ssh;->functions:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/function/Consumer;Ljava/util/function/Consumer;Ljava/util/function/Supplier;Ljava/util/function/Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lorg/jline/builtins/ssh/Ssh$ShellParams;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Lorg/jline/builtins/ssh/Ssh$ExecuteParams;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Lorg/apache/sshd/server/SshServer;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Lorg/apache/sshd/client/SshClient;",
            ">;)V"
        }
    .end annotation

    .line 116
    .local p1, "shell":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lorg/jline/builtins/ssh/Ssh$ShellParams;>;"
    .local p2, "execute":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lorg/jline/builtins/ssh/Ssh$ExecuteParams;>;"
    .local p3, "serverBuilder":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Lorg/apache/sshd/server/SshServer;>;"
    .local p4, "clientBuilder":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Lorg/apache/sshd/client/SshClient;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Lorg/jline/builtins/ssh/Ssh;->shell:Ljava/util/function/Consumer;

    .line 118
    iput-object p2, p0, Lorg/jline/builtins/ssh/Ssh;->execute:Ljava/util/function/Consumer;

    .line 119
    iput-object p3, p0, Lorg/jline/builtins/ssh/Ssh;->serverBuilder:Ljava/util/function/Supplier;

    .line 120
    iput-object p4, p0, Lorg/jline/builtins/ssh/Ssh;->clientBuilder:Ljava/util/function/Supplier;

    .line 121
    return-void
.end method

.method private connectWithRetries(Ljava/io/PrintWriter;Lorg/apache/sshd/client/SshClient;Ljava/lang/String;Ljava/lang/String;II)Lorg/apache/sshd/client/session/ClientSession;
    .locals 7
    .param p1, "stdout"    # Ljava/io/PrintWriter;
    .param p2, "client"    # Lorg/apache/sshd/client/SshClient;
    .param p3, "username"    # Ljava/lang/String;
    .param p4, "host"    # Ljava/lang/String;
    .param p5, "port"    # I
    .param p6, "maxAttempts"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 295
    const/4 v0, 0x0

    .line 296
    .local v0, "session":Lorg/apache/sshd/client/session/ClientSession;
    const/4 v1, 0x0

    .line 298
    .local v1, "retries":I
    :cond_0
    invoke-virtual {p2, p3, p4, p5}, Lorg/apache/sshd/client/SshClient;->connect(Ljava/lang/String;Ljava/lang/String;I)Lorg/apache/sshd/client/future/ConnectFuture;

    move-result-object v2

    .line 299
    .local v2, "future":Lorg/apache/sshd/client/future/ConnectFuture;
    invoke-interface {v2}, Lorg/apache/sshd/client/future/ConnectFuture;->await()Z

    .line 301
    :try_start_0
    invoke-interface {v2}, Lorg/apache/sshd/client/future/ConnectFuture;->getSession()Lorg/apache/sshd/client/session/ClientSession;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 309
    goto :goto_0

    .line 302
    :catch_0
    move-exception v3

    .line 303
    .local v3, "ex":Ljava/lang/Exception;
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "retries":I
    .local v4, "retries":I
    if-ge v1, p6, :cond_1

    .line 304
    const-wide/16 v5, 0x7d0

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    .line 305
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "retrying (attempt "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ") ..."

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v1, v4

    .line 310
    .end local v2    # "future":Lorg/apache/sshd/client/future/ConnectFuture;
    .end local v3    # "ex":Ljava/lang/Exception;
    .end local v4    # "retries":I
    .restart local v1    # "retries":I
    :goto_0
    if-eqz v0, :cond_0

    .line 311
    return-object v0

    .line 307
    .end local v1    # "retries":I
    .restart local v2    # "future":Lorg/apache/sshd/client/future/ConnectFuture;
    .restart local v3    # "ex":Ljava/lang/Exception;
    .restart local v4    # "retries":I
    :cond_1
    throw v3
.end method

.method private static getFlag(Lorg/jline/terminal/Attributes;Lorg/jline/terminal/Attributes$InputFlag;)I
    .locals 1
    .param p0, "attributes"    # Lorg/jline/terminal/Attributes;
    .param p1, "flag"    # Lorg/jline/terminal/Attributes$InputFlag;

    .line 283
    invoke-virtual {p0, p1}, Lorg/jline/terminal/Attributes;->getInputFlag(Lorg/jline/terminal/Attributes$InputFlag;)Z

    move-result v0

    return v0
.end method

.method private static getFlag(Lorg/jline/terminal/Attributes;Lorg/jline/terminal/Attributes$LocalFlag;)I
    .locals 1
    .param p0, "attributes"    # Lorg/jline/terminal/Attributes;
    .param p1, "flag"    # Lorg/jline/terminal/Attributes$LocalFlag;

    .line 291
    invoke-virtual {p0, p1}, Lorg/jline/terminal/Attributes;->getLocalFlag(Lorg/jline/terminal/Attributes$LocalFlag;)Z

    move-result v0

    return v0
.end method

.method private static getFlag(Lorg/jline/terminal/Attributes;Lorg/jline/terminal/Attributes$OutputFlag;)I
    .locals 1
    .param p0, "attributes"    # Lorg/jline/terminal/Attributes;
    .param p1, "flag"    # Lorg/jline/terminal/Attributes$OutputFlag;

    .line 287
    invoke-virtual {p0, p1}, Lorg/jline/terminal/Attributes;->getOutputFlag(Lorg/jline/terminal/Attributes$OutputFlag;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$ssh$0(Lorg/jline/terminal/Terminal;Lorg/apache/sshd/client/channel/ChannelShell;Lorg/jline/terminal/Terminal$Signal;)V
    .locals 3
    .param p0, "terminal"    # Lorg/jline/terminal/Terminal;
    .param p1, "channel"    # Lorg/apache/sshd/client/channel/ChannelShell;
    .param p2, "signal"    # Lorg/jline/terminal/Terminal$Signal;

    .line 236
    :try_start_0
    invoke-interface {p0}, Lorg/jline/terminal/Terminal;->getSize()Lorg/jline/terminal/Size;

    move-result-object v0

    .line 237
    .local v0, "size":Lorg/jline/terminal/Size;
    invoke-virtual {v0}, Lorg/jline/terminal/Size;->getColumns()I

    move-result v1

    invoke-virtual {v0}, Lorg/jline/terminal/Size;->getRows()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lorg/apache/sshd/client/channel/ChannelShell;->sendWindowChange(II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    .end local v0    # "size":Lorg/jline/terminal/Size;
    goto :goto_0

    .line 238
    :catch_0
    move-exception v0

    .line 241
    :goto_0
    return-void
.end method

.method static synthetic lambda$ssh$1(Lorg/apache/sshd/client/channel/ChannelShell;Lorg/jline/terminal/Attributes;Lorg/jline/terminal/Terminal$Signal;)V
    .locals 2
    .param p0, "channel"    # Lorg/apache/sshd/client/channel/ChannelShell;
    .param p1, "attributes"    # Lorg/jline/terminal/Attributes;
    .param p2, "signal"    # Lorg/jline/terminal/Terminal$Signal;

    .line 244
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/sshd/client/channel/ChannelShell;->getInvertedIn()Ljava/io/OutputStream;

    move-result-object v0

    sget-object v1, Lorg/jline/terminal/Attributes$ControlChar;->VQUIT:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {p1, v1}, Lorg/jline/terminal/Attributes;->getControlChar(Lorg/jline/terminal/Attributes$ControlChar;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 245
    invoke-virtual {p0}, Lorg/apache/sshd/client/channel/ChannelShell;->getInvertedIn()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    goto :goto_0

    .line 246
    :catch_0
    move-exception v0

    .line 249
    :goto_0
    return-void
.end method

.method static synthetic lambda$ssh$2(Lorg/apache/sshd/client/channel/ChannelShell;Lorg/jline/terminal/Attributes;Lorg/jline/terminal/Terminal$Signal;)V
    .locals 2
    .param p0, "channel"    # Lorg/apache/sshd/client/channel/ChannelShell;
    .param p1, "attributes"    # Lorg/jline/terminal/Attributes;
    .param p2, "signal"    # Lorg/jline/terminal/Terminal$Signal;

    .line 252
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/sshd/client/channel/ChannelShell;->getInvertedIn()Ljava/io/OutputStream;

    move-result-object v0

    sget-object v1, Lorg/jline/terminal/Attributes$ControlChar;->VINTR:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {p1, v1}, Lorg/jline/terminal/Attributes;->getControlChar(Lorg/jline/terminal/Attributes$ControlChar;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 253
    invoke-virtual {p0}, Lorg/apache/sshd/client/channel/ChannelShell;->getInvertedIn()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    goto :goto_0

    .line 254
    :catch_0
    move-exception v0

    .line 257
    :goto_0
    return-void
.end method

.method static synthetic lambda$ssh$3(Lorg/apache/sshd/client/channel/ChannelShell;Lorg/jline/terminal/Attributes;Lorg/jline/terminal/Terminal$Signal;)V
    .locals 2
    .param p0, "channel"    # Lorg/apache/sshd/client/channel/ChannelShell;
    .param p1, "attributes"    # Lorg/jline/terminal/Attributes;
    .param p2, "signal"    # Lorg/jline/terminal/Terminal$Signal;

    .line 260
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/sshd/client/channel/ChannelShell;->getInvertedIn()Ljava/io/OutputStream;

    move-result-object v0

    sget-object v1, Lorg/jline/terminal/Attributes$ControlChar;->VDSUSP:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {p1, v1}, Lorg/jline/terminal/Attributes;->getControlChar(Lorg/jline/terminal/Attributes$ControlChar;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 261
    invoke-virtual {p0}, Lorg/apache/sshd/client/channel/ChannelShell;->getInvertedIn()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    goto :goto_0

    .line 262
    :catch_0
    move-exception v0

    .line 265
    :goto_0
    return-void
.end method

.method private start()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 360
    iget-object v0, p0, Lorg/jline/builtins/ssh/Ssh;->serverBuilder:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/server/SshServer;

    iput-object v0, p0, Lorg/jline/builtins/ssh/Ssh;->server:Lorg/apache/sshd/server/SshServer;

    .line 361
    iget v1, p0, Lorg/jline/builtins/ssh/Ssh;->port:I

    invoke-virtual {v0, v1}, Lorg/apache/sshd/server/SshServer;->setPort(I)V

    .line 362
    iget-object v0, p0, Lorg/jline/builtins/ssh/Ssh;->server:Lorg/apache/sshd/server/SshServer;

    iget-object v1, p0, Lorg/jline/builtins/ssh/Ssh;->ip:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/sshd/server/SshServer;->setHost(Ljava/lang/String;)V

    .line 363
    iget-object v0, p0, Lorg/jline/builtins/ssh/Ssh;->server:Lorg/apache/sshd/server/SshServer;

    new-instance v1, Lorg/jline/builtins/ssh/ShellFactoryImpl;

    iget-object v2, p0, Lorg/jline/builtins/ssh/Ssh;->shell:Ljava/util/function/Consumer;

    invoke-direct {v1, v2}, Lorg/jline/builtins/ssh/ShellFactoryImpl;-><init>(Ljava/util/function/Consumer;)V

    invoke-virtual {v0, v1}, Lorg/apache/sshd/server/SshServer;->setShellFactory(Lorg/apache/sshd/common/Factory;)V

    .line 364
    iget-object v0, p0, Lorg/jline/builtins/ssh/Ssh;->server:Lorg/apache/sshd/server/SshServer;

    new-instance v1, Lorg/apache/sshd/server/scp/ScpCommandFactory$Builder;

    invoke-direct {v1}, Lorg/apache/sshd/server/scp/ScpCommandFactory$Builder;-><init>()V

    new-instance v2, Lorg/jline/builtins/ssh/Ssh$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lorg/jline/builtins/ssh/Ssh$$ExternalSyntheticLambda4;-><init>(Lorg/jline/builtins/ssh/Ssh;)V

    .line 365
    invoke-virtual {v1, v2}, Lorg/apache/sshd/server/scp/ScpCommandFactory$Builder;->withDelegate(Lorg/apache/sshd/server/command/CommandFactory;)Lorg/apache/sshd/server/scp/ScpCommandFactory$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/sshd/server/scp/ScpCommandFactory$Builder;->build()Lorg/apache/sshd/server/scp/ScpCommandFactory;

    move-result-object v1

    .line 364
    invoke-virtual {v0, v1}, Lorg/apache/sshd/server/SshServer;->setCommandFactory(Lorg/apache/sshd/server/command/CommandFactory;)V

    .line 366
    iget-object v0, p0, Lorg/jline/builtins/ssh/Ssh;->server:Lorg/apache/sshd/server/SshServer;

    new-instance v1, Lorg/apache/sshd/server/subsystem/sftp/SftpSubsystemFactory$Builder;

    invoke-direct {v1}, Lorg/apache/sshd/server/subsystem/sftp/SftpSubsystemFactory$Builder;-><init>()V

    .line 367
    invoke-virtual {v1}, Lorg/apache/sshd/server/subsystem/sftp/SftpSubsystemFactory$Builder;->build()Lorg/apache/sshd/server/subsystem/sftp/SftpSubsystemFactory;

    move-result-object v1

    .line 366
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/sshd/server/SshServer;->setSubsystemFactories(Ljava/util/List;)V

    .line 369
    iget-object v0, p0, Lorg/jline/builtins/ssh/Ssh;->server:Lorg/apache/sshd/server/SshServer;

    new-instance v1, Lorg/apache/sshd/server/keyprovider/SimpleGeneratorHostKeyProvider;

    invoke-direct {v1}, Lorg/apache/sshd/server/keyprovider/SimpleGeneratorHostKeyProvider;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/sshd/server/SshServer;->setKeyPairProvider(Lorg/apache/sshd/common/keyprovider/KeyPairProvider;)V

    .line 370
    iget-object v0, p0, Lorg/jline/builtins/ssh/Ssh;->server:Lorg/apache/sshd/server/SshServer;

    invoke-virtual {v0}, Lorg/apache/sshd/server/SshServer;->start()V

    .line 371
    return-void
.end method

.method private status(Ljava/io/PrintStream;)V
    .locals 2
    .param p1, "stdout"    # Ljava/io/PrintStream;

    .line 352
    iget-object v0, p0, Lorg/jline/builtins/ssh/Ssh;->server:Lorg/apache/sshd/server/SshServer;

    if-eqz v0, :cond_0

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sshd is running on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jline/builtins/ssh/Ssh;->ip:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/jline/builtins/ssh/Ssh;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 355
    :cond_0
    const-string v0, "sshd is not running."

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 357
    :goto_0
    return-void
.end method

.method private stop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 375
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/jline/builtins/ssh/Ssh;->server:Lorg/apache/sshd/server/SshServer;

    invoke-virtual {v1}, Lorg/apache/sshd/server/SshServer;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 377
    iput-object v0, p0, Lorg/jline/builtins/ssh/Ssh;->server:Lorg/apache/sshd/server/SshServer;

    .line 378
    nop

    .line 379
    return-void

    .line 377
    :catchall_0
    move-exception v1

    iput-object v0, p0, Lorg/jline/builtins/ssh/Ssh;->server:Lorg/apache/sshd/server/SshServer;

    .line 378
    throw v1
.end method


# virtual methods
.method synthetic lambda$start$4$org-jline-builtins-ssh-Ssh(Ljava/lang/String;)Lorg/apache/sshd/server/command/Command;
    .locals 2
    .param p1, "command"    # Ljava/lang/String;

    .line 365
    new-instance v0, Lorg/jline/builtins/ssh/ShellCommand;

    iget-object v1, p0, Lorg/jline/builtins/ssh/Ssh;->execute:Ljava/util/function/Consumer;

    invoke-direct {v0, v1, p1}, Lorg/jline/builtins/ssh/ShellCommand;-><init>(Ljava/util/function/Consumer;Ljava/lang/String;)V

    return-object v0
.end method

.method public ssh(Lorg/jline/terminal/Terminal;Lorg/jline/reader/LineReader;Ljava/lang/String;Ljava/io/InputStream;Ljava/io/PrintStream;Ljava/io/PrintStream;[Ljava/lang/String;)V
    .locals 24
    .param p1, "terminal"    # Lorg/jline/terminal/Terminal;
    .param p2, "reader"    # Lorg/jline/reader/LineReader;
    .param p3, "user"    # Ljava/lang/String;
    .param p4, "stdin"    # Ljava/io/InputStream;
    .param p5, "stdout"    # Ljava/io/PrintStream;
    .param p6, "stderr"    # Ljava/io/PrintStream;
    .param p7, "argv"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 130
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    const-string v0, "ssh - connect to a server using ssh"

    const-string v1, "Usage: ssh [user@]hostname [command]"

    const-string v2, "  -? --help                show help"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    .line 135
    .local v12, "usage":[Ljava/lang/String;
    invoke-static {v12}, Lorg/jline/builtins/Options;->compile([Ljava/lang/String;)Lorg/jline/builtins/Options;

    move-result-object v0

    const/4 v13, 0x1

    move-object/from16 v14, p7

    invoke-virtual {v0, v14, v13}, Lorg/jline/builtins/Options;->parse([Ljava/lang/Object;Z)Lorg/jline/builtins/Options;

    move-result-object v15

    .line 136
    .local v15, "opt":Lorg/jline/builtins/Options;
    invoke-virtual {v15}, Lorg/jline/builtins/Options;->args()Ljava/util/List;

    move-result-object v7

    .line 138
    .local v7, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "help"

    invoke-virtual {v15, v0}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 142
    move-object/from16 v0, p3

    .line 143
    .local v0, "username":Ljava/lang/String;
    const/4 v6, 0x0

    invoke-interface {v7, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 144
    .local v1, "hostname":Ljava/lang/String;
    iget v2, v8, Lorg/jline/builtins/ssh/Ssh;->port:I

    .line 145
    .local v2, "port":I
    const/4 v3, 0x0

    .line 146
    .local v3, "command":Ljava/lang/String;
    const/16 v4, 0x40

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 147
    .local v4, "idx":I
    if-ltz v4, :cond_0

    .line 148
    invoke-virtual {v1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 149
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v16, v0

    goto :goto_0

    .line 147
    :cond_0
    move-object/from16 v16, v0

    .line 151
    .end local v0    # "username":Ljava/lang/String;
    .local v16, "username":Ljava/lang/String;
    :goto_0
    const/16 v0, 0x3a

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 152
    .end local v4    # "idx":I
    .local v5, "idx":I
    if-ltz v5, :cond_1

    .line 153
    add-int/lit8 v0, v5, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 154
    invoke-virtual {v1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v17, v1

    move/from16 v18, v2

    goto :goto_1

    .line 152
    :cond_1
    move-object/from16 v17, v1

    move/from16 v18, v2

    .line 156
    .end local v1    # "hostname":Ljava/lang/String;
    .end local v2    # "port":I
    .local v17, "hostname":Ljava/lang/String;
    .local v18, "port":I
    :goto_1
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 157
    const-string v0, " "

    invoke-static {v0, v7}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    goto :goto_2

    .line 156
    :cond_2
    move-object v4, v3

    .line 160
    .end local v3    # "command":Ljava/lang/String;
    .local v4, "command":Ljava/lang/String;
    :goto_2
    iget-object v0, v8, Lorg/jline/builtins/ssh/Ssh;->clientBuilder:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lorg/apache/sshd/client/SshClient;

    .line 161
    .local v3, "client":Lorg/apache/sshd/client/SshClient;
    :try_start_0
    new-instance v0, Lorg/jline/builtins/ssh/Ssh$JLineUserInteraction;

    move-object/from16 v2, p2

    invoke-direct {v0, v9, v2, v11}, Lorg/jline/builtins/ssh/Ssh$JLineUserInteraction;-><init>(Lorg/jline/terminal/Terminal;Lorg/jline/reader/LineReader;Ljava/io/PrintStream;)V

    move-object v1, v0

    .line 162
    .local v1, "ui":Lorg/jline/builtins/ssh/Ssh$JLineUserInteraction;
    invoke-virtual {v3, v1}, Lorg/apache/sshd/client/SshClient;->setFilePasswordProvider(Lorg/apache/sshd/common/config/keys/FilePasswordProvider;)V

    .line 163
    invoke-virtual {v3, v1}, Lorg/apache/sshd/client/SshClient;->setUserInteraction(Lorg/apache/sshd/client/auth/keyboard/UserInteraction;)V

    .line 164
    invoke-virtual {v3}, Lorg/apache/sshd/client/SshClient;->start()V

    .line 166
    invoke-interface/range {p1 .. p1}, Lorg/jline/terminal/Terminal;->writer()Ljava/io/PrintWriter;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    const/16 v19, 0x3

    move-object/from16 v20, v1

    .end local v1    # "ui":Lorg/jline/builtins/ssh/Ssh$JLineUserInteraction;
    .local v20, "ui":Lorg/jline/builtins/ssh/Ssh$JLineUserInteraction;
    move-object/from16 v1, p0

    move-object v2, v0

    move-object/from16 v21, v3

    .end local v3    # "client":Lorg/apache/sshd/client/SshClient;
    .local v21, "client":Lorg/apache/sshd/client/SshClient;
    move-object v13, v4

    .end local v4    # "command":Ljava/lang/String;
    .local v13, "command":Ljava/lang/String;
    move-object/from16 v4, v16

    move/from16 v22, v5

    .end local v5    # "idx":I
    .local v22, "idx":I
    move-object/from16 v5, v17

    move v0, v6

    move/from16 v6, v18

    move-object/from16 v23, v7

    .end local v7    # "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v23, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move/from16 v7, v19

    :try_start_1
    invoke-direct/range {v1 .. v7}, Lorg/jline/builtins/ssh/Ssh;->connectWithRetries(Ljava/io/PrintWriter;Lorg/apache/sshd/client/SshClient;Ljava/lang/String;Ljava/lang/String;II)Lorg/apache/sshd/client/session/ClientSession;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 167
    .local v1, "sshSession":Lorg/apache/sshd/client/session/ClientSession;
    :try_start_2
    invoke-interface {v1}, Lorg/apache/sshd/client/session/ClientSession;->auth()Lorg/apache/sshd/client/future/AuthFuture;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/sshd/client/future/AuthFuture;->verify()Ljava/lang/Object;

    .line 168
    const-wide/16 v2, 0x0

    if-eqz v13, :cond_3

    .line 169
    const-string v4, "exec"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Lorg/apache/sshd/client/session/ClientSession;->createChannel(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/sshd/client/channel/ClientChannel;

    move-result-object v4

    .line 170
    .local v4, "channel":Lorg/apache/sshd/client/channel/ClientChannel;
    new-instance v5, Ljava/io/ByteArrayInputStream;

    new-array v0, v0, [B

    invoke-direct {v5, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {v4, v5}, Lorg/apache/sshd/client/channel/ClientChannel;->setIn(Ljava/io/InputStream;)V

    .line 171
    new-instance v0, Lorg/apache/sshd/common/util/io/NoCloseOutputStream;

    invoke-direct {v0, v10}, Lorg/apache/sshd/common/util/io/NoCloseOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-interface {v4, v0}, Lorg/apache/sshd/client/channel/ClientChannel;->setOut(Ljava/io/OutputStream;)V

    .line 172
    new-instance v0, Lorg/apache/sshd/common/util/io/NoCloseOutputStream;

    invoke-direct {v0, v11}, Lorg/apache/sshd/common/util/io/NoCloseOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-interface {v4, v0}, Lorg/apache/sshd/client/channel/ClientChannel;->setErr(Ljava/io/OutputStream;)V

    .line 173
    invoke-interface {v4}, Lorg/apache/sshd/client/channel/ClientChannel;->open()Lorg/apache/sshd/client/future/OpenFuture;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/sshd/client/future/OpenFuture;->verify()Ljava/lang/Object;

    .line 174
    sget-object v0, Lorg/apache/sshd/client/channel/ClientChannelEvent;->CLOSED:Lorg/apache/sshd/client/channel/ClientChannelEvent;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-interface {v4, v0, v2, v3}, Lorg/apache/sshd/client/channel/ClientChannel;->waitFor(Ljava/util/Collection;J)Ljava/util/Set;

    .line 175
    nop

    .end local v4    # "channel":Lorg/apache/sshd/client/channel/ClientChannel;
    goto/16 :goto_3

    .line 176
    :cond_3
    invoke-interface {v1}, Lorg/apache/sshd/client/session/ClientSession;->createShellChannel()Lorg/apache/sshd/client/channel/ChannelShell;

    move-result-object v0

    move-object v4, v0

    .line 177
    .local v4, "channel":Lorg/apache/sshd/client/channel/ChannelShell;
    invoke-interface/range {p1 .. p1}, Lorg/jline/terminal/Terminal;->enterRawMode()Lorg/jline/terminal/Attributes;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v5, v0

    .line 179
    .local v5, "attributes":Lorg/jline/terminal/Attributes;
    :try_start_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v6, v0

    .line 181
    .local v6, "modes":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/channel/PtyMode;Ljava/lang/Integer;>;"
    sget-object v0, Lorg/apache/sshd/common/channel/PtyMode;->VINTR:Lorg/apache/sshd/common/channel/PtyMode;

    sget-object v7, Lorg/jline/terminal/Attributes$ControlChar;->VINTR:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {v5, v7}, Lorg/jline/terminal/Attributes;->getControlChar(Lorg/jline/terminal/Attributes$ControlChar;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    sget-object v0, Lorg/apache/sshd/common/channel/PtyMode;->VQUIT:Lorg/apache/sshd/common/channel/PtyMode;

    sget-object v7, Lorg/jline/terminal/Attributes$ControlChar;->VQUIT:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {v5, v7}, Lorg/jline/terminal/Attributes;->getControlChar(Lorg/jline/terminal/Attributes$ControlChar;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    sget-object v0, Lorg/apache/sshd/common/channel/PtyMode;->VERASE:Lorg/apache/sshd/common/channel/PtyMode;

    sget-object v7, Lorg/jline/terminal/Attributes$ControlChar;->VERASE:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {v5, v7}, Lorg/jline/terminal/Attributes;->getControlChar(Lorg/jline/terminal/Attributes$ControlChar;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    sget-object v0, Lorg/apache/sshd/common/channel/PtyMode;->VKILL:Lorg/apache/sshd/common/channel/PtyMode;

    sget-object v7, Lorg/jline/terminal/Attributes$ControlChar;->VKILL:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {v5, v7}, Lorg/jline/terminal/Attributes;->getControlChar(Lorg/jline/terminal/Attributes$ControlChar;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object v0, Lorg/apache/sshd/common/channel/PtyMode;->VEOF:Lorg/apache/sshd/common/channel/PtyMode;

    sget-object v7, Lorg/jline/terminal/Attributes$ControlChar;->VEOF:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {v5, v7}, Lorg/jline/terminal/Attributes;->getControlChar(Lorg/jline/terminal/Attributes$ControlChar;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    sget-object v0, Lorg/apache/sshd/common/channel/PtyMode;->VEOL:Lorg/apache/sshd/common/channel/PtyMode;

    sget-object v7, Lorg/jline/terminal/Attributes$ControlChar;->VEOL:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {v5, v7}, Lorg/jline/terminal/Attributes;->getControlChar(Lorg/jline/terminal/Attributes$ControlChar;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    sget-object v0, Lorg/apache/sshd/common/channel/PtyMode;->VEOL2:Lorg/apache/sshd/common/channel/PtyMode;

    sget-object v7, Lorg/jline/terminal/Attributes$ControlChar;->VEOL2:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {v5, v7}, Lorg/jline/terminal/Attributes;->getControlChar(Lorg/jline/terminal/Attributes$ControlChar;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    sget-object v0, Lorg/apache/sshd/common/channel/PtyMode;->VSTART:Lorg/apache/sshd/common/channel/PtyMode;

    sget-object v7, Lorg/jline/terminal/Attributes$ControlChar;->VSTART:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {v5, v7}, Lorg/jline/terminal/Attributes;->getControlChar(Lorg/jline/terminal/Attributes$ControlChar;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    sget-object v0, Lorg/apache/sshd/common/channel/PtyMode;->VSTOP:Lorg/apache/sshd/common/channel/PtyMode;

    sget-object v7, Lorg/jline/terminal/Attributes$ControlChar;->VSTOP:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {v5, v7}, Lorg/jline/terminal/Attributes;->getControlChar(Lorg/jline/terminal/Attributes$ControlChar;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    sget-object v0, Lorg/apache/sshd/common/channel/PtyMode;->VSUSP:Lorg/apache/sshd/common/channel/PtyMode;

    sget-object v7, Lorg/jline/terminal/Attributes$ControlChar;->VSUSP:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {v5, v7}, Lorg/jline/terminal/Attributes;->getControlChar(Lorg/jline/terminal/Attributes$ControlChar;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object v0, Lorg/apache/sshd/common/channel/PtyMode;->VDSUSP:Lorg/apache/sshd/common/channel/PtyMode;

    sget-object v7, Lorg/jline/terminal/Attributes$ControlChar;->VDSUSP:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {v5, v7}, Lorg/jline/terminal/Attributes;->getControlChar(Lorg/jline/terminal/Attributes$ControlChar;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    sget-object v0, Lorg/apache/sshd/common/channel/PtyMode;->VREPRINT:Lorg/apache/sshd/common/channel/PtyMode;

    sget-object v7, Lorg/jline/terminal/Attributes$ControlChar;->VREPRINT:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {v5, v7}, Lorg/jline/terminal/Attributes;->getControlChar(Lorg/jline/terminal/Attributes$ControlChar;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v0, Lorg/apache/sshd/common/channel/PtyMode;->VWERASE:Lorg/apache/sshd/common/channel/PtyMode;

    sget-object v7, Lorg/jline/terminal/Attributes$ControlChar;->VWERASE:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {v5, v7}, Lorg/jline/terminal/Attributes;->getControlChar(Lorg/jline/terminal/Attributes$ControlChar;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    sget-object v0, Lorg/apache/sshd/common/channel/PtyMode;->VLNEXT:Lorg/apache/sshd/common/channel/PtyMode;

    sget-object v7, Lorg/jline/terminal/Attributes$ControlChar;->VLNEXT:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {v5, v7}, Lorg/jline/terminal/Attributes;->getControlChar(Lorg/jline/terminal/Attributes$ControlChar;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v0, Lorg/apache/sshd/common/channel/PtyMode;->VSTATUS:Lorg/apache/sshd/common/channel/PtyMode;

    sget-object v7, Lorg/jline/terminal/Attributes$ControlChar;->VSTATUS:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {v5, v7}, Lorg/jline/terminal/Attributes;->getControlChar(Lorg/jline/terminal/Attributes$ControlChar;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    sget-object v0, Lorg/apache/sshd/common/channel/PtyMode;->VDISCARD:Lorg/apache/sshd/common/channel/PtyMode;

    sget-object v7, Lorg/jline/terminal/Attributes$ControlChar;->VDISCARD:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {v5, v7}, Lorg/jline/terminal/Attributes;->getControlChar(Lorg/jline/terminal/Attributes$ControlChar;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    sget-object v0, Lorg/apache/sshd/common/channel/PtyMode;->IGNPAR:Lorg/apache/sshd/common/channel/PtyMode;

    sget-object v7, Lorg/jline/terminal/Attributes$InputFlag;->IGNPAR:Lorg/jline/terminal/Attributes$InputFlag;

    invoke-static {v5, v7}, Lorg/jline/builtins/ssh/Ssh;->getFlag(Lorg/jline/terminal/Attributes;Lorg/jline/terminal/Attributes$InputFlag;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    sget-object v0, Lorg/apache/sshd/common/channel/PtyMode;->PARMRK:Lorg/apache/sshd/common/channel/PtyMode;

    sget-object v7, Lorg/jline/terminal/Attributes$InputFlag;->PARMRK:Lorg/jline/terminal/Attributes$InputFlag;

    invoke-static {v5, v7}, Lorg/jline/builtins/ssh/Ssh;->getFlag(Lorg/jline/terminal/Attributes;Lorg/jline/terminal/Attributes$InputFlag;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    sget-object v0, Lorg/apache/sshd/common/channel/PtyMode;->INPCK:Lorg/apache/sshd/common/channel/PtyMode;

    sget-object v7, Lorg/jline/terminal/Attributes$InputFlag;->INPCK:Lorg/jline/terminal/Attributes$InputFlag;

    invoke-static {v5, v7}, Lorg/jline/builtins/ssh/Ssh;->getFlag(Lorg/jline/terminal/Attributes;Lorg/jline/terminal/Attributes$InputFlag;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    sget-object v0, Lorg/apache/sshd/common/channel/PtyMode;->ISTRIP:Lorg/apache/sshd/common/channel/PtyMode;

    sget-object v7, Lorg/jline/terminal/Attributes$InputFlag;->ISTRIP:Lorg/jline/terminal/Attributes$InputFlag;

    invoke-static {v5, v7}, Lorg/jline/builtins/ssh/Ssh;->getFlag(Lorg/jline/terminal/Attributes;Lorg/jline/terminal/Attributes$InputFlag;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    sget-object v0, Lorg/apache/sshd/common/channel/PtyMode;->INLCR:Lorg/apache/sshd/common/channel/PtyMode;

    sget-object v7, Lorg/jline/terminal/Attributes$InputFlag;->INLCR:Lorg/jline/terminal/Attributes$InputFlag;

    invoke-static {v5, v7}, Lorg/jline/builtins/ssh/Ssh;->getFlag(Lorg/jline/terminal/Attributes;Lorg/jline/terminal/Attributes$InputFlag;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    sget-object v0, Lorg/apache/sshd/common/channel/PtyMode;->IGNCR:Lorg/apache/sshd/common/channel/PtyMode;

    sget-object v7, Lorg/jline/terminal/Attributes$InputFlag;->IGNCR:Lorg/jline/terminal/Attributes$InputFlag;

    invoke-static {v5, v7}, Lorg/jline/builtins/ssh/Ssh;->getFlag(Lorg/jline/terminal/Attributes;Lorg/jline/terminal/Attributes$InputFlag;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    sget-object v0, Lorg/apache/sshd/common/channel/PtyMode;->ICRNL:Lorg/apache/sshd/common/channel/PtyMode;

    sget-object v7, Lorg/jline/terminal/Attributes$InputFlag;->ICRNL:Lorg/jline/terminal/Attributes$InputFlag;

    invoke-static {v5, v7}, Lorg/jline/builtins/ssh/Ssh;->getFlag(Lorg/jline/terminal/Attributes;Lorg/jline/terminal/Attributes$InputFlag;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    sget-object v0, Lorg/apache/sshd/common/channel/PtyMode;->IXON:Lorg/apache/sshd/common/channel/PtyMode;

    sget-object v7, Lorg/jline/terminal/Attributes$InputFlag;->IXON:Lorg/jline/terminal/Attributes$InputFlag;

    invoke-static {v5, v7}, Lorg/jline/builtins/ssh/Ssh;->getFlag(Lorg/jline/terminal/Attributes;Lorg/jline/terminal/Attributes$InputFlag;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    sget-object v0, Lorg/apache/sshd/common/channel/PtyMode;->IXANY:Lorg/apache/sshd/common/channel/PtyMode;

    sget-object v7, Lorg/jline/terminal/Attributes$InputFlag;->IXANY:Lorg/jline/terminal/Attributes$InputFlag;

    invoke-static {v5, v7}, Lorg/jline/builtins/ssh/Ssh;->getFlag(Lorg/jline/terminal/Attributes;Lorg/jline/terminal/Attributes$InputFlag;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    sget-object v0, Lorg/apache/sshd/common/channel/PtyMode;->IXOFF:Lorg/apache/sshd/common/channel/PtyMode;

    sget-object v7, Lorg/jline/terminal/Attributes$InputFlag;->IXOFF:Lorg/jline/terminal/Attributes$InputFlag;

    invoke-static {v5, v7}, Lorg/jline/builtins/ssh/Ssh;->getFlag(Lorg/jline/terminal/Attributes;Lorg/jline/terminal/Attributes$InputFlag;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    sget-object v0, Lorg/apache/sshd/common/channel/PtyMode;->ISIG:Lorg/apache/sshd/common/channel/PtyMode;

    sget-object v7, Lorg/jline/terminal/Attributes$LocalFlag;->ISIG:Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-static {v5, v7}, Lorg/jline/builtins/ssh/Ssh;->getFlag(Lorg/jline/terminal/Attributes;Lorg/jline/terminal/Attributes$LocalFlag;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    sget-object v0, Lorg/apache/sshd/common/channel/PtyMode;->ICANON:Lorg/apache/sshd/common/channel/PtyMode;

    sget-object v7, Lorg/jline/terminal/Attributes$LocalFlag;->ICANON:Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-static {v5, v7}, Lorg/jline/builtins/ssh/Ssh;->getFlag(Lorg/jline/terminal/Attributes;Lorg/jline/terminal/Attributes$LocalFlag;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    sget-object v0, Lorg/apache/sshd/common/channel/PtyMode;->ECHO:Lorg/apache/sshd/common/channel/PtyMode;

    sget-object v7, Lorg/jline/terminal/Attributes$LocalFlag;->ECHO:Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-static {v5, v7}, Lorg/jline/builtins/ssh/Ssh;->getFlag(Lorg/jline/terminal/Attributes;Lorg/jline/terminal/Attributes$LocalFlag;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    sget-object v0, Lorg/apache/sshd/common/channel/PtyMode;->ECHOE:Lorg/apache/sshd/common/channel/PtyMode;

    sget-object v7, Lorg/jline/terminal/Attributes$LocalFlag;->ECHOE:Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-static {v5, v7}, Lorg/jline/builtins/ssh/Ssh;->getFlag(Lorg/jline/terminal/Attributes;Lorg/jline/terminal/Attributes$LocalFlag;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    sget-object v0, Lorg/apache/sshd/common/channel/PtyMode;->ECHOK:Lorg/apache/sshd/common/channel/PtyMode;

    sget-object v7, Lorg/jline/terminal/Attributes$LocalFlag;->ECHOK:Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-static {v5, v7}, Lorg/jline/builtins/ssh/Ssh;->getFlag(Lorg/jline/terminal/Attributes;Lorg/jline/terminal/Attributes$LocalFlag;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    sget-object v0, Lorg/apache/sshd/common/channel/PtyMode;->ECHONL:Lorg/apache/sshd/common/channel/PtyMode;

    sget-object v7, Lorg/jline/terminal/Attributes$LocalFlag;->ECHONL:Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-static {v5, v7}, Lorg/jline/builtins/ssh/Ssh;->getFlag(Lorg/jline/terminal/Attributes;Lorg/jline/terminal/Attributes$LocalFlag;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    sget-object v0, Lorg/apache/sshd/common/channel/PtyMode;->NOFLSH:Lorg/apache/sshd/common/channel/PtyMode;

    sget-object v7, Lorg/jline/terminal/Attributes$LocalFlag;->NOFLSH:Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-static {v5, v7}, Lorg/jline/builtins/ssh/Ssh;->getFlag(Lorg/jline/terminal/Attributes;Lorg/jline/terminal/Attributes$LocalFlag;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    sget-object v0, Lorg/apache/sshd/common/channel/PtyMode;->TOSTOP:Lorg/apache/sshd/common/channel/PtyMode;

    sget-object v7, Lorg/jline/terminal/Attributes$LocalFlag;->TOSTOP:Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-static {v5, v7}, Lorg/jline/builtins/ssh/Ssh;->getFlag(Lorg/jline/terminal/Attributes;Lorg/jline/terminal/Attributes$LocalFlag;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    sget-object v0, Lorg/apache/sshd/common/channel/PtyMode;->IEXTEN:Lorg/apache/sshd/common/channel/PtyMode;

    sget-object v7, Lorg/jline/terminal/Attributes$LocalFlag;->IEXTEN:Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-static {v5, v7}, Lorg/jline/builtins/ssh/Ssh;->getFlag(Lorg/jline/terminal/Attributes;Lorg/jline/terminal/Attributes$LocalFlag;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    sget-object v0, Lorg/apache/sshd/common/channel/PtyMode;->OPOST:Lorg/apache/sshd/common/channel/PtyMode;

    sget-object v7, Lorg/jline/terminal/Attributes$OutputFlag;->OPOST:Lorg/jline/terminal/Attributes$OutputFlag;

    invoke-static {v5, v7}, Lorg/jline/builtins/ssh/Ssh;->getFlag(Lorg/jline/terminal/Attributes;Lorg/jline/terminal/Attributes$OutputFlag;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    sget-object v0, Lorg/apache/sshd/common/channel/PtyMode;->ONLCR:Lorg/apache/sshd/common/channel/PtyMode;

    sget-object v7, Lorg/jline/terminal/Attributes$OutputFlag;->ONLCR:Lorg/jline/terminal/Attributes$OutputFlag;

    invoke-static {v5, v7}, Lorg/jline/builtins/ssh/Ssh;->getFlag(Lorg/jline/terminal/Attributes;Lorg/jline/terminal/Attributes$OutputFlag;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    sget-object v0, Lorg/apache/sshd/common/channel/PtyMode;->OCRNL:Lorg/apache/sshd/common/channel/PtyMode;

    sget-object v7, Lorg/jline/terminal/Attributes$OutputFlag;->OCRNL:Lorg/jline/terminal/Attributes$OutputFlag;

    invoke-static {v5, v7}, Lorg/jline/builtins/ssh/Ssh;->getFlag(Lorg/jline/terminal/Attributes;Lorg/jline/terminal/Attributes$OutputFlag;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    sget-object v0, Lorg/apache/sshd/common/channel/PtyMode;->ONOCR:Lorg/apache/sshd/common/channel/PtyMode;

    sget-object v7, Lorg/jline/terminal/Attributes$OutputFlag;->ONOCR:Lorg/jline/terminal/Attributes$OutputFlag;

    invoke-static {v5, v7}, Lorg/jline/builtins/ssh/Ssh;->getFlag(Lorg/jline/terminal/Attributes;Lorg/jline/terminal/Attributes$OutputFlag;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    sget-object v0, Lorg/apache/sshd/common/channel/PtyMode;->ONLRET:Lorg/apache/sshd/common/channel/PtyMode;

    sget-object v7, Lorg/jline/terminal/Attributes$OutputFlag;->ONLRET:Lorg/jline/terminal/Attributes$OutputFlag;

    invoke-static {v5, v7}, Lorg/jline/builtins/ssh/Ssh;->getFlag(Lorg/jline/terminal/Attributes;Lorg/jline/terminal/Attributes$OutputFlag;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    invoke-virtual {v4, v6}, Lorg/apache/sshd/client/channel/ChannelShell;->setPtyModes(Ljava/util/Map;)V

    .line 225
    invoke-interface/range {p1 .. p1}, Lorg/jline/terminal/Terminal;->getWidth()I

    move-result v0

    invoke-virtual {v4, v0}, Lorg/apache/sshd/client/channel/ChannelShell;->setPtyColumns(I)V

    .line 226
    invoke-interface/range {p1 .. p1}, Lorg/jline/terminal/Terminal;->getHeight()I

    move-result v0

    invoke-virtual {v4, v0}, Lorg/apache/sshd/client/channel/ChannelShell;->setPtyLines(I)V

    .line 227
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Lorg/apache/sshd/client/channel/ChannelShell;->setAgentForwarding(Z)V

    .line 228
    const-string v0, "TERM"

    invoke-interface/range {p1 .. p1}, Lorg/jline/terminal/Terminal;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v0, v7}, Lorg/apache/sshd/client/channel/ChannelShell;->setEnv(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    new-instance v0, Lorg/apache/sshd/common/util/io/NoCloseInputStream;

    move-object/from16 v7, p4

    invoke-direct {v0, v7}, Lorg/apache/sshd/common/util/io/NoCloseInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v4, v0}, Lorg/apache/sshd/client/channel/ChannelShell;->setIn(Ljava/io/InputStream;)V

    .line 231
    new-instance v0, Lorg/apache/sshd/common/util/io/NoCloseOutputStream;

    invoke-direct {v0, v10}, Lorg/apache/sshd/common/util/io/NoCloseOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v4, v0}, Lorg/apache/sshd/client/channel/ChannelShell;->setOut(Ljava/io/OutputStream;)V

    .line 232
    new-instance v0, Lorg/apache/sshd/common/util/io/NoCloseOutputStream;

    invoke-direct {v0, v11}, Lorg/apache/sshd/common/util/io/NoCloseOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v4, v0}, Lorg/apache/sshd/client/channel/ChannelShell;->setErr(Ljava/io/OutputStream;)V

    .line 233
    invoke-virtual {v4}, Lorg/apache/sshd/client/channel/ChannelShell;->open()Lorg/apache/sshd/client/future/OpenFuture;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/sshd/client/future/OpenFuture;->verify()Ljava/lang/Object;

    .line 234
    sget-object v0, Lorg/jline/terminal/Terminal$Signal;->WINCH:Lorg/jline/terminal/Terminal$Signal;

    new-instance v2, Lorg/jline/builtins/ssh/Ssh$$ExternalSyntheticLambda0;

    invoke-direct {v2, v9, v4}, Lorg/jline/builtins/ssh/Ssh$$ExternalSyntheticLambda0;-><init>(Lorg/jline/terminal/Terminal;Lorg/apache/sshd/client/channel/ChannelShell;)V

    invoke-interface {v9, v0, v2}, Lorg/jline/terminal/Terminal;->handle(Lorg/jline/terminal/Terminal$Signal;Lorg/jline/terminal/Terminal$SignalHandler;)Lorg/jline/terminal/Terminal$SignalHandler;

    move-result-object v0

    move-object v2, v0

    .line 242
    .local v2, "prevWinchHandler":Lorg/jline/terminal/Terminal$SignalHandler;
    sget-object v0, Lorg/jline/terminal/Terminal$Signal;->QUIT:Lorg/jline/terminal/Terminal$Signal;

    new-instance v3, Lorg/jline/builtins/ssh/Ssh$$ExternalSyntheticLambda1;

    invoke-direct {v3, v4, v5}, Lorg/jline/builtins/ssh/Ssh$$ExternalSyntheticLambda1;-><init>(Lorg/apache/sshd/client/channel/ChannelShell;Lorg/jline/terminal/Attributes;)V

    invoke-interface {v9, v0, v3}, Lorg/jline/terminal/Terminal;->handle(Lorg/jline/terminal/Terminal$Signal;Lorg/jline/terminal/Terminal$SignalHandler;)Lorg/jline/terminal/Terminal$SignalHandler;

    move-result-object v0

    move-object v3, v0

    .line 250
    .local v3, "prevQuitHandler":Lorg/jline/terminal/Terminal$SignalHandler;
    sget-object v0, Lorg/jline/terminal/Terminal$Signal;->INT:Lorg/jline/terminal/Terminal$Signal;

    move-object/from16 v19, v6

    .end local v6    # "modes":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/channel/PtyMode;Ljava/lang/Integer;>;"
    .local v19, "modes":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/channel/PtyMode;Ljava/lang/Integer;>;"
    new-instance v6, Lorg/jline/builtins/ssh/Ssh$$ExternalSyntheticLambda2;

    invoke-direct {v6, v4, v5}, Lorg/jline/builtins/ssh/Ssh$$ExternalSyntheticLambda2;-><init>(Lorg/apache/sshd/client/channel/ChannelShell;Lorg/jline/terminal/Attributes;)V

    invoke-interface {v9, v0, v6}, Lorg/jline/terminal/Terminal;->handle(Lorg/jline/terminal/Terminal$Signal;Lorg/jline/terminal/Terminal$SignalHandler;)Lorg/jline/terminal/Terminal$SignalHandler;

    move-result-object v0

    move-object v6, v0

    .line 258
    .local v6, "prevIntHandler":Lorg/jline/terminal/Terminal$SignalHandler;
    sget-object v0, Lorg/jline/terminal/Terminal$Signal;->TSTP:Lorg/jline/terminal/Terminal$Signal;

    new-instance v7, Lorg/jline/builtins/ssh/Ssh$$ExternalSyntheticLambda3;

    invoke-direct {v7, v4, v5}, Lorg/jline/builtins/ssh/Ssh$$ExternalSyntheticLambda3;-><init>(Lorg/apache/sshd/client/channel/ChannelShell;Lorg/jline/terminal/Attributes;)V

    invoke-interface {v9, v0, v7}, Lorg/jline/terminal/Terminal;->handle(Lorg/jline/terminal/Terminal$Signal;Lorg/jline/terminal/Terminal$SignalHandler;)Lorg/jline/terminal/Terminal$SignalHandler;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v7, v0

    .line 267
    .local v7, "prevStopHandler":Lorg/jline/terminal/Terminal$SignalHandler;
    :try_start_4
    sget-object v0, Lorg/apache/sshd/client/channel/ClientChannelEvent;->CLOSED:Lorg/apache/sshd/client/channel/ClientChannelEvent;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    const-wide/16 v10, 0x0

    invoke-virtual {v4, v0, v10, v11}, Lorg/apache/sshd/client/channel/ChannelShell;->waitFor(Ljava/util/Collection;J)Ljava/util/Set;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 269
    :try_start_5
    sget-object v0, Lorg/jline/terminal/Terminal$Signal;->WINCH:Lorg/jline/terminal/Terminal$Signal;

    invoke-interface {v9, v0, v2}, Lorg/jline/terminal/Terminal;->handle(Lorg/jline/terminal/Terminal$Signal;Lorg/jline/terminal/Terminal$SignalHandler;)Lorg/jline/terminal/Terminal$SignalHandler;

    .line 270
    sget-object v0, Lorg/jline/terminal/Terminal$Signal;->INT:Lorg/jline/terminal/Terminal$Signal;

    invoke-interface {v9, v0, v6}, Lorg/jline/terminal/Terminal;->handle(Lorg/jline/terminal/Terminal$Signal;Lorg/jline/terminal/Terminal$SignalHandler;)Lorg/jline/terminal/Terminal$SignalHandler;

    .line 271
    sget-object v0, Lorg/jline/terminal/Terminal$Signal;->TSTP:Lorg/jline/terminal/Terminal$Signal;

    invoke-interface {v9, v0, v7}, Lorg/jline/terminal/Terminal;->handle(Lorg/jline/terminal/Terminal$Signal;Lorg/jline/terminal/Terminal$SignalHandler;)Lorg/jline/terminal/Terminal$SignalHandler;

    .line 272
    sget-object v0, Lorg/jline/terminal/Terminal$Signal;->QUIT:Lorg/jline/terminal/Terminal$Signal;

    invoke-interface {v9, v0, v3}, Lorg/jline/terminal/Terminal;->handle(Lorg/jline/terminal/Terminal$Signal;Lorg/jline/terminal/Terminal$SignalHandler;)Lorg/jline/terminal/Terminal$SignalHandler;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 273
    nop

    .line 275
    .end local v2    # "prevWinchHandler":Lorg/jline/terminal/Terminal$SignalHandler;
    .end local v3    # "prevQuitHandler":Lorg/jline/terminal/Terminal$SignalHandler;
    .end local v6    # "prevIntHandler":Lorg/jline/terminal/Terminal$SignalHandler;
    .end local v7    # "prevStopHandler":Lorg/jline/terminal/Terminal$SignalHandler;
    .end local v19    # "modes":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/channel/PtyMode;Ljava/lang/Integer;>;"
    :try_start_6
    invoke-interface {v9, v5}, Lorg/jline/terminal/Terminal;->setAttributes(Lorg/jline/terminal/Attributes;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 276
    nop

    .line 278
    .end local v4    # "channel":Lorg/apache/sshd/client/channel/ChannelShell;
    .end local v5    # "attributes":Lorg/jline/terminal/Attributes;
    :goto_3
    if-eqz v1, :cond_4

    :try_start_7
    invoke-interface {v1}, Lorg/apache/sshd/client/session/ClientSession;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 279
    .end local v1    # "sshSession":Lorg/apache/sshd/client/session/ClientSession;
    .end local v20    # "ui":Lorg/jline/builtins/ssh/Ssh$JLineUserInteraction;
    :cond_4
    if-eqz v21, :cond_5

    invoke-virtual/range {v21 .. v21}, Lorg/apache/sshd/client/SshClient;->close()V

    .line 280
    .end local v21    # "client":Lorg/apache/sshd/client/SshClient;
    :cond_5
    return-void

    .line 269
    .restart local v1    # "sshSession":Lorg/apache/sshd/client/session/ClientSession;
    .restart local v2    # "prevWinchHandler":Lorg/jline/terminal/Terminal$SignalHandler;
    .restart local v3    # "prevQuitHandler":Lorg/jline/terminal/Terminal$SignalHandler;
    .restart local v4    # "channel":Lorg/apache/sshd/client/channel/ChannelShell;
    .restart local v5    # "attributes":Lorg/jline/terminal/Attributes;
    .restart local v6    # "prevIntHandler":Lorg/jline/terminal/Terminal$SignalHandler;
    .restart local v7    # "prevStopHandler":Lorg/jline/terminal/Terminal$SignalHandler;
    .restart local v19    # "modes":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/channel/PtyMode;Ljava/lang/Integer;>;"
    .restart local v20    # "ui":Lorg/jline/builtins/ssh/Ssh$JLineUserInteraction;
    .restart local v21    # "client":Lorg/apache/sshd/client/SshClient;
    :catchall_0
    move-exception v0

    :try_start_8
    sget-object v10, Lorg/jline/terminal/Terminal$Signal;->WINCH:Lorg/jline/terminal/Terminal$Signal;

    invoke-interface {v9, v10, v2}, Lorg/jline/terminal/Terminal;->handle(Lorg/jline/terminal/Terminal$Signal;Lorg/jline/terminal/Terminal$SignalHandler;)Lorg/jline/terminal/Terminal$SignalHandler;

    .line 270
    sget-object v10, Lorg/jline/terminal/Terminal$Signal;->INT:Lorg/jline/terminal/Terminal$Signal;

    invoke-interface {v9, v10, v6}, Lorg/jline/terminal/Terminal;->handle(Lorg/jline/terminal/Terminal$Signal;Lorg/jline/terminal/Terminal$SignalHandler;)Lorg/jline/terminal/Terminal$SignalHandler;

    .line 271
    sget-object v10, Lorg/jline/terminal/Terminal$Signal;->TSTP:Lorg/jline/terminal/Terminal$Signal;

    invoke-interface {v9, v10, v7}, Lorg/jline/terminal/Terminal;->handle(Lorg/jline/terminal/Terminal$Signal;Lorg/jline/terminal/Terminal$SignalHandler;)Lorg/jline/terminal/Terminal$SignalHandler;

    .line 272
    sget-object v10, Lorg/jline/terminal/Terminal$Signal;->QUIT:Lorg/jline/terminal/Terminal$Signal;

    invoke-interface {v9, v10, v3}, Lorg/jline/terminal/Terminal;->handle(Lorg/jline/terminal/Terminal$Signal;Lorg/jline/terminal/Terminal$SignalHandler;)Lorg/jline/terminal/Terminal$SignalHandler;

    .line 273
    nop

    .end local v1    # "sshSession":Lorg/apache/sshd/client/session/ClientSession;
    .end local v4    # "channel":Lorg/apache/sshd/client/channel/ChannelShell;
    .end local v5    # "attributes":Lorg/jline/terminal/Attributes;
    .end local v12    # "usage":[Ljava/lang/String;
    .end local v13    # "command":Ljava/lang/String;
    .end local v15    # "opt":Lorg/jline/builtins/Options;
    .end local v16    # "username":Ljava/lang/String;
    .end local v17    # "hostname":Ljava/lang/String;
    .end local v18    # "port":I
    .end local v20    # "ui":Lorg/jline/builtins/ssh/Ssh$JLineUserInteraction;
    .end local v21    # "client":Lorg/apache/sshd/client/SshClient;
    .end local v22    # "idx":I
    .end local v23    # "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local p1    # "terminal":Lorg/jline/terminal/Terminal;
    .end local p2    # "reader":Lorg/jline/reader/LineReader;
    .end local p3    # "user":Ljava/lang/String;
    .end local p4    # "stdin":Ljava/io/InputStream;
    .end local p5    # "stdout":Ljava/io/PrintStream;
    .end local p6    # "stderr":Ljava/io/PrintStream;
    .end local p7    # "argv":[Ljava/lang/String;
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 275
    .end local v2    # "prevWinchHandler":Lorg/jline/terminal/Terminal$SignalHandler;
    .end local v3    # "prevQuitHandler":Lorg/jline/terminal/Terminal$SignalHandler;
    .end local v6    # "prevIntHandler":Lorg/jline/terminal/Terminal$SignalHandler;
    .end local v7    # "prevStopHandler":Lorg/jline/terminal/Terminal$SignalHandler;
    .end local v19    # "modes":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/channel/PtyMode;Ljava/lang/Integer;>;"
    .restart local v1    # "sshSession":Lorg/apache/sshd/client/session/ClientSession;
    .restart local v4    # "channel":Lorg/apache/sshd/client/channel/ChannelShell;
    .restart local v5    # "attributes":Lorg/jline/terminal/Attributes;
    .restart local v12    # "usage":[Ljava/lang/String;
    .restart local v13    # "command":Ljava/lang/String;
    .restart local v15    # "opt":Lorg/jline/builtins/Options;
    .restart local v16    # "username":Ljava/lang/String;
    .restart local v17    # "hostname":Ljava/lang/String;
    .restart local v18    # "port":I
    .restart local v20    # "ui":Lorg/jline/builtins/ssh/Ssh$JLineUserInteraction;
    .restart local v21    # "client":Lorg/apache/sshd/client/SshClient;
    .restart local v22    # "idx":I
    .restart local v23    # "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local p1    # "terminal":Lorg/jline/terminal/Terminal;
    .restart local p2    # "reader":Lorg/jline/reader/LineReader;
    .restart local p3    # "user":Ljava/lang/String;
    .restart local p4    # "stdin":Ljava/io/InputStream;
    .restart local p5    # "stdout":Ljava/io/PrintStream;
    .restart local p6    # "stderr":Ljava/io/PrintStream;
    .restart local p7    # "argv":[Ljava/lang/String;
    :catchall_1
    move-exception v0

    :try_start_9
    invoke-interface {v9, v5}, Lorg/jline/terminal/Terminal;->setAttributes(Lorg/jline/terminal/Attributes;)V

    .line 276
    nop

    .end local v1    # "sshSession":Lorg/apache/sshd/client/session/ClientSession;
    .end local v12    # "usage":[Ljava/lang/String;
    .end local v13    # "command":Ljava/lang/String;
    .end local v15    # "opt":Lorg/jline/builtins/Options;
    .end local v16    # "username":Ljava/lang/String;
    .end local v17    # "hostname":Ljava/lang/String;
    .end local v18    # "port":I
    .end local v20    # "ui":Lorg/jline/builtins/ssh/Ssh$JLineUserInteraction;
    .end local v21    # "client":Lorg/apache/sshd/client/SshClient;
    .end local v22    # "idx":I
    .end local v23    # "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local p1    # "terminal":Lorg/jline/terminal/Terminal;
    .end local p2    # "reader":Lorg/jline/reader/LineReader;
    .end local p3    # "user":Ljava/lang/String;
    .end local p4    # "stdin":Ljava/io/InputStream;
    .end local p5    # "stdout":Ljava/io/PrintStream;
    .end local p6    # "stderr":Ljava/io/PrintStream;
    .end local p7    # "argv":[Ljava/lang/String;
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 166
    .end local v4    # "channel":Lorg/apache/sshd/client/channel/ChannelShell;
    .end local v5    # "attributes":Lorg/jline/terminal/Attributes;
    .restart local v1    # "sshSession":Lorg/apache/sshd/client/session/ClientSession;
    .restart local v12    # "usage":[Ljava/lang/String;
    .restart local v13    # "command":Ljava/lang/String;
    .restart local v15    # "opt":Lorg/jline/builtins/Options;
    .restart local v16    # "username":Ljava/lang/String;
    .restart local v17    # "hostname":Ljava/lang/String;
    .restart local v18    # "port":I
    .restart local v20    # "ui":Lorg/jline/builtins/ssh/Ssh$JLineUserInteraction;
    .restart local v21    # "client":Lorg/apache/sshd/client/SshClient;
    .restart local v22    # "idx":I
    .restart local v23    # "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local p1    # "terminal":Lorg/jline/terminal/Terminal;
    .restart local p2    # "reader":Lorg/jline/reader/LineReader;
    .restart local p3    # "user":Ljava/lang/String;
    .restart local p4    # "stdin":Ljava/io/InputStream;
    .restart local p5    # "stdout":Ljava/io/PrintStream;
    .restart local p6    # "stderr":Ljava/io/PrintStream;
    .restart local p7    # "argv":[Ljava/lang/String;
    :catchall_2
    move-exception v0

    move-object v2, v0

    if-eqz v1, :cond_6

    :try_start_a
    invoke-interface {v1}, Lorg/apache/sshd/client/session/ClientSession;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object v3, v0

    :try_start_b
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v12    # "usage":[Ljava/lang/String;
    .end local v13    # "command":Ljava/lang/String;
    .end local v15    # "opt":Lorg/jline/builtins/Options;
    .end local v16    # "username":Ljava/lang/String;
    .end local v17    # "hostname":Ljava/lang/String;
    .end local v18    # "port":I
    .end local v21    # "client":Lorg/apache/sshd/client/SshClient;
    .end local v22    # "idx":I
    .end local v23    # "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local p1    # "terminal":Lorg/jline/terminal/Terminal;
    .end local p2    # "reader":Lorg/jline/reader/LineReader;
    .end local p3    # "user":Ljava/lang/String;
    .end local p4    # "stdin":Ljava/io/InputStream;
    .end local p5    # "stdout":Ljava/io/PrintStream;
    .end local p6    # "stderr":Ljava/io/PrintStream;
    .end local p7    # "argv":[Ljava/lang/String;
    :cond_6
    :goto_4
    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 160
    .end local v1    # "sshSession":Lorg/apache/sshd/client/session/ClientSession;
    .end local v20    # "ui":Lorg/jline/builtins/ssh/Ssh$JLineUserInteraction;
    .restart local v12    # "usage":[Ljava/lang/String;
    .restart local v13    # "command":Ljava/lang/String;
    .restart local v15    # "opt":Lorg/jline/builtins/Options;
    .restart local v16    # "username":Ljava/lang/String;
    .restart local v17    # "hostname":Ljava/lang/String;
    .restart local v18    # "port":I
    .restart local v21    # "client":Lorg/apache/sshd/client/SshClient;
    .restart local v22    # "idx":I
    .restart local v23    # "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local p1    # "terminal":Lorg/jline/terminal/Terminal;
    .restart local p2    # "reader":Lorg/jline/reader/LineReader;
    .restart local p3    # "user":Ljava/lang/String;
    .restart local p4    # "stdin":Ljava/io/InputStream;
    .restart local p5    # "stdout":Ljava/io/PrintStream;
    .restart local p6    # "stderr":Ljava/io/PrintStream;
    .restart local p7    # "argv":[Ljava/lang/String;
    :catchall_4
    move-exception v0

    move-object v1, v0

    goto :goto_5

    .end local v13    # "command":Ljava/lang/String;
    .end local v21    # "client":Lorg/apache/sshd/client/SshClient;
    .end local v22    # "idx":I
    .end local v23    # "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v3, "client":Lorg/apache/sshd/client/SshClient;
    .local v4, "command":Ljava/lang/String;
    .local v5, "idx":I
    .local v7, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_5
    move-exception v0

    move-object/from16 v21, v3

    move-object v13, v4

    move/from16 v22, v5

    move-object/from16 v23, v7

    move-object v1, v0

    .end local v3    # "client":Lorg/apache/sshd/client/SshClient;
    .end local v4    # "command":Ljava/lang/String;
    .end local v5    # "idx":I
    .end local v7    # "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v13    # "command":Ljava/lang/String;
    .restart local v21    # "client":Lorg/apache/sshd/client/SshClient;
    .restart local v22    # "idx":I
    .restart local v23    # "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_5
    if-eqz v21, :cond_7

    :try_start_c
    invoke-virtual/range {v21 .. v21}, Lorg/apache/sshd/client/SshClient;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    goto :goto_6

    :catchall_6
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_6
    throw v1

    .line 138
    .end local v13    # "command":Ljava/lang/String;
    .end local v16    # "username":Ljava/lang/String;
    .end local v17    # "hostname":Ljava/lang/String;
    .end local v18    # "port":I
    .end local v21    # "client":Lorg/apache/sshd/client/SshClient;
    .end local v22    # "idx":I
    .end local v23    # "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_8
    move-object/from16 v23, v7

    .line 139
    .end local v7    # "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v23    # "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lorg/jline/builtins/Options$HelpException;

    invoke-virtual {v15}, Lorg/jline/builtins/Options;->usage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jline/builtins/Options$HelpException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sshd(Ljava/io/PrintStream;Ljava/io/PrintStream;[Ljava/lang/String;)V
    .locals 7
    .param p1, "stdout"    # Ljava/io/PrintStream;
    .param p2, "stderr"    # Ljava/io/PrintStream;
    .param p3, "argv"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 315
    const-string v0, "sshd - start an ssh server"

    const-string v1, "Usage: sshd [-i ip] [-p port] start | stop | status"

    const-string v2, "  -i --ip=INTERFACE        listen interface (default=127.0.0.1)"

    const-string v3, "  -p --port=PORT           listen port (default=2022)"

    const-string v4, "  -? --help                show help"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    .line 321
    .local v0, "usage":[Ljava/lang/String;
    invoke-static {v0}, Lorg/jline/builtins/Options;->compile([Ljava/lang/String;)Lorg/jline/builtins/Options;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p3, v2}, Lorg/jline/builtins/Options;->parse([Ljava/lang/Object;Z)Lorg/jline/builtins/Options;

    move-result-object v1

    .line 322
    .local v1, "opt":Lorg/jline/builtins/Options;
    invoke-virtual {v1}, Lorg/jline/builtins/Options;->args()Ljava/util/List;

    move-result-object v2

    .line 324
    .local v2, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "help"

    invoke-virtual {v1, v3}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 328
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 330
    .local v3, "command":Ljava/lang/String;
    const-string v4, "start"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 331
    iget-object v4, p0, Lorg/jline/builtins/ssh/Ssh;->server:Lorg/apache/sshd/server/SshServer;

    if-nez v4, :cond_0

    .line 334
    const-string v4, "ip"

    invoke-virtual {v1, v4}, Lorg/jline/builtins/Options;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/jline/builtins/ssh/Ssh;->ip:Ljava/lang/String;

    .line 335
    const-string v4, "port"

    invoke-virtual {v1, v4}, Lorg/jline/builtins/Options;->getNumber(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lorg/jline/builtins/ssh/Ssh;->port:I

    .line 336
    invoke-direct {p0}, Lorg/jline/builtins/ssh/Ssh;->start()V

    .line 337
    invoke-direct {p0, p1}, Lorg/jline/builtins/ssh/Ssh;->status(Ljava/io/PrintStream;)V

    goto :goto_0

    .line 332
    :cond_0
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sshd is already running on port "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lorg/jline/builtins/ssh/Ssh;->port:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 338
    :cond_1
    const-string v4, "stop"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 339
    iget-object v4, p0, Lorg/jline/builtins/ssh/Ssh;->server:Lorg/apache/sshd/server/SshServer;

    if-eqz v4, :cond_2

    .line 342
    invoke-direct {p0}, Lorg/jline/builtins/ssh/Ssh;->stop()V

    goto :goto_0

    .line 340
    :cond_2
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "sshd is not running."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 343
    :cond_3
    const-string v4, "status"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 344
    invoke-direct {p0, p1}, Lorg/jline/builtins/ssh/Ssh;->status(Ljava/io/PrintStream;)V

    .line 349
    :goto_0
    return-void

    .line 346
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

    .line 325
    .end local v3    # "command":Ljava/lang/String;
    :cond_5
    new-instance v3, Lorg/jline/builtins/Options$HelpException;

    invoke-virtual {v1}, Lorg/jline/builtins/Options;->usage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/jline/builtins/Options$HelpException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
