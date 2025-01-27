.class public Lorg/jpos/util/Profiler;
.super Ljava/lang/Object;
.source "Profiler.java"

# interfaces
.implements Lorg/jpos/util/Loggeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jpos/util/Profiler$Entry;
    }
.end annotation


# static fields
.field public static final TO_MILLIS:I = 0xf4240


# instance fields
.field events:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lorg/jpos/util/Profiler$Entry;",
            ">;"
        }
    .end annotation
.end field

.field partial:J

.field start:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p0}, Lorg/jpos/util/Profiler;->reset()V

    .line 42
    return-void
.end method


# virtual methods
.method public declared-synchronized checkPoint(Ljava/lang/String;)V
    .locals 6
    .param p1, "detail"    # Ljava/lang/String;

    monitor-enter p0

    .line 56
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 57
    .local v0, "now":J
    new-instance v2, Lorg/jpos/util/Profiler$Entry;

    invoke-direct {v2}, Lorg/jpos/util/Profiler$Entry;-><init>()V

    .line 58
    .local v2, "e":Lorg/jpos/util/Profiler$Entry;
    iget-wide v3, p0, Lorg/jpos/util/Profiler;->partial:J

    sub-long v3, v0, v3

    invoke-virtual {v2, v3, v4}, Lorg/jpos/util/Profiler$Entry;->setDurationInNanos(J)V

    .line 59
    iget-wide v3, p0, Lorg/jpos/util/Profiler;->start:J

    sub-long v3, v0, v3

    invoke-virtual {v2, v3, v4}, Lorg/jpos/util/Profiler$Entry;->setTotalDurationInNanos(J)V

    .line 60
    iget-object v3, p0, Lorg/jpos/util/Profiler;->events:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 61
    const/4 v3, 0x1

    .line 62
    .local v3, "i":I
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 63
    .local v4, "d":Ljava/lang/String;
    iget-object v5, p0, Lorg/jpos/util/Profiler;->events:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v4}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 64
    move-object p1, v4

    .line 65
    goto :goto_1

    .line 61
    .end local v4    # "d":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 69
    .end local v3    # "i":I
    .end local p0    # "this":Lorg/jpos/util/Profiler;
    :cond_1
    :goto_1
    invoke-virtual {v2, p1}, Lorg/jpos/util/Profiler$Entry;->setEventName(Ljava/lang/String;)V

    .line 70
    iget-object v3, p0, Lorg/jpos/util/Profiler;->events:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iput-wide v0, p0, Lorg/jpos/util/Profiler;->partial:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    monitor-exit p0

    return-void

    .line 55
    .end local v0    # "now":J
    .end local v2    # "e":Lorg/jpos/util/Profiler$Entry;
    .end local p1    # "detail":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public dump(Ljava/io/PrintStream;Ljava/lang/String;)V
    .locals 5
    .param p1, "p"    # Ljava/io/PrintStream;
    .param p2, "indent"    # Ljava/lang/String;

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "inner":Ljava/lang/String;
    iget-object v1, p0, Lorg/jpos/util/Profiler;->events:Ljava/util/LinkedHashMap;

    const-string v2, "end"

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 94
    invoke-virtual {p0, v2}, Lorg/jpos/util/Profiler;->checkPoint(Ljava/lang/String;)V

    .line 95
    :cond_0
    iget-object v1, p0, Lorg/jpos/util/Profiler;->events:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 96
    .local v1, "c":Ljava/util/Collection;
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 97
    .local v2, "iter":Ljava/util/Iterator;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<profiler>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 98
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 99
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/jpos/iso/ISOUtil;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 100
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</profiler>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public getElapsed()J
    .locals 4

    .line 77
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/jpos/util/Profiler;->start:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getElapsedInMillis()J
    .locals 4

    .line 80
    invoke-virtual {p0}, Lorg/jpos/util/Profiler;->getElapsed()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getEntry(Ljava/lang/String;)Lorg/jpos/util/Profiler$Entry;
    .locals 1
    .param p1, "eventName"    # Ljava/lang/String;

    .line 106
    iget-object v0, p0, Lorg/jpos/util/Profiler;->events:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jpos/util/Profiler$Entry;

    return-object v0
.end method

.method public getEvents()Ljava/util/LinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lorg/jpos/util/Profiler$Entry;",
            ">;"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lorg/jpos/util/Profiler;->events:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public getPartial()J
    .locals 4

    .line 86
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/jpos/util/Profiler;->partial:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getPartialInMillis()J
    .locals 4

    .line 89
    invoke-virtual {p0}, Lorg/jpos/util/Profiler;->getPartial()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public reenable()V
    .locals 2

    .line 109
    iget-object v0, p0, Lorg/jpos/util/Profiler;->events:Ljava/util/LinkedHashMap;

    const-string v1, "end"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    return-void
.end method

.method public reset()V
    .locals 2

    .line 47
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/jpos/util/Profiler;->partial:J

    iput-wide v0, p0, Lorg/jpos/util/Profiler;->start:J

    .line 48
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/jpos/util/Profiler;->events:Ljava/util/LinkedHashMap;

    .line 49
    return-void
.end method
