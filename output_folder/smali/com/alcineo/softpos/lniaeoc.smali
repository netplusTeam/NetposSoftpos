.class public Lcom/alcineo/softpos/lniaeoc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final noaceli:Lorg/slf4j/Logger;


# instance fields
.field private final acileon:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/alcineo/softpos/oalecni;",
            ">;"
        }
    .end annotation
.end field

.field private final aoleinc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alcineo/softpos/oecanli;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$ATaf81yDUyEHxapuC37kopoUjuQ(Ljava/util/List;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/alcineo/softpos/lniaeoc;->acileon(Ljava/util/List;Ljava/lang/Object;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "Softpos"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-class v0, Lcom/alcineo/softpos/lniaeoc;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/alcineo/softpos/lniaeoc;->noaceli:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alcineo/softpos/lniaeoc;->acileon:Ljava/util/HashMap;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/alcineo/softpos/lniaeoc;->aoleinc:Ljava/util/List;

    return-void
.end method

.method private native acileon(Lcom/alcineo/softpos/oeicanl;)Lcom/alcineo/softpos/alicneo;
.end method

.method private acileon(Lcom/alcineo/softpos/oecanli;)V
    .locals 3

    sget-object v0, Lcom/alcineo/softpos/lniaeoc;->noaceli:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Lcom/alcineo/softpos/oecanli;->aoleinc()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Added listener for cls: {}"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/alcineo/softpos/lniaeoc;->aoleinc:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/alcineo/softpos/lniaeoc;->aoleinc:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private native acileon(Lcom/alcineo/softpos/oecanli;Ljava/lang/Object;)V
.end method

.method private static native synthetic acileon(Ljava/util/List;Ljava/lang/Object;)V
.end method

.method private aoleinc(Lcom/alcineo/softpos/oecanli;)V
    .locals 3

    sget-object v0, Lcom/alcineo/softpos/lniaeoc;->noaceli:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Lcom/alcineo/softpos/oecanli;->aoleinc()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Removed listener for cls: {}"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/alcineo/softpos/lniaeoc;->aoleinc:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/alcineo/softpos/lniaeoc;->aoleinc:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public acileon(Ljava/lang/Class;ILjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;I",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    const-class v0, Lcom/alcineo/softpos/alicneo;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lcom/alcineo/softpos/cnaolie;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid class for waitFor()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Lcom/alcineo/softpos/oecanli;

    new-instance v2, Lcom/alcineo/softpos/lniaeoc$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/alcineo/softpos/lniaeoc$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    int-to-long v3, p2

    invoke-virtual {p3, v3, v4}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p2

    invoke-direct {v1, p1, v2, p2, p3}, Lcom/alcineo/softpos/oecanli;-><init>(Ljava/lang/Class;Lcom/alcineo/softpos/ociealn;J)V

    invoke-direct {p0, v1}, Lcom/alcineo/softpos/lniaeoc;->acileon(Lcom/alcineo/softpos/oecanli;)V

    :try_start_0
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    invoke-direct {p0, v1}, Lcom/alcineo/softpos/lniaeoc;->aoleinc(Lcom/alcineo/softpos/oecanli;)V

    throw p1

    :catch_0
    move-exception p1

    :goto_1
    invoke-direct {p0, v1}, Lcom/alcineo/softpos/lniaeoc;->aoleinc(Lcom/alcineo/softpos/oecanli;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    const/4 p1, 0x0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public native acileon()V
.end method

.method public native acileon(ILcom/alcineo/softpos/oalecni;)V
.end method

.method public native acileon(Lcom/alcineo/softpos/ociealn;)V
.end method

.method public native acileon(Ljava/lang/Class;Lcom/alcineo/softpos/ociealn;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/alcineo/softpos/alicneo;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/alcineo/softpos/ociealn<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method public native acileon(Ljava/lang/Class;Lcom/alcineo/softpos/ociealn;ILjava/util/concurrent/TimeUnit;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/alcineo/softpos/alicneo;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/alcineo/softpos/ociealn<",
            "TT;>;I",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation
.end method

.method public acileon(Lcom/alcineo/softpos/cnaolie;)Z
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alcineo/softpos/cnaolie;->acileon()Lcom/alcineo/softpos/oeicanl;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/alcineo/softpos/lniaeoc;->acileon:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/alcineo/softpos/oeicanl;->acileon()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alcineo/softpos/oalecni;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v2, v1}, Lcom/alcineo/softpos/oalecni;->acileon(Lcom/alcineo/softpos/oeicanl;)Lcom/alcineo/softpos/alicneo;

    move-result-object v2

    goto :goto_2

    :cond_2
    :goto_1
    move-object v2, v0

    :goto_2
    if-eqz v2, :cond_3

    invoke-virtual {p1, v2}, Lcom/alcineo/softpos/cnaolie;->acileon(Lcom/alcineo/softpos/alicneo;)V

    :cond_3
    if-eqz v1, :cond_4

    if-nez v2, :cond_4

    sget-object v3, Lcom/alcineo/softpos/lniaeoc;->noaceli:Lorg/slf4j/Logger;

    invoke-virtual {v1}, Lcom/alcineo/softpos/oeicanl;->acileon()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "Received a command without matching class: {}, ignoring."

    invoke-interface {v3, v4, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    iget-object v1, p0, Lcom/alcineo/softpos/lniaeoc;->aoleinc:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/alcineo/softpos/lniaeoc;->aoleinc:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    move v5, v3

    :cond_5
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alcineo/softpos/oecanli;

    invoke-virtual {v6}, Lcom/alcineo/softpos/oecanli;->enolcai()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-direct {p0, v6, v0}, Lcom/alcineo/softpos/lniaeoc;->acileon(Lcom/alcineo/softpos/oecanli;Ljava/lang/Object;)V

    goto :goto_3

    :cond_6
    invoke-virtual {v6, p1}, Lcom/alcineo/softpos/oecanli;->aoleinc(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-direct {p0, v6, p1}, Lcom/alcineo/softpos/lniaeoc;->acileon(Lcom/alcineo/softpos/oecanli;Ljava/lang/Object;)V

    :goto_4
    move v5, v4

    goto :goto_3

    :cond_7
    invoke-virtual {v6, v2}, Lcom/alcineo/softpos/oecanli;->aoleinc(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-direct {p0, v6, v2}, Lcom/alcineo/softpos/lniaeoc;->acileon(Lcom/alcineo/softpos/oecanli;Ljava/lang/Object;)V

    goto :goto_4

    :cond_8
    if-eqz p1, :cond_9

    if-nez v5, :cond_9

    sget-object v0, Lcom/alcineo/softpos/lniaeoc;->noaceli:Lorg/slf4j/Logger;

    const-string v1, "The received frame has not been used: {}"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    return v3

    :cond_9
    return v4

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public native aoleinc(Ljava/lang/Class;Lcom/alcineo/softpos/ociealn;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/alcineo/softpos/cnaolie;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/alcineo/softpos/ociealn<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method public native aoleinc(Ljava/lang/Class;Lcom/alcineo/softpos/ociealn;ILjava/util/concurrent/TimeUnit;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/alcineo/softpos/cnaolie;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/alcineo/softpos/ociealn<",
            "TT;>;I",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation
.end method
