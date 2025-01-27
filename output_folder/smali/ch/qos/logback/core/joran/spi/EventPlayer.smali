.class public Lch/qos/logback/core/joran/spi/EventPlayer;
.super Ljava/lang/Object;
.source "EventPlayer.java"


# instance fields
.field currentIndex:I

.field eventList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lch/qos/logback/core/joran/event/SaxEvent;",
            ">;"
        }
    .end annotation
.end field

.field final interpreter:Lch/qos/logback/core/joran/spi/Interpreter;


# direct methods
.method public constructor <init>(Lch/qos/logback/core/joran/spi/Interpreter;)V
    .locals 0
    .param p1, "interpreter"    # Lch/qos/logback/core/joran/spi/Interpreter;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lch/qos/logback/core/joran/spi/EventPlayer;->interpreter:Lch/qos/logback/core/joran/spi/Interpreter;

    .line 32
    return-void
.end method


# virtual methods
.method public addEventsDynamically(Ljava/util/List;I)V
    .locals 2
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lch/qos/logback/core/joran/event/SaxEvent;",
            ">;I)V"
        }
    .end annotation

    .line 69
    .local p1, "eventList":Ljava/util/List;, "Ljava/util/List<Lch/qos/logback/core/joran/event/SaxEvent;>;"
    iget-object v0, p0, Lch/qos/logback/core/joran/spi/EventPlayer;->eventList:Ljava/util/List;

    iget v1, p0, Lch/qos/logback/core/joran/spi/EventPlayer;->currentIndex:I

    add-int/2addr v1, p2

    invoke-interface {v0, v1, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 70
    return-void
.end method

.method public getCopyOfPlayerEventList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lch/qos/logback/core/joran/event/SaxEvent;",
            ">;"
        }
    .end annotation

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lch/qos/logback/core/joran/spi/EventPlayer;->eventList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public play(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lch/qos/logback/core/joran/event/SaxEvent;",
            ">;)V"
        }
    .end annotation

    .line 44
    .local p1, "aSaxEventList":Ljava/util/List;, "Ljava/util/List<Lch/qos/logback/core/joran/event/SaxEvent;>;"
    iput-object p1, p0, Lch/qos/logback/core/joran/spi/EventPlayer;->eventList:Ljava/util/List;

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lch/qos/logback/core/joran/spi/EventPlayer;->currentIndex:I

    :goto_0
    iget v0, p0, Lch/qos/logback/core/joran/spi/EventPlayer;->currentIndex:I

    iget-object v1, p0, Lch/qos/logback/core/joran/spi/EventPlayer;->eventList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 47
    iget-object v0, p0, Lch/qos/logback/core/joran/spi/EventPlayer;->eventList:Ljava/util/List;

    iget v1, p0, Lch/qos/logback/core/joran/spi/EventPlayer;->currentIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/qos/logback/core/joran/event/SaxEvent;

    .line 49
    .local v0, "se":Lch/qos/logback/core/joran/event/SaxEvent;
    instance-of v1, v0, Lch/qos/logback/core/joran/event/StartEvent;

    if-eqz v1, :cond_0

    .line 50
    iget-object v1, p0, Lch/qos/logback/core/joran/spi/EventPlayer;->interpreter:Lch/qos/logback/core/joran/spi/Interpreter;

    move-object v2, v0

    check-cast v2, Lch/qos/logback/core/joran/event/StartEvent;

    invoke-virtual {v1, v2}, Lch/qos/logback/core/joran/spi/Interpreter;->startElement(Lch/qos/logback/core/joran/event/StartEvent;)V

    .line 52
    iget-object v1, p0, Lch/qos/logback/core/joran/spi/EventPlayer;->interpreter:Lch/qos/logback/core/joran/spi/Interpreter;

    invoke-virtual {v1}, Lch/qos/logback/core/joran/spi/Interpreter;->getInterpretationContext()Lch/qos/logback/core/joran/spi/InterpretationContext;

    move-result-object v1

    invoke-virtual {v1, v0}, Lch/qos/logback/core/joran/spi/InterpretationContext;->fireInPlay(Lch/qos/logback/core/joran/event/SaxEvent;)V

    .line 54
    :cond_0
    instance-of v1, v0, Lch/qos/logback/core/joran/event/BodyEvent;

    if-eqz v1, :cond_1

    .line 56
    iget-object v1, p0, Lch/qos/logback/core/joran/spi/EventPlayer;->interpreter:Lch/qos/logback/core/joran/spi/Interpreter;

    invoke-virtual {v1}, Lch/qos/logback/core/joran/spi/Interpreter;->getInterpretationContext()Lch/qos/logback/core/joran/spi/InterpretationContext;

    move-result-object v1

    invoke-virtual {v1, v0}, Lch/qos/logback/core/joran/spi/InterpretationContext;->fireInPlay(Lch/qos/logback/core/joran/event/SaxEvent;)V

    .line 57
    iget-object v1, p0, Lch/qos/logback/core/joran/spi/EventPlayer;->interpreter:Lch/qos/logback/core/joran/spi/Interpreter;

    move-object v2, v0

    check-cast v2, Lch/qos/logback/core/joran/event/BodyEvent;

    invoke-virtual {v1, v2}, Lch/qos/logback/core/joran/spi/Interpreter;->characters(Lch/qos/logback/core/joran/event/BodyEvent;)V

    .line 59
    :cond_1
    instance-of v1, v0, Lch/qos/logback/core/joran/event/EndEvent;

    if-eqz v1, :cond_2

    .line 61
    iget-object v1, p0, Lch/qos/logback/core/joran/spi/EventPlayer;->interpreter:Lch/qos/logback/core/joran/spi/Interpreter;

    invoke-virtual {v1}, Lch/qos/logback/core/joran/spi/Interpreter;->getInterpretationContext()Lch/qos/logback/core/joran/spi/InterpretationContext;

    move-result-object v1

    invoke-virtual {v1, v0}, Lch/qos/logback/core/joran/spi/InterpretationContext;->fireInPlay(Lch/qos/logback/core/joran/event/SaxEvent;)V

    .line 62
    iget-object v1, p0, Lch/qos/logback/core/joran/spi/EventPlayer;->interpreter:Lch/qos/logback/core/joran/spi/Interpreter;

    move-object v2, v0

    check-cast v2, Lch/qos/logback/core/joran/event/EndEvent;

    invoke-virtual {v1, v2}, Lch/qos/logback/core/joran/spi/Interpreter;->endElement(Lch/qos/logback/core/joran/event/EndEvent;)V

    .line 46
    :cond_2
    iget v1, p0, Lch/qos/logback/core/joran/spi/EventPlayer;->currentIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lch/qos/logback/core/joran/spi/EventPlayer;->currentIndex:I

    goto :goto_0

    .line 66
    .end local v0    # "se":Lch/qos/logback/core/joran/event/SaxEvent;
    :cond_3
    return-void
.end method
