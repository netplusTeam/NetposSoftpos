.class public abstract Lorg/jpos/iso/FilteredBase;
.super Ljava/util/Observable;
.source "FilteredBase.java"

# interfaces
.implements Lorg/jpos/iso/FilteredChannel;
.implements Ljava/lang/Cloneable;


# instance fields
.field protected incomingFilters:Ljava/util/Vector;

.field protected outgoingFilters:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 45
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/jpos/iso/FilteredBase;->incomingFilters:Ljava/util/Vector;

    .line 46
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/jpos/iso/FilteredBase;->outgoingFilters:Ljava/util/Vector;

    .line 47
    return-void
.end method

.method private addFilter(Lorg/jpos/iso/ISOFilter;I)V
    .locals 1
    .param p1, "filter"    # Lorg/jpos/iso/ISOFilter;
    .param p2, "direction"    # I

    .line 54
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 59
    :pswitch_0
    iget-object v0, p0, Lorg/jpos/iso/FilteredBase;->outgoingFilters:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 60
    goto :goto_0

    .line 56
    :pswitch_1
    iget-object v0, p0, Lorg/jpos/iso/FilteredBase;->incomingFilters:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 57
    goto :goto_0

    .line 62
    :pswitch_2
    iget-object v0, p0, Lorg/jpos/iso/FilteredBase;->incomingFilters:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object v0, p0, Lorg/jpos/iso/FilteredBase;->outgoingFilters:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 66
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private removeFilter(Lorg/jpos/iso/ISOFilter;I)V
    .locals 1
    .param p1, "filter"    # Lorg/jpos/iso/ISOFilter;
    .param p2, "direction"    # I

    .line 91
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 96
    :pswitch_0
    iget-object v0, p0, Lorg/jpos/iso/FilteredBase;->outgoingFilters:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 97
    goto :goto_0

    .line 93
    :pswitch_1
    iget-object v0, p0, Lorg/jpos/iso/FilteredBase;->incomingFilters:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 94
    goto :goto_0

    .line 99
    :pswitch_2
    iget-object v0, p0, Lorg/jpos/iso/FilteredBase;->incomingFilters:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 100
    iget-object v0, p0, Lorg/jpos/iso/FilteredBase;->outgoingFilters:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 103
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addFilter(Lorg/jpos/iso/ISOFilter;)V
    .locals 1
    .param p1, "filter"    # Lorg/jpos/iso/ISOFilter;

    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/jpos/iso/FilteredBase;->addFilter(Lorg/jpos/iso/ISOFilter;I)V

    .line 85
    return-void
.end method

.method public addIncomingFilter(Lorg/jpos/iso/ISOFilter;)V
    .locals 1
    .param p1, "filter"    # Lorg/jpos/iso/ISOFilter;

    .line 71
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/jpos/iso/FilteredBase;->addFilter(Lorg/jpos/iso/ISOFilter;I)V

    .line 72
    return-void
.end method

.method public addOutgoingFilter(Lorg/jpos/iso/ISOFilter;)V
    .locals 1
    .param p1, "filter"    # Lorg/jpos/iso/ISOFilter;

    .line 77
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lorg/jpos/iso/FilteredBase;->addFilter(Lorg/jpos/iso/ISOFilter;I)V

    .line 78
    return-void
.end method

.method protected applyIncomingFilters(Lorg/jpos/iso/ISOMsg;Lorg/jpos/util/LogEvent;)Lorg/jpos/iso/ISOMsg;
    .locals 3
    .param p1, "m"    # Lorg/jpos/iso/ISOMsg;
    .param p2, "evt"    # Lorg/jpos/util/LogEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOFilter$VetoException;
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lorg/jpos/iso/FilteredBase;->incomingFilters:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 139
    .local v0, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 140
    invoke-virtual {p1, v2}, Lorg/jpos/iso/ISOMsg;->setDirection(I)V

    .line 141
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jpos/iso/ISOFilter;

    invoke-interface {v1, p0, p1, p2}, Lorg/jpos/iso/ISOFilter;->filter(Lorg/jpos/iso/ISOChannel;Lorg/jpos/iso/ISOMsg;Lorg/jpos/util/LogEvent;)Lorg/jpos/iso/ISOMsg;

    move-result-object p1

    goto :goto_0

    .line 143
    :cond_0
    invoke-virtual {p1, v2}, Lorg/jpos/iso/ISOMsg;->setDirection(I)V

    .line 144
    invoke-virtual {p0}, Lorg/jpos/iso/FilteredBase;->setChanged()V

    .line 145
    invoke-virtual {p0, p1}, Lorg/jpos/iso/FilteredBase;->notifyObservers(Ljava/lang/Object;)V

    .line 146
    return-object p1
