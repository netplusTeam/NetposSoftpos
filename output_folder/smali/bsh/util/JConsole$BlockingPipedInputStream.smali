.class public Lbsh/util/JConsole$BlockingPipedInputStream;
.super Ljava/io/PipedInputStream;
.source "JConsole.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbsh/util/JConsole;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BlockingPipedInputStream"
.end annotation


# instance fields
.field closed:Z


# direct methods
.method public constructor <init>(Ljava/io/PipedOutputStream;)V
    .locals 0
    .param p1, "pout"    # Ljava/io/PipedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 762
    invoke-direct {p0, p1}, Ljava/io/PipedInputStream;-><init>(Ljava/io/PipedOutputStream;)V

    .line 763
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 785
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbsh/util/JConsole$BlockingPipedInputStream;->closed:Z

    .line 786
    invoke-super {p0}, Ljava/io/PipedInputStream;->close()V

    .line 787
    return-void
.end method

.method public declared-synchronized read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 765
    :try_start_0
    iget-boolean v0, p0, Lbsh/util/JConsole$BlockingPipedInputStream;->closed:Z

    if-nez v0, :cond_3

    .line 768
    :goto_0
    iget v0, p0, Ljava/io/PipedInputStream;->in:I

    if-gez v0, :cond_0

    .line 769
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 771
    const-wide/16 v0, 0x2ee

    :try_start_1
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 774
    goto :goto_0

    .line 772
    .end local p0    # "this":Lbsh/util/JConsole$BlockingPipedInputStream;
    :catch_0
    move-exception v0

    .line 773
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    new-instance v1, Ljava/io/InterruptedIOException;

    invoke-direct {v1}, Ljava/io/InterruptedIOException;-><init>()V

    throw v1

    .line 777
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    iget-object v0, p0, Lbsh/util/JConsole$BlockingPipedInputStream;->buffer:[B

    iget v1, p0, Ljava/io/PipedInputStream;->out:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/io/PipedInputStream;->out:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 778
    .local v0, "ret":I
    iget v1, p0, Ljava/io/PipedInputStream;->out:I

    iget-object v2, p0, Lbsh/util/JConsole$BlockingPipedInputStream;->buffer:[B

    array-length v2, v2

    if-lt v1, v2, :cond_1

    .line 779
    const/4 v1, 0x0

    iput v1, p0, Ljava/io/PipedInputStream;->out:I

    .line 780
    :cond_1
    iget v1, p0, Ljava/io/PipedInputStream;->in:I

    iget v2, p0, Ljava/io/PipedInputStream;->out:I

    if-ne v1, v2, :cond_2

    .line 781
    const/4 v1, -0x1

    iput v1, p0, Ljava/io/PipedInputStream;->in:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 782
    :cond_2
    monitor-exit p0

    return v0

    .line 766
    .end local v0    # "ret":I
    :cond_3
    :try_start_3
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 764
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
