.class public interface abstract Lorg/jpos/iso/RawIncomingFilter;
.super Ljava/lang/Object;
.source "RawIncomingFilter.java"

# interfaces
.implements Lorg/jpos/iso/ISOFilter;


# virtual methods
.method public abstract filter(Lorg/jpos/iso/ISOChannel;Lorg/jpos/iso/ISOMsg;[B[BLorg/jpos/util/LogEvent;)Lorg/jpos/iso/ISOMsg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOFilter$VetoException;
        }
    .end annotation
.end method