.end method

.method protected applyOutgoingFilters(Lorg/jpos/iso/ISOMsg;Lorg/jpos/util/LogEvent;)Lorg/jpos/iso/ISOMsg;
    .locals 3
    .param p1, "m"    # Lorg/jpos/iso/ISOMsg;
    .param p2, "evt"    # Lorg/jpos/util/LogEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOFilter$VetoException;
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lorg/jpos/iso/FilteredBase;->outgoingFilters:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 126
    .local v0, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_0

    .line 127
    invoke-virtual {p1, v2}, Lorg/jpos/iso/ISOMsg;->setDirection(I)V

    .line 128
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jpos/iso/ISOFilter;

    invoke-interface {v1, p0, p1, p2}, Lorg/jpos/iso/ISOFilter;->filter(Lorg/jpos/iso/ISOChannel;Lorg/jpos/iso/ISOMsg;Lorg/jpos/util/LogEvent;)Lorg/jpos/iso/ISOMsg;

    move-result-object p1

    goto :goto_0

    .line 130
    :cond_0
    invoke-virtual {p1, v2}, Lorg/jpos/iso/ISOMsg;->setDirection(I)V

    .line 131
    invoke-virtual {p0}, Lorg/jpos/iso/FilteredBase;->setChanged()V

    .line 132
    invoke-virtual {p0, p1}, Lorg/jpos/iso/FilteredBase;->notifyObservers(Ljava/lang/Object;)V

    .line 133
    return-object p1
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .line 163
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    throw v1
.end method

.method public getIncomingFilters()Ljava/util/Collection;
    .locals 1

    .line 149
    iget-object v0, p0, Lorg/jpos/iso/FilteredBase;->incomingFilters:Ljava/util/Vector;

    return-object v0
.end method

.method public getOutgoingFilters()Ljava/util/Collection;
    .locals 1

    .line 152
    iget-object v0, p0, Lorg/jpos/iso/FilteredBase;->outgoingFilters:Ljava/util/Vector;

    return-object v0
.end method

.method public removeFilter(Lorg/jpos/iso/ISOFilter;)V
    .locals 1
    .param p1, "filter"    # Lorg/jpos/iso/ISOFilter;

    .line 108
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/jpos/iso/FilteredBase;->removeFilter(Lorg/jpos/iso/ISOFilter;I)V

    .line 109
    return-void
.end method

.method public removeIncomingFilter(Lorg/jpos/iso/ISOFilter;)V
    .locals 1
    .param p1, "filter"    # Lorg/jpos/iso/ISOFilter;

    .line 114
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/jpos/iso/FilteredBase;->removeFilter(Lorg/jpos/iso/ISOFilter;I)V

    .line 115
    return-void
.end method

.method public removeOutgoingFilter(Lorg/jpos/iso/ISOFilter;)V
    .locals 1
    .param p1, "filter"    # Lorg/jpos/iso/ISOFilter;

    .line 120
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lorg/jpos/iso/FilteredBase;->removeFilter(Lorg/jpos/iso/ISOFilter;I)V

    .line 121
    return-void
.end method

.method public setIncomingFilters(Ljava/util/Collection;)V
    .locals 1
    .param p1, "filters"    # Ljava/util/Collection;

    .line 155
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, p1}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/jpos/iso/FilteredBase;->incomingFilters:Ljava/util/Vector;

    .line 156
    return-void
.end method

.method public setOutgoingFilters(Ljava/util/Collection;)V
    .locals 1
    .param p1, "filters"    # Ljava/util/Collection;

    .line 158
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, p1}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/jpos/iso/FilteredBase;->outgoingFilters:Ljava/util/Vector;

    .line 159
    return-void
.end method
