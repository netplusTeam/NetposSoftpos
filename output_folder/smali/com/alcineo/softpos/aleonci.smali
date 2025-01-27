.class public Lcom/alcineo/softpos/aleonci;
.super Lcom/google/common/util/concurrent/AbstractExecutionThreadService;
.source "SourceFile"

# interfaces
.implements Lcom/alcineo/softpos/coalnie;


# static fields
.field private static final ocleina:Lorg/slf4j/Logger;


# instance fields
.field private final acileon:Lcom/alcineo/softpos/aecilon;

.field private final aoleinc:Lcom/alcineo/softpos/lniaeoc;

.field private enolcai:Z

.field private lneaico:I

.field private nacieol:Lcom/alcineo/softpos/ociealn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alcineo/softpos/ociealn<",
            "Lcom/alcineo/softpos/cnaolie;",
            ">;"
        }
    .end annotation
.end field

.field private noaceli:Z

.field private noelcai:Lcom/alcineo/softpos/ociealn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alcineo/softpos/ociealn<",
            "Lcom/alcineo/softpos/cnaolie;",
            ">;"
        }
    .end annotation
.end field

.field private final ocenlai:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/alcineo/softpos/cnaolie;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alcineo/softpos/aleonci;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/alcineo/softpos/aleonci;->ocleina:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/alcineo/softpos/aecilon;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService;-><init>()V

    new-instance v0, Lcom/alcineo/softpos/lniaeoc;

    invoke-direct {v0}, Lcom/alcineo/softpos/lniaeoc;-><init>()V

    iput-object v0, p0, Lcom/alcineo/softpos/aleonci;->aoleinc:Lcom/alcineo/softpos/lniaeoc;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alcineo/softpos/aleonci;->noaceli:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alcineo/softpos/aleonci;->enolcai:Z

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/alcineo/softpos/aleonci;->ocenlai:Ljava/util/LinkedList;

    iput-object p1, p0, Lcom/alcineo/softpos/aleonci;->acileon:Lcom/alcineo/softpos/aecilon;

    const/16 p1, 0x1e

    iput p1, p0, Lcom/alcineo/softpos/aleonci;->lneaico:I

    return-void
.end method

.method public constructor <init>(Lcom/alcineo/softpos/aecilon;I)V
    .locals 1

    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService;-><init>()V

    new-instance v0, Lcom/alcineo/softpos/lniaeoc;

    invoke-direct {v0}, Lcom/alcineo/softpos/lniaeoc;-><init>()V

    iput-object v0, p0, Lcom/alcineo/softpos/aleonci;->aoleinc:Lcom/alcineo/softpos/lniaeoc;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alcineo/softpos/aleonci;->noaceli:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alcineo/softpos/aleonci;->enolcai:Z

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/alcineo/softpos/aleonci;->ocenlai:Ljava/util/LinkedList;

    iput-object p1, p0, Lcom/alcineo/softpos/aleonci;->acileon:Lcom/alcineo/softpos/aecilon;

    iput p2, p0, Lcom/alcineo/softpos/aleonci;->lneaico:I

    return-void
.end method

.method private acileon()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/alcineo/softpos/aleonci;->ocenlai:Ljava/util/LinkedList;

    monitor-enter v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/alcineo/softpos/aleonci;->ocenlai:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alcineo/softpos/cnaolie;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/alcineo/softpos/aleonci;->acileon:Lcom/alcineo/softpos/aecilon;

    invoke-virtual {v2, v1}, Lcom/alcineo/softpos/aecilon;->acileon(Lcom/alcineo/softpos/cnaolie;)V

    iget-object v2, p0, Lcom/alcineo/softpos/aleonci;->nacieol:Lcom/alcineo/softpos/ociealn;

    if-eqz v2, :cond_1

    invoke-interface {v2, v1}, Lcom/alcineo/softpos/ociealn;->acileon(Ljava/lang/Object;)V

    :cond_1
    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private acileon(Lcom/alcineo/softpos/cnaolie;)V
    .locals 2

    iget-object v0, p0, Lcom/alcineo/softpos/aleonci;->noelcai:Lcom/alcineo/softpos/ociealn;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    iget-boolean v1, p0, Lcom/alcineo/softpos/aleonci;->enolcai:Z

    if-nez v1, :cond_1

    :cond_0
    invoke-interface {v0, p1}, Lcom/alcineo/softpos/ociealn;->acileon(Ljava/lang/Object;)V

    :cond_1
    iget-boolean v0, p0, Lcom/alcineo/softpos/aleonci;->enolcai:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alcineo/softpos/aleonci;->aoleinc:Lcom/alcineo/softpos/lniaeoc;

    invoke-virtual {v0, p1}, Lcom/alcineo/softpos/lniaeoc;->acileon(Lcom/alcineo/softpos/cnaolie;)Z

    :cond_2
    return-void
.end method


