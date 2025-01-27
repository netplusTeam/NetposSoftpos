.class public Lorg/jpos/transaction/participant/SelectDestination;
.super Ljava/lang/Object;
.source "SelectDestination.java"

# interfaces
.implements Lorg/jpos/transaction/TransactionParticipant;
.implements Lorg/jpos/core/Configurable;
.implements Lorg/jpos/core/XmlConfigurable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jpos/transaction/participant/SelectDestination$PanRegExp;,
        Lorg/jpos/transaction/participant/SelectDestination$BinRange;
    }
.end annotation


# instance fields
.field private binranges:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/jpos/transaction/participant/SelectDestination$BinRange;",
            ">;"
        }
    .end annotation
.end field

.field private defaultDestination:Ljava/lang/String;

.field private destinationName:Ljava/lang/String;

.field private failOnNoRoute:Z

.field private regexps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jpos/transaction/participant/SelectDestination$PanRegExp;",
            ">;"
        }
    .end annotation
.end field

.field private requestName:Ljava/lang/String;

.field private validator:Lorg/jpos/core/CardValidator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lorg/jpos/transaction/participant/SelectDestination;->binranges:Ljava/util/Set;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jpos/transaction/participant/SelectDestination;->regexps:Ljava/util/List;

    return-void
.end method

