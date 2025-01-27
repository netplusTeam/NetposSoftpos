.class public interface abstract Lorg/jpos/iso/MUX;
.super Ljava/lang/Object;
.source "MUX.java"

# interfaces
.implements Lorg/jpos/iso/ISOSource;


# virtual methods
.method public abstract request(Lorg/jpos/iso/ISOMsg;J)Lorg/jpos/iso/ISOMsg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation
.end method

.method public abstract request(Lorg/jpos/iso/ISOMsg;JLorg/jpos/iso/ISOResponseListener;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation
.end method
