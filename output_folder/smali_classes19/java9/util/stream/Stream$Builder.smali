.class public interface abstract Ljava9/util/stream/Stream$Builder;
.super Ljava/lang/Object;
.source "Stream.java"

# interfaces
.implements Ljava9/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/stream/Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava9/util/function/Consumer<",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public abstract accept(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public add(Ljava/lang/Object;)Ljava9/util/stream/Stream$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava9/util/stream/Stream$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 1441
    .local p0, "this":Ljava9/util/stream/Stream$Builder;, "Ljava9/util/stream/Stream$Builder<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    invoke-interface {p0, p1}, Ljava9/util/stream/Stream$Builder;->accept(Ljava/lang/Object;)V

    .line 1442
    return-object p0
.end method

.method public abstract build()Ljava9/util/stream/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava9/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation
.end method
