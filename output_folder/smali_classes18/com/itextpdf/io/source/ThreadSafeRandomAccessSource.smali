.class public Lcom/itextpdf/io/source/ThreadSafeRandomAccessSource;
.super Ljava/lang/Object;
.source "ThreadSafeRandomAccessSource.java"

# interfaces
.implements Lcom/itextpdf/io/source/IRandomAccessSource;


# instance fields
.field private final lockObj:Ljava/lang/Object;

.field private final source:Lcom/itextpdf/io/source/IRandomAccessSource;


# direct methods
.method public constructor <init>(Lcom/itextpdf/io/source/IRandomAccessSource;)V
    .locals 1
    .param p1, "source"    # Lcom/itextpdf/io/source/IRandomAccessSource;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/io/source/ThreadSafeRandomAccessSource;->lockObj:Ljava/lang/Object;

    .line 52
    iput-object p1, p0, Lcom/itextpdf/io/source/ThreadSafeRandomAccessSource;->source:Lcom/itextpdf/io/source/IRandomAccessSource;

    .line 53
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/itextpdf/io/source/ThreadSafeRandomAccessSource;->lockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 79
    :try_start_0
    iget-object v1, p0, Lcom/itextpdf/io/source/ThreadSafeRandomAccessSource;->source:Lcom/itextpdf/io/source/IRandomAccessSource;

    invoke-interface {v1}, Lcom/itextpdf/io/source/IRandomAccessSource;->close()V

    .line 80
    monitor-exit v0

    .line 81
    return-void

    .line 80
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public get(J)I
    .locals 2
    .param p1, "position"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/itextpdf/io/source/ThreadSafeRandomAccessSource;->lockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 58
    :try_start_0
    iget-object v1, p0, Lcom/itextpdf/io/source/ThreadSafeRandomAccessSource;->source:Lcom/itextpdf/io/source/IRandomAccessSource;

    invoke-interface {v1, p1, p2}, Lcom/itextpdf/io/source/IRandomAccessSource;->get(J)I

    move-result v1

    monitor-exit v0

    return v1

    .line 59
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public get(J[BII)I
    .locals 7
    .param p1, "position"    # J
    .param p3, "bytes"    # [B
    .param p4, "off"    # I
    .param p5, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/itextpdf/io/source/ThreadSafeRandomAccessSource;->lockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 65
    :try_start_0
    iget-object v1, p0, Lcom/itextpdf/io/source/ThreadSafeRandomAccessSource;->source:Lcom/itextpdf/io/source/IRandomAccessSource;

    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/itextpdf/io/source/IRandomAccessSource;->get(J[BII)I

    move-result v1

    monitor-exit v0

    return v1

    .line 66
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public length()J
    .locals 3

    .line 71
    iget-object v0, p0, Lcom/itextpdf/io/source/ThreadSafeRandomAccessSource;->lockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 72
    :try_start_0
    iget-object v1, p0, Lcom/itextpdf/io/source/ThreadSafeRandomAccessSource;->source:Lcom/itextpdf/io/source/IRandomAccessSource;

    invoke-interface {v1}, Lcom/itextpdf/io/source/IRandomAccessSource;->length()J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    .line 73
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
