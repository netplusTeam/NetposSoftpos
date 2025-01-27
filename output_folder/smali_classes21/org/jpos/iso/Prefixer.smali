.class public interface abstract Lorg/jpos/iso/Prefixer;
.super Ljava/lang/Object;
.source "Prefixer.java"


# virtual methods
.method public abstract decodeLength([BI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation
.end method

.method public abstract encodeLength(I[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation
.end method

.method public abstract getPackedLength()I
.end method
