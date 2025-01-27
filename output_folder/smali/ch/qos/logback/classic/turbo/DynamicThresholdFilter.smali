.class public Lch/qos/logback/classic/turbo/DynamicThresholdFilter;
.super Lch/qos/logback/classic/turbo/TurboFilter;
.source "DynamicThresholdFilter.java"


# instance fields
.field private defaultThreshold:Lch/qos/logback/classic/Level;

.field private key:Ljava/lang/String;

.field private onHigherOrEqual:Lch/qos/logback/core/spi/FilterReply;

.field private onLower:Lch/qos/logback/core/spi/FilterReply;

.field private valueLevelMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lch/qos/logback/classic/Level;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 127
    invoke-direct {p0}, Lch/qos/logback/classic/turbo/TurboFilter;-><init>()V

    .line 128
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lch/qos/logback/classic/turbo/DynamicThresholdFilter;->valueLevelMap:Ljava/util/Map;

    .line 129
    sget-object v0, Lch/qos/logback/classic/Level;->ERROR:Lch/qos/logback/classic/Level;

    iput-object v0, p0, Lch/qos/logback/classic/turbo/DynamicThresholdFilter;->defaultThreshold:Lch/qos/logback/classic/Level;

    .line 132
    sget-object v0, Lch/qos/logback/core/spi/FilterReply;->NEUTRAL:Lch/qos/logback/core/spi/FilterReply;

    iput-object v0, p0, Lch/qos/logback/classic/turbo/DynamicThresholdFilter;->onHigherOrEqual:Lch/qos/logback/core/spi/FilterReply;

    .line 133
    sget-object v0, Lch/qos/logback/core/spi/FilterReply;->DENY:Lch/qos/logback/core/spi/FilterReply;

    iput-object v0, p0, Lch/qos/logback/classic/turbo/DynamicThresholdFilter;->onLower:Lch/qos/logback/core/spi/FilterReply;

    return-void
.end method


# virtual methods
.method public addMDCValueLevelPair(Lch/qos/logback/classic/turbo/MDCValueLevelPair;)V
    .locals 3
    .param p1, "mdcValueLevelPair"    # Lch/qos/logback/classic/turbo/MDCValueLevelPair;

    .line 196
    iget-object v0, p0, Lch/qos/logback/classic/turbo/DynamicThresholdFilter;->valueLevelMap:Ljava/util/Map;

    invoke-virtual {p1}, Lch/qos/logback/classic/turbo/MDCValueLevelPair;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lch/qos/logback/classic/turbo/MDCValueLevelPair;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " has been already set"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/qos/logback/classic/turbo/DynamicThresholdFilter;->addError(Ljava/lang/String;)V

    goto :goto_0

    .line 199
    :cond_0
    iget-object v0, p0, Lch/qos/logback/classic/turbo/DynamicThresholdFilter;->valueLevelMap:Ljava/util/Map;

    invoke-virtual {p1}, Lch/qos/logback/classic/turbo/MDCValueLevelPair;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lch/qos/logback/classic/turbo/MDCValueLevelPair;->getLevel()Lch/qos/logback/classic/Level;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    :goto_0
    return-void
.end method

