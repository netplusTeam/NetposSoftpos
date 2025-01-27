.class public Lorg/jpos/util/FlatLogListener;
.super Ljava/lang/Object;
.source "FlatLogListener.java"

# interfaces
.implements Lorg/jpos/util/LogListener;
.implements Lorg/jpos/core/Configurable;
.implements Lorg/jpos/util/Destroyable;


# instance fields
.field captureStream:Ljava/io/ByteArrayOutputStream;

.field mapper:Lorg/jpos/util/function/RemoveNewLinesMapper;

.field p:Ljava/io/PrintStream;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lorg/jpos/util/function/RemoveNewLinesMapper;

    invoke-direct {v0}, Lorg/jpos/util/function/RemoveNewLinesMapper;-><init>()V

    iput-object v0, p0, Lorg/jpos/util/FlatLogListener;->mapper:Lorg/jpos/util/function/RemoveNewLinesMapper;

    .line 42
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/jpos/util/FlatLogListener;->captureStream:Ljava/io/ByteArrayOutputStream;

    .line 43
    new-instance v0, Ljava/io/PrintStream;

    iget-object v1, p0, Lorg/jpos/util/FlatLogListener;->captureStream:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/jpos/util/FlatLogListener;->p:Ljava/io/PrintStream;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/jpos/util/FlatLogListener;->p:Ljava/io/PrintStream;

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {v0}, Ljava/io/PrintStream;->close()V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jpos/util/FlatLogListener;->p:Ljava/io/PrintStream;

    .line 63
    iput-object v0, p0, Lorg/jpos/util/FlatLogListener;->captureStream:Ljava/io/ByteArrayOutputStream;

    .line 65
    :cond_0
    return-void
.end method

.method public declared-synchronized log(Lorg/jpos/util/LogEvent;)Lorg/jpos/util/LogEvent;
    .locals 3
    .param p1, "ev"    # Lorg/jpos/util/LogEvent;

    monitor-enter p0

    .line 52
    :try_start_0
    iget-object v0, p0, Lorg/jpos/util/FlatLogListener;->p:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/jpos/util/LogEvent;->dump(Ljava/io/PrintStream;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lorg/jpos/util/FlatLogListener;->mapper:Lorg/jpos/util/function/RemoveNewLinesMapper;

    iget-object v1, p0, Lorg/jpos/util/FlatLogListener;->captureStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jpos/util/function/RemoveNewLinesMapper;->apply([B)[B

    move-result-object v0

    .line 54
    .local v0, "result":[B
    iget-object v1, p0, Lorg/jpos/util/FlatLogListener;->captureStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 55
    new-instance v1, Lorg/jpos/util/FrozenLogEvent;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v1, v2}, Lorg/jpos/util/FrozenLogEvent;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 51
    .end local v0    # "result":[B
    .end local p0    # "this":Lorg/jpos/util/FlatLogListener;
    .end local p1    # "ev":Lorg/jpos/util/LogEvent;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setConfiguration(Lorg/jpos/core/Configuration;)V
    .locals 1
    .param p1, "cfg"    # Lorg/jpos/core/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lorg/jpos/util/FlatLogListener;->mapper:Lorg/jpos/util/function/RemoveNewLinesMapper;

    invoke-virtual {v0, p1}, Lorg/jpos/util/function/RemoveNewLinesMapper;->setConfiguration(Lorg/jpos/core/Configuration;)V

    .line 48
    return-void
.end method
