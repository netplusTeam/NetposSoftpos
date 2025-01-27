.class public Lorg/jpos/q2/CLIContext;
.super Ljava/lang/Object;
.source "CLIContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jpos/q2/CLIContext$Builder;
    }
.end annotation


# instance fields
.field private activeSubSystem:Ljava/lang/String;

.field private cli:Lorg/jpos/q2/CLI;

.field private err:Ljava/io/OutputStream;

.field private in:Ljava/io/InputStream;

.field private out:Ljava/io/OutputStream;

.field private reader:Lorg/jline/reader/LineReader;

.field private stopped:Z

.field private userData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jpos/q2/CLIContext;->stopped:Z

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jpos/q2/CLIContext;->activeSubSystem:Ljava/lang/String;

    .line 39
    return-void
.end method

.method private constructor <init>(Lorg/jpos/q2/CLI;Ljava/io/OutputStream;Ljava/io/OutputStream;Ljava/io/InputStream;Lorg/jline/reader/LineReader;Ljava/util/Map;)V
    .locals 1
    .param p1, "cli"    # Lorg/jpos/q2/CLI;
    .param p2, "out"    # Ljava/io/OutputStream;
    .param p3, "err"    # Ljava/io/OutputStream;
    .param p4, "in"    # Ljava/io/InputStream;
    .param p5, "reader"    # Lorg/jline/reader/LineReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jpos/q2/CLI;",
            "Ljava/io/OutputStream;",
            "Ljava/io/OutputStream;",
            "Ljava/io/InputStream;",
            "Lorg/jline/reader/LineReader;",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 41
    .local p6, "userData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jpos/q2/CLIContext;->stopped:Z

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jpos/q2/CLIContext;->activeSubSystem:Ljava/lang/String;

    .line 42
    iput-object p1, p0, Lorg/jpos/q2/CLIContext;->cli:Lorg/jpos/q2/CLI;

    .line 43
    iput-object p2, p0, Lorg/jpos/q2/CLIContext;->out:Ljava/io/OutputStream;

    .line 44
    iput-object p3, p0, Lorg/jpos/q2/CLIContext;->err:Ljava/io/OutputStream;

    .line 45
    iput-object p4, p0, Lorg/jpos/q2/CLIContext;->in:Ljava/io/InputStream;

    .line 46
    iput-object p5, p0, Lorg/jpos/q2/CLIContext;->reader:Lorg/jline/reader/LineReader;

    .line 47
    iput-object p6, p0, Lorg/jpos/q2/CLIContext;->userData:Ljava/util/Map;

    .line 48
    return-void
.end method

