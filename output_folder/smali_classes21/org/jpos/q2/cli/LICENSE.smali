.class public Lorg/jpos/q2/cli/LICENSE;
.super Ljava/lang/Object;
.source "LICENSE.java"

# interfaces
.implements Lorg/jpos/q2/CLICommand;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private display(Lorg/jpos/q2/CLIContext;Ljava/io/InputStream;)V
    .locals 3
    .param p1, "cli"    # Lorg/jpos/q2/CLIContext;
    .param p2, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    if-eqz p2, :cond_0

    .line 40
    :goto_0
    invoke-virtual {p2}, Ljava/io/InputStream;->available()I

    move-result v0

    if-lez v0, :cond_0

    .line 41
    invoke-virtual {p2}, Ljava/io/InputStream;->available()I

    move-result v0

    new-array v0, v0, [B

    .line 42
    .local v0, "b":[B
    invoke-virtual {p2, v0}, Ljava/io/InputStream;->read([B)I

    .line 43
    new-instance v1, Ljava/lang/String;

    const-string v2, "ISO8859_1"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, v1}, Lorg/jpos/q2/CLIContext;->print(Ljava/lang/String;)V

    .line 44
    .end local v0    # "b":[B
    goto :goto_0

    .line 46
    :cond_0
    return-void
.end method


# virtual methods
.method public exec(Lorg/jpos/q2/CLIContext;[Ljava/lang/String;)V
    .locals 3
    .param p1, "cli"    # Lorg/jpos/q2/CLIContext;
    .param p2, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "/JPOS_LICENSE"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 31
    .local v0, "input":Ljava/io/InputStream;
    :try_start_0
    invoke-direct {p0, p1, v0}, Lorg/jpos/q2/cli/LICENSE;->display(Lorg/jpos/q2/CLIContext;Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 34
    nop

    .line 35
    const-string v1, ""

    invoke-virtual {p1, v1}, Lorg/jpos/q2/CLIContext;->println(Ljava/lang/String;)V

    .line 36
    return-void

    .line 33
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 34
    throw v1
.end method
