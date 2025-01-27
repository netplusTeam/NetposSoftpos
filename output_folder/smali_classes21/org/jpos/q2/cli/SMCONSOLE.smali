.class public Lorg/jpos/q2/cli/SMCONSOLE;
.super Ljava/lang/Object;
.source "SMCONSOLE.java"

# interfaces
.implements Lorg/jpos/q2/CLICommand;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public exec(Lorg/jpos/q2/CLIContext;[Ljava/lang/String;)V
    .locals 4
    .param p1, "cli"    # Lorg/jpos/q2/CLIContext;
    .param p2, "args"    # [Ljava/lang/String;

    .line 31
    :try_start_0
    array-length v0, p2

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    .line 32
    .local v0, "params":[Ljava/lang/String;
    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {p2, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 33
    new-instance v1, Ljava/io/PrintStream;

    invoke-virtual {p1}, Lorg/jpos/q2/CLIContext;->getReader()Lorg/jline/reader/LineReader;

    move-result-object v2

    invoke-interface {v2}, Lorg/jline/reader/LineReader;->getTerminal()Lorg/jline/terminal/Terminal;

    move-result-object v2

    invoke-interface {v2}, Lorg/jline/terminal/Terminal;->output()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 34
    .local v1, "os":Ljava/io/PrintStream;
    new-instance v2, Lorg/jpos/security/jceadapter/Console;

    invoke-direct {v2}, Lorg/jpos/security/jceadapter/Console;-><init>()V

    invoke-virtual {v2, v1, v1, v0}, Lorg/jpos/security/jceadapter/Console;->exec(Ljava/io/PrintStream;Ljava/io/PrintStream;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .end local v0    # "params":[Ljava/lang/String;
    .end local v1    # "os":Ljava/io/PrintStream;
    goto :goto_0

    .line 36
    :catch_0
    move-exception v0

    .line 38
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 40
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
