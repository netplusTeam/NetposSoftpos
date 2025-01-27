.class public interface abstract Ljava9/util/stream/DoubleStream$Builder;
.super Ljava/lang/Object;
.source "DoubleStream.java"

# interfaces
.implements Ljava9/util/function/DoubleConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/stream/DoubleStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Builder"
.end annotation


# virtual methods
.method public abstract accept(D)V
.end method

.method public add(D)Ljava9/util/stream/DoubleStream$Builder;
    .locals 0
    .param p1, "t"    # D

    .line 1170
    invoke-interface {p0, p1, p2}, Ljava9/util/stream/DoubleStream$Builder;->accept(D)V

    .line 1171
    return-object p0
.end method

.method public abstract build()Ljava9/util/stream/DoubleStream;
.end method
