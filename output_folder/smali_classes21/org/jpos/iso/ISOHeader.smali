.class public interface abstract Lorg/jpos/iso/ISOHeader;
.super Ljava/lang/Object;
.source "ISOHeader.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# virtual methods
.method public abstract clone()Ljava/lang/Object;
.end method

.method public abstract getDestination()Ljava/lang/String;
.end method

.method public abstract getLength()I
.end method

.method public abstract getSource()Ljava/lang/String;
.end method

.method public abstract pack()[B
.end method

.method public abstract setDestination(Ljava/lang/String;)V
.end method

.method public abstract setSource(Ljava/lang/String;)V
.end method

.method public abstract swapDirection()V
.end method

.method public abstract unpack([B)I
.end method
