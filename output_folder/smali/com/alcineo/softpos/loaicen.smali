.class public Lcom/alcineo/softpos/loaicen;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static aoleinc:Lcom/alcineo/softpos/loaicen; = null

.field private static final enolcai:Z = false

.field private static final noaceli:Ljava/lang/String; = "loaicen"


# instance fields
.field public acileon:Lcom/alcineo/softpos/aleonci;


# direct methods
.method public static synthetic $r8$lambda$ydPp2yNvJvmfm2bYT85KgYq7gaU(Lcom/alcineo/softpos/loaicen;Lcom/alcineo/softpos/cnaolie;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alcineo/softpos/loaicen;->acileon(Lcom/alcineo/softpos/cnaolie;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "Softpos"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native acileon(Landroid/content/Context;)Lcom/alcineo/softpos/loaicen;
.end method

.method public static native synthetic acileon()Ljava/lang/String;
.end method

.method private native acileon(Lcom/alcineo/softpos/cnaolie;)V
.end method

.method private aoleinc(Landroid/content/Context;)V
    .locals 3

    iget-object v0, p0, Lcom/alcineo/softpos/loaicen;->acileon:Lcom/alcineo/softpos/aleonci;

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/alcineo/softpos/loaicen;->noaceli(Landroid/content/Context;)V

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string/jumbo v1, "settings"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/alcineo/softpos/enaocli;

    invoke-direct {v1, p1}, Lcom/alcineo/softpos/enaocli;-><init>(Ljava/lang/String;)V

    new-instance p1, Lcom/alcineo/softpos/einloca;

    new-instance v2, Lcom/alcineo/softpos/colanei;

    invoke-direct {v2}, Lcom/alcineo/softpos/colanei;-><init>()V

    invoke-direct {p1, v1, v1, v2}, Lcom/alcineo/softpos/einloca;-><init>(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/channels/WritableByteChannel;Lcom/alcineo/softpos/noealic;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v1, Lcom/alcineo/softpos/loaicen;->noaceli:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    new-instance p1, Lcom/alcineo/softpos/aleonci;

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Lcom/alcineo/softpos/aleonci;-><init>(Lcom/alcineo/softpos/aecilon;I)V

    iput-object p1, p0, Lcom/alcineo/softpos/loaicen;->acileon:Lcom/alcineo/softpos/aleonci;

    invoke-virtual {p1, v1}, Lcom/alcineo/softpos/aleonci;->aoleinc(Z)V

    iget-object p1, p0, Lcom/alcineo/softpos/loaicen;->acileon:Lcom/alcineo/softpos/aleonci;

    new-instance v0, Lcom/alcineo/softpos/loaicen$acileon;

    invoke-direct {v0, p0}, Lcom/alcineo/softpos/loaicen$acileon;-><init>(Lcom/alcineo/softpos/loaicen;)V

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService;->addListener(Lcom/google/common/util/concurrent/Service$Listener;Ljava/util/concurrent/Executor;)V

    iget-object p1, p0, Lcom/alcineo/softpos/loaicen;->acileon:Lcom/alcineo/softpos/aleonci;

    invoke-virtual {p1}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService;->startAsync()Lcom/google/common/util/concurrent/Service;

    iget-object p1, p0, Lcom/alcineo/softpos/loaicen;->acileon:Lcom/alcineo/softpos/aleonci;

    invoke-virtual {p1}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService;->awaitRunning()V

    iget-object p1, p0, Lcom/alcineo/softpos/loaicen;->acileon:Lcom/alcineo/softpos/aleonci;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/alcineo/softpos/aleonci;->acileon(Z)V

    iget-object p1, p0, Lcom/alcineo/softpos/loaicen;->acileon:Lcom/alcineo/softpos/aleonci;

    new-instance v0, Lcom/alcineo/softpos/loaicen$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/alcineo/softpos/loaicen$$ExternalSyntheticLambda0;-><init>(Lcom/alcineo/softpos/loaicen;)V

    invoke-virtual {p1, v0}, Lcom/alcineo/softpos/aleonci;->acileon(Lcom/alcineo/softpos/ociealn;)V

    invoke-virtual {p0}, Lcom/alcineo/softpos/loaicen;->enolcai()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Main Dispatcher already running.. "

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private native noaceli(Landroid/content/Context;)V
.end method


# virtual methods
.method public native acileon(Lcom/alcineo/softpos/noliace;)V
.end method

.method public native aoleinc()Lcom/alcineo/softpos/aleonci;
.end method

.method public native enolcai()V
.end method

.method public noaceli()Z
    .locals 1

    iget-object v0, p0, Lcom/alcineo/softpos/loaicen;->acileon:Lcom/alcineo/softpos/aleonci;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public ocenlai()V
    .locals 2

    invoke-virtual {p0}, Lcom/alcineo/softpos/loaicen;->noaceli()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alcineo/softpos/loaicen;->noaceli:Ljava/lang/String;

    const-string v1, "Stopping MainDispatcher.. "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/alcineo/softpos/loaicen;->acileon:Lcom/alcineo/softpos/aleonci;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService;->stopAsync()Lcom/google/common/util/concurrent/Service;

    iget-object v1, p0, Lcom/alcineo/softpos/loaicen;->acileon:Lcom/alcineo/softpos/aleonci;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService;->awaitTerminated()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alcineo/softpos/loaicen;->acileon:Lcom/alcineo/softpos/aleonci;

    const-string v1, "MainDispatcher Stopped.. "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
