.class public final Lorg/apache/sshd/agent/unix/AprLibrary;
.super Ljava/lang/Object;
.source "AprLibrary.java"


# static fields
.field private static library:Lorg/apache/sshd/agent/unix/AprLibrary;


# instance fields
.field private final pool:J


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Lorg/apache/tomcat/jni/Library;->initialize(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    nop

    .line 69
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lorg/apache/tomcat/jni/Pool;->create(J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/sshd/agent/unix/AprLibrary;->pool:J

    .line 70
    return-void

    .line 62
    :catchall_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/Throwable;
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_0

    .line 64
    move-object v1, v0

    check-cast v1, Ljava/lang/RuntimeException;

    throw v1

    .line 66
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error loading Apache Portable Runtime (APR)."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static chmodOwner(Ljava/lang/String;Z)V
    .locals 3
    .param p0, "authSocket"    # Ljava/lang/String;
    .param p1, "execute"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    const/16 v0, 0x600

    .line 159
    .local v0, "perms":I
    if-eqz p1, :cond_0

    .line 160
    or-int/lit16 v0, v0, 0x100

    .line 162
    :cond_0
    invoke-static {p0, v0}, Lorg/apache/tomcat/jni/File;->permsSet(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    .line 165
    return-void

    .line 163
    :cond_1
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unable to secure local socket"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static createLocalSocketAddress()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    invoke-static {}, Lorg/apache/sshd/agent/unix/AprLibrary;->initialize()V

    .line 126
    invoke-static {}, Lorg/apache/sshd/common/util/OsUtils;->isUNIX()Z

    move-result v0

    const-string v1, "apr"

    const-string v2, "mina"

    if-eqz v0, :cond_1

    .line 132
    invoke-static {v2, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 133
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 136
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lorg/apache/sshd/agent/unix/AprLibrary;->chmodOwner(Ljava/lang/String;Z)V

    .line 138
    invoke-static {v2, v1, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 139
    .local v1, "socket":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 140
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 141
    .end local v1    # "socket":Ljava/io/File;
    .local v0, "name":Ljava/lang/String;
    goto :goto_0

    .line 134
    .local v0, "dir":Ljava/io/File;
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Cannot create secure temp directory"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 142
    .end local v0    # "dir":Ljava/io/File;
    :cond_1
    invoke-static {v2, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 143
    .local v0, "socket":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\\\\.\\pipe\\"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 146
    .local v0, "name":Ljava/lang/String;
    :goto_0
    return-object v0
.end method

.method public static declared-synchronized getInstance()Lorg/apache/sshd/agent/unix/AprLibrary;
    .locals 2

    const-class v0, Lorg/apache/sshd/agent/unix/AprLibrary;

    monitor-enter v0

    .line 78
    :try_start_0
    invoke-static {}, Lorg/apache/sshd/agent/unix/AprLibrary;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 79
    invoke-static {}, Lorg/apache/sshd/agent/unix/AprLibrary;->initialize()V

    .line 81
    :cond_0
    sget-object v1, Lorg/apache/sshd/agent/unix/AprLibrary;->library:Lorg/apache/sshd/agent/unix/AprLibrary;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 77
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized initialize()V
    .locals 2

    const-class v0, Lorg/apache/sshd/agent/unix/AprLibrary;

    monitor-enter v0

    .line 89
    :try_start_0
    sget-object v1, Lorg/apache/sshd/agent/unix/AprLibrary;->library:Lorg/apache/sshd/agent/unix/AprLibrary;

    if-nez v1, :cond_0

    .line 90
    new-instance v1, Lorg/apache/sshd/agent/unix/AprLibrary;

    invoke-direct {v1}, Lorg/apache/sshd/agent/unix/AprLibrary;-><init>()V

    sput-object v1, Lorg/apache/sshd/agent/unix/AprLibrary;->library:Lorg/apache/sshd/agent/unix/AprLibrary;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    :cond_0
    monitor-exit v0

    return-void

    .line 88
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized isInitialized()Z
    .locals 2

    const-class v0, Lorg/apache/sshd/agent/unix/AprLibrary;

    monitor-enter v0

    .line 100
    :try_start_0
    sget-object v1, Lorg/apache/sshd/agent/unix/AprLibrary;->library:Lorg/apache/sshd/agent/unix/AprLibrary;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 100
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static secureLocalSocket(Ljava/lang/String;J)V
    .locals 1
    .param p0, "authSocket"    # Ljava/lang/String;
    .param p1, "handle"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    invoke-static {}, Lorg/apache/sshd/common/util/OsUtils;->isUNIX()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/sshd/agent/unix/AprLibrary;->chmodOwner(Ljava/lang/String;Z)V

    .line 154
    :cond_0
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 106
    const/4 v0, 0x0

    sput-object v0, Lorg/apache/sshd/agent/unix/AprLibrary;->library:Lorg/apache/sshd/agent/unix/AprLibrary;

    .line 107
    iget-wide v0, p0, Lorg/apache/sshd/agent/unix/AprLibrary;->pool:J

    invoke-static {v0, v1}, Lorg/apache/tomcat/jni/Pool;->destroy(J)V

    .line 108
    invoke-static {}, Lorg/apache/tomcat/jni/Library;->terminate()V

    .line 109
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 110
    return-void
.end method

.method getRootPool()J
    .locals 2

    .line 119
    iget-wide v0, p0, Lorg/apache/sshd/agent/unix/AprLibrary;->pool:J

    return-wide v0
.end method
