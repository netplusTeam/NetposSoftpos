.class public final Lch/qos/logback/classic/Logger;
.super Ljava/lang/Object;
.source "Logger.java"

# interfaces
.implements Lorg/slf4j/Logger;
.implements Lorg/slf4j/spi/LocationAwareLogger;
.implements Lch/qos/logback/core/spi/AppenderAttachable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/slf4j/Logger;",
        "Lorg/slf4j/spi/LocationAwareLogger;",
        "Lch/qos/logback/core/spi/AppenderAttachable<",
        "Lch/qos/logback/classic/spi/ILoggingEvent;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final FQCN:Ljava/lang/String;

.field private static final serialVersionUID:J = 0x4bb1f08f92d542c2L


# instance fields
.field private transient aai:Lch/qos/logback/core/spi/AppenderAttachableImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lch/qos/logback/core/spi/AppenderAttachableImpl<",
            "Lch/qos/logback/classic/spi/ILoggingEvent;",
            ">;"
        }
    .end annotation
.end field

.field private transient additive:Z

.field private transient childrenList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lch/qos/logback/classic/Logger;",
            ">;"
        }
    .end annotation
.end field

.field private transient effectiveLevelInt:I

.field private transient level:Lch/qos/logback/classic/Level;

.field final transient loggerContext:Lch/qos/logback/classic/LoggerContext;

.field private name:Ljava/lang/String;

.field private transient parent:Lch/qos/logback/classic/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const-class v0, Lch/qos/logback/classic/Logger;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lch/qos/logback/classic/Logger;->FQCN:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lch/qos/logback/classic/Logger;Lch/qos/logback/classic/LoggerContext;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "parent"    # Lch/qos/logback/classic/Logger;
    .param p3, "loggerContext"    # Lch/qos/logback/classic/LoggerContext;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/qos/logback/classic/Logger;->additive:Z

    .line 103
    iput-object p1, p0, Lch/qos/logback/classic/Logger;->name:Ljava/lang/String;

    .line 104
    iput-object p2, p0, Lch/qos/logback/classic/Logger;->parent:Lch/qos/logback/classic/Logger;

    .line 105
    iput-object p3, p0, Lch/qos/logback/classic/Logger;->loggerContext:Lch/qos/logback/classic/LoggerContext;

    .line 106
    return-void
.end method

