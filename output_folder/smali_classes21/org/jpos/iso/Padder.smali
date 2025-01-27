.class public interface abstract Lorg/jpos/iso/Padder;
.super Ljava/lang/Object;
.source "Padder.java"


# virtual methods
.method public abstract pad(Ljava/lang/String;I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation
.end method

.method public abstract unpad(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation
.end method
