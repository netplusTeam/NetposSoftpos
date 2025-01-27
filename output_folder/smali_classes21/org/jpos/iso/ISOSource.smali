.class public interface abstract Lorg/jpos/iso/ISOSource;
.super Ljava/lang/Object;
.source "ISOSource.java"


# virtual methods
.method public abstract isConnected()Z
.end method

.method public abstract send(Lorg/jpos/iso/ISOMsg;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jpos/iso/ISOException;
        }
    .end annotation
.end method
