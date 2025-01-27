.class public Lcom/itextpdf/kernel/counter/DataHandlerCounter;
.super Lcom/itextpdf/kernel/counter/EventCounter;
.source "DataHandlerCounter.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Lcom/itextpdf/kernel/counter/data/EventData<",
        "TT;>;>",
        "Lcom/itextpdf/kernel/counter/EventCounter;",
        "Ljava/io/Closeable;"
    }
.end annotation


# instance fields
.field private volatile closed:Z

.field private final dataHandler:Lcom/itextpdf/kernel/counter/data/EventDataHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/itextpdf/kernel/counter/data/EventDataHandler<",
            "TT;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/itextpdf/kernel/counter/data/EventDataHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/counter/data/EventDataHandler<",
            "TT;TV;>;)V"
        }
    .end annotation

    .line 77
    .local p0, "this":Lcom/itextpdf/kernel/counter/DataHandlerCounter;, "Lcom/itextpdf/kernel/counter/DataHandlerCounter<TT;TV;>;"
    .local p1, "dataHandler":Lcom/itextpdf/kernel/counter/data/EventDataHandler;, "Lcom/itextpdf/kernel/counter/data/EventDataHandler<TT;TV;>;"
    sget-object v0, Lcom/itextpdf/kernel/counter/context/UnknownContext;->PERMISSIVE:Lcom/itextpdf/kernel/counter/context/IContext;

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/kernel/counter/DataHandlerCounter;-><init>(Lcom/itextpdf/kernel/counter/data/EventDataHandler;Lcom/itextpdf/kernel/counter/context/IContext;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/counter/data/EventDataHandler;Lcom/itextpdf/kernel/counter/context/IContext;)V
    .locals 1
    .param p2, "fallback"    # Lcom/itextpdf/kernel/counter/context/IContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/counter/data/EventDataHandler<",
            "TT;TV;>;",
            "Lcom/itextpdf/kernel/counter/context/IContext;",
            ")V"
        }
    .end annotation

    .line 87
    .local p0, "this":Lcom/itextpdf/kernel/counter/DataHandlerCounter;, "Lcom/itextpdf/kernel/counter/DataHandlerCounter<TT;TV;>;"
    .local p1, "dataHandler":Lcom/itextpdf/kernel/counter/data/EventDataHandler;, "Lcom/itextpdf/kernel/counter/data/EventDataHandler<TT;TV;>;"
    invoke-direct {p0, p2}, Lcom/itextpdf/kernel/counter/EventCounter;-><init>(Lcom/itextpdf/kernel/counter/context/IContext;)V

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/kernel/counter/DataHandlerCounter;->closed:Z

    .line 88
    iput-object p1, p0, Lcom/itextpdf/kernel/counter/DataHandlerCounter;->dataHandler:Lcom/itextpdf/kernel/counter/data/EventDataHandler;

    .line 89
    invoke-static {p1}, Lcom/itextpdf/kernel/counter/data/EventDataHandlerUtil;->registerProcessAllShutdownHook(Lcom/itextpdf/kernel/counter/data/EventDataHandler;)V

    .line 90
    invoke-static {p1}, Lcom/itextpdf/kernel/counter/data/EventDataHandlerUtil;->registerTimedProcessing(Lcom/itextpdf/kernel/counter/data/EventDataHandler;)V

    .line 91
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 117
    .local p0, "this":Lcom/itextpdf/kernel/counter/DataHandlerCounter;, "Lcom/itextpdf/kernel/counter/DataHandlerCounter<TT;TV;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/kernel/counter/DataHandlerCounter;->closed:Z

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/itextpdf/kernel/counter/DataHandlerCounter;->dataHandler:Lcom/itextpdf/kernel/counter/data/EventDataHandler;

    invoke-static {v0}, Lcom/itextpdf/kernel/counter/data/EventDataHandlerUtil;->disableShutdownHooks(Lcom/itextpdf/kernel/counter/data/EventDataHandler;)V

    .line 120
    iget-object v0, p0, Lcom/itextpdf/kernel/counter/DataHandlerCounter;->dataHandler:Lcom/itextpdf/kernel/counter/data/EventDataHandler;

    invoke-static {v0}, Lcom/itextpdf/kernel/counter/data/EventDataHandlerUtil;->disableTimedProcessing(Lcom/itextpdf/kernel/counter/data/EventDataHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    iget-object v0, p0, Lcom/itextpdf/kernel/counter/DataHandlerCounter;->dataHandler:Lcom/itextpdf/kernel/counter/data/EventDataHandler;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/counter/data/EventDataHandler;->tryProcessRest()V

    .line 123
    nop

    .line 124
    return-void

    .line 122
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/itextpdf/kernel/counter/DataHandlerCounter;->dataHandler:Lcom/itextpdf/kernel/counter/data/EventDataHandler;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/counter/data/EventDataHandler;->tryProcessRest()V

    .line 123
    throw v0
.end method

.method protected onEvent(Lcom/itextpdf/kernel/counter/event/IEvent;Lcom/itextpdf/kernel/counter/event/IMetaInfo;)V
    .locals 2
    .param p1, "event"    # Lcom/itextpdf/kernel/counter/event/IEvent;
    .param p2, "metaInfo"    # Lcom/itextpdf/kernel/counter/event/IMetaInfo;

    .line 104
    .local p0, "this":Lcom/itextpdf/kernel/counter/DataHandlerCounter;, "Lcom/itextpdf/kernel/counter/DataHandlerCounter<TT;TV;>;"
    iget-boolean v0, p0, Lcom/itextpdf/kernel/counter/DataHandlerCounter;->closed:Z

    if-nez v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/itextpdf/kernel/counter/DataHandlerCounter;->dataHandler:Lcom/itextpdf/kernel/counter/data/EventDataHandler;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/kernel/counter/data/EventDataHandler;->register(Lcom/itextpdf/kernel/counter/event/IEvent;Lcom/itextpdf/kernel/counter/event/IMetaInfo;)V

    .line 108
    return-void

    .line 105
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Data handler counter has been disabled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
