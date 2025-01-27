.class public interface abstract Lorg/jpos/iso/ISOFilter;
.super Ljava/lang/Object;
.source "ISOFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jpos/iso/ISOFilter$VetoException;
    }
.end annotation


# virtual methods
.method public abstract filter(Lorg/jpos/iso/ISOChannel;Lorg/jpos/iso/ISOMsg;Lorg/jpos/util/LogEvent;)Lorg/jpos/iso/ISOMsg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOFilter$VetoException;
        }
    .end annotation
.end method
