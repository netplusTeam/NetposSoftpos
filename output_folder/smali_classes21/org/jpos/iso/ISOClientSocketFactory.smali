.class public interface abstract Lorg/jpos/iso/ISOClientSocketFactory;
.super Ljava/lang/Object;
.source "ISOClientSocketFactory.java"


# virtual methods
.method public abstract createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jpos/iso/ISOException;
        }
    .end annotation
.end method
