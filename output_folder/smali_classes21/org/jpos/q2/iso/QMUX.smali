.class public Lorg/jpos/q2/iso/QMUX;
.super Lorg/jpos/q2/QBeanSupport;
.source "QMUX.java"

# interfaces
.implements Lorg/jpos/space/SpaceListener;
.implements Lorg/jpos/iso/MUX;
.implements Lorg/jpos/q2/iso/QMUXMBean;
.implements Lorg/jpos/util/Loggeable;
.implements Lorg/jpos/util/MetricsProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jpos/q2/iso/QMUX$AsyncRequest;
    }
.end annotation


# static fields
.field static final DEFAULT_KEY:Ljava/lang/String; = "41, 11"

.field static final nomap:Ljava/lang/String; = "0123456789"


# instance fields
.field private headerIsKey:Z

.field protected ignorerc:Ljava/lang/String;

.field protected in:Ljava/lang/String;

.field private isp:Lorg/jpos/space/LocalSpace;

.field protected key:[Ljava/lang/String;

.field private volatile lastTxn:J

.field private listenerRegistered:Z

.field listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jpos/iso/ISORequestListener;",
            ">;"
        }
    .end annotation
.end field

.field private metrics:Lorg/jpos/util/Metrics;

.field private mtiKey:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mtiMapping:[Ljava/lang/String;

.field protected out:Ljava/lang/String;

.field protected ready:[Ljava/lang/String;

.field private returnRejects:Z

.field private volatile rx:I

.field private volatile rxExpired:I

.field private volatile rxForwarded:I

.field private volatile rxPending:I

.field private volatile rxUnhandled:I

.field protected sp:Lorg/jpos/space/LocalSpace;

.field private volatile tx:I

.field private volatile txExpired:I

.field protected unhandled:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 64
    invoke-direct {p0}, Lorg/jpos/q2/QBeanSupport;-><init>()V

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jpos/q2/iso/QMUX;->mtiKey:Ljava/util/Map;

    .line 57
    new-instance v0, Lorg/jpos/util/Metrics;

    new-instance v1, Lorg/HdrHistogram/AtomicHistogram;

    const-wide/32 v2, 0xea60

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lorg/HdrHistogram/AtomicHistogram;-><init>(JI)V

    invoke-direct {v0, v1}, Lorg/jpos/util/Metrics;-><init>(Lorg/HdrHistogram/Histogram;)V

    iput-object v0, p0, Lorg/jpos/q2/iso/QMUX;->metrics:Lorg/jpos/util/Metrics;

    .line 61
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/jpos/q2/iso/QMUX;->lastTxn:J

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jpos/q2/iso/QMUX;->listeners:Ljava/util/List;

    .line 66
    return-void
.end method

.method static synthetic access$008(Lorg/jpos/q2/iso/QMUX;)I
    .locals 2
    .param p0, "x0"    # Lorg/jpos/q2/iso/QMUX;

    .line 41
    iget v0, p0, Lorg/jpos/q2/iso/QMUX;->rx:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/jpos/q2/iso/QMUX;->rx:I

    return v0
.end method

.method static synthetic access$110(Lorg/jpos/q2/iso/QMUX;)I
    .locals 2
    .param p0, "x0"    # Lorg/jpos/q2/iso/QMUX;

    .line 41
    iget v0, p0, Lorg/jpos/q2/iso/QMUX;->rxPending:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/jpos/q2/iso/QMUX;->rxPending:I

    return v0
.end method

.method static synthetic access$202(Lorg/jpos/q2/iso/QMUX;J)J
    .locals 0
    .param p0, "x0"    # Lorg/jpos/q2/iso/QMUX;
    .param p1, "x1"    # J

    .line 41
    iput-wide p1, p0, Lorg/jpos/q2/iso/QMUX;->lastTxn:J

    return-wide p1
.end method

.method static synthetic access$300(Lorg/jpos/q2/iso/QMUX;)Lorg/jpos/util/Metrics;
    .locals 1
    .param p0, "x0"    # Lorg/jpos/q2/iso/QMUX;

    .line 41
    iget-object v0, p0, Lorg/jpos/q2/iso/QMUX;->metrics:Lorg/jpos/util/Metrics;

    return-object v0
.end method

.method private addListeners()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 333
    invoke-virtual {p0}, Lorg/jpos/q2/iso/QMUX;->getPersist()Lorg/jdom2/Element;

    move-result-object v0

    const-string v1, "request-listener"

    invoke-virtual {v0, v1}, Lorg/jdom2/Element;->getChildren(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 334
    .local v0, "rlisten":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/Element;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 335
    return-void

    .line 337
    :cond_0
    invoke-virtual {p0}, Lorg/jpos/q2/iso/QMUX;->getFactory()Lorg/jpos/q2/QFactory;

    move-result-object v1

    .line 338
    .local v1, "factory":Lorg/jpos/q2/QFactory;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jdom2/Element;

    .line 339
    .local v3, "l":Lorg/jdom2/Element;
    nop

    .line 340
    const-string v4, "class"

    invoke-static {v3, v4}, Lorg/jpos/q2/QFactory;->getAttributeValue(Lorg/jdom2/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/jpos/q2/QFactory;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jpos/iso/ISORequestListener;

    .line 341
    .local v4, "listener":Lorg/jpos/iso/ISORequestListener;
    invoke-virtual {v1, v4, v3}, Lorg/jpos/q2/QFactory;->setLogger(Ljava/lang/Object;Lorg/jdom2/Element;)V

    .line 342
    invoke-virtual {v1, v4, v3}, Lorg/jpos/q2/QFactory;->setConfiguration(Ljava/lang/Object;Lorg/jdom2/Element;)V

    .line 343
    invoke-virtual {p0, v4}, Lorg/jpos/q2/iso/QMUX;->addISORequestListener(Lorg/jpos/iso/ISORequestListener;)V

    .line 344
    .end local v3    # "l":Lorg/jdom2/Element;
    .end local v4    # "listener":Lorg/jpos/iso/ISORequestListener;
    goto :goto_0

    .line 345
    :cond_1
    return-void
.end method

.method private append(Ljava/lang/StringBuffer;Ljava/lang/String;I)V
    .locals 0
    .param p1, "sb"    # Ljava/lang/StringBuffer;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # I

    .line 510
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 511
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 512
    return-void
.end method

.method public static getMUX(Ljava/lang/String;)Lorg/jpos/iso/MUX;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/util/NameRegistrar$NotFoundException;
        }
    .end annotation

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mux."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jpos/util/NameRegistrar;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jpos/iso/MUX;

    return-object v0
.end method

.method private grabSpace(Lorg/jdom2/Element;)Lorg/jpos/space/LocalSpace;
    .locals 5
    .param p1, "e"    # Lorg/jdom2/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 439
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/jdom2/Element;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 440
    .local v0, "uri":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Lorg/jpos/space/SpaceFactory;->getSpace(Ljava/lang/String;)Lorg/jpos/space/Space;

    move-result-object v1

    .line 441
    .local v1, "sp":Lorg/jpos/space/Space;
    instance-of v2, v1, Lorg/jpos/space/LocalSpace;

    if-eqz v2, :cond_1

    .line 442
    move-object v2, v1

    check-cast v2, Lorg/jpos/space/LocalSpace;

    return-object v2

    .line 444
    :cond_1
    new-instance v2, Lorg/jpos/core/ConfigurationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid space "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jpos/core/ConfigurationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private mapMTI(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "mti"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 287
    .local v0, "sb":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_2

    .line 288
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 289
    invoke-static {p1, v2}, Lorg/jpos/iso/ISOUtil;->zeropad(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 290
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 291
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/jpos/q2/iso/QMUX;->mtiMapping:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 292
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    .line 293
    .local v2, "c":I
    if-ltz v2, :cond_1

    const/16 v3, 0xa

    if-ge v2, v3, :cond_1

    .line 294
    iget-object v3, p0, Lorg/jpos/q2/iso/QMUX;->mtiMapping:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 291
    .end local v2    # "c":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 298
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private shouldIgnore(Lorg/jpos/iso/ISOMsg;)Z
    .locals 2
    .param p1, "m"    # Lorg/jpos/iso/ISOMsg;

    .line 502
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/jpos/q2/iso/QMUX;->ignorerc:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 503
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/16 v0, 0x27

    invoke-virtual {p1, v0}, Lorg/jpos/iso/ISOMsg;->hasField(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 505
    iget-object v1, p0, Lorg/jpos/q2/iso/QMUX;->ignorerc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/jpos/iso/ISOMsg;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0

    .line 507
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private toStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 499
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lorg/jpos/q2/iso/QMUX;->toStringArray(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private toStringArray(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "delimiter"    # Ljava/lang/String;
    .param p3, "def"    # Ljava/lang/String;

    .line 475
    if-nez p1, :cond_0

    .line 476
    move-object p1, p3

    .line 477
    :cond_0
    const/4 v0, 0x0

    .line 478
    .local v0, "arr":[Ljava/lang/String;
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 480
    if-eqz p2, :cond_1

    .line 481
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-direct {v1, p1, p2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v1, "st":Ljava/util/StringTokenizer;
    goto :goto_0

    .line 483
    .end local v1    # "st":Ljava/util/StringTokenizer;
    :cond_1
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-direct {v1, p1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 485
    .restart local v1    # "st":Ljava/util/StringTokenizer;
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 486
    .local v2, "l":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 487
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 488
    .local v3, "t":Ljava/lang/String;
    const-string v4, "header"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 489
    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/jpos/q2/iso/QMUX;->headerIsKey:Z

    goto :goto_2

    .line 491
    :cond_2
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 493
    .end local v3    # "t":Ljava/lang/String;
    :goto_2
    goto :goto_1

    .line 494
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, [Ljava/lang/String;

    .line 496
    .end local v1    # "st":Ljava/util/StringTokenizer;
    .end local v2    # "l":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    return-object v0
.end method


# virtual methods
.method public addISORequestListener(Lorg/jpos/iso/ISORequestListener;)V
    .locals 1
    .param p1, "l"    # Lorg/jpos/iso/ISORequestListener;

    .line 347
    iget-object v0, p0, Lorg/jpos/q2/iso/QMUX;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 348
    return-void
.end method

.method public destroyService()V
    .locals 2

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mux."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jpos/q2/iso/QMUX;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jpos/util/NameRegistrar;->unregister(Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public dump(Ljava/io/PrintStream;Ljava/lang/String;)V
    .locals 2
    .param p1, "p"    # Ljava/io/PrintStream;
    .param p2, "indent"    # Ljava/lang/String;

    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jpos/q2/iso/QMUX;->getCountersAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 472
    iget-object v0, p0, Lorg/jpos/q2/iso/QMUX;->metrics:Lorg/jpos/util/Metrics;

    invoke-virtual {v0, p1, p2}, Lorg/jpos/util/Metrics;->dump(Ljava/io/PrintStream;Ljava/lang/String;)V

    .line 473
    return-void
.end method

.method public getCountersAsString()Ljava/lang/String;
    .locals 5

    .line 357
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 358
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget v1, p0, Lorg/jpos/q2/iso/QMUX;->tx:I

    const-string v2, "tx="

    invoke-direct {p0, v0, v2, v1}, Lorg/jpos/q2/iso/QMUX;->append(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 359
    iget v1, p0, Lorg/jpos/q2/iso/QMUX;->rx:I

    const-string v2, ", rx="

    invoke-direct {p0, v0, v2, v1}, Lorg/jpos/q2/iso/QMUX;->append(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 360
    invoke-virtual {p0}, Lorg/jpos/q2/iso/QMUX;->getTXExpired()I

    move-result v1

    const-string v2, ", tx_expired="

    invoke-direct {p0, v0, v2, v1}, Lorg/jpos/q2/iso/QMUX;->append(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 361
    invoke-virtual {p0}, Lorg/jpos/q2/iso/QMUX;->getTXPending()I

    move-result v1

    const-string v2, ", tx_pending="

    invoke-direct {p0, v0, v2, v1}, Lorg/jpos/q2/iso/QMUX;->append(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 362
    invoke-virtual {p0}, Lorg/jpos/q2/iso/QMUX;->getRXExpired()I

    move-result v1

    const-string v2, ", rx_expired="

    invoke-direct {p0, v0, v2, v1}, Lorg/jpos/q2/iso/QMUX;->append(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 363
    invoke-virtual {p0}, Lorg/jpos/q2/iso/QMUX;->getRXPending()I

    move-result v1

    const-string v2, ", rx_pending="

    invoke-direct {p0, v0, v2, v1}, Lorg/jpos/q2/iso/QMUX;->append(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 364
    invoke-virtual {p0}, Lorg/jpos/q2/iso/QMUX;->getRXUnhandled()I

    move-result v1

    const-string v2, ", rx_unhandled="

    invoke-direct {p0, v0, v2, v1}, Lorg/jpos/q2/iso/QMUX;->append(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 365
    invoke-virtual {p0}, Lorg/jpos/q2/iso/QMUX;->getRXForwarded()I

    move-result v1

    const-string v2, ", rx_forwarded="

    invoke-direct {p0, v0, v2, v1}, Lorg/jpos/q2/iso/QMUX;->append(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 366
    const-string v1, ", connected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 367
    invoke-virtual {p0}, Lorg/jpos/q2/iso/QMUX;->isConnected()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 368
    const-string v1, ", last="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 369
    iget-wide v1, p0, Lorg/jpos/q2/iso/QMUX;->lastTxn:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 370
    iget-wide v1, p0, Lorg/jpos/q2/iso/QMUX;->lastTxn:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 371
    const-string v1, ", idle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 372
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lorg/jpos/q2/iso/QMUX;->lastTxn:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 373
    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 375
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getIdleTimeInMillis()J
    .locals 4

    .line 419
    iget-wide v0, p0, Lorg/jpos/q2/iso/QMUX;->lastTxn:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/jpos/q2/iso/QMUX;->lastTxn:J

    sub-long/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method public getInQueue()Ljava/lang/String;
    .locals 1

    .line 306
    iget-object v0, p0, Lorg/jpos/q2/iso/QMUX;->in:Ljava/lang/String;

    return-object v0
.end method

.method public getKey(Lorg/jpos/iso/ISOMsg;)Ljava/lang/String;
    .locals 11
    .param p1, "m"    # Lorg/jpos/iso/ISOMsg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 247
    iget-object v0, p0, Lorg/jpos/q2/iso/QMUX;->out:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 250
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 251
    invoke-virtual {p1}, Lorg/jpos/iso/ISOMsg;->getMTI()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/jpos/q2/iso/QMUX;->mapMTI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    iget-boolean v2, p0, Lorg/jpos/q2/iso/QMUX;->headerIsKey:Z

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lorg/jpos/iso/ISOMsg;->getHeader()[B

    move-result-object v2

    if-eqz v2, :cond_0

    .line 253
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {p1}, Lorg/jpos/iso/ISOMsg;->getHeader()[B

    move-result-object v2

    invoke-static {v2}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 257
    :cond_0
    const/4 v1, 0x0

    .line 258
    .local v1, "hasFields":Z
    iget-object v2, p0, Lorg/jpos/q2/iso/QMUX;->mtiKey:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/jpos/iso/ISOMsg;->getMTI()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/jpos/q2/iso/QMUX;->key:[Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 259
    .local v2, "k":[Ljava/lang/String;
    array-length v3, v2

    move v4, v5

    :goto_0
    if-ge v4, v3, :cond_5

    aget-object v6, v2, v4

    .line 260
    .local v6, "f":Ljava/lang/String;
    invoke-virtual {p1, v6}, Lorg/jpos/iso/ISOMsg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 261
    .local v7, "v":Ljava/lang/String;
    if-eqz v7, :cond_4

    .line 262
    const-string v8, "11"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 263
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 264
    .local v8, "vt":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/jpos/iso/ISOMsg;->getMTI()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x32

    if-ne v9, v10, :cond_1

    const/16 v9, 0xc

    goto :goto_1

    :cond_1
    const/4 v9, 0x6

    .line 265
    .local v9, "l":I
    :goto_1
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v10, v9, :cond_2

    .line 266
    invoke-static {v8, v9}, Lorg/jpos/iso/ISOUtil;->zeropad(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 268
    .end local v8    # "vt":Ljava/lang/String;
    .end local v9    # "l":I
    :cond_2
    const-string v8, "41"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 269
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x10

    invoke-static {v8, v9}, Lorg/jpos/iso/ISOUtil;->zeropad(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 271
    :cond_3
    const/4 v1, 0x1

    .line 272
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .end local v6    # "f":Ljava/lang/String;
    .end local v7    # "v":Ljava/lang/String;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 275
    :cond_5
    if-eqz v1, :cond_6

    .line 277
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 276
    :cond_6
    new-instance v3, Lorg/jpos/iso/ISOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Key fields not found - not sending "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 248
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v1    # "hasFields":Z
    .end local v2    # "k":[Ljava/lang/String;
    :cond_7
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Misconfigured QMUX. Please verify out queue is not null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLastTxnTimestampInMillis()J
    .locals 2

    .line 416
    iget-wide v0, p0, Lorg/jpos/q2/iso/QMUX;->lastTxn:J

    return-wide v0
.end method

.method public getMetrics()Lorg/jpos/util/Metrics;
    .locals 1

    .line 282
    iget-object v0, p0, Lorg/jpos/q2/iso/QMUX;->metrics:Lorg/jpos/util/Metrics;

    return-object v0
.end method

.method public getOutQueue()Ljava/lang/String;
    .locals 1

    .line 314
    iget-object v0, p0, Lorg/jpos/q2/iso/QMUX;->out:Ljava/lang/String;

    return-object v0
.end method

.method public getRXCounter()I
    .locals 1

    .line 382
    iget v0, p0, Lorg/jpos/q2/iso/QMUX;->rx:I

    return v0
.end method

.method public getRXExpired()I
    .locals 1

    .line 397
    iget v0, p0, Lorg/jpos/q2/iso/QMUX;->rxExpired:I

    return v0
.end method

.method public getRXForwarded()I
    .locals 1

    .line 412
    iget v0, p0, Lorg/jpos/q2/iso/QMUX;->rxForwarded:I

    return v0
.end method

.method public getRXPending()I
    .locals 1

    .line 402
    iget v0, p0, Lorg/jpos/q2/iso/QMUX;->rxPending:I

    return v0
.end method

.method public getRXUnhandled()I
    .locals 1

    .line 407
    iget v0, p0, Lorg/jpos/q2/iso/QMUX;->rxUnhandled:I

    return v0
.end method

.method public getReadyIndicatorNames()[Ljava/lang/String;
    .locals 1

    .line 329
    iget-object v0, p0, Lorg/jpos/q2/iso/QMUX;->ready:[Ljava/lang/String;

    return-object v0
.end method

.method public getSpace()Lorg/jpos/space/Space;
    .locals 1

    .line 317
    iget-object v0, p0, Lorg/jpos/q2/iso/QMUX;->sp:Lorg/jpos/space/LocalSpace;

    return-object v0
.end method

.method public getTXCounter()I
    .locals 1

    .line 379
    iget v0, p0, Lorg/jpos/q2/iso/QMUX;->tx:I

    return v0
.end method

.method public getTXExpired()I
    .locals 1

    .line 387
    iget v0, p0, Lorg/jpos/q2/iso/QMUX;->txExpired:I

    return v0
.end method

.method public getTXPending()I
    .locals 2

    .line 392
    iget-object v0, p0, Lorg/jpos/q2/iso/QMUX;->sp:Lorg/jpos/space/LocalSpace;

    iget-object v1, p0, Lorg/jpos/q2/iso/QMUX;->out:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/jpos/space/LocalSpace;->size(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getUnhandledQueue()Ljava/lang/String;
    .locals 1

    .line 325
    iget-object v0, p0, Lorg/jpos/q2/iso/QMUX;->unhandled:Ljava/lang/String;

    return-object v0
.end method

.method public initService()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 68
    invoke-virtual {p0}, Lorg/jpos/q2/iso/QMUX;->getPersist()Lorg/jdom2/Element;

    move-result-object v0

    .line 69
    .local v0, "e":Lorg/jdom2/Element;
    const-string v1, "space"

    invoke-virtual {v0, v1}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/jpos/q2/iso/QMUX;->grabSpace(Lorg/jdom2/Element;)Lorg/jpos/space/LocalSpace;

    move-result-object v1

    iput-object v1, p0, Lorg/jpos/q2/iso/QMUX;->sp:Lorg/jpos/space/LocalSpace;

    .line 70
    iget-object v1, p0, Lorg/jpos/q2/iso/QMUX;->cfg:Lorg/jpos/core/Configuration;

    const-string v2, "reuse-space"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lorg/jpos/core/Configuration;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/jpos/q2/iso/QMUX;->sp:Lorg/jpos/space/LocalSpace;

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/jpos/space/TSpace;

    invoke-direct {v1}, Lorg/jpos/space/TSpace;-><init>()V

    :goto_0
    iput-object v1, p0, Lorg/jpos/q2/iso/QMUX;->isp:Lorg/jpos/space/LocalSpace;

    .line 71
    const-string v1, "in"

    invoke-virtual {v0, v1}, Lorg/jdom2/Element;->getChildTextTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jpos/core/Environment;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jpos/q2/iso/QMUX;->in:Ljava/lang/String;

    .line 72
    const-string v1, "out"

    invoke-virtual {v0, v1}, Lorg/jdom2/Element;->getChildTextTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jpos/core/Environment;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jpos/q2/iso/QMUX;->out:Ljava/lang/String;

    .line 74
    iget-object v2, p0, Lorg/jpos/q2/iso/QMUX;->in:Ljava/lang/String;

    if-eqz v2, :cond_5

    if-eqz v1, :cond_5

    .line 77
    const-string v1, "ignore-rc"

    invoke-virtual {v0, v1}, Lorg/jdom2/Element;->getChildTextTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jpos/core/Environment;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jpos/q2/iso/QMUX;->ignorerc:Ljava/lang/String;

    .line 78
    const-string v1, "41, 11"

    const-string v2, ", "

    const/4 v4, 0x0

    invoke-direct {p0, v1, v2, v4}, Lorg/jpos/q2/iso/QMUX;->toStringArray(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/jpos/q2/iso/QMUX;->key:[Ljava/lang/String;

    .line 79
    iget-object v5, p0, Lorg/jpos/q2/iso/QMUX;->cfg:Lorg/jpos/core/Configuration;

    const-string v6, "return-rejects"

    invoke-interface {v5, v6, v3}, Lorg/jpos/core/Configuration;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lorg/jpos/q2/iso/QMUX;->returnRejects:Z

    .line 80
    const-string v5, "key"

    invoke-virtual {v0, v5}, Lorg/jdom2/Element;->getChildren(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/jdom2/Element;

    .line 81
    .local v7, "keyElement":Lorg/jdom2/Element;
    const-string v8, "mti"

    invoke-static {v7, v8}, Lorg/jpos/q2/QFactory;->getAttributeValue(Lorg/jdom2/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 82
    .local v8, "mtiOverride":Ljava/lang/String;
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x2

    if-lt v9, v10, :cond_1

    .line 83
    iget-object v9, p0, Lorg/jpos/q2/iso/QMUX;->mtiKey:Ljava/util/Map;

    invoke-virtual {v8, v3, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7}, Lorg/jdom2/Element;->getTextTrim()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11, v2, v4}, Lorg/jpos/q2/iso/QMUX;->toStringArray(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 85
    :cond_1
    invoke-virtual {v0, v5}, Lorg/jdom2/Element;->getChildTextTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9, v2, v1}, Lorg/jpos/q2/iso/QMUX;->toStringArray(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lorg/jpos/q2/iso/QMUX;->key:[Ljava/lang/String;

    .line 87
    .end local v7    # "keyElement":Lorg/jdom2/Element;
    .end local v8    # "mtiOverride":Ljava/lang/String;
    :goto_2
    goto :goto_1

    .line 88
    :cond_2
    const-string v1, "ready"

    invoke-virtual {v0, v1}, Lorg/jdom2/Element;->getChildTextTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jpos/core/Environment;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/jpos/q2/iso/QMUX;->toStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jpos/q2/iso/QMUX;->ready:[Ljava/lang/String;

    .line 89
    const-string v1, "mtimapping"

    invoke-virtual {v0, v1}, Lorg/jdom2/Element;->getChildTextTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jpos/core/Environment;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/jpos/q2/iso/QMUX;->toStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jpos/q2/iso/QMUX;->mtiMapping:[Ljava/lang/String;

    .line 90
    if-eqz v1, :cond_3

    array-length v1, v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    .line 91
    :cond_3
    const-string v1, "0123456789"

    const-string v2, "0022446689"

    filled-new-array {v1, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jpos/q2/iso/QMUX;->mtiMapping:[Ljava/lang/String;

    .line 92
    :cond_4
    invoke-direct {p0}, Lorg/jpos/q2/iso/QMUX;->addListeners()V

    .line 93
    const-string v1, "unhandled"

    invoke-virtual {v0, v1}, Lorg/jdom2/Element;->getChildTextTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jpos/core/Environment;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jpos/q2/iso/QMUX;->unhandled:Ljava/lang/String;

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mux."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jpos/q2/iso/QMUX;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lorg/jpos/util/NameRegistrar;->register(Ljava/lang/String;Ljava/lang/Object;)V

    .line 95
    return-void

    .line 75
    :cond_5
    new-instance v1, Lorg/jpos/core/ConfigurationException;

    const-string v2, "Misconfigured QMUX. Please verify in/out queues"

    invoke-direct {v1, v2}, Lorg/jpos/core/ConfigurationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isConnected()Z
    .locals 6

    .line 462
    invoke-virtual {p0}, Lorg/jpos/q2/iso/QMUX;->running()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/jpos/q2/iso/QMUX;->ready:[Ljava/lang/String;

    if-eqz v0, :cond_2

    array-length v1, v0

    if-lez v1, :cond_2

    .line 463
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 464
    .local v4, "aReady":Ljava/lang/String;
    iget-object v5, p0, Lorg/jpos/q2/iso/QMUX;->sp:Lorg/jpos/space/LocalSpace;

    invoke-interface {v5, v4}, Lorg/jpos/space/LocalSpace;->rdp(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 465
    const/4 v0, 0x1

    return v0

    .line 463
    .end local v4    # "aReady":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 466
    :cond_1
    return v2

    .line 468
    :cond_2
    invoke-virtual {p0}, Lorg/jpos/q2/iso/QMUX;->running()Z

    move-result v0

    return v0
.end method

.method protected isNotifyEligible(Lorg/jpos/iso/ISOMsg;)Z
    .locals 2
    .param p1, "msg"    # Lorg/jpos/iso/ISOMsg;

    .line 204
    iget-boolean v0, p0, Lorg/jpos/q2/iso/QMUX;->returnRejects:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 205
    return v1

    .line 208
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lorg/jpos/iso/ISOMsg;->isResponse()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/jpos/iso/ISOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 209
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 213
    .local v0, "ex":Ljava/lang/Exception;
    :goto_0
    return v1
.end method

.method public notify(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .param p1, "k"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 219
    iget-object v0, p0, Lorg/jpos/q2/iso/QMUX;->sp:Lorg/jpos/space/LocalSpace;

    invoke-interface {v0, p1}, Lorg/jpos/space/LocalSpace;->inp(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 220
    .local v0, "obj":Ljava/lang/Object;
    instance-of v1, v0, Lorg/jpos/iso/ISOMsg;

    if-eqz v1, :cond_2

    .line 221
    move-object v1, v0

    check-cast v1, Lorg/jpos/iso/ISOMsg;

    .line 223
    .local v1, "m":Lorg/jpos/iso/ISOMsg;
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/jpos/q2/iso/QMUX;->isNotifyEligible(Lorg/jpos/iso/ISOMsg;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 224
    invoke-virtual {p0, v1}, Lorg/jpos/q2/iso/QMUX;->getKey(Lorg/jpos/iso/ISOMsg;)Ljava/lang/String;

    move-result-object v2

    .line 225
    .local v2, "key":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".req"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 226
    .local v3, "req":Ljava/lang/String;
    iget-object v4, p0, Lorg/jpos/q2/iso/QMUX;->isp:Lorg/jpos/space/LocalSpace;

    invoke-interface {v4, v3}, Lorg/jpos/space/LocalSpace;->inp(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 227
    .local v4, "r":Ljava/lang/Object;
    if-eqz v4, :cond_1

    .line 228
    instance-of v5, v4, Lorg/jpos/q2/iso/QMUX$AsyncRequest;

    if-eqz v5, :cond_0

    .line 229
    move-object v5, v4

    check-cast v5, Lorg/jpos/q2/iso/QMUX$AsyncRequest;

    invoke-virtual {v5, v1}, Lorg/jpos/q2/iso/QMUX$AsyncRequest;->responseReceived(Lorg/jpos/iso/ISOMsg;)V

    goto :goto_0

    .line 231
    :cond_0
    iget-object v5, p0, Lorg/jpos/q2/iso/QMUX;->isp:Lorg/jpos/space/LocalSpace;

    invoke-interface {v5, v2, v1}, Lorg/jpos/space/LocalSpace;->out(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/jpos/iso/ISOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :goto_0
    return-void

    .line 241
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "req":Ljava/lang/String;
    .end local v4    # "r":Ljava/lang/Object;
    :cond_1
    goto :goto_1

    .line 236
    :catch_0
    move-exception v2

    .line 237
    .local v2, "e":Lorg/jpos/iso/ISOException;
    invoke-virtual {p0}, Lorg/jpos/q2/iso/QMUX;->getLog()Lorg/jpos/util/Log;

    move-result-object v3

    const-string v4, "notify"

    invoke-virtual {v3, v4}, Lorg/jpos/util/Log;->createLogEvent(Ljava/lang/String;)Lorg/jpos/util/LogEvent;

    move-result-object v3

    .line 238
    .local v3, "evt":Lorg/jpos/util/LogEvent;
    invoke-virtual {v3, v2}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 239
    invoke-virtual {v3, v0}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 240
    invoke-static {v3}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 242
    .end local v2    # "e":Lorg/jpos/iso/ISOException;
    .end local v3    # "evt":Lorg/jpos/util/LogEvent;
    :goto_1
    invoke-virtual {p0, v1}, Lorg/jpos/q2/iso/QMUX;->processUnhandled(Lorg/jpos/iso/ISOMsg;)V

    .line 244
    .end local v1    # "m":Lorg/jpos/iso/ISOMsg;
    :cond_2
    return-void
.end method

.method protected processUnhandled(Lorg/jpos/iso/ISOMsg;)V
    .locals 6
    .param p1, "m"    # Lorg/jpos/iso/ISOMsg;

    .line 423
    invoke-virtual {p1}, Lorg/jpos/iso/ISOMsg;->getSource()Lorg/jpos/iso/ISOSource;

    move-result-object v0

    .line 424
    .local v0, "source":Lorg/jpos/iso/ISOSource;
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    move-object v1, p0

    :goto_0
    move-object v0, v1

    .line 425
    iget-object v1, p0, Lorg/jpos/q2/iso/QMUX;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 426
    .local v1, "iter":Ljava/util/Iterator;
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 427
    monitor-enter p0

    :try_start_0
    iget v2, p0, Lorg/jpos/q2/iso/QMUX;->rxForwarded:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/jpos/q2/iso/QMUX;->rxForwarded:I

    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 428
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 429
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jpos/iso/ISORequestListener;

    invoke-interface {v2, v0, p1}, Lorg/jpos/iso/ISORequestListener;->process(Lorg/jpos/iso/ISOSource;Lorg/jpos/iso/ISOMsg;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 430
    return-void

    .line 431
    :cond_2
    iget-object v2, p0, Lorg/jpos/q2/iso/QMUX;->unhandled:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 432
    monitor-enter p0

    :try_start_1
    iget v2, p0, Lorg/jpos/q2/iso/QMUX;->rxUnhandled:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/jpos/q2/iso/QMUX;->rxUnhandled:I

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 433
    iget-object v2, p0, Lorg/jpos/q2/iso/QMUX;->sp:Lorg/jpos/space/LocalSpace;

    iget-object v3, p0, Lorg/jpos/q2/iso/QMUX;->unhandled:Ljava/lang/String;

    const-wide/32 v4, 0x1d4c0

    invoke-interface {v2, v3, p1, v4, v5}, Lorg/jpos/space/LocalSpace;->out(Ljava/lang/Object;Ljava/lang/Object;J)V

    goto :goto_2

    .line 432
    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .line 435
    :cond_3
    :goto_2
    return-void
.end method

.method public removeISORequestListener(Lorg/jpos/iso/ISORequestListener;)Z
    .locals 1
    .param p1, "l"    # Lorg/jpos/iso/ISORequestListener;

    .line 350
    iget-object v0, p0, Lorg/jpos/q2/iso/QMUX;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public request(Lorg/jpos/iso/ISOMsg;J)Lorg/jpos/iso/ISOMsg;
    .locals 8
    .param p1, "m"    # Lorg/jpos/iso/ISOMsg;
    .param p2, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 133
    invoke-virtual {p0, p1}, Lorg/jpos/q2/iso/QMUX;->getKey(Lorg/jpos/iso/ISOMsg;)Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "key":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".req"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, "req":Ljava/lang/String;
    iget-object v2, p0, Lorg/jpos/q2/iso/QMUX;->isp:Lorg/jpos/space/LocalSpace;

    monitor-enter v2

    .line 136
    :try_start_0
    iget-object v3, p0, Lorg/jpos/q2/iso/QMUX;->isp:Lorg/jpos/space/LocalSpace;

    invoke-interface {v3, v1}, Lorg/jpos/space/LocalSpace;->rdp(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_6

    .line 138
    iget-object v3, p0, Lorg/jpos/q2/iso/QMUX;->isp:Lorg/jpos/space/LocalSpace;

    invoke-interface {v3, v1, p1}, Lorg/jpos/space/LocalSpace;->out(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 139
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 140
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lorg/jpos/iso/ISOMsg;->setDirection(I)V

    .line 141
    new-instance v2, Lorg/jpos/util/Chronometer;

    invoke-direct {v2}, Lorg/jpos/util/Chronometer;-><init>()V

    move-object v3, v2

    .line 142
    .local v3, "c":Lorg/jpos/util/Chronometer;
    const-wide/16 v4, 0x0

    cmp-long v2, p2, v4

    if-lez v2, :cond_0

    .line 143
    iget-object v2, p0, Lorg/jpos/q2/iso/QMUX;->sp:Lorg/jpos/space/LocalSpace;

    iget-object v4, p0, Lorg/jpos/q2/iso/QMUX;->out:Ljava/lang/String;

    invoke-interface {v2, v4, p1, p2, p3}, Lorg/jpos/space/LocalSpace;->out(Ljava/lang/Object;Ljava/lang/Object;J)V

    goto :goto_0

    .line 145
    :cond_0
    iget-object v2, p0, Lorg/jpos/q2/iso/QMUX;->sp:Lorg/jpos/space/LocalSpace;

    iget-object v4, p0, Lorg/jpos/q2/iso/QMUX;->out:Ljava/lang/String;

    invoke-interface {v2, v4, p1}, Lorg/jpos/space/LocalSpace;->out(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 149
    :goto_0
    :try_start_1
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    iget v2, p0, Lorg/jpos/q2/iso/QMUX;->tx:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/jpos/q2/iso/QMUX;->tx:I

    iget v2, p0, Lorg/jpos/q2/iso/QMUX;->rxPending:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/jpos/q2/iso/QMUX;->rxPending:I

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 152
    :cond_1
    :try_start_3
    iget-object v2, p0, Lorg/jpos/q2/iso/QMUX;->isp:Lorg/jpos/space/LocalSpace;

    invoke-interface {v2, v0, p2, p3}, Lorg/jpos/space/LocalSpace;->in(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jpos/iso/ISOMsg;

    .line 153
    .local v2, "resp":Lorg/jpos/iso/ISOMsg;
    invoke-direct {p0, v2}, Lorg/jpos/q2/iso/QMUX;->shouldIgnore(Lorg/jpos/iso/ISOMsg;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 154
    nop

    .line 156
    if-nez v2, :cond_2

    iget-object v4, p0, Lorg/jpos/q2/iso/QMUX;->isp:Lorg/jpos/space/LocalSpace;

    invoke-interface {v4, v1}, Lorg/jpos/space/LocalSpace;->inp(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    .line 158
    iget-object v4, p0, Lorg/jpos/q2/iso/QMUX;->isp:Lorg/jpos/space/LocalSpace;

    const-wide/16 v5, 0x2710

    invoke-interface {v4, v0, v5, v6}, Lorg/jpos/space/LocalSpace;->in(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jpos/iso/ISOMsg;

    move-object v2, v4

    .line 160
    :cond_2
    monitor-enter p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 161
    if-eqz v2, :cond_3

    .line 163
    :try_start_4
    iget v4, p0, Lorg/jpos/q2/iso/QMUX;->rx:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/jpos/q2/iso/QMUX;->rx:I

    .line 164
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/jpos/q2/iso/QMUX;->lastTxn:J

    goto :goto_1

    .line 166
    :cond_3
    iget v4, p0, Lorg/jpos/q2/iso/QMUX;->rxExpired:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/jpos/q2/iso/QMUX;->rxExpired:I

    .line 167
    invoke-virtual {p1}, Lorg/jpos/iso/ISOMsg;->getDirection()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_4

    .line 168
    iget v4, p0, Lorg/jpos/q2/iso/QMUX;->txExpired:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/jpos/q2/iso/QMUX;->txExpired:I

    .line 170
    :cond_4
    :goto_1
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 172
    monitor-enter p0

    :try_start_5
    iget v4, p0, Lorg/jpos/q2/iso/QMUX;->rxPending:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lorg/jpos/q2/iso/QMUX;->rxPending:I

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 173
    nop

    .line 174
    invoke-virtual {v3}, Lorg/jpos/util/Chronometer;->elapsed()J

    move-result-wide v4

    .line 175
    .local v4, "elapsed":J
    iget-object v6, p0, Lorg/jpos/q2/iso/QMUX;->metrics:Lorg/jpos/util/Metrics;

    const-string v7, "all"

    invoke-virtual {v6, v7, v4, v5}, Lorg/jpos/util/Metrics;->record(Ljava/lang/String;J)V

    .line 176
    if-eqz v2, :cond_5

    .line 177
    iget-object v6, p0, Lorg/jpos/q2/iso/QMUX;->metrics:Lorg/jpos/util/Metrics;

    const-string v7, "ok"

    invoke-virtual {v6, v7, v4, v5}, Lorg/jpos/util/Metrics;->record(Ljava/lang/String;J)V

    .line 178
    :cond_5
    return-object v2

    .line 172
    .end local v4    # "elapsed":J
    :catchall_0
    move-exception v4

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v4

    .line 170
    :catchall_1
    move-exception v4

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "req":Ljava/lang/String;
    .end local v3    # "c":Lorg/jpos/util/Chronometer;
    .end local p1    # "m":Lorg/jpos/iso/ISOMsg;
    .end local p2    # "timeout":J
    :try_start_8
    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 149
    .end local v2    # "resp":Lorg/jpos/iso/ISOMsg;
    .restart local v0    # "key":Ljava/lang/String;
    .restart local v1    # "req":Ljava/lang/String;
    .restart local v3    # "c":Lorg/jpos/util/Chronometer;
    .restart local p1    # "m":Lorg/jpos/iso/ISOMsg;
    .restart local p2    # "timeout":J
    :catchall_2
    move-exception v2

    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "req":Ljava/lang/String;
    .end local v3    # "c":Lorg/jpos/util/Chronometer;
    .end local p1    # "m":Lorg/jpos/iso/ISOMsg;
    .end local p2    # "timeout":J
    :try_start_a
    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 172
    .restart local v0    # "key":Ljava/lang/String;
    .restart local v1    # "req":Ljava/lang/String;
    .restart local v3    # "c":Lorg/jpos/util/Chronometer;
    .restart local p1    # "m":Lorg/jpos/iso/ISOMsg;
    .restart local p2    # "timeout":J
    :catchall_3
    move-exception v2

    monitor-enter p0

    :try_start_b
    iget v4, p0, Lorg/jpos/q2/iso/QMUX;->rxPending:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lorg/jpos/q2/iso/QMUX;->rxPending:I

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 173
    throw v2

    .line 172
    :catchall_4
    move-exception v2

    :try_start_c
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    throw v2

    .line 137
    .end local v3    # "c":Lorg/jpos/util/Chronometer;
    :cond_6
    :try_start_d
    new-instance v3, Lorg/jpos/iso/ISOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Duplicate key \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' detected"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "req":Ljava/lang/String;
    .end local p1    # "m":Lorg/jpos/iso/ISOMsg;
    .end local p2    # "timeout":J
    throw v3

    .line 139
    .restart local v0    # "key":Ljava/lang/String;
    .restart local v1    # "req":Ljava/lang/String;
    .restart local p1    # "m":Lorg/jpos/iso/ISOMsg;
    .restart local p2    # "timeout":J
    :catchall_5
    move-exception v3

    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    throw v3
.end method

.method public request(Lorg/jpos/iso/ISOMsg;JLorg/jpos/iso/ISOResponseListener;Ljava/lang/Object;)V
    .locals 8
    .param p1, "m"    # Lorg/jpos/iso/ISOMsg;
    .param p2, "timeout"    # J
    .param p4, "rl"    # Lorg/jpos/iso/ISOResponseListener;
    .param p5, "handBack"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 183
    invoke-virtual {p0, p1}, Lorg/jpos/q2/iso/QMUX;->getKey(Lorg/jpos/iso/ISOMsg;)Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, "key":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".req"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 185
    .local v1, "req":Ljava/lang/String;
    iget-object v2, p0, Lorg/jpos/q2/iso/QMUX;->isp:Lorg/jpos/space/LocalSpace;

    monitor-enter v2

    .line 186
    :try_start_0
    iget-object v3, p0, Lorg/jpos/q2/iso/QMUX;->isp:Lorg/jpos/space/LocalSpace;

    invoke-interface {v3, v1}, Lorg/jpos/space/LocalSpace;->rdp(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    .line 188
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lorg/jpos/iso/ISOMsg;->setDirection(I)V

    .line 189
    new-instance v3, Lorg/jpos/q2/iso/QMUX$AsyncRequest;

    invoke-direct {v3, p0, p4, p5}, Lorg/jpos/q2/iso/QMUX$AsyncRequest;-><init>(Lorg/jpos/q2/iso/QMUX;Lorg/jpos/iso/ISOResponseListener;Ljava/lang/Object;)V

    .line 190
    .local v3, "ar":Lorg/jpos/q2/iso/QMUX$AsyncRequest;
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 191
    const-wide/16 v4, 0x0

    cmp-long v6, p2, v4

    if-lez v6, :cond_0

    .line 192
    :try_start_1
    invoke-virtual {p0}, Lorg/jpos/q2/iso/QMUX;->getScheduledThreadPoolExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v6

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v3, p2, p3, v7}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/jpos/q2/iso/QMUX$AsyncRequest;->setFuture(Ljava/util/concurrent/ScheduledFuture;)V

    .line 193
    :cond_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 194
    :try_start_2
    iget-object v6, p0, Lorg/jpos/q2/iso/QMUX;->isp:Lorg/jpos/space/LocalSpace;

    invoke-interface {v6, v1, v3, p2, p3}, Lorg/jpos/space/LocalSpace;->out(Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 195
    .end local v3    # "ar":Lorg/jpos/q2/iso/QMUX$AsyncRequest;
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 196
    cmp-long v2, p2, v4

    if-lez v2, :cond_1

    .line 197
    iget-object v2, p0, Lorg/jpos/q2/iso/QMUX;->sp:Lorg/jpos/space/LocalSpace;

    iget-object v3, p0, Lorg/jpos/q2/iso/QMUX;->out:Ljava/lang/String;

    invoke-interface {v2, v3, p1, p2, p3}, Lorg/jpos/space/LocalSpace;->out(Ljava/lang/Object;Ljava/lang/Object;J)V

    goto :goto_0

    .line 199
    :cond_1
    iget-object v2, p0, Lorg/jpos/q2/iso/QMUX;->sp:Lorg/jpos/space/LocalSpace;

    iget-object v3, p0, Lorg/jpos/q2/iso/QMUX;->out:Ljava/lang/String;

    invoke-interface {v2, v3, p1}, Lorg/jpos/space/LocalSpace;->out(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 200
    :goto_0
    monitor-enter p0

    :try_start_3
    iget v2, p0, Lorg/jpos/q2/iso/QMUX;->tx:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/jpos/q2/iso/QMUX;->tx:I

    iget v2, p0, Lorg/jpos/q2/iso/QMUX;->rxPending:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/jpos/q2/iso/QMUX;->rxPending:I

    monitor-exit p0

    .line 201
    return-void

    .line 200
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 193
    .restart local v3    # "ar":Lorg/jpos/q2/iso/QMUX$AsyncRequest;
    :catchall_1
    move-exception v4

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "req":Ljava/lang/String;
    .end local p1    # "m":Lorg/jpos/iso/ISOMsg;
    .end local p2    # "timeout":J
    .end local p4    # "rl":Lorg/jpos/iso/ISOResponseListener;
    .end local p5    # "handBack":Ljava/lang/Object;
    :try_start_5
    throw v4

    .line 187
    .end local v3    # "ar":Lorg/jpos/q2/iso/QMUX$AsyncRequest;
    .restart local v0    # "key":Ljava/lang/String;
    .restart local v1    # "req":Ljava/lang/String;
    .restart local p1    # "m":Lorg/jpos/iso/ISOMsg;
    .restart local p2    # "timeout":J
    .restart local p4    # "rl":Lorg/jpos/iso/ISOResponseListener;
    .restart local p5    # "handBack":Ljava/lang/Object;
    :cond_2
    new-instance v3, Lorg/jpos/iso/ISOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Duplicate key \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' detected."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "req":Ljava/lang/String;
    .end local p1    # "m":Lorg/jpos/iso/ISOMsg;
    .end local p2    # "timeout":J
    .end local p4    # "rl":Lorg/jpos/iso/ISOResponseListener;
    .end local p5    # "handBack":Ljava/lang/Object;
    throw v3

    .line 195
    .restart local v0    # "key":Ljava/lang/String;
    .restart local v1    # "req":Ljava/lang/String;
    .restart local p1    # "m":Lorg/jpos/iso/ISOMsg;
    .restart local p2    # "timeout":J
    .restart local p4    # "rl":Lorg/jpos/iso/ISOResponseListener;
    .restart local p5    # "handBack":Ljava/lang/Object;
    :catchall_2
    move-exception v3

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v3
.end method

.method public declared-synchronized resetCounters()V
    .locals 2

    monitor-enter p0

    .line 353
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lorg/jpos/q2/iso/QMUX;->rxForwarded:I

    iput v0, p0, Lorg/jpos/q2/iso/QMUX;->rxUnhandled:I

    iput v0, p0, Lorg/jpos/q2/iso/QMUX;->rxPending:I

    iput v0, p0, Lorg/jpos/q2/iso/QMUX;->txExpired:I

    iput v0, p0, Lorg/jpos/q2/iso/QMUX;->rxExpired:I

    iput v0, p0, Lorg/jpos/q2/iso/QMUX;->tx:I

    iput v0, p0, Lorg/jpos/q2/iso/QMUX;->rx:I

    .line 354
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/jpos/q2/iso/QMUX;->lastTxn:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    monitor-exit p0

    return-void

    .line 352
    .end local p0    # "this":Lorg/jpos/q2/iso/QMUX;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public send(Lorg/jpos/iso/ISOMsg;)V
    .locals 2
    .param p1, "m"    # Lorg/jpos/iso/ISOMsg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 456
    invoke-virtual {p0}, Lorg/jpos/q2/iso/QMUX;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lorg/jpos/q2/iso/QMUX;->sp:Lorg/jpos/space/LocalSpace;

    iget-object v1, p0, Lorg/jpos/q2/iso/QMUX;->out:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lorg/jpos/space/LocalSpace;->out(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 459
    return-void

    .line 457
    :cond_0
    new-instance v0, Lorg/jpos/iso/ISOException;

    const-string v1, "MUX is not connected"

    invoke-direct {v0, v1}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized setInQueue(Ljava/lang/String;)V
    .locals 2
    .param p1, "in"    # Ljava/lang/String;

    monitor-enter p0

    .line 301
    :try_start_0
    iput-object p1, p0, Lorg/jpos/q2/iso/QMUX;->in:Ljava/lang/String;

    .line 302
    invoke-virtual {p0}, Lorg/jpos/q2/iso/QMUX;->getPersist()Lorg/jdom2/Element;

    move-result-object v0

    const-string v1, "in"

    invoke-virtual {v0, v1}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jdom2/Element;->setText(Ljava/lang/String;)Lorg/jdom2/Element;

    .line 303
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/jpos/q2/iso/QMUX;->setModified(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    monitor-exit p0

    return-void

    .line 300
    .end local p0    # "this":Lorg/jpos/q2/iso/QMUX;
    .end local p1    # "in":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setOutQueue(Ljava/lang/String;)V
    .locals 2
    .param p1, "out"    # Ljava/lang/String;

    monitor-enter p0

    .line 309
    :try_start_0
    iput-object p1, p0, Lorg/jpos/q2/iso/QMUX;->out:Ljava/lang/String;

    .line 310
    invoke-virtual {p0}, Lorg/jpos/q2/iso/QMUX;->getPersist()Lorg/jdom2/Element;

    move-result-object v0

    const-string v1, "out"

    invoke-virtual {v0, v1}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jdom2/Element;->setText(Ljava/lang/String;)Lorg/jdom2/Element;

    .line 311
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/jpos/q2/iso/QMUX;->setModified(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    monitor-exit p0

    return-void

    .line 308
    .end local p0    # "this":Lorg/jpos/q2/iso/QMUX;
    .end local p1    # "out":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setUnhandledQueue(Ljava/lang/String;)V
    .locals 2
    .param p1, "unhandled"    # Ljava/lang/String;

    monitor-enter p0

    .line 320
    :try_start_0
    iput-object p1, p0, Lorg/jpos/q2/iso/QMUX;->unhandled:Ljava/lang/String;

    .line 321
    invoke-virtual {p0}, Lorg/jpos/q2/iso/QMUX;->getPersist()Lorg/jdom2/Element;

    move-result-object v0

    const-string v1, "unhandled"

    invoke-virtual {v0, v1}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jdom2/Element;->setText(Ljava/lang/String;)Lorg/jdom2/Element;

    .line 322
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/jpos/q2/iso/QMUX;->setModified(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    monitor-exit p0

    return-void

    .line 319
    .end local p0    # "this":Lorg/jpos/q2/iso/QMUX;
    .end local p1    # "unhandled":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public startService()V
    .locals 7

    .line 97
    iget-boolean v0, p0, Lorg/jpos/q2/iso/QMUX;->listenerRegistered:Z

    if-nez v0, :cond_1

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jpos/q2/iso/QMUX;->listenerRegistered:Z

    .line 100
    iget-object v0, p0, Lorg/jpos/q2/iso/QMUX;->sp:Lorg/jpos/space/LocalSpace;

    monitor-enter v0

    .line 101
    :try_start_0
    iget-object v1, p0, Lorg/jpos/q2/iso/QMUX;->sp:Lorg/jpos/space/LocalSpace;

    iget-object v2, p0, Lorg/jpos/q2/iso/QMUX;->in:Ljava/lang/String;

    invoke-static {v1, v2}, Lorg/jpos/space/SpaceUtil;->inpAll(Lorg/jpos/space/Space;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .line 102
    .local v1, "pending":[Ljava/lang/Object;
    iget-object v2, p0, Lorg/jpos/q2/iso/QMUX;->sp:Lorg/jpos/space/LocalSpace;

    iget-object v3, p0, Lorg/jpos/q2/iso/QMUX;->in:Ljava/lang/String;

    invoke-interface {v2, v3, p0}, Lorg/jpos/space/LocalSpace;->addListener(Ljava/lang/Object;Lorg/jpos/space/SpaceListener;)V

    .line 103
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 104
    .local v4, "o":Ljava/lang/Object;
    iget-object v5, p0, Lorg/jpos/q2/iso/QMUX;->sp:Lorg/jpos/space/LocalSpace;

    iget-object v6, p0, Lorg/jpos/q2/iso/QMUX;->in:Ljava/lang/String;

    invoke-interface {v5, v6, v4}, Lorg/jpos/space/LocalSpace;->out(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 103
    .end local v4    # "o":Ljava/lang/Object;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 105
    .end local v1    # "pending":[Ljava/lang/Object;
    :cond_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 107
    :cond_1
    :goto_1
    return-void
.end method

.method public stopService()V
    .locals 2

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jpos/q2/iso/QMUX;->listenerRegistered:Z

    .line 110
    iget-object v0, p0, Lorg/jpos/q2/iso/QMUX;->sp:Lorg/jpos/space/LocalSpace;

    iget-object v1, p0, Lorg/jpos/q2/iso/QMUX;->in:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Lorg/jpos/space/LocalSpace;->removeListener(Ljava/lang/Object;Lorg/jpos/space/SpaceListener;)V

    .line 111
    return-void
.end method