.method synthetic constructor <init>(Lorg/jpos/q2/CLI;Ljava/io/OutputStream;Ljava/io/OutputStream;Ljava/io/InputStream;Lorg/jline/reader/LineReader;Ljava/util/Map;Lorg/jpos/q2/CLIContext$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/jpos/q2/CLI;
    .param p2, "x1"    # Ljava/io/OutputStream;
    .param p3, "x2"    # Ljava/io/OutputStream;
    .param p4, "x3"    # Ljava/io/InputStream;
    .param p5, "x4"    # Lorg/jline/reader/LineReader;
    .param p6, "x5"    # Ljava/util/Map;
    .param p7, "x6"    # Lorg/jpos/q2/CLIContext$1;

    .line 28
    invoke-direct/range {p0 .. p6}, Lorg/jpos/q2/CLIContext;-><init>(Lorg/jpos/q2/CLI;Ljava/io/OutputStream;Ljava/io/OutputStream;Ljava/io/InputStream;Lorg/jline/reader/LineReader;Ljava/util/Map;)V

    return-void
.end method

.method public static builder()Lorg/jpos/q2/CLIContext$Builder;
    .locals 2

    .line 150
    new-instance v0, Lorg/jpos/q2/CLIContext$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/jpos/q2/CLIContext$Builder;-><init>(Lorg/jpos/q2/CLIContext$1;)V

    return-object v0
.end method


# virtual methods
.method public confirm(Ljava/lang/String;)Z
    .locals 2
    .param p1, "prompt"    # Ljava/lang/String;

    .line 142
    invoke-virtual {p0}, Lorg/jpos/q2/CLIContext;->getReader()Lorg/jline/reader/LineReader;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jline/reader/LineReader;->readLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "yes"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getActiveSubSystem()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/jpos/q2/CLIContext;->activeSubSystem:Ljava/lang/String;

    return-object v0
.end method

.method public getCLI()Lorg/jpos/q2/CLI;
    .locals 1

    .line 99
    iget-object v0, p0, Lorg/jpos/q2/CLIContext;->cli:Lorg/jpos/q2/CLI;

    return-object v0
.end method

.method public getErrorStream()Ljava/io/OutputStream;
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/jpos/q2/CLIContext;->err:Ljava/io/OutputStream;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/jpos/q2/CLIContext;->in:Ljava/io/InputStream;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .line 79
    iget-object v0, p0, Lorg/jpos/q2/CLIContext;->out:Ljava/io/OutputStream;

    return-object v0
.end method

.method public getReader()Lorg/jline/reader/LineReader;
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/jpos/q2/CLIContext;->reader:Lorg/jline/reader/LineReader;

    return-object v0
.end method

.method public getUserData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lorg/jpos/q2/CLIContext;->userData:Ljava/util/Map;

    return-object v0
.end method

.method public isInteractive()Z
    .locals 1

    .line 95
    iget-object v0, p0, Lorg/jpos/q2/CLIContext;->cli:Lorg/jpos/q2/CLI;

    invoke-virtual {v0}, Lorg/jpos/q2/CLI;->isInteractive()Z

    move-result v0

    return v0
.end method

.method public isStopped()Z
    .locals 1

    .line 63
    iget-boolean v0, p0, Lorg/jpos/q2/CLIContext;->stopped:Z

    return v0
.end method

.method synthetic lambda$printUserData$0$org-jpos-q2-CLIContext(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "k"    # Ljava/lang/Object;
    .param p2, "v"    # Ljava/lang/Object;

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jpos/q2/CLIContext;->println(Ljava/lang/String;)V

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jpos/q2/CLIContext;->println(Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public print(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 122
    invoke-virtual {p0}, Lorg/jpos/q2/CLIContext;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {p0}, Lorg/jpos/q2/CLIContext;->getReader()Lorg/jline/reader/LineReader;

    move-result-object v0

    invoke-interface {v0}, Lorg/jline/reader/LineReader;->getTerminal()Lorg/jline/terminal/Terminal;

    move-result-object v0

    invoke-interface {v0}, Lorg/jline/terminal/Terminal;->writer()Ljava/io/PrintWriter;

    move-result-object v0

    .line 124
    .local v0, "writer":Ljava/io/PrintWriter;
    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 126
    .end local v0    # "writer":Ljava/io/PrintWriter;
    goto :goto_0

    .line 129
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/jpos/q2/CLIContext;->out:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 130
    iget-object v0, p0, Lorg/jpos/q2/CLIContext;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    goto :goto_0

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, "ignored":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 135
    .end local v0    # "ignored":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method public printLoggeable(Lorg/jpos/util/Loggeable;Ljava/lang/String;)V
    .locals 2
    .param p1, "l"    # Lorg/jpos/util/Loggeable;
    .param p2, "indent"    # Ljava/lang/String;

    .line 116
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 117
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/PrintStream;

    invoke-direct {v1, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    invoke-interface {p1, v1, p2}, Lorg/jpos/util/Loggeable;->dump(Ljava/io/PrintStream;Ljava/lang/String;)V

    .line 118
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/jpos/q2/CLIContext;->println(Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public printThrowable(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 110
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 111
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/PrintStream;

    invoke-direct {v1, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 112
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/jpos/q2/CLIContext;->println(Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public printUserData()V
    .locals 2

    .line 103
    invoke-virtual {p0}, Lorg/jpos/q2/CLIContext;->getUserData()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lorg/jpos/q2/CLIContext$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/jpos/q2/CLIContext$$ExternalSyntheticLambda0;-><init>(Lorg/jpos/q2/CLIContext;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 107
    return-void
.end method

.method public println(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jpos/q2/CLIContext;->print(Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public readSecurely(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "prompt"    # Ljava/lang/String;

    .line 146
    invoke-virtual {p0}, Lorg/jpos/q2/CLIContext;->getReader()Lorg/jline/reader/LineReader;

    move-result-object v0

    const/16 v1, 0x2a

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lorg/jline/reader/LineReader;->readLine(Ljava/lang/String;Ljava/lang/Character;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setActiveSubSystem(Ljava/lang/String;)V
    .locals 2
    .param p1, "subSystem"    # Ljava/lang/String;

    .line 55
    invoke-virtual {p0}, Lorg/jpos/q2/CLIContext;->getActiveSubSystem()Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "activeSubSystem":Ljava/lang/String;
    if-nez p1, :cond_0

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p0}, Lorg/jpos/q2/CLIContext;->getUserData()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    :cond_0
    iput-object p1, p0, Lorg/jpos/q2/CLIContext;->activeSubSystem:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setReader(Lorg/jline/reader/LineReader;)V
    .locals 0
    .param p1, "reader"    # Lorg/jline/reader/LineReader;

    .line 75
    iput-object p1, p0, Lorg/jpos/q2/CLIContext;->reader:Lorg/jline/reader/LineReader;

    .line 76
    return-void
.end method

.method public setStopped(Z)V
    .locals 0
    .param p1, "stopped"    # Z

    .line 67
    iput-boolean p1, p0, Lorg/jpos/q2/CLIContext;->stopped:Z

    .line 68
    return-void
.end method
