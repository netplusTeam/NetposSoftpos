.class public Lorg/jline/console/CommandInput;
.super Ljava/lang/Object;
.source "CommandInput.java"


# instance fields
.field args:[Ljava/lang/String;

.field command:Ljava/lang/String;

.field err:Ljava/io/PrintStream;

.field in:Ljava/io/InputStream;

.field out:Ljava/io/PrintStream;

.field terminal:Lorg/jline/terminal/Terminal;

.field xargs:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Object;Lorg/jline/console/CommandRegistry$CommandSession;)V
    .locals 3
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "xargs"    # [Ljava/lang/Object;
    .param p3, "session"    # Lorg/jline/console/CommandRegistry$CommandSession;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    if-eqz p2, :cond_1

    .line 27
    iput-object p2, p0, Lorg/jline/console/CommandInput;->xargs:[Ljava/lang/Object;

    .line 28
    array-length v0, p2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/jline/console/CommandInput;->args:[Ljava/lang/String;

    .line 29
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 30
    iget-object v1, p0, Lorg/jline/console/CommandInput;->args:[Ljava/lang/String;

    aget-object v2, p2, v0

    if-eqz v2, :cond_0

    aget-object v2, p2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    aput-object v2, v1, v0

    .line 29
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 33
    .end local v0    # "i":I
    :cond_1
    iput-object p1, p0, Lorg/jline/console/CommandInput;->command:Ljava/lang/String;

    .line 34
    invoke-virtual {p3}, Lorg/jline/console/CommandRegistry$CommandSession;->terminal()Lorg/jline/terminal/Terminal;

    move-result-object v0

    iput-object v0, p0, Lorg/jline/console/CommandInput;->terminal:Lorg/jline/terminal/Terminal;

    .line 35
    invoke-virtual {p3}, Lorg/jline/console/CommandRegistry$CommandSession;->in()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/jline/console/CommandInput;->in:Ljava/io/InputStream;

    .line 36
    invoke-virtual {p3}, Lorg/jline/console/CommandRegistry$CommandSession;->out()Ljava/io/PrintStream;

    move-result-object v0

    iput-object v0, p0, Lorg/jline/console/CommandInput;->out:Ljava/io/PrintStream;

    .line 37
    invoke-virtual {p3}, Lorg/jline/console/CommandRegistry$CommandSession;->err()Ljava/io/PrintStream;

    move-result-object v0

    iput-object v0, p0, Lorg/jline/console/CommandInput;->err:Ljava/io/PrintStream;

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Object;Lorg/jline/terminal/Terminal;Ljava/io/InputStream;Ljava/io/PrintStream;Ljava/io/PrintStream;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .param p3, "terminal"    # Lorg/jline/terminal/Terminal;
    .param p4, "in"    # Ljava/io/InputStream;
    .param p5, "out"    # Ljava/io/PrintStream;
    .param p6, "err"    # Ljava/io/PrintStream;

    .line 41
    new-instance v0, Lorg/jline/console/CommandRegistry$CommandSession;

    invoke-direct {v0, p3, p4, p5, p6}, Lorg/jline/console/CommandRegistry$CommandSession;-><init>(Lorg/jline/terminal/Terminal;Ljava/io/InputStream;Ljava/io/PrintStream;Ljava/io/PrintStream;)V

    invoke-direct {p0, p1, p2, v0}, Lorg/jline/console/CommandInput;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lorg/jline/console/CommandRegistry$CommandSession;)V

    .line 42
    return-void
.end method


# virtual methods
.method public args()[Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/jline/console/CommandInput;->args:[Ljava/lang/String;

    return-object v0
.end method

.method public command()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/jline/console/CommandInput;->command:Ljava/lang/String;

    return-object v0
.end method

.method public err()Ljava/io/PrintStream;
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/jline/console/CommandInput;->err:Ljava/io/PrintStream;

    return-object v0
.end method

.method public in()Ljava/io/InputStream;
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/jline/console/CommandInput;->in:Ljava/io/InputStream;

    return-object v0
.end method

.method public out()Ljava/io/PrintStream;
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/jline/console/CommandInput;->out:Ljava/io/PrintStream;

    return-object v0
.end method

.method public session()Lorg/jline/console/CommandRegistry$CommandSession;
    .locals 5

    .line 73
    new-instance v0, Lorg/jline/console/CommandRegistry$CommandSession;

    iget-object v1, p0, Lorg/jline/console/CommandInput;->terminal:Lorg/jline/terminal/Terminal;

    iget-object v2, p0, Lorg/jline/console/CommandInput;->in:Ljava/io/InputStream;

    iget-object v3, p0, Lorg/jline/console/CommandInput;->out:Ljava/io/PrintStream;

    iget-object v4, p0, Lorg/jline/console/CommandInput;->err:Ljava/io/PrintStream;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jline/console/CommandRegistry$CommandSession;-><init>(Lorg/jline/terminal/Terminal;Ljava/io/InputStream;Ljava/io/PrintStream;Ljava/io/PrintStream;)V

    return-object v0
.end method

.method public terminal()Lorg/jline/terminal/Terminal;
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/jline/console/CommandInput;->terminal:Lorg/jline/terminal/Terminal;

    return-object v0
.end method

.method public xargs()[Ljava/lang/Object;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/jline/console/CommandInput;->xargs:[Ljava/lang/Object;

    return-object v0
.end method
