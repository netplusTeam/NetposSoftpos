.class public Lorg/jpos/q2/qbean/SpaceLet;
.super Lorg/jpos/q2/QBeanSupport;
.source "SpaceLet.java"

# interfaces
.implements Lorg/jpos/space/Space;


# instance fields
.field inScript:Ljava/lang/String;

.field inSource:Ljava/lang/String;

.field outScript:Ljava/lang/String;

.field outSource:Ljava/lang/String;

.field pushScript:Ljava/lang/String;

.field pushSource:Ljava/lang/String;

.field putScript:Ljava/lang/String;

.field putSource:Ljava/lang/String;

.field rdScript:Ljava/lang/String;

.field rdSource:Ljava/lang/String;

.field sp:Lorg/jpos/space/Space;

.field uri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lorg/jpos/q2/QBeanSupport;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/jpos/q2/qbean/SpaceLet;)Lbsh/Interpreter;
    .locals 1
    .param p0, "x0"    # Lorg/jpos/q2/qbean/SpaceLet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Lorg/jpos/q2/qbean/SpaceLet;->initInterpreter()Lbsh/Interpreter;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lorg/jpos/q2/qbean/SpaceLet;Lbsh/Interpreter;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lorg/jpos/q2/qbean/SpaceLet;
    .param p1, "x1"    # Lbsh/Interpreter;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lorg/jpos/q2/qbean/SpaceLet;->eval(Lbsh/Interpreter;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private eval(Lbsh/Interpreter;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "bsh"    # Lbsh/Interpreter;
    .param p2, "script"    # Ljava/lang/String;
    .param p3, "source"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 328
    const/4 v0, 0x0

    .line 329
    .local v0, "rc":Z
    if-eqz p2, :cond_1

    .line 330
    invoke-virtual {p1, p2}, Lbsh/Interpreter;->eval(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 331
    .local v1, "retValue":Ljava/lang/Object;
    if-eqz p3, :cond_0

    .line 332
    invoke-virtual {p1, p3}, Lbsh/Interpreter;->source(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 333
    :cond_0
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    .line 334
    move-object v2, v1

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 337
    .end local v1    # "retValue":Ljava/lang/Object;
    :cond_1
    return v0
.end method

.method private getScript(Lorg/jdom2/Element;)Ljava/lang/String;
    .locals 1
    .param p1, "e"    # Lorg/jdom2/Element;

    .line 254
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/jdom2/Element;->getText()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private grabSpace(Lorg/jdom2/Element;)V
    .locals 1
    .param p1, "e"    # Lorg/jdom2/Element;

    .line 251
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/jdom2/Element;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-static {v0}, Lorg/jpos/space/SpaceFactory;->getSpace(Ljava/lang/String;)Lorg/jpos/space/Space;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/q2/qbean/SpaceLet;->sp:Lorg/jpos/space/Space;

    .line 252
    return-void
.end method

.method private initInterpreter()Lbsh/Interpreter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    .line 292
    new-instance v0, Lbsh/Interpreter;

    invoke-direct {v0}, Lbsh/Interpreter;-><init>()V

    .line 293
    .local v0, "bsh":Lbsh/Interpreter;
    iget-object v1, p0, Lorg/jpos/q2/qbean/SpaceLet;->sp:Lorg/jpos/space/Space;

    const-string v2, "sp"

    invoke-virtual {v0, v2, v1}, Lbsh/Interpreter;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 294
    const-string v1, "spacelet"

    invoke-virtual {v0, v1, p0}, Lbsh/Interpreter;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 295
    invoke-virtual {p0}, Lorg/jpos/q2/qbean/SpaceLet;->getLog()Lorg/jpos/util/Log;

    move-result-object v1

    const-string v2, "log"

    invoke-virtual {v0, v2, v1}, Lbsh/Interpreter;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 296
    return-object v0
.end method

.method private initInterpreter(Ljava/lang/Object;)Lbsh/Interpreter;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    .line 299
    invoke-direct {p0}, Lorg/jpos/q2/qbean/SpaceLet;->initInterpreter()Lbsh/Interpreter;

    move-result-object v0

    .line 300
    .local v0, "bsh":Lbsh/Interpreter;
    const-string v1, "key"

    invoke-virtual {v0, v1, p1}, Lbsh/Interpreter;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 301
    return-object v0
.end method

.method private initInterpreter(Ljava/lang/Object;J)Lbsh/Interpreter;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    .line 321
    invoke-direct {p0, p1}, Lorg/jpos/q2/qbean/SpaceLet;->initInterpreter(Ljava/lang/Object;)Lbsh/Interpreter;

    move-result-object v0

    .line 322
    .local v0, "bsh":Lbsh/Interpreter;
    const-string v1, "timeout"

    invoke-virtual {v0, v1, p2, p3}, Lbsh/Interpreter;->set(Ljava/lang/String;J)V

    .line 323
    return-object v0
.end method

.method private initInterpreter(Ljava/lang/Object;Ljava/lang/Object;)Lbsh/Interpreter;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    .line 306
    invoke-direct {p0, p1}, Lorg/jpos/q2/qbean/SpaceLet;->initInterpreter(Ljava/lang/Object;)Lbsh/Interpreter;

    move-result-object v0

    .line 307
    .local v0, "bsh":Lbsh/Interpreter;
    const-string v1, "value"

    invoke-virtual {v0, v1, p2}, Lbsh/Interpreter;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 308
    return-object v0
.end method

.method private initInterpreter(Ljava/lang/Object;Ljava/lang/Object;J)Lbsh/Interpreter;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    .line 314
    invoke-direct {p0, p1, p2}, Lorg/jpos/q2/qbean/SpaceLet;->initInterpreter(Ljava/lang/Object;Ljava/lang/Object;)Lbsh/Interpreter;

    move-result-object v0

    .line 315
    .local v0, "bsh":Lbsh/Interpreter;
    const-string v1, "timeout"

    invoke-virtual {v0, v1, p3, p4}, Lbsh/Interpreter;->set(Ljava/lang/String;J)V

    .line 316
    return-object v0
.end method

.method private initSpace(Lorg/jdom2/Element;)V
    .locals 3
    .param p1, "e"    # Lorg/jdom2/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 278
    if-nez p1, :cond_0

    .line 279
    return-void

    .line 282
    :cond_0
    nop

    .line 283
    :try_start_0
    invoke-direct {p0}, Lorg/jpos/q2/qbean/SpaceLet;->initInterpreter()Lbsh/Interpreter;

    move-result-object v0

    .line 284
    invoke-virtual {p1}, Lorg/jdom2/Element;->getText()Ljava/lang/String;

    move-result-object v1

    const-string v2, "source"

    .line 285
    invoke-virtual {p1, v2}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 282
    invoke-direct {p0, v0, v1, v2}, Lorg/jpos/q2/qbean/SpaceLet;->eval(Lbsh/Interpreter;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    nop

    .line 290
    return-void

    .line 287
    :catchall_0
    move-exception v0

    .line 288
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Lorg/jpos/core/ConfigurationException;

    invoke-direct {v1, v0}, Lorg/jpos/core/ConfigurationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private launch(Lorg/jdom2/Element;)V
    .locals 4
    .param p1, "e"    # Lorg/jdom2/Element;

    .line 264
    invoke-virtual {p1}, Lorg/jdom2/Element;->getText()Ljava/lang/String;

    move-result-object v0

    .line 265
    .local v0, "script":Ljava/lang/String;
    const-string v1, "source"

    invoke-virtual {p1, v1}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 267
    .local v1, "source":Ljava/lang/String;
    new-instance v2, Lorg/jpos/q2/qbean/SpaceLet$1;

    const-string v3, "SpaceLet-launch"

    invoke-direct {v2, p0, v3, v0, v1}, Lorg/jpos/q2/qbean/SpaceLet$1;-><init>(Lorg/jpos/q2/qbean/SpaceLet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    invoke-virtual {v2}, Lorg/jpos/q2/qbean/SpaceLet$1;->start()V

    .line 276
    return-void
.end method


# virtual methods
.method public existAny([Ljava/lang/Object;)Z
    .locals 1
    .param p1, "keys"    # [Ljava/lang/Object;

    .line 245
    iget-object v0, p0, Lorg/jpos/q2/qbean/SpaceLet;->sp:Lorg/jpos/space/Space;

    invoke-interface {v0, p1}, Lorg/jpos/space/Space;->existAny([Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public existAny([Ljava/lang/Object;J)Z
    .locals 1
    .param p1, "keys"    # [Ljava/lang/Object;
    .param p2, "timeout"    # J

    .line 248
    iget-object v0, p0, Lorg/jpos/q2/qbean/SpaceLet;->sp:Lorg/jpos/space/Space;

    invoke-interface {v0, p1, p2, p3}, Lorg/jpos/space/Space;->existAny([Ljava/lang/Object;J)Z

    move-result v0

    return v0
.end method

.method public in(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;

    .line 160
    :try_start_0
    invoke-direct {p0, p1}, Lorg/jpos/q2/qbean/SpaceLet;->initInterpreter(Ljava/lang/Object;)Lbsh/Interpreter;

    move-result-object v0

    .line 161
    .local v0, "bsh":Lbsh/Interpreter;
    iget-object v1, p0, Lorg/jpos/q2/qbean/SpaceLet;->sp:Lorg/jpos/space/Space;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 162
    :try_start_1
    iget-object v2, p0, Lorg/jpos/q2/qbean/SpaceLet;->inScript:Ljava/lang/String;

    iget-object v3, p0, Lorg/jpos/q2/qbean/SpaceLet;->inSource:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v3}, Lorg/jpos/q2/qbean/SpaceLet;->eval(Lbsh/Interpreter;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 163
    const-string v2, "value"

    invoke-virtual {v0, v2}, Lbsh/Interpreter;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    monitor-exit v1

    return-object v2

    .line 165
    :cond_0
    iget-object v2, p0, Lorg/jpos/q2/qbean/SpaceLet;->sp:Lorg/jpos/space/Space;

    invoke-interface {v2, p1}, Lorg/jpos/space/Space;->in(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    monitor-exit v1

    return-object v2

    .line 167
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p1    # "key":Ljava/lang/Object;
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 168
    .end local v0    # "bsh":Lbsh/Interpreter;
    .restart local p1    # "key":Ljava/lang/Object;
    :catchall_1
    move-exception v0

    .line 169
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Lorg/jpos/space/SpaceError;

    invoke-direct {v1, v0}, Lorg/jpos/space/SpaceError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public in(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "timeout"    # J

    .line 188
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lorg/jpos/q2/qbean/SpaceLet;->initInterpreter(Ljava/lang/Object;J)Lbsh/Interpreter;

    move-result-object v0

    .line 189
    .local v0, "bsh":Lbsh/Interpreter;
    iget-object v1, p0, Lorg/jpos/q2/qbean/SpaceLet;->sp:Lorg/jpos/space/Space;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 190
    :try_start_1
    iget-object v2, p0, Lorg/jpos/q2/qbean/SpaceLet;->inScript:Ljava/lang/String;

    iget-object v3, p0, Lorg/jpos/q2/qbean/SpaceLet;->inSource:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v3}, Lorg/jpos/q2/qbean/SpaceLet;->eval(Lbsh/Interpreter;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 191
    const-string v2, "value"

    invoke-virtual {v0, v2}, Lbsh/Interpreter;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    monitor-exit v1

    return-object v2

    .line 193
    :cond_0
    iget-object v2, p0, Lorg/jpos/q2/qbean/SpaceLet;->sp:Lorg/jpos/space/Space;

    invoke-interface {v2, p1, p2, p3}, Lorg/jpos/space/Space;->in(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    monitor-exit v1

    return-object v2

    .line 195
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p1    # "key":Ljava/lang/Object;
    .end local p2    # "timeout":J
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 196
    .end local v0    # "bsh":Lbsh/Interpreter;
    .restart local p1    # "key":Ljava/lang/Object;
    .restart local p2    # "timeout":J
    :catchall_1
    move-exception v0

    .line 197
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Lorg/jpos/space/SpaceError;

    invoke-direct {v1, v0}, Lorg/jpos/space/SpaceError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public initService()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 45
    invoke-virtual {p0}, Lorg/jpos/q2/qbean/SpaceLet;->getPersist()Lorg/jdom2/Element;

    move-result-object v0

    .line 46
    .local v0, "config":Lorg/jdom2/Element;
    const-string v1, "space"

    invoke-virtual {v0, v1}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/jpos/q2/qbean/SpaceLet;->grabSpace(Lorg/jdom2/Element;)V

    .line 47
    const-string v1, "init"

    invoke-virtual {v0, v1}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/jpos/q2/qbean/SpaceLet;->initSpace(Lorg/jdom2/Element;)V

    .line 49
    invoke-virtual {p0}, Lorg/jpos/q2/qbean/SpaceLet;->getName()Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, "name":Ljava/lang/String;
    const-string v2, "spacelet"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 51
    const-string v1, "default"

    .line 52
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "spacelet:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/jpos/q2/qbean/SpaceLet;->uri:Ljava/lang/String;

    .line 54
    const-string v2, "out"

    invoke-virtual {v0, v2}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v2

    .line 55
    .local v2, "e":Lorg/jdom2/Element;
    invoke-direct {p0, v2}, Lorg/jpos/q2/qbean/SpaceLet;->getScript(Lorg/jdom2/Element;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/jpos/q2/qbean/SpaceLet;->outScript:Ljava/lang/String;

    .line 56
    const-string v3, "source"

    if-eqz v2, :cond_1

    .line 57
    invoke-virtual {v2, v3}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/jpos/q2/qbean/SpaceLet;->outSource:Ljava/lang/String;

    .line 59
    :cond_1
    const-string v4, "push"

    invoke-virtual {v0, v4}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v2

    .line 60
    invoke-direct {p0, v2}, Lorg/jpos/q2/qbean/SpaceLet;->getScript(Lorg/jdom2/Element;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/jpos/q2/qbean/SpaceLet;->pushScript:Ljava/lang/String;

    .line 61
    if-eqz v2, :cond_2

    .line 62
    invoke-virtual {v2, v3}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/jpos/q2/qbean/SpaceLet;->pushSource:Ljava/lang/String;

    .line 64
    :cond_2
    const-string v4, "in"

    invoke-virtual {v0, v4}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v2

    .line 65
    invoke-direct {p0, v2}, Lorg/jpos/q2/qbean/SpaceLet;->getScript(Lorg/jdom2/Element;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/jpos/q2/qbean/SpaceLet;->inScript:Ljava/lang/String;

    .line 66
    if-eqz v2, :cond_3

    .line 67
    invoke-virtual {v2, v3}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/jpos/q2/qbean/SpaceLet;->inSource:Ljava/lang/String;

    .line 69
    :cond_3
    const-string v4, "rd"

    invoke-virtual {v0, v4}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v2

    .line 70
    invoke-direct {p0, v2}, Lorg/jpos/q2/qbean/SpaceLet;->getScript(Lorg/jdom2/Element;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/jpos/q2/qbean/SpaceLet;->rdScript:Ljava/lang/String;

    .line 71
    if-eqz v2, :cond_4

    .line 72
    invoke-virtual {v2, v3}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/jpos/q2/qbean/SpaceLet;->rdSource:Ljava/lang/String;

    .line 74
    :cond_4
    const-string v4, "put"

    invoke-virtual {v0, v4}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v2

    .line 75
    invoke-direct {p0, v2}, Lorg/jpos/q2/qbean/SpaceLet;->getScript(Lorg/jdom2/Element;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/jpos/q2/qbean/SpaceLet;->putScript:Ljava/lang/String;

    .line 76
    if-eqz v2, :cond_5

    .line 77
    invoke-virtual {v2, v3}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/jpos/q2/qbean/SpaceLet;->putSource:Ljava/lang/String;

    .line 79
    :cond_5
    return-void
.end method

.method public inp(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;

    .line 216
    :try_start_0
    invoke-direct {p0, p1}, Lorg/jpos/q2/qbean/SpaceLet;->initInterpreter(Ljava/lang/Object;)Lbsh/Interpreter;

    move-result-object v0

    .line 217
    .local v0, "bsh":Lbsh/Interpreter;
    const-string v1, "probe"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lbsh/Interpreter;->set(Ljava/lang/String;Z)V

    .line 218
    iget-object v1, p0, Lorg/jpos/q2/qbean/SpaceLet;->sp:Lorg/jpos/space/Space;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 219
    :try_start_1
    iget-object v2, p0, Lorg/jpos/q2/qbean/SpaceLet;->inScript:Ljava/lang/String;

    iget-object v3, p0, Lorg/jpos/q2/qbean/SpaceLet;->inSource:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v3}, Lorg/jpos/q2/qbean/SpaceLet;->eval(Lbsh/Interpreter;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 220
    const-string v2, "value"

    invoke-virtual {v0, v2}, Lbsh/Interpreter;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    monitor-exit v1

    return-object v2

    .line 222
    :cond_0
    iget-object v2, p0, Lorg/jpos/q2/qbean/SpaceLet;->sp:Lorg/jpos/space/Space;

    invoke-interface {v2, p1}, Lorg/jpos/space/Space;->inp(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    monitor-exit v1

    return-object v2

    .line 224
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p1    # "key":Ljava/lang/Object;
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 225
    .end local v0    # "bsh":Lbsh/Interpreter;
    .restart local p1    # "key":Ljava/lang/Object;
    :catchall_1
    move-exception v0

    .line 226
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Lorg/jpos/space/SpaceError;

    invoke-direct {v1, v0}, Lorg/jpos/space/SpaceError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public nrd(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "timeout"    # J

    .line 260
    iget-object v0, p0, Lorg/jpos/q2/qbean/SpaceLet;->sp:Lorg/jpos/space/Space;

    invoke-interface {v0, p1, p2, p3}, Lorg/jpos/space/Space;->nrd(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public nrd(Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 257
    iget-object v0, p0, Lorg/jpos/q2/qbean/SpaceLet;->sp:Lorg/jpos/space/Space;

    invoke-interface {v0, p1}, Lorg/jpos/space/Space;->nrd(Ljava/lang/Object;)V

    .line 258
    return-void
.end method

.method public out(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 92
    :try_start_0
    invoke-direct {p0, p1, p2}, Lorg/jpos/q2/qbean/SpaceLet;->initInterpreter(Ljava/lang/Object;Ljava/lang/Object;)Lbsh/Interpreter;

    move-result-object v0

    .line 93
    .local v0, "bsh":Lbsh/Interpreter;
    iget-object v1, p0, Lorg/jpos/q2/qbean/SpaceLet;->sp:Lorg/jpos/space/Space;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 94
    :try_start_1
    iget-object v2, p0, Lorg/jpos/q2/qbean/SpaceLet;->outScript:Ljava/lang/String;

    iget-object v3, p0, Lorg/jpos/q2/qbean/SpaceLet;->outSource:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v3}, Lorg/jpos/q2/qbean/SpaceLet;->eval(Lbsh/Interpreter;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 95
    iget-object v2, p0, Lorg/jpos/q2/qbean/SpaceLet;->sp:Lorg/jpos/space/Space;

    invoke-interface {v2, p1, p2}, Lorg/jpos/space/Space;->out(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 96
    :cond_0
    monitor-exit v1

    .line 99
    .end local v0    # "bsh":Lbsh/Interpreter;
    nop

    .line 100
    return-void

    .line 96
    .restart local v0    # "bsh":Lbsh/Interpreter;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p1    # "key":Ljava/lang/Object;
    .end local p2    # "value":Ljava/lang/Object;
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 97
    .end local v0    # "bsh":Lbsh/Interpreter;
    .restart local p1    # "key":Ljava/lang/Object;
    .restart local p2    # "value":Ljava/lang/Object;
    :catchall_1
    move-exception v0

    .line 98
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Lorg/jpos/space/SpaceError;

    invoke-direct {v1, v0}, Lorg/jpos/space/SpaceError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public out(Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "timeout"    # J

    .line 103
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/jpos/q2/qbean/SpaceLet;->initInterpreter(Ljava/lang/Object;Ljava/lang/Object;J)Lbsh/Interpreter;

    move-result-object v0

    .line 104
    .local v0, "bsh":Lbsh/Interpreter;
    iget-object v1, p0, Lorg/jpos/q2/qbean/SpaceLet;->sp:Lorg/jpos/space/Space;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 105
    :try_start_1
    iget-object v2, p0, Lorg/jpos/q2/qbean/SpaceLet;->outScript:Ljava/lang/String;

    iget-object v3, p0, Lorg/jpos/q2/qbean/SpaceLet;->outSource:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v3}, Lorg/jpos/q2/qbean/SpaceLet;->eval(Lbsh/Interpreter;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 106
    iget-object v2, p0, Lorg/jpos/q2/qbean/SpaceLet;->sp:Lorg/jpos/space/Space;

    invoke-interface {v2, p1, p2, p3, p4}, Lorg/jpos/space/Space;->out(Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 107
    :cond_0
    monitor-exit v1

    .line 110
    .end local v0    # "bsh":Lbsh/Interpreter;
    nop

    .line 111
    return-void

    .line 107
    .restart local v0    # "bsh":Lbsh/Interpreter;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p1    # "key":Ljava/lang/Object;
    .end local p2    # "value":Ljava/lang/Object;
    .end local p3    # "timeout":J
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 108
    .end local v0    # "bsh":Lbsh/Interpreter;
    .restart local p1    # "key":Ljava/lang/Object;
    .restart local p2    # "value":Ljava/lang/Object;
    .restart local p3    # "timeout":J
    :catchall_1
    move-exception v0

    .line 109
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Lorg/jpos/space/SpaceError;

    invoke-direct {v1, v0}, Lorg/jpos/space/SpaceError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public push(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 114
    :try_start_0
    invoke-direct {p0, p1, p2}, Lorg/jpos/q2/qbean/SpaceLet;->initInterpreter(Ljava/lang/Object;Ljava/lang/Object;)Lbsh/Interpreter;

    move-result-object v0

    .line 115
    .local v0, "bsh":Lbsh/Interpreter;
    iget-object v1, p0, Lorg/jpos/q2/qbean/SpaceLet;->sp:Lorg/jpos/space/Space;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 116
    :try_start_1
    iget-object v2, p0, Lorg/jpos/q2/qbean/SpaceLet;->pushScript:Ljava/lang/String;

    iget-object v3, p0, Lorg/jpos/q2/qbean/SpaceLet;->pushSource:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v3}, Lorg/jpos/q2/qbean/SpaceLet;->eval(Lbsh/Interpreter;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 117
    iget-object v2, p0, Lorg/jpos/q2/qbean/SpaceLet;->sp:Lorg/jpos/space/Space;

    invoke-interface {v2, p1, p2}, Lorg/jpos/space/Space;->out(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 118
    :cond_0
    monitor-exit v1

    .line 121
    .end local v0    # "bsh":Lbsh/Interpreter;
    nop

    .line 122
    return-void

    .line 118
    .restart local v0    # "bsh":Lbsh/Interpreter;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p1    # "key":Ljava/lang/Object;
    .end local p2    # "value":Ljava/lang/Object;
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 119
    .end local v0    # "bsh":Lbsh/Interpreter;
    .restart local p1    # "key":Ljava/lang/Object;
    .restart local p2    # "value":Ljava/lang/Object;
    :catchall_1
    move-exception v0

    .line 120
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Lorg/jpos/space/SpaceError;

    invoke-direct {v1, v0}, Lorg/jpos/space/SpaceError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public push(Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "timeout"    # J

    .line 125
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/jpos/q2/qbean/SpaceLet;->initInterpreter(Ljava/lang/Object;Ljava/lang/Object;J)Lbsh/Interpreter;

    move-result-object v0

    .line 126
    .local v0, "bsh":Lbsh/Interpreter;
    iget-object v1, p0, Lorg/jpos/q2/qbean/SpaceLet;->sp:Lorg/jpos/space/Space;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 127
    :try_start_1
    iget-object v2, p0, Lorg/jpos/q2/qbean/SpaceLet;->pushScript:Ljava/lang/String;

    iget-object v3, p0, Lorg/jpos/q2/qbean/SpaceLet;->pushSource:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v3}, Lorg/jpos/q2/qbean/SpaceLet;->eval(Lbsh/Interpreter;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 128
    iget-object v2, p0, Lorg/jpos/q2/qbean/SpaceLet;->sp:Lorg/jpos/space/Space;

    invoke-interface {v2, p1, p2, p3, p4}, Lorg/jpos/space/Space;->out(Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 129
    :cond_0
    monitor-exit v1

    .line 132
    .end local v0    # "bsh":Lbsh/Interpreter;
    nop

    .line 133
    return-void

    .line 129
    .restart local v0    # "bsh":Lbsh/Interpreter;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p1    # "key":Ljava/lang/Object;
    .end local p2    # "value":Ljava/lang/Object;
    .end local p3    # "timeout":J
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 130
    .end local v0    # "bsh":Lbsh/Interpreter;
    .restart local p1    # "key":Ljava/lang/Object;
    .restart local p2    # "value":Ljava/lang/Object;
    .restart local p3    # "timeout":J
    :catchall_1
    move-exception v0

    .line 131
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Lorg/jpos/space/SpaceError;

    invoke-direct {v1, v0}, Lorg/jpos/space/SpaceError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 136
    :try_start_0
    invoke-direct {p0, p1, p2}, Lorg/jpos/q2/qbean/SpaceLet;->initInterpreter(Ljava/lang/Object;Ljava/lang/Object;)Lbsh/Interpreter;

    move-result-object v0

    .line 137
    .local v0, "bsh":Lbsh/Interpreter;
    iget-object v1, p0, Lorg/jpos/q2/qbean/SpaceLet;->sp:Lorg/jpos/space/Space;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 138
    :try_start_1
    iget-object v2, p0, Lorg/jpos/q2/qbean/SpaceLet;->putScript:Ljava/lang/String;

    iget-object v3, p0, Lorg/jpos/q2/qbean/SpaceLet;->putSource:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v3}, Lorg/jpos/q2/qbean/SpaceLet;->eval(Lbsh/Interpreter;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 139
    iget-object v2, p0, Lorg/jpos/q2/qbean/SpaceLet;->sp:Lorg/jpos/space/Space;

    invoke-interface {v2, p1, p2}, Lorg/jpos/space/Space;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 140
    :cond_0
    monitor-exit v1

    .line 143
    .end local v0    # "bsh":Lbsh/Interpreter;
    nop

    .line 144
    return-void

    .line 140
    .restart local v0    # "bsh":Lbsh/Interpreter;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p1    # "key":Ljava/lang/Object;
    .end local p2    # "value":Ljava/lang/Object;
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 141
    .end local v0    # "bsh":Lbsh/Interpreter;
    .restart local p1    # "key":Ljava/lang/Object;
    .restart local p2    # "value":Ljava/lang/Object;
    :catchall_1
    move-exception v0

    .line 142
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Lorg/jpos/space/SpaceError;

    invoke-direct {v1, v0}, Lorg/jpos/space/SpaceError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "timeout"    # J

    .line 147
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/jpos/q2/qbean/SpaceLet;->initInterpreter(Ljava/lang/Object;Ljava/lang/Object;J)Lbsh/Interpreter;

    move-result-object v0

    .line 148
    .local v0, "bsh":Lbsh/Interpreter;
    iget-object v1, p0, Lorg/jpos/q2/qbean/SpaceLet;->sp:Lorg/jpos/space/Space;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 149
    :try_start_1
    iget-object v2, p0, Lorg/jpos/q2/qbean/SpaceLet;->putScript:Ljava/lang/String;

    iget-object v3, p0, Lorg/jpos/q2/qbean/SpaceLet;->putSource:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v3}, Lorg/jpos/q2/qbean/SpaceLet;->eval(Lbsh/Interpreter;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 150
    iget-object v2, p0, Lorg/jpos/q2/qbean/SpaceLet;->sp:Lorg/jpos/space/Space;

    invoke-interface {v2, p1, p2, p3, p4}, Lorg/jpos/space/Space;->out(Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 151
    :cond_0
    monitor-exit v1

    .line 154
    .end local v0    # "bsh":Lbsh/Interpreter;
    nop

    .line 155
    return-void

    .line 151
    .restart local v0    # "bsh":Lbsh/Interpreter;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p1    # "key":Ljava/lang/Object;
    .end local p2    # "value":Ljava/lang/Object;
    .end local p3    # "timeout":J
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 152
    .end local v0    # "bsh":Lbsh/Interpreter;
    .restart local p1    # "key":Ljava/lang/Object;
    .restart local p2    # "value":Ljava/lang/Object;
    .restart local p3    # "timeout":J
    :catchall_1
    move-exception v0

    .line 153
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Lorg/jpos/space/SpaceError;

    invoke-direct {v1, v0}, Lorg/jpos/space/SpaceError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public rd(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;

    .line 174
    :try_start_0
    invoke-direct {p0, p1}, Lorg/jpos/q2/qbean/SpaceLet;->initInterpreter(Ljava/lang/Object;)Lbsh/Interpreter;

    move-result-object v0

    .line 175
    .local v0, "bsh":Lbsh/Interpreter;
    iget-object v1, p0, Lorg/jpos/q2/qbean/SpaceLet;->sp:Lorg/jpos/space/Space;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 176
    :try_start_1
    iget-object v2, p0, Lorg/jpos/q2/qbean/SpaceLet;->rdScript:Ljava/lang/String;

    iget-object v3, p0, Lorg/jpos/q2/qbean/SpaceLet;->rdSource:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v3}, Lorg/jpos/q2/qbean/SpaceLet;->eval(Lbsh/Interpreter;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 177
    const-string v2, "value"

    invoke-virtual {v0, v2}, Lbsh/Interpreter;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    monitor-exit v1

    return-object v2

    .line 179
    :cond_0
    iget-object v2, p0, Lorg/jpos/q2/qbean/SpaceLet;->sp:Lorg/jpos/space/Space;

    invoke-interface {v2, p1}, Lorg/jpos/space/Space;->rd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    monitor-exit v1

    return-object v2

    .line 181
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p1    # "key":Ljava/lang/Object;
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 182
    .end local v0    # "bsh":Lbsh/Interpreter;
    .restart local p1    # "key":Ljava/lang/Object;
    :catchall_1
    move-exception v0

    .line 183
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Lorg/jpos/space/SpaceError;

    invoke-direct {v1, v0}, Lorg/jpos/space/SpaceError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public rd(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "timeout"    # J

    .line 202
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lorg/jpos/q2/qbean/SpaceLet;->initInterpreter(Ljava/lang/Object;J)Lbsh/Interpreter;

    move-result-object v0

    .line 203
    .local v0, "bsh":Lbsh/Interpreter;
    iget-object v1, p0, Lorg/jpos/q2/qbean/SpaceLet;->sp:Lorg/jpos/space/Space;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 204
    :try_start_1
    iget-object v2, p0, Lorg/jpos/q2/qbean/SpaceLet;->rdScript:Ljava/lang/String;

    iget-object v3, p0, Lorg/jpos/q2/qbean/SpaceLet;->rdSource:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v3}, Lorg/jpos/q2/qbean/SpaceLet;->eval(Lbsh/Interpreter;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 205
    const-string v2, "value"

    invoke-virtual {v0, v2}, Lbsh/Interpreter;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    monitor-exit v1

    return-object v2

    .line 207
    :cond_0
    iget-object v2, p0, Lorg/jpos/q2/qbean/SpaceLet;->sp:Lorg/jpos/space/Space;

    invoke-interface {v2, p1, p2, p3}, Lorg/jpos/space/Space;->rd(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    monitor-exit v1

    return-object v2

    .line 209
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p1    # "key":Ljava/lang/Object;
    .end local p2    # "timeout":J
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 210
    .end local v0    # "bsh":Lbsh/Interpreter;
    .restart local p1    # "key":Ljava/lang/Object;
    .restart local p2    # "timeout":J
    :catchall_1
    move-exception v0

    .line 211
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Lorg/jpos/space/SpaceError;

    invoke-direct {v1, v0}, Lorg/jpos/space/SpaceError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public rdp(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;

    .line 231
    :try_start_0
    invoke-direct {p0, p1}, Lorg/jpos/q2/qbean/SpaceLet;->initInterpreter(Ljava/lang/Object;)Lbsh/Interpreter;

    move-result-object v0

    .line 232
    .local v0, "bsh":Lbsh/Interpreter;
    const-string v1, "probe"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lbsh/Interpreter;->set(Ljava/lang/String;Z)V

    .line 233
    iget-object v1, p0, Lorg/jpos/q2/qbean/SpaceLet;->sp:Lorg/jpos/space/Space;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 234
    :try_start_1
    iget-object v2, p0, Lorg/jpos/q2/qbean/SpaceLet;->rdScript:Ljava/lang/String;

    iget-object v3, p0, Lorg/jpos/q2/qbean/SpaceLet;->rdSource:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v3}, Lorg/jpos/q2/qbean/SpaceLet;->eval(Lbsh/Interpreter;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 235
    const-string v2, "value"

    invoke-virtual {v0, v2}, Lbsh/Interpreter;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    monitor-exit v1

    return-object v2

    .line 237
    :cond_0
    iget-object v2, p0, Lorg/jpos/q2/qbean/SpaceLet;->sp:Lorg/jpos/space/Space;

    invoke-interface {v2, p1}, Lorg/jpos/space/Space;->rdp(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    monitor-exit v1

    return-object v2

    .line 239
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p1    # "key":Ljava/lang/Object;
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 240
    .end local v0    # "bsh":Lbsh/Interpreter;
    .restart local p1    # "key":Ljava/lang/Object;
    :catchall_1
    move-exception v0

    .line 241
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Lorg/jpos/space/SpaceError;

    invoke-direct {v1, v0}, Lorg/jpos/space/SpaceError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public startService()V
    .locals 2

    .line 81
    iget-object v0, p0, Lorg/jpos/q2/qbean/SpaceLet;->uri:Ljava/lang/String;

    invoke-static {v0, p0}, Lorg/jpos/util/NameRegistrar;->register(Ljava/lang/String;Ljava/lang/Object;)V

    .line 83
    invoke-virtual {p0}, Lorg/jpos/q2/qbean/SpaceLet;->getPersist()Lorg/jdom2/Element;

    move-result-object v0

    const-string v1, "run"

    invoke-virtual {v0, v1}, Lorg/jdom2/Element;->getChildren(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 84
    .local v0, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jdom2/Element;

    invoke-direct {p0, v1}, Lorg/jpos/q2/qbean/SpaceLet;->launch(Lorg/jdom2/Element;)V

    goto :goto_0

    .line 86
    :cond_0
    return-void
.end method

.method public stopService()V
    .locals 1

    .line 88
    iget-object v0, p0, Lorg/jpos/q2/qbean/SpaceLet;->uri:Ljava/lang/String;

    invoke-static {v0}, Lorg/jpos/util/NameRegistrar;->unregister(Ljava/lang/String;)V

    .line 89
    return-void
.end method
