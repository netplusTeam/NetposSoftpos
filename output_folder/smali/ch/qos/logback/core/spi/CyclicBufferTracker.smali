.class public Lch/qos/logback/core/spi/CyclicBufferTracker;
.super Lch/qos/logback/core/spi/AbstractComponentTracker;
.source "CyclicBufferTracker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lch/qos/logback/core/spi/AbstractComponentTracker<",
        "Lch/qos/logback/core/helpers/CyclicBuffer<",
        "TE;>;>;"
    }
.end annotation


# static fields
.field static final DEFAULT_BUFFER_SIZE:I = 0x100

.field static final DEFAULT_NUMBER_OF_BUFFERS:I = 0x40


# instance fields
.field bufferSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    .local p0, "this":Lch/qos/logback/core/spi/CyclicBufferTracker;, "Lch/qos/logback/core/spi/CyclicBufferTracker<TE;>;"
    invoke-direct {p0}, Lch/qos/logback/core/spi/AbstractComponentTracker;-><init>()V

    .line 30
    const/16 v0, 0x100

    iput v0, p0, Lch/qos/logback/core/spi/CyclicBufferTracker;->bufferSize:I

    .line 34
    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Lch/qos/logback/core/spi/CyclicBufferTracker;->setMaxComponents(I)V

    .line 35
    return-void
.end method


# virtual methods
.method protected buildComponent(Ljava/lang/String;)Lch/qos/logback/core/helpers/CyclicBuffer;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lch/qos/logback/core/helpers/CyclicBuffer<",
            "TE;>;"
        }
    .end annotation

    .line 52
    .local p0, "this":Lch/qos/logback/core/spi/CyclicBufferTracker;, "Lch/qos/logback/core/spi/CyclicBufferTracker<TE;>;"
    new-instance v0, Lch/qos/logback/core/helpers/CyclicBuffer;

    iget v1, p0, Lch/qos/logback/core/spi/CyclicBufferTracker;->bufferSize:I

    invoke-direct {v0, v1}, Lch/qos/logback/core/helpers/CyclicBuffer;-><init>(I)V

    return-object v0
.end method

.method protected bridge synthetic buildComponent(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 25
    .local p0, "this":Lch/qos/logback/core/spi/CyclicBufferTracker;, "Lch/qos/logback/core/spi/CyclicBufferTracker<TE;>;"
    invoke-virtual {p0, p1}, Lch/qos/logback/core/spi/CyclicBufferTracker;->buildComponent(Ljava/lang/String;)Lch/qos/logback/core/helpers/CyclicBuffer;

    move-result-object p1

    return-object p1
.end method

.method public getBufferSize()I
    .locals 1

    .line 38
    .local p0, "this":Lch/qos/logback/core/spi/CyclicBufferTracker;, "Lch/qos/logback/core/spi/CyclicBufferTracker<TE;>;"
    iget v0, p0, Lch/qos/logback/core/spi/CyclicBufferTracker;->bufferSize:I

    return v0
.end method

.method protected isComponentStale(Lch/qos/logback/core/helpers/CyclicBuffer;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/helpers/CyclicBuffer<",
            "TE;>;)Z"
        }
    .end annotation

    .line 57
    .local p0, "this":Lch/qos/logback/core/spi/CyclicBufferTracker;, "Lch/qos/logback/core/spi/CyclicBufferTracker<TE;>;"
    .local p1, "eCyclicBuffer":Lch/qos/logback/core/helpers/CyclicBuffer;, "Lch/qos/logback/core/helpers/CyclicBuffer<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method protected bridge synthetic isComponentStale(Ljava/lang/Object;)Z
    .locals 0

    .line 25
    .local p0, "this":Lch/qos/logback/core/spi/CyclicBufferTracker;, "Lch/qos/logback/core/spi/CyclicBufferTracker<TE;>;"
    check-cast p1, Lch/qos/logback/core/helpers/CyclicBuffer;

    invoke-virtual {p0, p1}, Lch/qos/logback/core/spi/CyclicBufferTracker;->isComponentStale(Lch/qos/logback/core/helpers/CyclicBuffer;)Z

    move-result p1

    return p1
.end method

.method lingererKeysAsOrderedList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 66
    .local p0, "this":Lch/qos/logback/core/spi/CyclicBufferTracker;, "Lch/qos/logback/core/spi/CyclicBufferTracker<TE;>;"
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lch/qos/logback/core/spi/CyclicBufferTracker;->lingerersMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method liveKeysAsOrderedList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 62
    .local p0, "this":Lch/qos/logback/core/spi/CyclicBufferTracker;, "Lch/qos/logback/core/spi/CyclicBufferTracker<TE;>;"
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lch/qos/logback/core/spi/CyclicBufferTracker;->liveMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method protected processPriorToRemoval(Lch/qos/logback/core/helpers/CyclicBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/helpers/CyclicBuffer<",
            "TE;>;)V"
        }
    .end annotation

    .line 47
    .local p0, "this":Lch/qos/logback/core/spi/CyclicBufferTracker;, "Lch/qos/logback/core/spi/CyclicBufferTracker<TE;>;"
    .local p1, "component":Lch/qos/logback/core/helpers/CyclicBuffer;, "Lch/qos/logback/core/helpers/CyclicBuffer<TE;>;"
    invoke-virtual {p1}, Lch/qos/logback/core/helpers/CyclicBuffer;->clear()V

    .line 48
    return-void
.end method

.method protected bridge synthetic processPriorToRemoval(Ljava/lang/Object;)V
    .locals 0

    .line 25
    .local p0, "this":Lch/qos/logback/core/spi/CyclicBufferTracker;, "Lch/qos/logback/core/spi/CyclicBufferTracker<TE;>;"
    check-cast p1, Lch/qos/logback/core/helpers/CyclicBuffer;

    invoke-virtual {p0, p1}, Lch/qos/logback/core/spi/CyclicBufferTracker;->processPriorToRemoval(Lch/qos/logback/core/helpers/CyclicBuffer;)V

    return-void
.end method

.method public setBufferSize(I)V
    .locals 0
    .param p1, "bufferSize"    # I

    .line 42
    .local p0, "this":Lch/qos/logback/core/spi/CyclicBufferTracker;, "Lch/qos/logback/core/spi/CyclicBufferTracker<TE;>;"
    iput p1, p0, Lch/qos/logback/core/spi/CyclicBufferTracker;->bufferSize:I

    .line 43
    return-void
.end method