.method private appendLoopOnAppenders(Lch/qos/logback/classic/spi/ILoggingEvent;)I
    .locals 1
    .param p1, "event"    # Lch/qos/logback/classic/spi/ILoggingEvent;

    .line 269
    iget-object v0, p0, Lch/qos/logback/classic/Logger;->aai:Lch/qos/logback/core/spi/AppenderAttachableImpl;

    if-eqz v0, :cond_0

    .line 270
    invoke-virtual {v0, p1}, Lch/qos/logback/core/spi/AppenderAttachableImpl;->appendLoopOnAppenders(Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 272
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private buildLoggingEventAndAppend(Ljava/lang/String;Lorg/slf4j/Marker;Lch/qos/logback/classic/Level;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 8
    .param p1, "localFQCN"    # Ljava/lang/String;
    .param p2, "marker"    # Lorg/slf4j/Marker;
    .param p3, "level"    # Lch/qos/logback/classic/Level;
    .param p4, "msg"    # Ljava/lang/String;
    .param p5, "params"    # [Ljava/lang/Object;
    .param p6, "t"    # Ljava/lang/Throwable;

    .line 419
    new-instance v7, Lch/qos/logback/classic/spi/LoggingEvent;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p6

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lch/qos/logback/classic/spi/LoggingEvent;-><init>(Ljava/lang/String;Lch/qos/logback/classic/Logger;Lch/qos/logback/classic/Level;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 420
    .local v0, "le":Lch/qos/logback/classic/spi/LoggingEvent;
    invoke-virtual {v0, p2}, Lch/qos/logback/classic/spi/LoggingEvent;->setMarker(Lorg/slf4j/Marker;)V

    .line 421
    invoke-virtual {p0, v0}, Lch/qos/logback/classic/Logger;->callAppenders(Lch/qos/logback/classic/spi/ILoggingEvent;)V

    .line 422
    return-void
.end method

.method private callTurboFilters(Lorg/slf4j/Marker;Lch/qos/logback/classic/Level;)Lch/qos/logback/core/spi/FilterReply;
    .locals 7
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "level"    # Lch/qos/logback/classic/Level;

    .line 751
    iget-object v0, p0, Lch/qos/logback/classic/Logger;->loggerContext:Lch/qos/logback/classic/LoggerContext;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p0

    move-object v3, p2

    invoke-virtual/range {v0 .. v6}, Lch/qos/logback/classic/LoggerContext;->getTurboFilterChainDecision_0_3OrMore(Lorg/slf4j/Marker;Lch/qos/logback/classic/Logger;Lch/qos/logback/classic/Level;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)Lch/qos/logback/core/spi/FilterReply;

    move-result-object v0

    return-object v0
.end method

.method private filterAndLog_0_Or3Plus(Ljava/lang/String;Lorg/slf4j/Marker;Lch/qos/logback/classic/Level;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 7
    .param p1, "localFQCN"    # Ljava/lang/String;
    .param p2, "marker"    # Lorg/slf4j/Marker;
    .param p3, "level"    # Lch/qos/logback/classic/Level;
    .param p4, "msg"    # Ljava/lang/String;
    .param p5, "params"    # [Ljava/lang/Object;
    .param p6, "t"    # Ljava/lang/Throwable;

    .line 373
    iget-object v0, p0, Lch/qos/logback/classic/Logger;->loggerContext:Lch/qos/logback/classic/LoggerContext;

    move-object v1, p2

    move-object v2, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lch/qos/logback/classic/LoggerContext;->getTurboFilterChainDecision_0_3OrMore(Lorg/slf4j/Marker;Lch/qos/logback/classic/Logger;Lch/qos/logback/classic/Level;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)Lch/qos/logback/core/spi/FilterReply;

    move-result-object v0

    .line 375
    .local v0, "decision":Lch/qos/logback/core/spi/FilterReply;
    sget-object v1, Lch/qos/logback/core/spi/FilterReply;->NEUTRAL:Lch/qos/logback/core/spi/FilterReply;

    if-ne v0, v1, :cond_0

    .line 376
    iget v1, p0, Lch/qos/logback/classic/Logger;->effectiveLevelInt:I

    iget v2, p3, Lch/qos/logback/classic/Level;->levelInt:I

    if-le v1, v2, :cond_1

    .line 377
    return-void

    .line 379
    :cond_0
    sget-object v1, Lch/qos/logback/core/spi/FilterReply;->DENY:Lch/qos/logback/core/spi/FilterReply;

    if-ne v0, v1, :cond_1

    .line 380
    return-void

    .line 383
    :cond_1
    invoke-direct/range {p0 .. p6}, Lch/qos/logback/classic/Logger;->buildLoggingEventAndAppend(Ljava/lang/String;Lorg/slf4j/Marker;Lch/qos/logback/classic/Level;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 384
    return-void
.end method

.method private filterAndLog_1(Ljava/lang/String;Lorg/slf4j/Marker;Lch/qos/logback/classic/Level;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 9
    .param p1, "localFQCN"    # Ljava/lang/String;
    .param p2, "marker"    # Lorg/slf4j/Marker;
    .param p3, "level"    # Lch/qos/logback/classic/Level;
    .param p4, "msg"    # Ljava/lang/String;
    .param p5, "param"    # Ljava/lang/Object;
    .param p6, "t"    # Ljava/lang/Throwable;

    .line 388
    iget-object v0, p0, Lch/qos/logback/classic/Logger;->loggerContext:Lch/qos/logback/classic/LoggerContext;

    move-object v1, p2

    move-object v2, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lch/qos/logback/classic/LoggerContext;->getTurboFilterChainDecision_1(Lorg/slf4j/Marker;Lch/qos/logback/classic/Logger;Lch/qos/logback/classic/Level;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)Lch/qos/logback/core/spi/FilterReply;

    move-result-object v0

    .line 390
    .local v0, "decision":Lch/qos/logback/core/spi/FilterReply;
    sget-object v1, Lch/qos/logback/core/spi/FilterReply;->NEUTRAL:Lch/qos/logback/core/spi/FilterReply;

    if-ne v0, v1, :cond_0

    .line 391
    iget v1, p0, Lch/qos/logback/classic/Logger;->effectiveLevelInt:I

    iget v2, p3, Lch/qos/logback/classic/Level;->levelInt:I

    if-le v1, v2, :cond_1

    .line 392
    return-void

    .line 394
    :cond_0
    sget-object v1, Lch/qos/logback/core/spi/FilterReply;->DENY:Lch/qos/logback/core/spi/FilterReply;

    if-ne v0, v1, :cond_1

    .line 395
    return-void

    .line 398
    :cond_1
    const/4 v1, 0x1

    new-array v7, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p5, v7, v1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v8, p6

    invoke-direct/range {v2 .. v8}, Lch/qos/logback/classic/Logger;->buildLoggingEventAndAppend(Ljava/lang/String;Lorg/slf4j/Marker;Lch/qos/logback/classic/Level;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 399
    return-void
.end method

.method private filterAndLog_2(Ljava/lang/String;Lorg/slf4j/Marker;Lch/qos/logback/classic/Level;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 10
    .param p1, "localFQCN"    # Ljava/lang/String;
    .param p2, "marker"    # Lorg/slf4j/Marker;
    .param p3, "level"    # Lch/qos/logback/classic/Level;
    .param p4, "msg"    # Ljava/lang/String;
    .param p5, "param1"    # Ljava/lang/Object;
    .param p6, "param2"    # Ljava/lang/Object;
    .param p7, "t"    # Ljava/lang/Throwable;

    .line 404
    move-object v8, p0

    iget-object v0, v8, Lch/qos/logback/classic/Logger;->loggerContext:Lch/qos/logback/classic/LoggerContext;

    move-object v1, p2

    move-object v2, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Lch/qos/logback/classic/LoggerContext;->getTurboFilterChainDecision_2(Lorg/slf4j/Marker;Lch/qos/logback/classic/Logger;Lch/qos/logback/classic/Level;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)Lch/qos/logback/core/spi/FilterReply;

    move-result-object v7

    .line 406
    .local v7, "decision":Lch/qos/logback/core/spi/FilterReply;
    sget-object v0, Lch/qos/logback/core/spi/FilterReply;->NEUTRAL:Lch/qos/logback/core/spi/FilterReply;

    if-ne v7, v0, :cond_0

    .line 407
    iget v0, v8, Lch/qos/logback/classic/Logger;->effectiveLevelInt:I

    move-object v9, p3

    iget v1, v9, Lch/qos/logback/classic/Level;->levelInt:I

    if-le v0, v1, :cond_1

    .line 408
    return-void

    .line 410
    :cond_0
    move-object v9, p3

    sget-object v0, Lch/qos/logback/core/spi/FilterReply;->DENY:Lch/qos/logback/core/spi/FilterReply;

    if-ne v7, v0, :cond_1

    .line 411
    return-void

    .line 414
    :cond_1
    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p5, v5, v0

    const/4 v0, 0x1

    aput-object p6, v5, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v6, p7

    invoke-direct/range {v0 .. v6}, Lch/qos/logback/classic/Logger;->buildLoggingEventAndAppend(Ljava/lang/String;Lorg/slf4j/Marker;Lch/qos/logback/classic/Level;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 415
    return-void
.end method

.method private declared-synchronized handleParentLevelChange(I)V
    .locals 3
    .param p1, "newParentLevelInt"    # I

    monitor-enter p0

    .line 185
    :try_start_0
    iget-object v0, p0, Lch/qos/logback/classic/Logger;->level:Lch/qos/logback/classic/Level;

    if-nez v0, :cond_0

    .line 186
    iput p1, p0, Lch/qos/logback/classic/Logger;->effectiveLevelInt:I

    .line 189
    iget-object v0, p0, Lch/qos/logback/classic/Logger;->childrenList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 190
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 191
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 192
    iget-object v2, p0, Lch/qos/logback/classic/Logger;->childrenList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lch/qos/logback/classic/Logger;

    .line 193
    .local v2, "child":Lch/qos/logback/classic/Logger;
    invoke-direct {v2, p1}, Lch/qos/logback/classic/Logger;->handleParentLevelChange(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    .end local v2    # "child":Lch/qos/logback/classic/Logger;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 197
    .end local v0    # "len":I
    .end local v1    # "i":I
    .end local p0    # "this":Lch/qos/logback/classic/Logger;
    :cond_0
    monitor-exit p0

    return-void

    .line 184
    .end local p1    # "newParentLevelInt":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private isRootLogger()Z
    .locals 1

    .line 126
    iget-object v0, p0, Lch/qos/logback/classic/Logger;->parent:Lch/qos/logback/classic/Logger;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private localLevelReset()V
    .locals 1

    .line 322
    const/16 v0, 0x2710

    iput v0, p0, Lch/qos/logback/classic/Logger;->effectiveLevelInt:I

    .line 323
    invoke-direct {p0}, Lch/qos/logback/classic/Logger;->isRootLogger()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    sget-object v0, Lch/qos/logback/classic/Level;->DEBUG:Lch/qos/logback/classic/Level;

    iput-object v0, p0, Lch/qos/logback/classic/Logger;->level:Lch/qos/logback/classic/Level;

    goto :goto_0

    .line 326
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lch/qos/logback/classic/Logger;->level:Lch/qos/logback/classic/Level;

    .line 328
    :goto_0
    return-void
.end method


# virtual methods
.method public declared-synchronized addAppender(Lch/qos/logback/core/Appender;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/Appender<",
            "Lch/qos/logback/classic/spi/ILoggingEvent;",
            ">;)V"
        }
    .end annotation

    .local p1, "newAppender":Lch/qos/logback/core/Appender;, "Lch/qos/logback/core/Appender<Lch/qos/logback/classic/spi/ILoggingEvent;>;"
    monitor-enter p0

    .line 220
    :try_start_0
    iget-object v0, p0, Lch/qos/logback/classic/Logger;->aai:Lch/qos/logback/core/spi/AppenderAttachableImpl;

    if-nez v0, :cond_0

    .line 221
    new-instance v0, Lch/qos/logback/core/spi/AppenderAttachableImpl;

    invoke-direct {v0}, Lch/qos/logback/core/spi/AppenderAttachableImpl;-><init>()V

    iput-object v0, p0, Lch/qos/logback/classic/Logger;->aai:Lch/qos/logback/core/spi/AppenderAttachableImpl;

    .line 223
    .end local p0    # "this":Lch/qos/logback/classic/Logger;
    :cond_0
    iget-object v0, p0, Lch/qos/logback/classic/Logger;->aai:Lch/qos/logback/core/spi/AppenderAttachableImpl;

    invoke-virtual {v0, p1}, Lch/qos/logback/core/spi/AppenderAttachableImpl;->addAppender(Lch/qos/logback/core/Appender;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    monitor-exit p0

    return-void

    .line 219
    .end local p1    # "newAppender":Lch/qos/logback/core/Appender;, "Lch/qos/logback/core/Appender<Lch/qos/logback/classic/spi/ILoggingEvent;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public callAppenders(Lch/qos/logback/classic/spi/ILoggingEvent;)V
    .locals 3
    .param p1, "event"    # Lch/qos/logback/classic/spi/ILoggingEvent;

    .line 255
    const/4 v0, 0x0

    .line 256
    .local v0, "writes":I
    move-object v1, p0

    .local v1, "l":Lch/qos/logback/classic/Logger;
    :goto_0
    if-eqz v1, :cond_1

    .line 257
    invoke-direct {v1, p1}, Lch/qos/logback/classic/Logger;->appendLoopOnAppenders(Lch/qos/logback/classic/spi/ILoggingEvent;)I

    move-result v2

    add-int/2addr v0, v2

    .line 258
    iget-boolean v2, v1, Lch/qos/logback/classic/Logger;->additive:Z

    if-nez v2, :cond_0

    .line 259
    goto :goto_1

    .line 256
    :cond_0
    iget-object v1, v1, Lch/qos/logback/classic/Logger;->parent:Lch/qos/logback/classic/Logger;

    goto :goto_0

    .line 263
    .end local v1    # "l":Lch/qos/logback/classic/Logger;
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 264
    iget-object v1, p0, Lch/qos/logback/classic/Logger;->loggerContext:Lch/qos/logback/classic/LoggerContext;

    invoke-virtual {v1, p0}, Lch/qos/logback/classic/LoggerContext;->noAppenderDefinedWarning(Lch/qos/logback/classic/Logger;)V

    .line 266
    :cond_2
    return-void
.end method

.method createChildByLastNamePart(Ljava/lang/String;)Lch/qos/logback/classic/Logger;
    .locals 5
    .param p1, "lastPart"    # Ljava/lang/String;

    .line 302
    invoke-static {p1}, Lch/qos/logback/classic/util/LoggerNameUtil;->getFirstSeparatorIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 303
    .local v0, "i_index":I
    const/16 v1, 0x2e

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    .line 307
    iget-object v2, p0, Lch/qos/logback/classic/Logger;->childrenList:Ljava/util/List;

    if-nez v2, :cond_0

    .line 308
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, p0, Lch/qos/logback/classic/Logger;->childrenList:Ljava/util/List;

    .line 311
    :cond_0
    invoke-direct {p0}, Lch/qos/logback/classic/Logger;->isRootLogger()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 312
    new-instance v1, Lch/qos/logback/classic/Logger;

    iget-object v2, p0, Lch/qos/logback/classic/Logger;->loggerContext:Lch/qos/logback/classic/LoggerContext;

    invoke-direct {v1, p1, p0, v2}, Lch/qos/logback/classic/Logger;-><init>(Ljava/lang/String;Lch/qos/logback/classic/Logger;Lch/qos/logback/classic/LoggerContext;)V

    .local v1, "childLogger":Lch/qos/logback/classic/Logger;
    goto :goto_0

    .line 314
    .end local v1    # "childLogger":Lch/qos/logback/classic/Logger;
    :cond_1
    new-instance v2, Lch/qos/logback/classic/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lch/qos/logback/classic/Logger;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lch/qos/logback/classic/Logger;->loggerContext:Lch/qos/logback/classic/LoggerContext;

    invoke-direct {v2, v1, p0, v3}, Lch/qos/logback/classic/Logger;-><init>(Ljava/lang/String;Lch/qos/logback/classic/Logger;Lch/qos/logback/classic/LoggerContext;)V

    move-object v1, v2

    .line 316
    .restart local v1    # "childLogger":Lch/qos/logback/classic/Logger;
    :goto_0
    iget-object v2, p0, Lch/qos/logback/classic/Logger;->childrenList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    iget v2, p0, Lch/qos/logback/classic/Logger;->effectiveLevelInt:I

    iput v2, v1, Lch/qos/logback/classic/Logger;->effectiveLevelInt:I

    .line 318
    return-object v1

    .line 304
    .end local v1    # "childLogger":Lch/qos/logback/classic/Logger;
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Child name ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " passed as parameter, may not include ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method createChildByName(Ljava/lang/String;)Lch/qos/logback/classic/Logger;
    .locals 4
    .param p1, "childName"    # Ljava/lang/String;

    .line 348
    iget-object v0, p0, Lch/qos/logback/classic/Logger;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lch/qos/logback/classic/util/LoggerNameUtil;->getSeparatorIndexOf(Ljava/lang/String;I)I

    move-result v0

    .line 349
    .local v0, "i_index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 354
    iget-object v1, p0, Lch/qos/logback/classic/Logger;->childrenList:Ljava/util/List;

    if-nez v1, :cond_0

    .line 355
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lch/qos/logback/classic/Logger;->childrenList:Ljava/util/List;

    .line 358
    :cond_0
    new-instance v1, Lch/qos/logback/classic/Logger;

    iget-object v2, p0, Lch/qos/logback/classic/Logger;->loggerContext:Lch/qos/logback/classic/LoggerContext;

    invoke-direct {v1, p1, p0, v2}, Lch/qos/logback/classic/Logger;-><init>(Ljava/lang/String;Lch/qos/logback/classic/Logger;Lch/qos/logback/classic/LoggerContext;)V

    .line 359
    .local v1, "childLogger":Lch/qos/logback/classic/Logger;
    iget-object v2, p0, Lch/qos/logback/classic/Logger;->childrenList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 360
    iget v2, p0, Lch/qos/logback/classic/Logger;->effectiveLevelInt:I

    iput v2, v1, Lch/qos/logback/classic/Logger;->effectiveLevelInt:I

    .line 361
    return-object v1

    .line 350
    .end local v1    # "childLogger":Lch/qos/logback/classic/Logger;
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "For logger ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lch/qos/logback/classic/Logger;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] child name ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " passed as parameter, may not include \'.\' after index"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lch/qos/logback/classic/Logger;->name:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public debug(Ljava/lang/String;)V
    .locals 7
    .param p1, "msg"    # Ljava/lang/String;

    .line 482
    sget-object v1, Lch/qos/logback/classic/Logger;->FQCN:Ljava/lang/String;

    sget-object v3, Lch/qos/logback/classic/Level;->DEBUG:Lch/qos/logback/classic/Level;

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lch/qos/logback/classic/Logger;->filterAndLog_0_Or3Plus(Ljava/lang/String;Lorg/slf4j/Marker;Lch/qos/logback/classic/Level;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 483
    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/Object;

    .line 486
    sget-object v1, Lch/qos/logback/classic/Logger;->FQCN:Ljava/lang/String;

    sget-object v3, Lch/qos/logback/classic/Level;->DEBUG:Lch/qos/logback/classic/Level;

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lch/qos/logback/classic/Logger;->filterAndLog_1(Ljava/lang/String;Lorg/slf4j/Marker;Lch/qos/logback/classic/Level;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 487
    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;

    .line 490
    sget-object v1, Lch/qos/logback/classic/Logger;->FQCN:Ljava/lang/String;

    sget-object v3, Lch/qos/logback/classic/Level;->DEBUG:Lch/qos/logback/classic/Level;

    const/4 v2, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v7}, Lch/qos/logback/classic/Logger;->filterAndLog_2(Ljava/lang/String;Lorg/slf4j/Marker;Lch/qos/logback/classic/Level;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 491
    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 7
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 498
    sget-object v1, Lch/qos/logback/classic/Logger;->FQCN:Ljava/lang/String;

    sget-object v3, Lch/qos/logback/classic/Level;->DEBUG:Lch/qos/logback/classic/Level;

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lch/qos/logback/classic/Logger;->filterAndLog_0_Or3Plus(Ljava/lang/String;Lorg/slf4j/Marker;Lch/qos/logback/classic/Level;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 499
    return-void
.end method

.method public varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "argArray"    # [Ljava/lang/Object;

    .line 494
    sget-object v1, Lch/qos/logback/classic/Logger;->FQCN:Ljava/lang/String;

    sget-object v3, Lch/qos/logback/classic/Level;->DEBUG:Lch/qos/logback/classic/Level;

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lch/qos/logback/classic/Logger;->filterAndLog_0_Or3Plus(Ljava/lang/String;Lorg/slf4j/Marker;Lch/qos/logback/classic/Level;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 495
    return-void
.end method

.method public debug(Lorg/slf4j/Marker;Ljava/lang/String;)V
    .locals 7
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "msg"    # Ljava/lang/String;

    .line 502
    sget-object v1, Lch/qos/logback/classic/Logger;->FQCN:Ljava/lang/String;

    sget-object v3, Lch/qos/logback/classic/Level;->DEBUG:Lch/qos/logback/classic/Level;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lch/qos/logback/classic/Logger;->filterAndLog_0_Or3Plus(Ljava/lang/String;Lorg/slf4j/Marker;Lch/qos/logback/classic/Level;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 503
    return-void
.end method

.method public debug(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg"    # Ljava/lang/Object;

    .line 506
    sget-object v1, Lch/qos/logback/classic/Logger;->FQCN:Ljava/lang/String;

    sget-object v3, Lch/qos/logback/classic/Level;->DEBUG:Lch/qos/logback/classic/Level;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lch/qos/logback/classic/Logger;->filterAndLog_1(Ljava/lang/String;Lorg/slf4j/Marker;Lch/qos/logback/classic/Level;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 507
    return-void
.end method

.method public debug(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg1"    # Ljava/lang/Object;
    .param p4, "arg2"    # Ljava/lang/Object;

    .line 510
    sget-object v1, Lch/qos/logback/classic/Logger;->FQCN:Ljava/lang/String;

    sget-object v3, Lch/qos/logback/classic/Level;->DEBUG:Lch/qos/logback/classic/Level;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Lch/qos/logback/classic/Logger;->filterAndLog_2(Ljava/lang/String;Lorg/slf4j/Marker;Lch/qos/logback/classic/Level;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 511
    return-void
.end method

.method public debug(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 7
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "t"    # Ljava/lang/Throwable;

    .line 518
    sget-object v1, Lch/qos/logback/classic/Logger;->FQCN:Ljava/lang/String;

    sget-object v3, Lch/qos/logback/classic/Level;->DEBUG:Lch/qos/logback/classic/Level;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lch/qos/logback/classic/Logger;->filterAndLog_0_Or3Plus(Ljava/lang/String;Lorg/slf4j/Marker;Lch/qos/logback/classic/Level;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 519
    return-void
.end method

.method public varargs debug(Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "argArray"    # [Ljava/lang/Object;

    .line 514
    sget-object v1, Lch/qos/logback/classic/Logger;->FQCN:Ljava/lang/String;

    sget-object v3, Lch/qos/logback/classic/Level;->DEBUG:Lch/qos/logback/classic/Level;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lch/qos/logback/classic/Logger;->filterAndLog_0_Or3Plus(Ljava/lang/String;Lorg/slf4j/Marker;Lch/qos/logback/classic/Level;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 515
    return-void
.end method

.method public detachAndStopAllAppenders()V
    .locals 1

    .line 205
    iget-object v0, p0, Lch/qos/logback/classic/Logger;->aai:Lch/qos/logback/core/spi/AppenderAttachableImpl;

    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {v0}, Lch/qos/logback/core/spi/AppenderAttachableImpl;->detachAndStopAllAppenders()V

    .line 208
    :cond_0
    return-void
.end method

.method public detachAppender(Lch/qos/logback/core/Appender;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/Appender<",
            "Lch/qos/logback/classic/spi/ILoggingEvent;",
            ">;)Z"
        }
    .end annotation

    .line 280
    .local p1, "appender":Lch/qos/logback/core/Appender;, "Lch/qos/logback/core/Appender<Lch/qos/logback/classic/spi/ILoggingEvent;>;"
    iget-object v0, p0, Lch/qos/logback/classic/Logger;->aai:Lch/qos/logback/core/spi/AppenderAttachableImpl;

    if-nez v0, :cond_0

    .line 281
    const/4 v0, 0x0

    return v0

    .line 283
    :cond_0
    invoke-virtual {v0, p1}, Lch/qos/logback/core/spi/AppenderAttachableImpl;->detachAppender(Lch/qos/logback/core/Appender;)Z

    move-result v0

    return v0
.end method

.method public detachAppender(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 211
    iget-object v0, p0, Lch/qos/logback/classic/Logger;->aai:Lch/qos/logback/core/spi/AppenderAttachableImpl;

    if-nez v0, :cond_0

    .line 212
    const/4 v0, 0x0

    return v0

    .line 214
    :cond_0
    invoke-virtual {v0, p1}, Lch/qos/logback/core/spi/AppenderAttachableImpl;->detachAppender(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public error(Ljava/lang/String;)V
    .locals 7
    .param p1, "msg"    # Ljava/lang/String;

    .line 522
    sget-object v1, Lch/qos/logback/classic/Logger;->FQCN:Ljava/lang/String;

    sget-object v3, Lch/qos/logback/classic/Level;->ERROR:Lch/qos/logback/classic/Level;

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lch/qos/logback/classic/Logger;->filterAndLog_0_Or3Plus(Ljava/lang/String;Lorg/slf4j/Marker;Lch/qos/logback/classic/Level;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 523
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/Object;

    .line 526
    sget-object v1, Lch/qos/logback/classic/Logger;->FQCN:Ljava/lang/String;

    sget-object v3, Lch/qos/logback/classic/Level;->ERROR:Lch/qos/logback/classic/Level;

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lch/qos/logback/classic/Logger;->filterAndLog_1(Ljava/lang/String;Lorg/slf4j/Marker;Lch/qos/logback/classic/Level;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 527
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;

    .line 530
    sget-object v1, Lch/qos/logback/classic/Logger;->FQCN:Ljava/lang/String;

    sget-object v3, Lch/qos/logback/classic/Level;->ERROR:Lch/qos/logback/classic/Level;

    const/4 v2, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v7}, Lch/qos/logback/classic/Logger;->filterAndLog_2(Ljava/lang/String;Lorg/slf4j/Marker;Lch/qos/logback/classic/Level;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 531
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 7
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 538
    sget-object v1, Lch/qos/logback/classic/Logger;->FQCN:Ljava/lang/String;

    sget-object v3, Lch/qos/logback/classic/Level;->ERROR:Lch/qos/logback/classic/Level;

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lch/qos/logback/classic/Logger;->filterAndLog_0_Or3Plus(Ljava/lang/String;Lorg/slf4j/Marker;Lch/qos/logback/classic/Level;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 539
    return-void
.end method

.method public varargs error(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "argArray"    # [Ljava/lang/Object;

    .line 534
    sget-object v1, Lch/qos/logback/classic/Logger;->FQCN:Ljava/lang/String;

    sget-object v3, Lch/qos/logback/classic/Level;->ERROR:Lch/qos/logback/classic/Level;

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lch/qos/logback/classic/Logger;->filterAndLog_0_Or3Plus(Ljava/lang/String;Lorg/slf4j/Marker;Lch/qos/logback/classic/Level;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 535
    return-void
.end method

.method public error(Lorg/slf4j/Marker;Ljava/lang/String;)V
    .locals 7
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "msg"    # Ljava/lang/String;

    .line 542
    sget-object v1, Lch/qos/logback/classic/Logger;->FQCN:Ljava/lang/String;

    sget-object v3, Lch/qos/logback/classic/Level;->ERROR:Lch/qos/logback/classic/Level;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lch/qos/logback/classic/Logger;->filterAndLog_0_Or3Plus(Ljava/lang/String;Lorg/slf4j/Marker;Lch/qos/logback/classic/Level;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 543
    return-void
.end method

.method public error(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg"    # Ljava/lang/Object;

    .line 546
    sget-object v1, Lch/qos/logback/classic/Logger;->FQCN:Ljava/lang/String;

    sget-object v3, Lch/qos/logback/classic/Level;->ERROR:Lch/qos/logback/classic/Level;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lch/qos/logback/classic/Logger;->filterAndLog_1(Ljava/lang/String;Lorg/slf4j/Marker;Lch/qos/logback/classic/Level;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 547
    return-void
.end method

.method public error(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg1"    # Ljava/lang/Object;
    .param p4, "arg2"    # Ljava/lang/Object;

    .line 550
    sget-object v1, Lch/qos/logback/classic/Logger;->FQCN:Ljava/lang/String;

    sget-object v3, Lch/qos/logback/classic/Level;->ERROR:Lch/qos/logback/classic/Level;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Lch/qos/logback/classic/Logger;->filterAndLog_2(Ljava/lang/String;Lorg/slf4j/Marker;Lch/qos/logback/classic/Level;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 551
    return-void
.end method

.method public error(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 7
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "t"    # Ljava/lang/Throwable;

    .line 558
    sget-object v1, Lch/qos/logback/classic/Logger;->FQCN:Ljava/lang/String;

    sget-object v3, Lch/qos/logback/classic/Level;->ERROR:Lch/qos/logback/classic/Level;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lch/qos/logback/classic/Logger;->filterAndLog_0_Or3Plus(Ljava/lang/String;Lorg/slf4j/Marker;Lch/qos/logback/classic/Level;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 559
    return-void
.end method

.method public varargs error(Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "argArray"    # [Ljava/lang/Object;

    .line 554
    sget-object v1, Lch/qos/logback/classic/Logger;->FQCN:Ljava/lang/String;

    sget-object v3, Lch/qos/logback/classic/Level;->ERROR:Lch/qos/logback/classic/Level;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lch/qos/logback/classic/Logger;->filterAndLog_0_Or3Plus(Ljava/lang/String;Lorg/slf4j/Marker;Lch/qos/logback/classic/Level;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 555
    return-void
.end method

.method public getAppender(Ljava/lang/String;)Lch/qos/logback/core/Appender;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lch/qos/logback/core/Appender<",
            "Lch/qos/logback/classic/spi/ILoggingEvent;",
            ">;"
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lch/qos/logback/classic/Logger;->aai:Lch/qos/logback/core/spi/AppenderAttachableImpl;

    if-nez v0, :cond_0

    .line 243
    const/4 v0, 0x0

    return-object v0

    .line 245
    :cond_0
    invoke-virtual {v0, p1}, Lch/qos/logback/core/spi/AppenderAttachableImpl;->getAppender(Ljava/lang/String;)Lch/qos/logback/core/Appender;

    move-result-object v0

    return-object v0
.end method

.method getChildByName(Ljava/lang/String;)Lch/qos/logback/classic/Logger;
    .locals 6
    .param p1, "childName"    # Ljava/lang/String;

    .line 130
    iget-object v0, p0, Lch/qos/logback/classic/Logger;->childrenList:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 131
    return-object v1

    .line 133
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 134
    .local v0, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 135
    iget-object v3, p0, Lch/qos/logback/classic/Logger;->childrenList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lch/qos/logback/classic/Logger;

    .line 136
    .local v3, "childLogger_i":Lch/qos/logback/classic/Logger;
    invoke-virtual {v3}, Lch/qos/logback/classic/Logger;->getName()Ljava/lang/String;

    move-result-object v4

    .line 138
    .local v4, "childName_i":Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 139
    return-object v3

    .line 134
    .end local v3    # "childLogger_i":Lch/qos/logback/classic/Logger;
    .end local v4    # "childName_i":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 143
    .end local v2    # "i":I
    :cond_2
    return-object v1
.end method

.method public getEffectiveLevel()Lch/qos/logback/classic/Level;
    .locals 1

    .line 109
    iget v0, p0, Lch/qos/logback/classic/Logger;->effectiveLevelInt:I

    invoke-static {v0}, Lch/qos/logback/classic/Level;->toLevel(I)Lch/qos/logback/classic/Level;

    move-result-object v0

    return-object v0
.end method

.method getEffectiveLevelInt()I
    .locals 1

    .line 113
    iget v0, p0, Lch/qos/logback/classic/Logger;->effectiveLevelInt:I

    return v0
.end method

.method public getLevel()Lch/qos/logback/classic/Level;
    .locals 1

    .line 117
    iget-object v0, p0, Lch/qos/logback/classic/Logger;->level:Lch/qos/logback/classic/Level;

    return-object v0
.end method

.method public getLoggerContext()Lch/qos/logback/classic/LoggerContext;
    .locals 1

    .line 760
    iget-object v0, p0, Lch/qos/logback/classic/Logger;->loggerContext:Lch/qos/logback/classic/LoggerContext;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lch/qos/logback/classic/Logger;->name:Ljava/lang/String;

    return-object v0
.end method

.method public info(Ljava/lang/String;)V
    .locals 7
    .param p1, "msg"    # Ljava/lang/String;

    .line 579
    sget-object v1, Lch/qos/logback/classic/Logger;->FQCN:Ljava/lang/String;

    sget-object v3, Lch/qos/logback/classic/Level;->INFO:Lch/qos/logback/classic/Level;

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lch/qos/logback/classic/Logger;->filterAndLog_0_Or3Plus(Ljava/lang/String;Lorg/slf4j/Marker;Lch/qos/logback/classic/Level;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 580
    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/Object;

    .line 583
    sget-object v1, Lch/qos/logback/classic/Logger;->FQCN:Ljava/lang/String;

    sget-object v3, Lch/qos/logback/classic/Level;->INFO:Lch/qos/logback/classic/Level;

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lch/qos/logback/classic/Logger;->filterAndLog_1(Ljava/lang/String;Lorg/slf4j/Marker;Lch/qos/logback/classic/Level;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 584
    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;

    .line 587
    sget-object v1, Lch/qos/logback/classic/Logger;->FQCN:Ljava/lang/String;

    sget-object v3, Lch/qos/logback/classic/Level;->INFO:Lch/qos/logback/classic/Level;

    const/4 v2, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v7}, Lch/qos/logback/classic/Logger;->filterAndLog_2(Ljava/lang/String;Lorg/slf4j/Marker;Lch/qos/logback/classic/Level;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 588
    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 7
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 595
    sget-object v1, Lch/qos/logback/classic/Logger;->FQCN:Ljava/lang/String;

    sget-object v3, Lch/qos/logback/classic/Level;->INFO:Lch/qos/logback/classic/Level;

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lch/qos/logback/classic/Logger;->filterAndLog_0_Or3Plus(Ljava/lang/String;Lorg/slf4j/Marker;Lch/qos/logback/classic/Level;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 596
    return-void
.end method

.method public varargs info(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "argArray"    # [Ljava/lang/Object;

    .line 591
    sget-object v1, Lch/qos/logback/classic/Logger;->FQCN:Ljava/lang/String;

    sget-object v3, Lch/qos/logback/classic/Level;->INFO:Lch/qos/logback/classic/Level;

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lch/qos/logback/classic/Logger;->filterAndLog_0_Or3Plus(Ljava/lang/String;Lorg/slf4j/Marker;Lch/qos/logback/classic/Level;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 592
    return-void
.end method

.method public info(Lorg/slf4j/Marker;Ljava/lang/String;)V
    .locals 7
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "msg"    # Ljava/lang/String;

    .line 599
    sget-object v1, Lch/qos/logback/classic/Logger;->FQCN:Ljava/lang/String;

    sget-object v3, Lch/qos/logback/classic/Level;->INFO:Lch/qos/logback/classic/Level;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lch/qos/logback/classic/Logger;->filterAndLog_0_Or3Plus(Ljava/lang/String;Lorg/slf4j/Marker;Lch/qos/logback/classic/Level;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 600
    return-void
.end method

.method public info(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg"    # Ljava/lang/Object;

    .line 603
    sget-object v1, Lch/qos/logback/classic/Logger;->FQCN:Ljava/lang/String;

    sget-object v3, Lch/qos/logback/classic/Level;->INFO:Lch/qos/logback/classic/Level;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lch/qos/logback/classic/Logger;->filterAndLog_1(Ljava/lang/String;Lorg/slf4j/Marker;Lch/qos/logback/classic/Level;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 604
    return-void
.end method

.method public info(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg1"    # Ljava/lang/Object;
    .param p4, "arg2"    # Ljava/lang/Object;

    .line 607
    sget-object v1, Lch/qos/logback/classic/Logger;->FQCN:Ljava/lang/String;

    sget-object v3, Lch/qos/logback/classic/Level;->INFO:Lch/qos/logback/classic/Level;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Lch/qos/logback/classic/Logger;->filterAndLog_2(Ljava/lang/String;Lorg/slf4j/Marker;Lch/qos/logback/classic/Level;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 608
    return-void
.end method

.method public info(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 7
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "t"    # Ljava/lang/Throwable;

    .line 615
    sget-object v1, Lch/qos/logback/classic/Logger;->FQCN:Ljava/lang/String;

    sget-object v3, Lch/qos/logback/classic/Level;->INFO:Lch/qos/logback/classic/Level;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lch/qos/logback/classic/Logger;->filterAndLog_0_Or3Plus(Ljava/lang/String;Lorg/slf4j/Marker;Lch/qos/logback/classic/Level;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 616
    return-void
.end method

.method public varargs info(Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "argArray"    # [Ljava/lang/Object;

    .line 611
    sget-object v1, Lch/qos/logback/classic/Logger;->FQCN:Ljava/lang/String;

    sget-object v3, Lch/qos/logback/classic/Level;->INFO:Lch/qos/logback/classic/Level;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lch/qos/logback/classic/Logger;->filterAndLog_0_Or3Plus(Ljava/lang/String;Lorg/slf4j/Marker;Lch/qos/logback/classic/Level;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 612
    return-void
.end method

.method public isAdditive()Z
    .locals 1

    .line 728
    iget-boolean v0, p0, Lch/qos/logback/classic/Logger;->additive:Z

    return v0
.end method

.method public isAttached(Lch/qos/logback/core/Appender;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/Appender<",
            "Lch/qos/logback/classic/spi/ILoggingEvent;",
            ">;)Z"
        }
    .end annotation

    .line 227
    .local p1, "appender":Lch/qos/logback/core/Appender;, "Lch/qos/logback/core/Appender<Lch/qos/logback/classic/spi/ILoggingEvent;>;"
    iget-object v0, p0, Lch/qos/logback/classic/Logger;->aai:Lch/qos/logback/core/spi/AppenderAttachableImpl;

    if-nez v0, :cond_0

    .line 228
    const/4 v0, 0x0

    return v0

    .line 230
    :cond_0
    invoke-virtual {v0, p1}, Lch/qos/logback/core/spi/AppenderAttachableImpl;->isAttached(Lch/qos/logback/core/Appender;)Z

    move-result v0

    return v0
.end method

.method public isDebugEnabled()Z
    .locals 1

    .line 465
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lch/qos/logback/classic/Logger;->isDebugEnabled(Lorg/slf4j/Marker;)Z

    move-result v0

    return v0
.end method

.method public isDebugEnabled(Lorg/slf4j/Marker;)Z
    .locals 5
    .param p1, "marker"    # Lorg/slf4j/Marker;

    .line 469
    sget-object v0, Lch/qos/logback/classic/Level;->DEBUG:Lch/qos/logback/classic/Level;

    invoke-direct {p0, p1, v0}, Lch/qos/logback/classic/Logger;->callTurboFilters(Lorg/slf4j/Marker;Lch/qos/logback/classic/Level;)Lch/qos/logback/core/spi/FilterReply;

    move-result-object v0

    .line 470
    .local v0, "decision":Lch/qos/logback/core/spi/FilterReply;
    sget-object v1, Lch/qos/logback/core/spi/FilterReply;->NEUTRAL:Lch/qos/logback/core/spi/FilterReply;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    .line 471
    iget v1, p0, Lch/qos/logback/classic/Logger;->effectiveLevelInt:I

    const/16 v4, 0x2710

    if-gt v1, v4, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    return v2

    .line 472
    :cond_1
    sget-object v1, Lch/qos/logback/core/spi/FilterReply;->DENY:Lch/qos/logback/core/spi/FilterReply;

    if-ne v0, v1, :cond_2

    .line 473
    return v3

    .line 474
    :cond_2
    sget-object v1, Lch/qos/logback/core/spi/FilterReply;->ACCEPT:Lch/qos/logback/core/spi/FilterReply;

    if-ne v0, v1, :cond_3

    .line 475
    return v2

    .line 477
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown FilterReply value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isEnabledFor(Lch/qos/logback/classic/Level;)Z
    .locals 1
    .param p1, "level"    # Lch/qos/logback/classic/Level;

    .line 684
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lch/qos/logback/classic/Logger;->isEnabledFor(Lorg/slf4j/Marker;Lch/qos/logback/classic/Level;)Z

    move-result v0

    return v0
.end method

.method public isEnabledFor(Lorg/slf4j/Marker;Lch/qos/logback/classic/Level;)Z
    .locals 5
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "level"    # Lch/qos/logback/classic/Level;

    .line 671
    invoke-direct {p0, p1, p2}, Lch/qos/logback/classic/Logger;->callTurboFilters(Lorg/slf4j/Marker;Lch/qos/logback/classic/Level;)Lch/qos/logback/core/spi/FilterReply;

    move-result-object v0

    .line 672
    .local v0, "decision":Lch/qos/logback/core/spi/FilterReply;
    sget-object v1, Lch/qos/logback/core/spi/FilterReply;->NEUTRAL:Lch/qos/logback/core/spi/FilterReply;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    .line 673
    iget v1, p0, Lch/qos/logback/classic/Logger;->effectiveLevelInt:I

    iget v4, p2, Lch/qos/logback/classic/Level;->levelInt:I

    if-gt v1, v4, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    return v2

    .line 674
    :cond_1
    sget-object v1, Lch/qos/logback/core/spi/FilterReply;->DENY:Lch/qos/logback/core/spi/FilterReply;

    if-ne v0, v1, :cond_2

    .line 675
    return v3

    .line 676
    :cond_2
    sget-object v1, Lch/qos/logback/core/spi/FilterReply;->ACCEPT:Lch/qos/logback/core/spi/FilterReply;

    if-ne v0, v1, :cond_3

    .line 677
    return v2

    .line 679
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown FilterReply value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isErrorEnabled()Z
    .locals 1

    .line 636
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lch/qos/logback/classic/Logger;->isErrorEnabled(Lorg/slf4j/Marker;)Z

    move-result v0

    return v0
.end method

.method public isErrorEnabled(Lorg/slf4j/Marker;)Z
    .locals 5
    .param p1, "marker"    # Lorg/slf4j/Marker;

    .line 640
    sget-object v0, Lch/qos/logback/classic/Level;->ERROR:Lch/qos/logback/classic/Level;

    invoke-direct {p0, p1, v0}, Lch/qos/logback/classic/Logger;->callTurboFilters(Lorg/slf4j/Marker;Lch/qos/logback/classic/Level;)Lch/qos/logback/core/spi/FilterReply;

    move-result-object v0

    .line 641
    .local v0, "decision":Lch/qos/logback/core/spi/FilterReply;
    sget-object v1, Lch/qos/logback/core/spi/FilterReply;->NEUTRAL:Lch/qos/logback/core/spi/FilterReply;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    .line 642
    iget v1, p0, Lch/qos/logback/classic/Logger;->effectiveLevelInt:I

    const v4, 0x9c40

    if-gt v1, v4, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    return v2

    .line 643
    :cond_1
    sget-object v1, Lch/qos/logback/core/spi/FilterReply;->DENY:Lch/qos/logback/core/spi/FilterReply;

    if-ne v0, v1, :cond_2

    .line 644
    return v3

    .line 645
    :cond_2
    sget-object v1, Lch/qos/logback/core/spi/FilterReply;->ACCEPT:Lch/qos/logback/core/spi/FilterReply;

    if-ne v0, v1, :cond_3

    .line 646
    return v2

    .line 648
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown FilterReply value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isInfoEnabled()Z
    .locals 1

    .line 562
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lch/qos/logback/classic/Logger;->isInfoEnabled(Lorg/slf4j/Marker;)Z

    move-result v0

    return v0
.end method

.method public isInfoEnabled(Lorg/slf4j/Marker;)Z
    .locals 5
    .param p1, "marker"    # Lorg/slf4j/Marker;

    .line 566
    sget-object v0, Lch/qos/logback/classic/Level;->INFO:Lch/qos/logback/classic/Level;

    invoke-direct {p0, p1, v0}, Lch/qos/logback/classic/Logger;->callTurboFilters(Lorg/slf4j/Marker;Lch/qos/logback/classic/Level;)Lch/qos/logback/core/spi/FilterReply;

    move-result-object v0

    .line 567
    .local v0, "decision":Lch/qos/logback/core/spi/FilterReply;
    sget-object v1, Lch/qos/logback/core/spi/FilterReply;->NEUTRAL:Lch/qos/logback/core/spi/FilterReply;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    .line 568
    iget v1, p0, Lch/qos/logback/classic/Logger;->effectiveLevelInt:I

    const/16 v4, 0x4e20

    if-gt v1, v4, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    return v2

    .line 569
    :cond_1
    sget-object v1, Lch/qos/logback/core/spi/FilterReply;->DENY:Lch/qos/logback/core/spi/FilterReply;

    if-ne v0, v1, :cond_2

    .line 570
    return v3

    .line 571
    :cond_2
    sget-object v1, Lch/qos/logback/core/spi/FilterReply;->ACCEPT:Lch/qos/logback/core/spi/FilterReply;

    if-ne v0, v1, :cond_3

    .line 572
    return v2

    .line 574
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown FilterReply value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isTraceEnabled()Z
    .locals 1

    .line 619
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lch/qos/logback/classic/Logger;->isTraceEnabled(Lorg/slf4j/Marker;)Z

    move-result v0

    return v0
.end method

.method public isTraceEnabled(Lorg/slf4j/Marker;)Z
    .locals 5
    .param p1, "marker"    # Lorg/slf4j/Marker;

    .line 623
    sget-object v0, Lch/qos/logback/classic/Level;->TRACE:Lch/qos/logback/classic/Level;

    invoke-direct {p0, p1, v0}, Lch/qos/logback/classic/Logger;->callTurboFilters(Lorg/slf4j/Marker;Lch/qos/logback/classic/Level;)Lch/qos/logback/core/spi/FilterReply;

    move-result-object v0

    .line 624
    .local v0, "decision":Lch/qos/logback/core/spi/FilterReply;
    sget-object v1, Lch/qos/logback/core/spi/FilterReply;->NEUTRAL:Lch/qos/logback/core/spi/FilterReply;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    .line 625
    iget v1, p0, Lch/qos/logback/classic/Logger;->effectiveLevelInt:I

    const/16 v4, 0x1388

    if-gt v1, v4, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    return v2

    .line 626
    :cond_1
    sget-object v1, Lch/qos/logback/core/spi/FilterReply;->DENY:Lch/qos/logback/core/spi/FilterReply;

    if-ne v0, v1, :cond_2

    .line 627
    return v3

    .line 628
    :cond_2
    sget-object v1, Lch/qos/logback/core/spi/FilterReply;->ACCEPT:Lch/qos/logback/core/spi/FilterReply;

    if-ne v0, v1, :cond_3

    .line 629
    return v2

    .line 631
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown FilterReply value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isWarnEnabled()Z
    .locals 1

    .line 653
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lch/qos/logback/classic/Logger;->isWarnEnabled(Lorg/slf4j/Marker;)Z

    move-result v0

    return v0
.end method

.method public isWarnEnabled(Lorg/slf4j/Marker;)Z
    .locals 5
    .param p1, "marker"    # Lorg/slf4j/Marker;

    .line 657
    sget-object v0, Lch/qos/logback/classic/Level;->WARN:Lch/qos/logback/classic/Level;

    invoke-direct {p0, p1, v0}, Lch/qos/logback/classic/Logger;->callTurboFilters(Lorg/slf4j/Marker;Lch/qos/logback/classic/Level;)Lch/qos/logback/core/spi/FilterReply;

    move-result-object v0

    .line 658
    .local v0, "decision":Lch/qos/logback/core/spi/FilterReply;
    sget-object v1, Lch/qos/logback/core/spi/FilterReply;->NEUTRAL:Lch/qos/logback/core/spi/FilterReply;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    .line 659
    iget v1, p0, Lch/qos/logback/classic/Logger;->effectiveLevelInt:I

    const/16 v4, 0x7530

    if-gt v1, v4, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    return v2

    .line 660
    :cond_1
    sget-object v1, Lch/qos/logback/core/spi/FilterReply;->DENY:Lch/qos/logback/core/spi/FilterReply;

    if-ne v0, v1, :cond_2

    .line 661
    return v3

    .line 662
    :cond_2
    sget-object v1, Lch/qos/logback/core/spi/FilterReply;->ACCEPT:Lch/qos/logback/core/spi/FilterReply;

    if-ne v0, v1, :cond_3

    .line 663
    return v2

    .line 665
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown FilterReply value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public iteratorForAppenders()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lch/qos/logback/core/Appender<",
            "Lch/qos/logback/classic/spi/ILoggingEvent;",
            ">;>;"
        }
    .end annotation

    .line 235
    iget-object v0, p0, Lch/qos/logback/classic/Logger;->aai:Lch/qos/logback/core/spi/AppenderAttachableImpl;

    if-nez v0, :cond_0

    .line 236
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 238
    :cond_0
    invoke-virtual {v0}, Lch/qos/logback/core/spi/AppenderAttachableImpl;->iteratorForAppenders()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public log(Lorg/slf4j/Marker;Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 8
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "fqcn"    # Ljava/lang/String;
    .param p3, "levelInt"    # I
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "argArray"    # [Ljava/lang/Object;
    .param p6, "t"    # Ljava/lang/Throwable;

    .line 764
    invoke-static {p3}, Lch/qos/logback/classic/Level;->fromLocationAwareLoggerInteger(I)Lch/qos/logback/classic/Level;

    move-result-object v7

    .line 765
    .local v7, "level":Lch/qos/logback/classic/Level;
    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    move-object v3, v7

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lch/qos/logback/classic/Logger;->filterAndLog_0_Or3Plus(Ljava/lang/String;Lorg/slf4j/Marker;Lch/qos/logback/classic/Level;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 766
    return-void
.end method

.method public log(Lorg/slf4j/event/LoggingEvent;)V
    .locals 8
    .param p1, "slf4jEvent"    # Lorg/slf4j/event/LoggingEvent;

    .line 774
    invoke-interface {p1}, Lorg/slf4j/event/LoggingEvent;->getLevel()Lorg/slf4j/event/Level;

    move-result-object v0

    invoke-virtual {v0}, Lorg/slf4j/event/Level;->toInt()I

    move-result v0

    invoke-static {v0}, Lch/qos/logback/classic/Level;->fromLocationAwareLoggerInteger(I)Lch/qos/logback/classic/Level;

    move-result-object v0

    .line 775
    .local v0, "level":Lch/qos/logback/classic/Level;
    sget-object v2, Lch/qos/logback/classic/Logger;->FQCN:Ljava/lang/String;

    invoke-interface {p1}, Lorg/slf4j/event/LoggingEvent;->getMarker()Lorg/slf4j/Marker;

    move-result-object v3

    invoke-interface {p1}, Lorg/slf4j/event/LoggingEvent;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1}, Lorg/slf4j/event/LoggingEvent;->getArgumentArray()[Ljava/lang/Object;

    move-result-object v6

    invoke-interface {p1}, Lorg/slf4j/event/LoggingEvent;->getThrowable()Ljava/lang/Throwable;

    move-result-object v7

    move-object v1, p0

    move-object v4, v0

    invoke-direct/range {v1 .. v7}, Lch/qos/logback/classic/Logger;->filterAndLog_0_Or3Plus(Ljava/lang/String;Lorg/slf4j/Marker;Lch/qos/logback/classic/Level;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 776
    return-void
.end method

.method protected readResolve()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 787
    invoke-virtual {p0}, Lch/qos/logback/classic/Logger;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object v0

    return-object v0
.end method

.method recursiveReset()V
    .locals 2

    .line 331
    invoke-virtual {p0}, Lch/qos/logback/classic/Logger;->detachAndStopAllAppenders()V

    .line 332
    invoke-direct {p0}, Lch/qos/logback/classic/Logger;->localLevelReset()V

    .line 333
    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/qos/logback/classic/Logger;->additive:Z

    .line 334
    iget-object v0, p0, Lch/qos/logback/classic/Logger;->childrenList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 335
    return-void

    .line 337
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lch/qos/logback/classic/Logger;

    .line 338
    .local v1, "childLogger":Lch/qos/logback/classic/Logger;
    invoke-virtual {v1}, Lch/qos/logback/classic/Logger;->recursiveReset()V

    .line 339
    .end local v1    # "childLogger":Lch/qos/logback/classic/Logger;
    goto :goto_0

    .line 340
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public setAdditive(Z)V
    .locals 0
    .param p1, "additive"    # Z

    .line 732
    iput-boolean p1, p0, Lch/qos/logback/classic/Logger;->additive:Z

    .line 733
    return-void
.end method

.method public declared-synchronized setLevel(Lch/qos/logback/classic/Level;)V
    .locals 4
    .param p1, "newLevel"    # Lch/qos/logback/classic/Level;

    monitor-enter p0

    .line 148
    :try_start_0
    iget-object v0, p0, Lch/qos/logback/classic/Logger;->level:Lch/qos/logback/classic/Level;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    .line 150
    monitor-exit p0

    return-void

    .line 152
    :cond_0
    if-nez p1, :cond_2

    :try_start_1
    invoke-direct {p0}, Lch/qos/logback/classic/Logger;->isRootLogger()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 153
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The level of the root logger cannot be set to null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    .end local p0    # "this":Lch/qos/logback/classic/Logger;
    :cond_2
    :goto_0
    iput-object p1, p0, Lch/qos/logback/classic/Logger;->level:Lch/qos/logback/classic/Level;

    .line 157
    if-nez p1, :cond_3

    .line 158
    iget-object v0, p0, Lch/qos/logback/classic/Logger;->parent:Lch/qos/logback/classic/Logger;

    iget v1, v0, Lch/qos/logback/classic/Logger;->effectiveLevelInt:I

    iput v1, p0, Lch/qos/logback/classic/Logger;->effectiveLevelInt:I

    .line 159
    invoke-virtual {v0}, Lch/qos/logback/classic/Logger;->getEffectiveLevel()Lch/qos/logback/classic/Level;

    move-result-object v0

    move-object p1, v0

    goto :goto_1

    .line 161
    :cond_3
    iget v0, p1, Lch/qos/logback/classic/Level;->levelInt:I

    iput v0, p0, Lch/qos/logback/classic/Logger;->effectiveLevelInt:I

    .line 164
    :goto_1
    iget-object v0, p0, Lch/qos/logback/classic/Logger;->childrenList:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 165
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 166
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v0, :cond_4

    .line 167
    iget-object v2, p0, Lch/qos/logback/classic/Logger;->childrenList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lch/qos/logback/classic/Logger;

    .line 169
    .local v2, "child":Lch/qos/logback/classic/Logger;
    iget v3, p0, Lch/qos/logback/classic/Logger;->effectiveLevelInt:I

    invoke-direct {v2, v3}, Lch/qos/logback/classic/Logger;->handleParentLevelChange(I)V

    .line 166
    .end local v2    # "child":Lch/qos/logback/classic/Logger;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 173
    .end local v0    # "len":I
    .end local v1    # "i":I
    :cond_4
    iget-object v0, p0, Lch/qos/logback/classic/Logger;->loggerContext:Lch/qos/logback/classic/LoggerContext;

    invoke-virtual {v0, p0, p1}, Lch/qos/logback/classic/LoggerContext;->fireOnLevelChange(Lch/qos/logback/classic/Logger;Lch/qos/logback/classic/Level;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 174
    monitor-exit p0

    return-void

    .line 147
    .end local p1    # "newLevel":Lch/qos/logback/classic/Level;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 736
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Logger["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lch/qos/logback/classic/Logger;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trace(Ljava/lang/String;)V
    .locals 7
    .param p1, "msg"    # Ljava/lang/String;

    .line 425
    sget-object v1, Lch/qos/logback/classic/Logger;->FQCN:Ljava/lang/String;

    sget-object v3, Lch/qos/logback/classic/Level;->TRACE:Lch/qos/logback/classic/Level;

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lch/qos/logback/classic/Logger;->filterAndLog_0_Or3Plus(Ljava/lang/String;Lorg/slf4j/Marker;Lch/qos/logback/classic/Level;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 426
    return-void
.end method

.method public trace(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/Object;

    .line 429
    sget-object v1, Lch/qos/logback/classic/Logger;->FQCN:Ljava/lang/String;

    sget-object v3, Lch/qos/logback/classic/Level;->TRACE:Lch/qos/logback/classic/Level;

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lch/qos/logback/classic/Logger;->filterAndLog_1(Ljava/lang/String;Lorg/slf4j/Marker;Lch/qos/logback/classic/Level;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 430
    return-void
.end method

.method public trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;

    .line 433
    sget-object v1, Lch/qos/logback/classic/Logger;->FQCN:Ljava/lang/String;

    sget-object v3, Lch/qos/logback/classic/Level;->TRACE:Lch/qos/logback/classic/Level;

    const/4 v2, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v7}, Lch/qos/logback/classic/Logger;->filterAndLog_2(Ljava/lang/String;Lorg/slf4j/Marker;Lch/qos/logback/classic/Level;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 434
    return-void
.end method

.method public trace(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 7
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 441
    sget-object v1, Lch/qos/logback/classic/Logger;->FQCN:Ljava/lang/String;

    sget-object v3, Lch/qos/logback/classic/Level;->TRACE:Lch/qos/logback/classic/Level;

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lch/qos/logback/classic/Logger;->filterAndLog_0_Or3Plus(Ljava/lang/String;Lorg/slf4j/Marker;Lch/qos/logback/classic/Level;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 442
    return-void
.end method

.method public varargs trace(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "argArray"    # [Ljava/lang/Object;

    .line 437
    sget-object v1, Lch/qos/logback/classic/Logger;->FQCN:Ljava/lang/String;

    sget-object v3, Lch/qos/logback/classic/Level;->TRACE:Lch/qos/logback/classic/Level;

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lch/qos/logback/classic/Logger;->filterAndLog_0_Or3Plus(Ljava/lang/String;Lorg/slf4j/Marker;Lch/qos/logback/classic/Level;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 438
    return-void
.end method

.method public trace(Lorg/slf4j/Marker;Ljava/lang/String;)V
    .locals 7
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "msg"    # Ljava/lang/String;

    .line 445
    sget-object v1, Lch/qos/logback/classic/Logger;->FQCN:Ljava/lang/String;

    sget-object v3, Lch/qos/logback/classic/Level;->TRACE:Lch/qos/logback/classic/Level;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lch/qos/logback/classic/Logger;->filterAndLog_0_Or3Plus(Ljava/lang/String;Lorg/slf4j/Marker;Lch/qos/logback/classic/Level;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 446
    return-void
.end method

.method public trace(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg"    # Ljava/lang/Object;

    .line 449
    sget-object v1, Lch/qos/logback/classic/Logger;->FQCN:Ljava/lang/String;

    sget-object v3, Lch/qos/logback/classic/Level;->TRACE:Lch/qos/logback/classic/Level;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lch/qos/logback/classic/Logger;->filterAndLog_1(Ljava/lang/String;Lorg/slf4j/Marker;Lch/qos/logback/classic/Level;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 450
    return-void
.end method

.method public trace(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg1"    # Ljava/lang/Object;
    .param p4, "arg2"    # Ljava/lang/Object;

    .line 453
    sget-object v1, Lch/qos/logback/classic/Logger;->FQCN:Ljava/lang/String;

    sget-object v3, Lch/qos/logback/classic/Level;->TRACE:Lch/qos/logback/classic/Level;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Lch/qos/logback/classic/Logger;->filterAndLog_2(Ljava/lang/String;Lorg/slf4j/Marker;Lch/qos/logback/classic/Level;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 454
    return-void
.end method

.method public trace(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 7
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "t"    # Ljava/lang/Throwable;

    .line 461
    sget-object v1, Lch/qos/logback/classic/Logger;->FQCN:Ljava/lang/String;

    sget-object v3, Lch/qos/logback/classic/Level;->TRACE:Lch/qos/logback/classic/Level;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lch/qos/logback/classic/Logger;->filterAndLog_0_Or3Plus(Ljava/lang/String;Lorg/slf4j/Marker;Lch/qos/logback/classic/Level;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 462
    return-void
.end method

.method public varargs trace(Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "argArray"    # [Ljava/lang/Object;

    .line 457
    sget-object v1, Lch/qos/logback/classic/Logger;->FQCN:Ljava/lang/String;

    sget-object v3, Lch/qos/logback/classic/Level;->TRACE:Lch/qos/logback/classic/Level;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lch/qos/logback/classic/Logger;->filterAndLog_0_Or3Plus(Ljava/lang/String;Lorg/slf4j/Marker;Lch/qos/logback/classic/Level;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 458
    return-void
.end method

.method public warn(Ljava/lang/String;)V
    .locals 7
    .param p1, "msg"    # Ljava/lang/String;

    .line 688
    sget-object v1, Lch/qos/logback/classic/Logger;->FQCN:Ljava/lang/String;

    sget-object v3, Lch/qos/logback/classic/Level;->WARN:Lch/qos/logback/classic/Level;

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lch/qos/logback/classic/Logger;->filterAndLog_0_Or3Plus(Ljava/lang/String;Lorg/slf4j/Marker;Lch/qos/logback/classic/Level;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 689
    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/Object;

    .line 696
    sget-object v1, Lch/qos/logback/classic/Logger;->FQCN:Ljava/lang/String;

    sget-object v3, Lch/qos/logback/classic/Level;->WARN:Lch/qos/logback/classic/Level;

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lch/qos/logback/classic/Logger;->filterAndLog_1(Ljava/lang/String;Lorg/slf4j/Marker;Lch/qos/logback/classic/Level;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 697
    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;

    .line 700
    sget-object v1, Lch/qos/logback/classic/Logger;->FQCN:Ljava/lang/String;

    sget-object v3, Lch/qos/logback/classic/Level;->WARN:Lch/qos/logback/classic/Level;

    const/4 v2, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v7}, Lch/qos/logback/classic/Logger;->filterAndLog_2(Ljava/lang/String;Lorg/slf4j/Marker;Lch/qos/logback/classic/Level;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 701
    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 7
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 692
    sget-object v1, Lch/qos/logback/classic/Logger;->FQCN:Ljava/lang/String;

    sget-object v3, Lch/qos/logback/classic/Level;->WARN:Lch/qos/logback/classic/Level;

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lch/qos/logback/classic/Logger;->filterAndLog_0_Or3Plus(Ljava/lang/String;Lorg/slf4j/Marker;Lch/qos/logback/classic/Level;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 693
    return-void
.end method

.method public varargs warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "argArray"    # [Ljava/lang/Object;

    .line 704
    sget-object v1, Lch/qos/logback/classic/Logger;->FQCN:Ljava/lang/String;

    sget-object v3, Lch/qos/logback/classic/Level;->WARN:Lch/qos/logback/classic/Level;

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lch/qos/logback/classic/Logger;->filterAndLog_0_Or3Plus(Ljava/lang/String;Lorg/slf4j/Marker;Lch/qos/logback/classic/Level;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 705
    return-void
.end method

.method public warn(Lorg/slf4j/Marker;Ljava/lang/String;)V
    .locals 7
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "msg"    # Ljava/lang/String;

    .line 708
    sget-object v1, Lch/qos/logback/classic/Logger;->FQCN:Ljava/lang/String;

    sget-object v3, Lch/qos/logback/classic/Level;->WARN:Lch/qos/logback/classic/Level;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lch/qos/logback/classic/Logger;->filterAndLog_0_Or3Plus(Ljava/lang/String;Lorg/slf4j/Marker;Lch/qos/logback/classic/Level;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 709
    return-void
.end method

.method public warn(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg"    # Ljava/lang/Object;

    .line 712
    sget-object v1, Lch/qos/logback/classic/Logger;->FQCN:Ljava/lang/String;

    sget-object v3, Lch/qos/logback/classic/Level;->WARN:Lch/qos/logback/classic/Level;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lch/qos/logback/classic/Logger;->filterAndLog_1(Ljava/lang/String;Lorg/slf4j/Marker;Lch/qos/logback/classic/Level;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 713
    return-void
.end method

.method public warn(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg1"    # Ljava/lang/Object;
    .param p4, "arg2"    # Ljava/lang/Object;

    .line 720
    sget-object v1, Lch/qos/logback/classic/Logger;->FQCN:Ljava/lang/String;

    sget-object v3, Lch/qos/logback/classic/Level;->WARN:Lch/qos/logback/classic/Level;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Lch/qos/logback/classic/Logger;->filterAndLog_2(Ljava/lang/String;Lorg/slf4j/Marker;Lch/qos/logback/classic/Level;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 721
    return-void
.end method

.method public warn(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 7
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "t"    # Ljava/lang/Throwable;

    .line 724
    sget-object v1, Lch/qos/logback/classic/Logger;->FQCN:Ljava/lang/String;

    sget-object v3, Lch/qos/logback/classic/Level;->WARN:Lch/qos/logback/classic/Level;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lch/qos/logback/classic/Logger;->filterAndLog_0_Or3Plus(Ljava/lang/String;Lorg/slf4j/Marker;Lch/qos/logback/classic/Level;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 725
    return-void
.end method

.method public varargs warn(Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "argArray"    # [Ljava/lang/Object;

    .line 716
    sget-object v1, Lch/qos/logback/classic/Logger;->FQCN:Ljava/lang/String;

    sget-object v3, Lch/qos/logback/classic/Level;->WARN:Lch/qos/logback/classic/Level;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lch/qos/logback/classic/Logger;->filterAndLog_0_Or3Plus(Ljava/lang/String;Lorg/slf4j/Marker;Lch/qos/logback/classic/Level;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 717
    return-void
.end method
