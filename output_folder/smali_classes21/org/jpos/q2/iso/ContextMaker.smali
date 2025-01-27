.class public Lorg/jpos/q2/iso/ContextMaker;
.super Lorg/jpos/q2/QBeanSupport;
.source "ContextMaker.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lorg/jpos/util/Loggeable;


# instance fields
.field contextName:Ljava/lang/String;

.field private contextValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jdom2/Element;",
            ">;"
        }
    .end annotation
.end field

.field in:Ljava/lang/String;

.field out:Ljava/lang/String;

.field source:Ljava/lang/String;

.field sp:Lorg/jpos/space/Space;

.field timeout:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Lorg/jpos/q2/QBeanSupport;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jpos/q2/iso/ContextMaker;->contextName:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lorg/jpos/q2/iso/ContextMaker;->in:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lorg/jpos/q2/iso/ContextMaker;->out:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lorg/jpos/q2/iso/ContextMaker;->source:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lorg/jpos/q2/iso/ContextMaker;->contextValues:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintStream;Ljava/lang/String;)V
    .locals 6
    .param p1, "p"    # Ljava/io/PrintStream;
    .param p2, "indent"    # Ljava/lang/String;

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "inner":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<ContextMaker name=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jpos/q2/iso/ContextMaker;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 136
    iget-object v1, p0, Lorg/jpos/q2/iso/ContextMaker;->contextValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jdom2/Element;

    .line 137
    .local v2, "e":Lorg/jdom2/Element;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lorg/jdom2/Element;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lorg/jdom2/Element;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "</"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lorg/jdom2/Element;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 138
    .end local v2    # "e":Lorg/jdom2/Element;
    goto :goto_0

    .line 139
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</ContextMaker>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public initService()V
    .locals 1

    .line 58
    invoke-virtual {p0}, Lorg/jpos/q2/iso/ContextMaker;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/jpos/util/NameRegistrar;->register(Ljava/lang/String;Ljava/lang/Object;)V

    .line 60
    return-void
.end method

