.class public interface abstract Lorg/jpos/iso/FilteredChannel;
.super Ljava/lang/Object;
.source "FilteredChannel.java"

# interfaces
.implements Lorg/jpos/iso/ISOChannel;


# virtual methods
.method public abstract addFilter(Lorg/jpos/iso/ISOFilter;)V
.end method

.method public abstract addIncomingFilter(Lorg/jpos/iso/ISOFilter;)V
.end method

.method public abstract addOutgoingFilter(Lorg/jpos/iso/ISOFilter;)V
.end method

.method public abstract getIncomingFilters()Ljava/util/Collection;
.end method

.method public abstract getOutgoingFilters()Ljava/util/Collection;
.end method

.method public abstract removeFilter(Lorg/jpos/iso/ISOFilter;)V
.end method

.method public abstract removeIncomingFilter(Lorg/jpos/iso/ISOFilter;)V
.end method

.method public abstract removeOutgoingFilter(Lorg/jpos/iso/ISOFilter;)V
.end method

.method public abstract setIncomingFilters(Ljava/util/Collection;)V
.end method

.method public abstract setOutgoingFilters(Ljava/util/Collection;)V
.end method
