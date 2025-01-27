.class public interface abstract Ljava9/util/stream/Node$Builder$OfLong;
.super Ljava/lang/Object;
.source "Node.java"

# interfaces
.implements Ljava9/util/stream/Node$Builder;
.implements Ljava9/util/stream/Sink$OfLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/stream/Node$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OfLong"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava9/util/stream/Node$Builder<",
        "Ljava/lang/Long;",
        ">;",
        "Ljava9/util/stream/Sink$OfLong;"
    }
.end annotation


# virtual methods
.method public abstract build()Ljava9/util/stream/Node$OfLong;
.end method

.method public bridge synthetic build()Ljava9/util/stream/Node;
    .locals 1

    .line 213
    invoke-interface {p0}, Ljava9/util/stream/Node$Builder$OfLong;->build()Ljava9/util/stream/Node$OfLong;

    move-result-object v0

    return-object v0
.end method