.method public run()V
    .locals 6

    .line 73
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jpos/q2/iso/ContextMaker;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 74
    :goto_0
    invoke-virtual {p0}, Lorg/jpos/q2/iso/ContextMaker;->running()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 76
    iget-object v0, p0, Lorg/jpos/q2/iso/ContextMaker;->sp:Lorg/jpos/space/Space;

    iget-object v1, p0, Lorg/jpos/q2/iso/ContextMaker;->in:Ljava/lang/String;

    iget-object v2, p0, Lorg/jpos/q2/iso/ContextMaker;->timeout:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lorg/jpos/space/Space;->in(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 78
    .local v0, "o":Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 79
    new-instance v1, Lorg/jpos/transaction/Context;

    invoke-direct {v1}, Lorg/jpos/transaction/Context;-><init>()V

    .line 80
    .local v1, "ctx":Lorg/jpos/transaction/Context;
    iget-object v2, p0, Lorg/jpos/q2/iso/ContextMaker;->contextName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lorg/jpos/transaction/Context;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 82
    iget-object v2, p0, Lorg/jpos/q2/iso/ContextMaker;->contextValues:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 83
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jdom2/Element;

    .line 84
    .local v3, "e":Lorg/jdom2/Element;
    invoke-virtual {v3}, Lorg/jdom2/Element;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lorg/jdom2/Element;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/jpos/transaction/Context;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 85
    .end local v3    # "e":Lorg/jdom2/Element;
    goto :goto_1

    .line 88
    :cond_0
    iget-object v2, p0, Lorg/jpos/q2/iso/ContextMaker;->sp:Lorg/jpos/space/Space;

    iget-object v3, p0, Lorg/jpos/q2/iso/ContextMaker;->out:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Lorg/jpos/space/Space;->out(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 90
    .end local v0    # "o":Ljava/lang/Object;
    .end local v1    # "ctx":Lorg/jpos/transaction/Context;
    :cond_1
    goto :goto_0

    .line 91
    :cond_2
    return-void
.end method

.method public setConfiguration(Lorg/jpos/core/Configuration;)V
    .locals 5
    .param p1, "cfg"    # Lorg/jpos/core/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 96
    invoke-super {p0, p1}, Lorg/jpos/q2/QBeanSupport;->setConfiguration(Lorg/jpos/core/Configuration;)V

    .line 98
    invoke-virtual {p0}, Lorg/jpos/q2/iso/ContextMaker;->getPersist()Lorg/jdom2/Element;

    move-result-object v0

    .line 100
    .local v0, "persist":Lorg/jdom2/Element;
    const-string v1, "space"

    invoke-virtual {v0, v1}, Lorg/jdom2/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, "ssp":Ljava/lang/String;
    if-eqz v1, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-static {v2}, Lorg/jpos/space/SpaceFactory;->getSpace(Ljava/lang/String;)Lorg/jpos/space/Space;

    move-result-object v2

    iput-object v2, p0, Lorg/jpos/q2/iso/ContextMaker;->sp:Lorg/jpos/space/Space;

    .line 104
    const-string v2, "timeout"

    invoke-virtual {v0, v2}, Lorg/jdom2/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 105
    .local v2, "sTimeout":Ljava/lang/String;
    if-nez v2, :cond_1

    const-wide/16 v3, 0x2710

    goto :goto_1

    .line 106
    :cond_1
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 105
    :goto_1
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, p0, Lorg/jpos/q2/iso/ContextMaker;->timeout:Ljava/lang/Long;

    .line 108
    const-string v3, "context-name"

    invoke-virtual {v0, v3}, Lorg/jdom2/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/jpos/q2/iso/ContextMaker;->contextName:Ljava/lang/String;

    .line 109
    if-eqz v3, :cond_5

    .line 114
    const-string v3, "in"

    invoke-virtual {v0, v3}, Lorg/jdom2/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/jpos/q2/iso/ContextMaker;->in:Ljava/lang/String;

    .line 115
    if-eqz v3, :cond_4

    .line 120
    const-string v3, "out"

    invoke-virtual {v0, v3}, Lorg/jdom2/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/jpos/q2/iso/ContextMaker;->out:Ljava/lang/String;

    .line 121
    if-eqz v3, :cond_3

    .line 126
    const-string v3, "context-values"

    invoke-virtual {v0, v3}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v3

    .line 127
    .local v3, "values":Lorg/jdom2/Element;
    if-eqz v3, :cond_2

    .line 128
    invoke-virtual {v3}, Lorg/jdom2/Element;->getChildren()Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lorg/jpos/q2/iso/ContextMaker;->contextValues:Ljava/util/List;

    .line 131
    :cond_2
    return-void

    .line 122
    .end local v3    # "values":Lorg/jdom2/Element;
    :cond_3
    new-instance v3, Lorg/jpos/core/ConfigurationException;

    const-string v4, "Missing \'out\' property - the target queue of the created context"

    invoke-direct {v3, v4}, Lorg/jpos/core/ConfigurationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 116
    :cond_4
    new-instance v3, Lorg/jpos/core/ConfigurationException;

    const-string v4, "Missing \'in\' property - the queue to process objects from."

    invoke-direct {v3, v4}, Lorg/jpos/core/ConfigurationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 110
    :cond_5
    new-instance v3, Lorg/jpos/core/ConfigurationException;

    const-string v4, "Missing \'context-name\' property - the context name of the object received on \'in\'"

    invoke-direct {v3, v4}, Lorg/jpos/core/ConfigurationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public startService()V
    .locals 1

    .line 64
    invoke-virtual {p0}, Lorg/jpos/q2/iso/ContextMaker;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/jpos/util/NameRegistrar;->register(Ljava/lang/String;Ljava/lang/Object;)V

    .line 65
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 66
    return-void
.end method

.method public stopService()V
    .locals 1

    .line 69
    invoke-virtual {p0}, Lorg/jpos/q2/iso/ContextMaker;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jpos/util/NameRegistrar;->unregister(Ljava/lang/String;)V

    .line 70
    return-void
.end method
