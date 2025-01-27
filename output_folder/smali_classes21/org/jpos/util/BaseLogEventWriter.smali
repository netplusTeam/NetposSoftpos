.class public abstract Lorg/jpos/util/BaseLogEventWriter;
.super Ljava/lang/Object;
.source "BaseLogEventWriter.java"

# interfaces
.implements Lorg/jpos/util/LogEventWriter;


# instance fields
.field p:Ljava/io/PrintStream;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1

    monitor-enter p0

    .line 51
    :try_start_0
    iget-object v0, p0, Lorg/jpos/util/BaseLogEventWriter;->p:Ljava/io/PrintStream;

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {v0}, Ljava/io/PrintStream;->close()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jpos/util/BaseLogEventWriter;->p:Ljava/io/PrintStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    .end local p0    # "this":Lorg/jpos/util/BaseLogEventWriter;
    :cond_0
    monitor-exit p0

    return-void

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setPrintStream(Ljava/io/PrintStream;)V
    .locals 1
    .param p1, "p"    # Ljava/io/PrintStream;

    .line 40
    if-nez p1, :cond_0

    .line 41
    invoke-virtual {p0}, Lorg/jpos/util/BaseLogEventWriter;->close()V

    .line 42
    return-void

    .line 44
    :cond_0
    iget-object v0, p0, Lorg/jpos/util/BaseLogEventWriter;->p:Ljava/io/PrintStream;

    if-ne v0, p1, :cond_1

    return-void

    .line 45
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/jpos/util/BaseLogEventWriter;->close()V

    .line 46
    :cond_2
    iput-object p1, p0, Lorg/jpos/util/BaseLogEventWriter;->p:Ljava/io/PrintStream;

    .line 47
    return-void
.end method

.method public write(Lorg/jpos/util/LogEvent;)V
    .locals 2
    .param p1, "ev"    # Lorg/jpos/util/LogEvent;

    .line 59
    iget-object v0, p0, Lorg/jpos/util/BaseLogEventWriter;->p:Ljava/io/PrintStream;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 60
    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/jpos/util/LogEvent;->dump(Ljava/io/PrintStream;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lorg/jpos/util/BaseLogEventWriter;->p:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    .line 63
    :cond_0
    return-void
.end method
