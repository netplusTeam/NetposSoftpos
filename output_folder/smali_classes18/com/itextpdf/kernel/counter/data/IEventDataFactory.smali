.class public interface abstract Lcom/itextpdf/kernel/counter/data/IEventDataFactory;
.super Ljava/lang/Object;
.source "IEventDataFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Lcom/itextpdf/kernel/counter/data/EventData<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract create(Lcom/itextpdf/kernel/counter/event/IEvent;Lcom/itextpdf/kernel/counter/event/IMetaInfo;)Lcom/itextpdf/kernel/counter/data/EventData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/counter/event/IEvent;",
            "Lcom/itextpdf/kernel/counter/event/IMetaInfo;",
            ")TV;"
        }
    .end annotation
.end method