# virtual methods
.method public declared-synchronized acileon(Lcom/alcineo/softpos/alicneo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alcineo/softpos/aleonci;->acileon:Lcom/alcineo/softpos/aecilon;

    invoke-virtual {v0, p1}, Lcom/alcineo/softpos/aecilon;->acileon(Lcom/alcineo/softpos/alicneo;)Lcom/alcineo/softpos/cnaolie;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alcineo/softpos/aleonci;->aoleinc(Lcom/alcineo/softpos/cnaolie;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Unable to send command, service has been shut down."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public acileon(Lcom/alcineo/softpos/ociealn;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alcineo/softpos/ociealn<",
            "Lcom/alcineo/softpos/cnaolie;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alcineo/softpos/aleonci;->noelcai:Lcom/alcineo/softpos/ociealn;

    return-void
.end method

.method public acileon(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alcineo/softpos/aleonci;->enolcai:Z

    return-void
.end method

.method public aoleinc()Lcom/alcineo/softpos/lniaeoc;
    .locals 1

    iget-object v0, p0, Lcom/alcineo/softpos/aleonci;->aoleinc:Lcom/alcineo/softpos/lniaeoc;

    return-object v0
.end method

.method public declared-synchronized aoleinc(Lcom/alcineo/softpos/cnaolie;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/alcineo/softpos/aleonci;->noaceli:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alcineo/softpos/aleonci;->acileon:Lcom/alcineo/softpos/aecilon;

    invoke-virtual {v0, p1}, Lcom/alcineo/softpos/aecilon;->acileon(Lcom/alcineo/softpos/cnaolie;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/alcineo/softpos/aleonci;->ocenlai:Ljava/util/LinkedList;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lcom/alcineo/softpos/aleonci;->ocenlai:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    sget-object v0, Lcom/alcineo/softpos/aleonci;->ocleina:Lorg/slf4j/Logger;

    const-string v1, "==> {}"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/alcineo/softpos/aleonci;->nacieol:Lcom/alcineo/softpos/ociealn;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/alcineo/softpos/ociealn;->acileon(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Unable to send frame, service has been shut down."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public aoleinc(Lcom/alcineo/softpos/ociealn;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alcineo/softpos/ociealn<",
            "Lcom/alcineo/softpos/cnaolie;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alcineo/softpos/aleonci;->nacieol:Lcom/alcineo/softpos/ociealn;

    return-void
.end method

.method public aoleinc(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alcineo/softpos/aleonci;->noaceli:Z

    return-void
.end method

.method public noaceli()Lcom/alcineo/softpos/aecilon;
    .locals 1

    iget-object v0, p0, Lcom/alcineo/softpos/aleonci;->acileon:Lcom/alcineo/softpos/aecilon;

    return-object v0
.end method

.method public run()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_4

    :try_start_0
    invoke-direct {p0}, Lcom/alcineo/softpos/aleonci;->acileon()V

    iget-object v0, p0, Lcom/alcineo/softpos/aleonci;->acileon:Lcom/alcineo/softpos/aecilon;

    iget v1, p0, Lcom/alcineo/softpos/aleonci;->lneaico:I

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alcineo/softpos/aecilon;->acileon(JLjava/util/concurrent/TimeUnit;)Lcom/alcineo/softpos/cnaolie;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lcom/alcineo/softpos/aleonci;->ocleina:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<== "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/alcineo/softpos/aleonci;->noelcai:Lcom/alcineo/softpos/ociealn;

    if-eqz v1, :cond_3

    if-nez v0, :cond_2

    iget-boolean v2, p0, Lcom/alcineo/softpos/aleonci;->enolcai:Z

    if-nez v2, :cond_3

    :cond_2
    invoke-interface {v1, v0}, Lcom/alcineo/softpos/ociealn;->acileon(Ljava/lang/Object;)V

    :cond_3
    iget-boolean v1, p0, Lcom/alcineo/softpos/aleonci;->enolcai:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alcineo/softpos/aleonci;->aoleinc:Lcom/alcineo/softpos/lniaeoc;

    invoke-virtual {v1, v0}, Lcom/alcineo/softpos/lniaeoc;->acileon(Lcom/alcineo/softpos/cnaolie;)Z
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/alcineo/softpos/aleonci;->ocleina:Lorg/slf4j/Logger;

    const-string v2, "An unexpected exception occurred in the transport service: "

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, "This exception has been ignored, the software could work abnormally."

    invoke-interface {v1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/alcineo/softpos/aleonci;->ocleina:Lorg/slf4j/Logger;

    const-string v2, "Error while reading frame from the transport: "

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v2, "The transport is probably closed."

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    :try_start_1
    iget-object v0, p0, Lcom/alcineo/softpos/aleonci;->aoleinc:Lcom/alcineo/softpos/lniaeoc;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alcineo/softpos/lniaeoc;->acileon(Lcom/alcineo/softpos/cnaolie;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    sget-object v1, Lcom/alcineo/softpos/aleonci;->ocleina:Lorg/slf4j/Logger;

    const-string v2, "Error :"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public shutDown()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, Lcom/alcineo/softpos/aleonci;->ocleina:Lorg/slf4j/Logger;

    const-string v1, "Stopping DispatcherService"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/alcineo/softpos/aleonci;->acileon:Lcom/alcineo/softpos/aecilon;

    invoke-virtual {v0}, Lcom/alcineo/softpos/aecilon;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/alcineo/softpos/aleonci;->ocleina:Lorg/slf4j/Logger;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Error while closing the transport: {}"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcom/alcineo/softpos/aleonci;->aoleinc:Lcom/alcineo/softpos/lniaeoc;

    invoke-virtual {v0}, Lcom/alcineo/softpos/lniaeoc;->acileon()V

    return-void
.end method

.method public startUp()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, Lcom/alcineo/softpos/aleonci;->ocleina:Lorg/slf4j/Logger;

    const-string v1, "Starting DispatcherService"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    return-void
.end method