.method public decide(Lorg/slf4j/Marker;Lch/qos/logback/classic/Logger;Lch/qos/logback/classic/Level;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)Lch/qos/logback/core/spi/FilterReply;
    .locals 3
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "logger"    # Lch/qos/logback/classic/Logger;
    .param p3, "level"    # Lch/qos/logback/classic/Level;
    .param p4, "s"    # Ljava/lang/String;
    .param p5, "objects"    # [Ljava/lang/Object;
    .param p6, "throwable"    # Ljava/lang/Throwable;

    .line 237
    iget-object v0, p0, Lch/qos/logback/classic/turbo/DynamicThresholdFilter;->key:Ljava/lang/String;

    invoke-static {v0}, Lorg/slf4j/MDC;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, "mdcValue":Ljava/lang/String;
    invoke-virtual {p0}, Lch/qos/logback/classic/turbo/DynamicThresholdFilter;->isStarted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 239
    sget-object v1, Lch/qos/logback/core/spi/FilterReply;->NEUTRAL:Lch/qos/logback/core/spi/FilterReply;

    return-object v1

    .line 242
    :cond_0
    const/4 v1, 0x0

    .line 243
    .local v1, "levelAssociatedWithMDCValue":Lch/qos/logback/classic/Level;
    if-eqz v0, :cond_1

    .line 244
    iget-object v2, p0, Lch/qos/logback/classic/turbo/DynamicThresholdFilter;->valueLevelMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Lch/qos/logback/classic/Level;

    .line 246
    :cond_1
    if-nez v1, :cond_2

    .line 247
    iget-object v1, p0, Lch/qos/logback/classic/turbo/DynamicThresholdFilter;->defaultThreshold:Lch/qos/logback/classic/Level;

    .line 249
    :cond_2
    invoke-virtual {p3, v1}, Lch/qos/logback/classic/Level;->isGreaterOrEqual(Lch/qos/logback/classic/Level;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 250
    iget-object v2, p0, Lch/qos/logback/classic/turbo/DynamicThresholdFilter;->onHigherOrEqual:Lch/qos/logback/core/spi/FilterReply;

    return-object v2

    .line 252
    :cond_3
    iget-object v2, p0, Lch/qos/logback/classic/turbo/DynamicThresholdFilter;->onLower:Lch/qos/logback/core/spi/FilterReply;

    return-object v2
.end method

.method public getDefaultThreshold()Lch/qos/logback/classic/Level;
    .locals 1

    .line 157
    iget-object v0, p0, Lch/qos/logback/classic/turbo/DynamicThresholdFilter;->defaultThreshold:Lch/qos/logback/classic/Level;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 141
    iget-object v0, p0, Lch/qos/logback/classic/turbo/DynamicThresholdFilter;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getOnHigherOrEqual()Lch/qos/logback/core/spi/FilterReply;
    .locals 1

    .line 171
    iget-object v0, p0, Lch/qos/logback/classic/turbo/DynamicThresholdFilter;->onHigherOrEqual:Lch/qos/logback/core/spi/FilterReply;

    return-object v0
.end method

.method public getOnLower()Lch/qos/logback/core/spi/FilterReply;
    .locals 1

    .line 185
    iget-object v0, p0, Lch/qos/logback/classic/turbo/DynamicThresholdFilter;->onLower:Lch/qos/logback/core/spi/FilterReply;

    return-object v0
.end method

.method public setDefaultThreshold(Lch/qos/logback/classic/Level;)V
    .locals 0
    .param p1, "defaultThreshold"    # Lch/qos/logback/classic/Level;

    .line 161
    iput-object p1, p0, Lch/qos/logback/classic/turbo/DynamicThresholdFilter;->defaultThreshold:Lch/qos/logback/classic/Level;

    .line 162
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .line 148
    iput-object p1, p0, Lch/qos/logback/classic/turbo/DynamicThresholdFilter;->key:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public setOnHigherOrEqual(Lch/qos/logback/core/spi/FilterReply;)V
    .locals 0
    .param p1, "onHigherOrEqual"    # Lch/qos/logback/core/spi/FilterReply;

    .line 175
    iput-object p1, p0, Lch/qos/logback/classic/turbo/DynamicThresholdFilter;->onHigherOrEqual:Lch/qos/logback/core/spi/FilterReply;

    .line 176
    return-void
.end method

.method public setOnLower(Lch/qos/logback/core/spi/FilterReply;)V
    .locals 0
    .param p1, "onLower"    # Lch/qos/logback/core/spi/FilterReply;

    .line 189
    iput-object p1, p0, Lch/qos/logback/classic/turbo/DynamicThresholdFilter;->onLower:Lch/qos/logback/core/spi/FilterReply;

    .line 190
    return-void
.end method

.method public start()V
    .locals 1

    .line 208
    iget-object v0, p0, Lch/qos/logback/classic/turbo/DynamicThresholdFilter;->key:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 209
    const-string v0, "No key name was specified"

    invoke-virtual {p0, v0}, Lch/qos/logback/classic/turbo/DynamicThresholdFilter;->addError(Ljava/lang/String;)V

    .line 211
    :cond_0
    invoke-super {p0}, Lch/qos/logback/classic/turbo/TurboFilter;->start()V

    .line 212
    return-void
.end method
