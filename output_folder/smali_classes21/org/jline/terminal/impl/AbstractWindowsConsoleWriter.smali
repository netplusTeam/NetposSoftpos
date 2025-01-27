.class public abstract Lorg/jline/terminal/impl/AbstractWindowsConsoleWriter;
.super Ljava/io/Writer;
.source "AbstractWindowsConsoleWriter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 37
    return-void
.end method

.method public flush()V
    .locals 0

    .line 33
    return-void
.end method

.method public write([CII)V
    .locals 3
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20
    move-object v0, p1

    .line 21
    .local v0, "text":[C
    if-eqz p2, :cond_0

    .line 22
    new-array v0, p3, [C

    .line 23
    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 26
    :cond_0
    iget-object v1, p0, Lorg/jline/terminal/impl/AbstractWindowsConsoleWriter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 27
    :try_start_0
    invoke-virtual {p0, v0, p3}, Lorg/jline/terminal/impl/AbstractWindowsConsoleWriter;->writeConsole([CI)V

    .line 28
    monitor-exit v1

    .line 29
    return-void

    .line 28
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method protected abstract writeConsole([CI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
