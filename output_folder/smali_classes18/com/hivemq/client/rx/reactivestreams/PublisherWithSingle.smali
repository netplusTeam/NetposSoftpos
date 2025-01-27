.class public interface abstract Lcom/hivemq/client/rx/reactivestreams/PublisherWithSingle;
.super Ljava/lang/Object;
.source "PublisherWithSingle.java"

# interfaces
.implements Lorg/reactivestreams/Publisher;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/reactivestreams/Publisher<",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public abstract subscribeBoth(Lcom/hivemq/client/rx/reactivestreams/WithSingleSubscriber;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/rx/reactivestreams/WithSingleSubscriber<",
            "-TT;-TS;>;)V"
        }
    .end annotation
.end method
