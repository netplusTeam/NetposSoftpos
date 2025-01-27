.class public abstract Lcom/sleepycat/je/dbi/TriggerManager$MapOver;
.super Ljava/lang/Object;
.source "TriggerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/dbi/TriggerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "MapOver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final c:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TE;>;)V"
        }
    .end annotation

    .line 445
    .local p0, "this":Lcom/sleepycat/je/dbi/TriggerManager$MapOver;, "Lcom/sleepycat/je/dbi/TriggerManager$MapOver<TR;TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 446
    iput-object p1, p0, Lcom/sleepycat/je/dbi/TriggerManager$MapOver;->c:Ljava/util/Collection;

    .line 447
    return-void
.end method


# virtual methods
.method protected abstract fun(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TR;"
        }
    .end annotation
.end method

.method public run()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Ljava/util/Collection<",
            "TR;>;>()TS;"
        }
    .end annotation

    .line 451
    .local p0, "this":Lcom/sleepycat/je/dbi/TriggerManager$MapOver;, "Lcom/sleepycat/je/dbi/TriggerManager$MapOver<TR;TE;>;"
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 452
    .local v0, "l":Ljava/util/Collection;, "Ljava/util/Collection<TR;>;"
    invoke-virtual {p0, v0}, Lcom/sleepycat/je/dbi/TriggerManager$MapOver;->run(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    return-object v1
.end method

.method public run(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Ljava/util/Collection<",
            "TR;>;>(TS;)TS;"
        }
    .end annotation

    .line 456
    .local p0, "this":Lcom/sleepycat/je/dbi/TriggerManager$MapOver;, "Lcom/sleepycat/je/dbi/TriggerManager$MapOver<TR;TE;>;"
    .local p1, "l":Ljava/util/Collection;, "TS;"
    iget-object v0, p0, Lcom/sleepycat/je/dbi/TriggerManager$MapOver;->c:Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 457
    return-object p1

    .line 459
    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 460
    .local v1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, v1}, Lcom/sleepycat/je/dbi/TriggerManager$MapOver;->fun(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 461
    .end local v1    # "e":Ljava/lang/Object;, "TE;"
    goto :goto_0

    .line 462
    :cond_1
    return-object p1
.end method
