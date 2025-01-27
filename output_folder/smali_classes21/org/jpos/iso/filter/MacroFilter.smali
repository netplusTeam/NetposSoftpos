.class public Lorg/jpos/iso/filter/MacroFilter;
.super Ljava/lang/Object;
.source "MacroFilter.java"

# interfaces
.implements Lorg/jpos/iso/ISOFilter;
.implements Lorg/jpos/core/Configurable;


# instance fields
.field cfg:Lorg/jpos/core/Configuration;

.field seq:Lorg/jpos/core/Sequencer;

.field unsetFields:[Ljava/lang/String;

.field validFields:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lorg/jpos/iso/filter/MacroFilter;->unsetFields:[Ljava/lang/String;

    .line 39
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/jpos/iso/filter/MacroFilter;->validFields:[Ljava/lang/String;

    .line 42
    return-void
.end method

.method private applyProps(Lorg/jpos/iso/ISOMsg;)V
    .locals 8
    .param p1, "m"    # Lorg/jpos/iso/ISOMsg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 89
    invoke-virtual {p1}, Lorg/jpos/iso/ISOMsg;->getMaxField()I

    move-result v0

    .line 90
    .local v0, "maxField":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-gt v1, v0, :cond_6

    .line 91
    const/4 v2, 0x0

    .line 92
    .local v2, "o":Ljava/lang/Object;
    invoke-virtual {p1, v1}, Lorg/jpos/iso/ISOMsg;->hasField(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 93
    invoke-virtual {p1, v1}, Lorg/jpos/iso/ISOMsg;->getValue(I)Ljava/lang/Object;

    move-result-object v2

    .line 94
    :cond_0
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 95
    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    .line 96
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 97
    goto/16 :goto_1

    .line 98
    :cond_1
    const-string v4, "$date"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 99
    new-instance v4, Lorg/jpos/iso/ISOField;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-static {v5}, Lorg/jpos/iso/ISODate;->getDateTime(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Lorg/jpos/iso/ISOField;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v4}, Lorg/jpos/iso/ISOMsg;->set(Lorg/jpos/iso/ISOComponent;)V

    goto :goto_1

    .line 100
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "GMT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 101
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 102
    .local v4, "zoneID":Ljava/lang/String;
    new-instance v5, Lorg/jpos/iso/ISOField;

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/jpos/iso/ISODate;->getDateTime(Ljava/util/Date;Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v1, v6}, Lorg/jpos/iso/ISOField;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v5}, Lorg/jpos/iso/ISOMsg;->set(Lorg/jpos/iso/ISOComponent;)V

    .line 103
    .end local v4    # "zoneID":Ljava/lang/String;
    goto :goto_1

    .line 104
    :cond_3
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x23

    const/4 v7, 0x1

    if-ne v5, v6, :cond_4

    .line 105
    new-instance v4, Lorg/jpos/iso/ISOField;

    iget-object v5, p0, Lorg/jpos/iso/filter/MacroFilter;->seq:Lorg/jpos/core/Sequencer;

    .line 107
    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/jpos/core/Sequencer;->get(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x6

    .line 106
    invoke-static {v5, v6}, Lorg/jpos/iso/ISOUtil;->zeropad(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Lorg/jpos/iso/ISOField;-><init>(ILjava/lang/String;)V

    .line 105
    invoke-virtual {p1, v4}, Lorg/jpos/iso/ISOMsg;->set(Lorg/jpos/iso/ISOComponent;)V

    goto :goto_1

    .line 110
    :cond_4
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x24

    if-ne v4, v5, :cond_5

    .line 111
    iget-object v4, p0, Lorg/jpos/iso/filter/MacroFilter;->cfg:Lorg/jpos/core/Configuration;

    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 112
    .local v4, "p":Ljava/lang/String;
    if-eqz v4, :cond_5

    .line 113
    new-instance v5, Lorg/jpos/iso/ISOField;

    invoke-direct {v5, v1, v4}, Lorg/jpos/iso/ISOField;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v5}, Lorg/jpos/iso/ISOMsg;->set(Lorg/jpos/iso/ISOComponent;)V

    .line 90
    .end local v2    # "o":Ljava/lang/Object;
    .end local v3    # "value":Ljava/lang/String;
    .end local v4    # "p":Ljava/lang/String;
    :cond_5
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 117
    .end local v1    # "i":I
    :cond_6
    return-void
.end method


# virtual methods
.method public filter(Lorg/jpos/iso/ISOChannel;Lorg/jpos/iso/ISOMsg;Lorg/jpos/util/LogEvent;)Lorg/jpos/iso/ISOMsg;
    .locals 2
    .param p1, "channel"    # Lorg/jpos/iso/ISOChannel;
    .param p2, "m"    # Lorg/jpos/iso/ISOMsg;
    .param p3, "evt"    # Lorg/jpos/util/LogEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOFilter$VetoException;
        }
    .end annotation

    .line 77
    :try_start_0
    invoke-direct {p0, p2}, Lorg/jpos/iso/filter/MacroFilter;->applyProps(Lorg/jpos/iso/ISOMsg;)V

    .line 78
    iget-object v0, p0, Lorg/jpos/iso/filter/MacroFilter;->validFields:[Ljava/lang/String;

    array-length v1, v0

    if-lez v1, :cond_0

    .line 79
    invoke-virtual {p2, v0}, Lorg/jpos/iso/ISOMsg;->clone([Ljava/lang/String;)Lorg/jpos/iso/ISOMsg;

    move-result-object v0

    move-object p2, v0

    .line 80
    :cond_0
    iget-object v0, p0, Lorg/jpos/iso/filter/MacroFilter;->unsetFields:[Ljava/lang/String;

    array-length v1, v0

    if-lez v1, :cond_1

    .line 81
    invoke-virtual {p2, v0}, Lorg/jpos/iso/ISOMsg;->unset([Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/jpos/iso/ISOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :cond_1
    nop

    .line 86
    return-object p2

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Lorg/jpos/iso/ISOException;
    invoke-virtual {p3, v0}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 84
    new-instance v1, Lorg/jpos/iso/ISOFilter$VetoException;

    invoke-direct {v1, v0}, Lorg/jpos/iso/ISOFilter$VetoException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public setConfiguration(Lorg/jpos/core/Configuration;)V
    .locals 4
    .param p1, "cfg"    # Lorg/jpos/core/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 56
    const-string v0, ""

    const-string v1, "sequencer"

    iput-object p1, p0, Lorg/jpos/iso/filter/MacroFilter;->cfg:Lorg/jpos/core/Configuration;

    .line 58
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {p1, v1, v2}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 59
    .local v2, "seqName":Ljava/lang/String;
    const-string v3, "unset"

    invoke-interface {p1, v3, v0}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/jpos/iso/ISOUtil;->toStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/jpos/iso/filter/MacroFilter;->unsetFields:[Ljava/lang/String;

    .line 60
    const-string v3, "valid"

    invoke-interface {p1, v3, v0}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jpos/iso/ISOUtil;->toStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/iso/filter/MacroFilter;->validFields:[Ljava/lang/String;

    .line 61
    if-eqz v2, :cond_0

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sequencer."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 63
    invoke-interface {p1, v1}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-static {v0}, Lorg/jpos/util/NameRegistrar;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jpos/core/Sequencer;

    iput-object v0, p0, Lorg/jpos/iso/filter/MacroFilter;->seq:Lorg/jpos/core/Sequencer;

    goto :goto_0

    .line 65
    :cond_0
    iget-object v0, p0, Lorg/jpos/iso/filter/MacroFilter;->seq:Lorg/jpos/core/Sequencer;

    if-nez v0, :cond_1

    .line 66
    new-instance v0, Lorg/jpos/core/VolatileSequencer;

    invoke-direct {v0}, Lorg/jpos/core/VolatileSequencer;-><init>()V

    iput-object v0, p0, Lorg/jpos/iso/filter/MacroFilter;->seq:Lorg/jpos/core/Sequencer;
    :try_end_0
    .catch Lorg/jpos/util/NameRegistrar$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .end local v2    # "seqName":Ljava/lang/String;
    :cond_1
    :goto_0
    nop

    .line 71
    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Lorg/jpos/util/NameRegistrar$NotFoundException;
    new-instance v1, Lorg/jpos/core/ConfigurationException;

    invoke-direct {v1, v0}, Lorg/jpos/core/ConfigurationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
