.class public Lch/qos/logback/classic/sift/MDCBasedDiscriminator;
.super Lch/qos/logback/core/sift/AbstractDiscriminator;
.source "MDCBasedDiscriminator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lch/qos/logback/core/sift/AbstractDiscriminator<",
        "Lch/qos/logback/classic/spi/ILoggingEvent;",
        ">;"
    }
.end annotation


# instance fields
.field private defaultValue:Ljava/lang/String;

.field private key:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lch/qos/logback/core/sift/AbstractDiscriminator;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultValue()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lch/qos/logback/classic/sift/MDCBasedDiscriminator;->defaultValue:Ljava/lang/String;

    return-object v0
.end method

.method public getDiscriminatingValue(Lch/qos/logback/classic/spi/ILoggingEvent;)Ljava/lang/String;
    .locals 3
    .param p1, "event"    # Lch/qos/logback/classic/spi/ILoggingEvent;

    .line 42
    invoke-interface {p1}, Lch/qos/logback/classic/spi/ILoggingEvent;->getMDCPropertyMap()Ljava/util/Map;

    move-result-object v0

    .line 43
    .local v0, "mdcMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 44
    iget-object v1, p0, Lch/qos/logback/classic/sift/MDCBasedDiscriminator;->defaultValue:Ljava/lang/String;

    return-object v1

    .line 46
    :cond_0
    iget-object v1, p0, Lch/qos/logback/classic/sift/MDCBasedDiscriminator;->key:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 47
    .local v1, "mdcValue":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 48
    iget-object v2, p0, Lch/qos/logback/classic/sift/MDCBasedDiscriminator;->defaultValue:Ljava/lang/String;

    return-object v2

    .line 50
    :cond_1
    return-object v1
.end method

.method public bridge synthetic getDiscriminatingValue(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 30
    check-cast p1, Lch/qos/logback/classic/spi/ILoggingEvent;

    invoke-virtual {p0, p1}, Lch/qos/logback/classic/sift/MDCBasedDiscriminator;->getDiscriminatingValue(Lch/qos/logback/classic/spi/ILoggingEvent;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lch/qos/logback/classic/sift/MDCBasedDiscriminator;->key:Ljava/lang/String;

    return-object v0
.end method

.method public setDefaultValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "defaultValue"    # Ljava/lang/String;

    .line 97
    iput-object p1, p0, Lch/qos/logback/classic/sift/MDCBasedDiscriminator;->defaultValue:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .line 75
    iput-object p1, p0, Lch/qos/logback/classic/sift/MDCBasedDiscriminator;->key:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public start()V
    .locals 2

    .line 56
    const/4 v0, 0x0

    .line 57
    .local v0, "errors":I
    iget-object v1, p0, Lch/qos/logback/classic/sift/MDCBasedDiscriminator;->key:Ljava/lang/String;

    invoke-static {v1}, Lch/qos/logback/core/util/OptionHelper;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    add-int/lit8 v0, v0, 0x1

    .line 59
    const-string v1, "The \"Key\" property must be set"

    invoke-virtual {p0, v1}, Lch/qos/logback/classic/sift/MDCBasedDiscriminator;->addError(Ljava/lang/String;)V

    .line 61
    :cond_0
    iget-object v1, p0, Lch/qos/logback/classic/sift/MDCBasedDiscriminator;->defaultValue:Ljava/lang/String;

    invoke-static {v1}, Lch/qos/logback/core/util/OptionHelper;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 62
    add-int/lit8 v0, v0, 0x1

    .line 63
    const-string v1, "The \"DefaultValue\" property must be set"

    invoke-virtual {p0, v1}, Lch/qos/logback/classic/sift/MDCBasedDiscriminator;->addError(Ljava/lang/String;)V

    .line 65
    :cond_1
    if-nez v0, :cond_2

    .line 66
    const/4 v1, 0x1

    iput-boolean v1, p0, Lch/qos/logback/classic/sift/MDCBasedDiscriminator;->started:Z

    .line 68
    :cond_2
    return-void
.end method
