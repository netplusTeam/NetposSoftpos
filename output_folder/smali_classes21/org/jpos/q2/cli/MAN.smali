.class public Lorg/jpos/q2/cli/MAN;
.super Ljava/lang/Object;
.source "MAN.java"

# interfaces
.implements Lorg/jpos/q2/CLICommand;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public exec(Lorg/jpos/q2/CLIContext;[Ljava/lang/String;)V
    .locals 4
    .param p1, "cli"    # Lorg/jpos/q2/CLIContext;
    .param p2, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 29
    array-length v0, p2

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 30
    const-string v0, "What manual page do you want?"

    invoke-virtual {p1, v0}, Lorg/jpos/q2/CLIContext;->println(Ljava/lang/String;)V

    .line 31
    return-void

    .line 33
    :cond_0
    const/4 v0, 0x1

    aget-object v0, p2, v0

    .line 34
    .local v0, "command":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".man"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 35
    .local v1, "is":Ljava/io/InputStream;
    if-eqz v1, :cond_1

    .line 37
    :try_start_0
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v2

    new-array v2, v2, [B

    .line 38
    .local v2, "b":[B
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    .line 39
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p1, v3}, Lorg/jpos/q2/CLIContext;->print(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .end local v2    # "b":[B
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 42
    goto :goto_0

    .line 41
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 42
    throw v2

    .line 44
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No manual entry for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/jpos/q2/CLIContext;->println(Ljava/lang/String;)V

    .line 46
    :goto_0
    return-void
.end method
