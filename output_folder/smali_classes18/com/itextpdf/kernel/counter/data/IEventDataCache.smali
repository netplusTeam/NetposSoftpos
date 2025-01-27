.class public interface abstract Lcom/itextpdf/kernel/counter/data/IEventDataCache;
.super Ljava/lang/Object;
.source "IEventDataCache.java"


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
.method public abstract clear()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation
.end method

.method public abstract put(Lcom/itextpdf/kernel/counter/data/EventData;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation
.end method

.method public abstract retrieveNext()Lcom/itextpdf/kernel/counter/data/EventData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation
.end method
