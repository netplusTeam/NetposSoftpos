.class public interface abstract Lorg/jpos/tlv/TagSequence;
.super Ljava/lang/Object;
.source "TagSequence.java"

# interfaces
.implements Lorg/jpos/tlv/TagValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/jpos/tlv/TagValue<",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public abstract add(Lorg/jpos/tlv/TagValue;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jpos/tlv/TagValue<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method public abstract get(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/jpos/tlv/TagValue<",
            "TT;>;>;"
        }
    .end annotation
.end method

.method public abstract getAll()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/jpos/tlv/TagValue<",
            "TT;>;>;>;"
        }
    .end annotation
.end method

.method public abstract getChildren()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/jpos/tlv/TagValue<",
            "TT;>;>;>;"
        }
    .end annotation
.end method

.method public abstract getFirst(Ljava/lang/String;)Lorg/jpos/tlv/TagValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/jpos/tlv/TagValue<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract getOrderedList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jpos/tlv/TagValue<",
            "TT;>;>;"
        }
    .end annotation
.end method

.method public abstract hasTag(Ljava/lang/String;)Z
.end method

.method public abstract readFrom(Lorg/jpos/iso/ISOMsg;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation
.end method

.method public abstract writeTo(Lorg/jpos/iso/ISOMsg;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation
.end method
