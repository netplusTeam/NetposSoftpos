.class public Lorg/jpos/q2/qbean/QSingleInstanceFileBasedManager;
.super Lorg/jpos/q2/QBeanSupport;
.source "QSingleInstanceFileBasedManager.java"


# instance fields
.field lock:Ljava/nio/channels/FileLock;

.field lockChannel:Ljava/nio/channels/FileChannel;

.field lockFile:Ljava/io/File;

.field lockFileOS:Ljava/io/FileOutputStream;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lorg/jpos/q2/QBeanSupport;-><init>()V

    return-void
.end method


# virtual methods
.method protected initService()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 45
    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "./"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jpos/q2/qbean/QSingleInstanceFileBasedManager;->getServer()Lorg/jpos/q2/Q2;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jpos/q2/Q2;->getDeployDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "instance.lock"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jpos/q2/qbean/QSingleInstanceFileBasedManager;->lockFile:Ljava/io/File;

    .line 46
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lorg/jpos/q2/qbean/QSingleInstanceFileBasedManager;->lockFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 51
    :cond_0
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lorg/jpos/q2/qbean/QSingleInstanceFileBasedManager;->lockFile:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lorg/jpos/q2/qbean/QSingleInstanceFileBasedManager;->lockFileOS:Ljava/io/FileOutputStream;

    .line 52
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 53
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lorg/jpos/q2/qbean/QSingleInstanceFileBasedManager;->lockFile:Ljava/io/File;

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/q2/qbean/QSingleInstanceFileBasedManager;->lockChannel:Ljava/nio/channels/FileChannel;

    .line 54
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/q2/qbean/QSingleInstanceFileBasedManager;->lock:Ljava/nio/channels/FileLock;

    .line 55
    if-eqz v0, :cond_1

    .line 71
    goto :goto_0

    .line 56
    :cond_1
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Unable to obtain lock"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lorg/jpos/q2/qbean/QSingleInstanceFileBasedManager;->getLog()Lorg/jpos/util/Log;

    move-result-object v1

    const-string v2, "An instance of Q2 is already running. Shutting this instance"

    invoke-virtual {v1, v2}, Lorg/jpos/util/Log;->error(Ljava/lang/Object;)V

    .line 61
    iget-object v1, p0, Lorg/jpos/q2/qbean/QSingleInstanceFileBasedManager;->lock:Ljava/nio/channels/FileLock;

    if-eqz v1, :cond_2

    .line 62
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V

    .line 64
    :cond_2
    iget-object v1, p0, Lorg/jpos/q2/qbean/QSingleInstanceFileBasedManager;->lockChannel:Ljava/nio/channels/FileChannel;

    if-eqz v1, :cond_3

    .line 65
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 67
    :cond_3
    iget-object v1, p0, Lorg/jpos/q2/qbean/QSingleInstanceFileBasedManager;->lockFile:Ljava/io/File;

    if-eqz v1, :cond_4

    .line 68
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 70
    :cond_4
    invoke-virtual {p0}, Lorg/jpos/q2/qbean/QSingleInstanceFileBasedManager;->getServer()Lorg/jpos/q2/Q2;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jpos/q2/Q2;->shutdown()V

    .line 73
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method protected stopService()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lorg/jpos/q2/qbean/QSingleInstanceFileBasedManager;->lock:Ljava/nio/channels/FileLock;

    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V

    .line 79
    iget-object v0, p0, Lorg/jpos/q2/qbean/QSingleInstanceFileBasedManager;->lockChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 80
    iget-object v0, p0, Lorg/jpos/q2/qbean/QSingleInstanceFileBasedManager;->lockFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 81
    return-void
.end method
