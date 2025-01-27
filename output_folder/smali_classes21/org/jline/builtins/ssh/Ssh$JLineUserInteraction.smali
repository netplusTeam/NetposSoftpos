.class Lorg/jline/builtins/ssh/Ssh$JLineUserInteraction;
.super Ljava/lang/Object;
.source "Ssh.java"

# interfaces
.implements Lorg/apache/sshd/client/auth/keyboard/UserInteraction;
.implements Lorg/apache/sshd/common/config/keys/FilePasswordProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/builtins/ssh/Ssh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JLineUserInteraction"
.end annotation


# instance fields
.field private final reader:Lorg/jline/reader/LineReader;

.field private final stderr:Ljava/io/PrintStream;

.field private final terminal:Lorg/jline/terminal/Terminal;


# direct methods
.method public constructor <init>(Lorg/jline/terminal/Terminal;Lorg/jline/reader/LineReader;Ljava/io/PrintStream;)V
    .locals 0
    .param p1, "terminal"    # Lorg/jline/terminal/Terminal;
    .param p2, "reader"    # Lorg/jline/reader/LineReader;
    .param p3, "stderr"    # Ljava/io/PrintStream;

    .line 386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 387
    iput-object p1, p0, Lorg/jline/builtins/ssh/Ssh$JLineUserInteraction;->terminal:Lorg/jline/terminal/Terminal;

    .line 388
    iput-object p2, p0, Lorg/jline/builtins/ssh/Ssh$JLineUserInteraction;->reader:Lorg/jline/reader/LineReader;

    .line 389
    iput-object p3, p0, Lorg/jline/builtins/ssh/Ssh$JLineUserInteraction;->stderr:Ljava/io/PrintStream;

    .line 390
    return-void
.end method

.method private readLine(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .param p1, "prompt"    # Ljava/lang/String;
    .param p2, "echo"    # Z

    .line 438
    iget-object v0, p0, Lorg/jline/builtins/ssh/Ssh$JLineUserInteraction;->reader:Lorg/jline/reader/LineReader;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    :goto_0
    invoke-interface {v0, v1, v2}, Lorg/jline/reader/LineReader;->readLine(Ljava/lang/String;Ljava/lang/Character;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getPassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "resourceKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enter password for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/jline/builtins/ssh/Ssh$JLineUserInteraction;->readLine(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUpdatedPassword(Lorg/apache/sshd/client/session/ClientSession;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "session"    # Lorg/apache/sshd/client/session/ClientSession;
    .param p2, "prompt"    # Ljava/lang/String;
    .param p3, "lang"    # Ljava/lang/String;

    .line 430
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p2, v0}, Lorg/jline/builtins/ssh/Ssh$JLineUserInteraction;->readLine(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 431
    :catch_0
    move-exception v0

    .line 432
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lorg/jline/builtins/ssh/Ssh$JLineUserInteraction;->stderr:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->append(Ljava/lang/CharSequence;)Ljava/io/PrintStream;

    move-result-object v1

    const-string v2, " while reading password: "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->append(Ljava/lang/CharSequence;)Ljava/io/PrintStream;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 434
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method public interactive(Lorg/apache/sshd/client/session/ClientSession;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Z)[Ljava/lang/String;
    .locals 4
    .param p1, "s"    # Lorg/apache/sshd/client/session/ClientSession;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "instruction"    # Ljava/lang/String;
    .param p4, "lang"    # Ljava/lang/String;
    .param p5, "prompt"    # [Ljava/lang/String;
    .param p6, "echo"    # [Z

    .line 404
    array-length v0, p5

    new-array v0, v0, [Ljava/lang/String;

    .line 406
    .local v0, "answers":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    array-length v2, p5

    if-ge v1, v2, :cond_0

    .line 407
    aget-object v2, p5, v1

    aget-boolean v3, p6, v1

    invoke-direct {p0, v2, v3}, Lorg/jline/builtins/ssh/Ssh$JLineUserInteraction;->readLine(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 411
    .end local v1    # "i":I
    :cond_0
    goto :goto_1

    .line 409
    :catch_0
    move-exception v1

    .line 410
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lorg/jline/builtins/ssh/Ssh$JLineUserInteraction;->stderr:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->append(Ljava/lang/CharSequence;)Ljava/io/PrintStream;

    move-result-object v2

    const-string v3, " while read prompts: "

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->append(Ljava/lang/CharSequence;)Ljava/io/PrintStream;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 412
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v0
.end method

.method public isInteractionAllowed(Lorg/apache/sshd/client/session/ClientSession;)Z
    .locals 1
    .param p1, "session"    # Lorg/apache/sshd/client/session/ClientSession;

    .line 417
    const/4 v0, 0x1

    return v0
.end method

.method public serverVersionInfo(Lorg/apache/sshd/client/session/ClientSession;Ljava/util/List;)V
    .locals 4
    .param p1, "session"    # Lorg/apache/sshd/client/session/ClientSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/client/session/ClientSession;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 422
    .local p2, "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 423
    .local v1, "l":Ljava/lang/String;
    iget-object v2, p0, Lorg/jline/builtins/ssh/Ssh$JLineUserInteraction;->terminal:Lorg/jline/terminal/Terminal;

    invoke-interface {v2}, Lorg/jline/terminal/Terminal;->writer()Ljava/io/PrintWriter;

    move-result-object v2

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->append(C)Ljava/io/PrintWriter;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 424
    .end local v1    # "l":Ljava/lang/String;
    goto :goto_0

    .line 425
    :cond_0
    return-void
.end method

.method public welcome(Lorg/apache/sshd/client/session/ClientSession;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "session"    # Lorg/apache/sshd/client/session/ClientSession;
    .param p2, "banner"    # Ljava/lang/String;
    .param p3, "lang"    # Ljava/lang/String;

    .line 399
    iget-object v0, p0, Lorg/jline/builtins/ssh/Ssh$JLineUserInteraction;->terminal:Lorg/jline/terminal/Terminal;

    invoke-interface {v0}, Lorg/jline/terminal/Terminal;->writer()Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 400
    return-void
.end method
