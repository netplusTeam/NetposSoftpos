.class public Lorg/jpos/q2/cli/SHUTDOWN;
.super Ljava/lang/Object;
.source "SHUTDOWN.java"

# interfaces
.implements Lorg/jpos/q2/CLICommand;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private varargs hasOption([Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 8
    .param p1, "args"    # [Ljava/lang/String;
    .param p2, "opts"    # [Ljava/lang/String;

    .line 50
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    .line 51
    .local v3, "s":Ljava/lang/String;
    array-length v4, p2

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_1

    aget-object v6, p2, v5

    .line 52
    .local v6, "o":Ljava/lang/String;
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 53
    const/4 v0, 0x1

    return v0

    .line 51
    .end local v6    # "o":Ljava/lang/String;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 50
    .end local v3    # "s":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 56
    :cond_2
    return v1
.end method


# virtual methods
.method public exec(Lorg/jpos/q2/CLIContext;[Ljava/lang/String;)V
    .locals 4
    .param p1, "cli"    # Lorg/jpos/q2/CLIContext;
    .param p2, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    invoke-virtual {p1}, Lorg/jpos/q2/CLIContext;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/jpos/q2/CLIContext;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    if-eq v0, v1, :cond_0

    .line 31
    const-string v0, "Can\'t shutdown remotely"

    invoke-virtual {p1, v0}, Lorg/jpos/q2/CLIContext;->println(Ljava/lang/String;)V

    .line 32
    return-void

    .line 35
    :cond_0
    const-string v0, "-f"

    const-string v1, "--force"

    const-string v2, "-fq"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lorg/jpos/q2/cli/SHUTDOWN;->hasOption([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36
    const/4 v0, 0x1

    .local v0, "shutdown":Z
    goto :goto_0

    .line 38
    .end local v0    # "shutdown":Z
    :cond_1
    const-string v0, "Confirm shutdown (Yes/No) ? "

    invoke-virtual {p1, v0}, Lorg/jpos/q2/CLIContext;->confirm(Ljava/lang/String;)Z

    move-result v0

    .line 40
    .restart local v0    # "shutdown":Z
    :goto_0
    if-eqz v0, :cond_3

    .line 41
    const-string v1, "-q"

    const-string v3, "--quiet"

    filled-new-array {v1, v3, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lorg/jpos/q2/cli/SHUTDOWN;->hasOption([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 42
    const-string v1, "Shutting down."

    invoke-virtual {p1, v1}, Lorg/jpos/q2/CLIContext;->println(Ljava/lang/String;)V

    .line 43
    :cond_2
    invoke-virtual {p1}, Lorg/jpos/q2/CLIContext;->getCLI()Lorg/jpos/q2/CLI;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jpos/q2/CLI;->getQ2()Lorg/jpos/q2/Q2;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jpos/q2/Q2;->shutdown()V

    goto :goto_1

    .line 45
    :cond_3
    const-string v1, "Q2 will continue running."

    invoke-virtual {p1, v1}, Lorg/jpos/q2/CLIContext;->println(Ljava/lang/String;)V

    .line 47
    :goto_1
    return-void
.end method