.method private getDestination(Lorg/jpos/core/Card;)Ljava/lang/String;
    .locals 2
    .param p1, "card"    # Lorg/jpos/core/Card;

    .line 125
    invoke-virtual {p1}, Lorg/jpos/core/Card;->getPan()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jpos/transaction/participant/SelectDestination;->getDestinationByRegExp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "destination":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 127
    invoke-virtual {p1}, Lorg/jpos/core/Card;->getPanAsNumber()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/jpos/transaction/participant/SelectDestination;->getDestinationByPanNumber(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v0

    .line 128
    :cond_0
    return-object v0
.end method

.method private getDestinationByPanNumber(Ljava/math/BigInteger;)Ljava/lang/String;
    .locals 3
    .param p1, "pan"    # Ljava/math/BigInteger;

    .line 132
    invoke-static {p1}, Lorg/jpos/transaction/participant/SelectDestination$BinRange;->floor(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 133
    .local v0, "p":Ljava/math/BigInteger;
    iget-object v1, p0, Lorg/jpos/transaction/participant/SelectDestination;->binranges:Ljava/util/Set;

    .line 134
    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/jpos/transaction/participant/SelectDestination$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lorg/jpos/transaction/participant/SelectDestination$$ExternalSyntheticLambda0;-><init>(Ljava/math/BigInteger;)V

    .line 135
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 136
    invoke-interface {v1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lorg/jpos/transaction/participant/SelectDestination$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lorg/jpos/transaction/participant/SelectDestination$$ExternalSyntheticLambda1;-><init>()V

    .line 137
    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 133
    return-object v1
.end method

.method private getDestinationByRegExp(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "pan"    # Ljava/lang/String;

    .line 141
    iget-object v0, p0, Lorg/jpos/transaction/participant/SelectDestination;->regexps:Ljava/util/List;

    .line 142
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/jpos/transaction/participant/SelectDestination$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lorg/jpos/transaction/participant/SelectDestination$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    .line 143
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 144
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/jpos/transaction/participant/SelectDestination$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lorg/jpos/transaction/participant/SelectDestination$$ExternalSyntheticLambda3;-><init>()V

    .line 145
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 141
    return-object v0
.end method

.method static synthetic lambda$getDestinationByPanNumber$0(Ljava/math/BigInteger;Lorg/jpos/transaction/participant/SelectDestination$BinRange;)Z
    .locals 1
    .param p0, "p"    # Ljava/math/BigInteger;
    .param p1, "r"    # Lorg/jpos/transaction/participant/SelectDestination$BinRange;

    .line 135
    invoke-virtual {p1, p0}, Lorg/jpos/transaction/participant/SelectDestination$BinRange;->isInRange(Ljava/math/BigInteger;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$getDestinationByRegExp$1(Ljava/lang/String;Lorg/jpos/transaction/participant/SelectDestination$PanRegExp;)Z
    .locals 1
    .param p0, "pan"    # Ljava/lang/String;
    .param p1, "r"    # Lorg/jpos/transaction/participant/SelectDestination$PanRegExp;

    .line 143
    invoke-virtual {p1, p0}, Lorg/jpos/transaction/participant/SelectDestination$PanRegExp;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public prepare(JLjava/io/Serializable;)I
    .locals 9
    .param p1, "id"    # J
    .param p3, "context"    # Ljava/io/Serializable;

    .line 53
    move-object v0, p3

    check-cast v0, Lorg/jpos/transaction/Context;

    .line 54
    .local v0, "ctx":Lorg/jpos/transaction/Context;
    iget-object v1, p0, Lorg/jpos/transaction/participant/SelectDestination;->requestName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/jpos/transaction/Context;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jpos/iso/ISOMsg;

    .line 55
    .local v1, "m":Lorg/jpos/iso/ISOMsg;
    const/4 v2, 0x0

    .line 56
    .local v2, "destinationSet":Z
    const/4 v3, 0x0

    if-eqz v1, :cond_2

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Lorg/jpos/iso/ISOMsg;->hasField(I)Z

    move-result v4

    if-nez v4, :cond_0

    const/16 v4, 0x23

    invoke-virtual {v1, v4}, Lorg/jpos/iso/ISOMsg;->hasField(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 58
    :cond_0
    :try_start_0
    invoke-static {}, Lorg/jpos/core/Card;->builder()Lorg/jpos/core/Card$Builder;

    move-result-object v4

    iget-object v5, p0, Lorg/jpos/transaction/participant/SelectDestination;->validator:Lorg/jpos/core/CardValidator;

    invoke-virtual {v4, v5}, Lorg/jpos/core/Card$Builder;->validator(Lorg/jpos/core/CardValidator;)Lorg/jpos/core/Card$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/jpos/core/Card$Builder;->isomsg(Lorg/jpos/iso/ISOMsg;)Lorg/jpos/core/Card$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jpos/core/Card$Builder;->build()Lorg/jpos/core/Card;

    move-result-object v4

    .line 59
    .local v4, "card":Lorg/jpos/core/Card;
    invoke-direct {p0, v4}, Lorg/jpos/transaction/participant/SelectDestination;->getDestination(Lorg/jpos/core/Card;)Ljava/lang/String;

    move-result-object v5

    .line 60
    .local v5, "destination":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 61
    iget-object v6, p0, Lorg/jpos/transaction/participant/SelectDestination;->destinationName:Ljava/lang/String;

    invoke-virtual {v0, v6, v5}, Lorg/jpos/transaction/Context;->put(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/jpos/core/InvalidCardException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    const/4 v2, 0x1

    .line 68
    .end local v4    # "card":Lorg/jpos/core/Card;
    .end local v5    # "destination":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 64
    :catch_0
    move-exception v4

    .line 65
    .local v4, "ex":Lorg/jpos/core/InvalidCardException;
    invoke-virtual {v0}, Lorg/jpos/transaction/Context;->getResult()Lorg/jpos/rc/Result;

    move-result-object v5

    sget-object v6, Lorg/jpos/rc/CMF;->INVALID_CARD_OR_CARDHOLDER_NUMBER:Lorg/jpos/rc/CMF;

    .line 66
    invoke-static {}, Lorg/jpos/util/Caller;->info()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lorg/jpos/core/InvalidCardException;->getMessage()Ljava/lang/String;

    move-result-object v8

    new-array v3, v3, [Ljava/lang/Object;

    .line 65
    invoke-virtual {v5, v6, v7, v8, v3}, Lorg/jpos/rc/Result;->fail(Lorg/jpos/rc/IRC;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lorg/jpos/rc/Result;

    move-result-object v3

    .line 67
    invoke-virtual {v3}, Lorg/jpos/rc/Result;->FAIL()I

    move-result v3

    .line 65
    return v3

    .line 70
    .end local v4    # "ex":Lorg/jpos/core/InvalidCardException;
    :cond_2
    :goto_0
    if-nez v2, :cond_3

    iget-object v4, p0, Lorg/jpos/transaction/participant/SelectDestination;->destinationName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lorg/jpos/transaction/Context;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_3

    .line 71
    iget-object v4, p0, Lorg/jpos/transaction/participant/SelectDestination;->destinationName:Ljava/lang/String;

    iget-object v5, p0, Lorg/jpos/transaction/participant/SelectDestination;->defaultDestination:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lorg/jpos/transaction/Context;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 72
    :cond_3
    iget-boolean v4, p0, Lorg/jpos/transaction/participant/SelectDestination;->failOnNoRoute:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lorg/jpos/transaction/participant/SelectDestination;->destinationName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lorg/jpos/transaction/Context;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_4

    .line 73
    invoke-virtual {v0}, Lorg/jpos/transaction/Context;->getResult()Lorg/jpos/rc/Result;

    move-result-object v4

    sget-object v5, Lorg/jpos/rc/CMF;->ROUTING_ERROR:Lorg/jpos/rc/CMF;

    invoke-static {}, Lorg/jpos/util/Caller;->info()Ljava/lang/String;

    move-result-object v6

    new-array v3, v3, [Ljava/lang/Object;

    const-string v7, "No routing info"

    invoke-virtual {v4, v5, v6, v7, v3}, Lorg/jpos/rc/Result;->fail(Lorg/jpos/rc/IRC;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lorg/jpos/rc/Result;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jpos/rc/Result;->FAIL()I

    move-result v3

    return v3

    .line 75
    :cond_4
    const/16 v3, 0xc1

    return v3
.end method

.method public setConfiguration(Lorg/jdom2/Element;)V
    .locals 8
    .param p1, "xml"    # Lorg/jdom2/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 102
    const-string v0, "endpoint"

    invoke-virtual {p1, v0}, Lorg/jdom2/Element;->getChildren(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "destination"

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jdom2/Element;

    .line 103
    .local v1, "ep":Lorg/jdom2/Element;
    invoke-static {v1, v2}, Lorg/jpos/q2/QFactory;->getAttributeValue(Lorg/jdom2/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 104
    .local v2, "destination":Ljava/lang/String;
    new-instance v3, Ljava/util/StringTokenizer;

    invoke-virtual {v1}, Lorg/jdom2/Element;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 105
    .local v3, "st":Ljava/util/StringTokenizer;
    :goto_1
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 106
    new-instance v4, Lorg/jpos/transaction/participant/SelectDestination$BinRange;

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Lorg/jpos/transaction/participant/SelectDestination$BinRange;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .local v4, "br":Lorg/jpos/transaction/participant/SelectDestination$BinRange;
    iget-object v5, p0, Lorg/jpos/transaction/participant/SelectDestination;->binranges:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 108
    .end local v4    # "br":Lorg/jpos/transaction/participant/SelectDestination$BinRange;
    goto :goto_1

    .line 109
    .end local v1    # "ep":Lorg/jdom2/Element;
    .end local v2    # "destination":Ljava/lang/String;
    .end local v3    # "st":Ljava/util/StringTokenizer;
    :cond_0
    goto :goto_0

    .line 110
    :cond_1
    const-string v0, "regexp"

    invoke-virtual {p1, v0}, Lorg/jdom2/Element;->getChildren(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jdom2/Element;

    .line 111
    .local v1, "re":Lorg/jdom2/Element;
    invoke-static {v1, v2}, Lorg/jpos/q2/QFactory;->getAttributeValue(Lorg/jdom2/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 112
    .local v3, "destination":Ljava/lang/String;
    iget-object v4, p0, Lorg/jpos/transaction/participant/SelectDestination;->regexps:Ljava/util/List;

    new-instance v5, Lorg/jpos/transaction/participant/SelectDestination$PanRegExp;

    .line 113
    invoke-static {v1, v2}, Lorg/jpos/q2/QFactory;->getAttributeValue(Lorg/jdom2/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lorg/jdom2/Element;->getTextTrim()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/jpos/transaction/participant/SelectDestination$PanRegExp;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    .end local v1    # "re":Lorg/jdom2/Element;
    .end local v3    # "destination":Ljava/lang/String;
    goto :goto_2

    .line 116
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Q2"

    invoke-static {v1, v0}, Lorg/jpos/util/Log;->getLog(Ljava/lang/String;Ljava/lang/String;)Lorg/jpos/util/Log;

    move-result-object v0

    const-string v1, "config"

    invoke-virtual {v0, v1}, Lorg/jpos/util/Log;->createLogEvent(Ljava/lang/String;)Lorg/jpos/util/LogEvent;

    move-result-object v0

    .line 117
    .local v0, "evt":Lorg/jpos/util/LogEvent;
    iget-object v1, p0, Lorg/jpos/transaction/participant/SelectDestination;->regexps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jpos/transaction/participant/SelectDestination$PanRegExp;

    .line 118
    .local v2, "r":Lorg/jpos/transaction/participant/SelectDestination$PanRegExp;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "00:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .end local v2    # "r":Lorg/jpos/transaction/participant/SelectDestination$PanRegExp;
    goto :goto_3

    .line 119
    :cond_3
    iget-object v1, p0, Lorg/jpos/transaction/participant/SelectDestination;->binranges:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jpos/transaction/participant/SelectDestination$BinRange;

    .line 120
    .local v2, "r":Lorg/jpos/transaction/participant/SelectDestination$BinRange;
    invoke-virtual {v0, v2}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .end local v2    # "r":Lorg/jpos/transaction/participant/SelectDestination$BinRange;
    goto :goto_4

    .line 121
    :cond_4
    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 122
    return-void
.end method

.method public setConfiguration(Lorg/jpos/core/Configuration;)V
    .locals 2
    .param p1, "cfg"    # Lorg/jpos/core/Configuration;

    .line 79
    sget-object v0, Lorg/jpos/transaction/ContextConstants;->REQUEST:Lorg/jpos/transaction/ContextConstants;

    invoke-virtual {v0}, Lorg/jpos/transaction/ContextConstants;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "request"

    invoke-interface {p1, v1, v0}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/transaction/participant/SelectDestination;->requestName:Ljava/lang/String;

    .line 80
    sget-object v0, Lorg/jpos/transaction/ContextConstants;->DESTINATION:Lorg/jpos/transaction/ContextConstants;

    invoke-virtual {v0}, Lorg/jpos/transaction/ContextConstants;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "destination"

    invoke-interface {p1, v1, v0}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/transaction/participant/SelectDestination;->destinationName:Ljava/lang/String;

    .line 81
    const-string v0, "default-destination"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/transaction/participant/SelectDestination;->defaultDestination:Ljava/lang/String;

    .line 82
    const-string v0, "ignore-luhn"

    invoke-interface {p1, v0}, Lorg/jpos/core/Configuration;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/jpos/core/IgnoreLuhnCardValidator;

    invoke-direct {v0}, Lorg/jpos/core/IgnoreLuhnCardValidator;-><init>()V

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/jpos/core/Card$Builder;->DEFAULT_CARD_VALIDATOR:Lorg/jpos/core/CardValidator;

    :goto_0
    iput-object v0, p0, Lorg/jpos/transaction/participant/SelectDestination;->validator:Lorg/jpos/core/CardValidator;

    .line 84
    const-string v0, "fail"

    invoke-interface {p1, v0}, Lorg/jpos/core/Configuration;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/jpos/transaction/participant/SelectDestination;->failOnNoRoute:Z

    .line 85
    return-void
.end method
