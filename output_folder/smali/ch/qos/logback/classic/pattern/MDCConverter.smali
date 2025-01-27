.class public Lch/qos/logback/classic/pattern/MDCConverter;
.super Lch/qos/logback/classic/pattern/ClassicConverter;
.source "MDCConverter.java"


# instance fields
.field private defaultValue:Ljava/lang/String;

.field private key:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lch/qos/logback/classic/pattern/ClassicConverter;-><init>()V

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lch/qos/logback/classic/pattern/MDCConverter;->defaultValue:Ljava/lang/String;

    return-void
.end method

.method private outputMDCForAllKeys(Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 68
    .local p1, "mdcPropertyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 70
    .local v1, "first":Z
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 71
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 72
    const/4 v1, 0x0

    goto :goto_1

    .line 74
    :cond_0
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    :goto_1
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x3d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 79
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public convert(Lch/qos/logback/classic/spi/ILoggingEvent;)Ljava/lang/String;
    .locals 3
    .param p1, "event"    # Lch/qos/logback/classic/spi/ILoggingEvent;

    .line 45
    invoke-interface {p1}, Lch/qos/logback/classic/spi/ILoggingEvent;->getMDCPropertyMap()Ljava/util/Map;

    move-result-object v0

    .line 47
    .local v0, "mdcPropertyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 48
    iget-object v1, p0, Lch/qos/logback/classic/pattern/MDCConverter;->defaultValue:Ljava/lang/String;

    return-object v1

    .line 51
    :cond_0
    iget-object v1, p0, Lch/qos/logback/classic/pattern/MDCConverter;->key:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 52
    invoke-direct {p0, v0}, Lch/qos/logback/classic/pattern/MDCConverter;->outputMDCForAllKeys(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 55
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 56
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 57
    return-object v1

    .line 59
    :cond_2
    iget-object v2, p0, Lch/qos/logback/classic/pattern/MDCConverter;->defaultValue:Ljava/lang/String;

    return-object v2
.end method

.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 22
    check-cast p1, Lch/qos/logback/classic/spi/ILoggingEvent;

    invoke-virtual {p0, p1}, Lch/qos/logback/classic/pattern/MDCConverter;->convert(Lch/qos/logback/classic/spi/ILoggingEvent;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public start()V
    .locals 3

    .line 29
    invoke-virtual {p0}, Lch/qos/logback/classic/pattern/MDCConverter;->getFirstOption()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lch/qos/logback/core/util/OptionHelper;->extractDefaultReplacement(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, "keyInfo":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lch/qos/logback/classic/pattern/MDCConverter;->key:Ljava/lang/String;

    .line 31
    const/4 v1, 0x1

    aget-object v2, v0, v1

    if-eqz v2, :cond_0

    .line 32
    aget-object v1, v0, v1

    iput-object v1, p0, Lch/qos/logback/classic/pattern/MDCConverter;->defaultValue:Ljava/lang/String;

    .line 34
    :cond_0
    invoke-super {p0}, Lch/qos/logback/classic/pattern/ClassicConverter;->start()V

    .line 35
    return-void
.end method

.method public stop()V
    .locals 1

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lch/qos/logback/classic/pattern/MDCConverter;->key:Ljava/lang/String;

    .line 40
    invoke-super {p0}, Lch/qos/logback/classic/pattern/ClassicConverter;->stop()V

    .line 41
    return-void
.end method
