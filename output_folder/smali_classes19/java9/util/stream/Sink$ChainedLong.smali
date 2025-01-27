.class public abstract Ljava9/util/stream/Sink$ChainedLong;
.super Ljava/lang/Object;
.source "Sink.java"

# interfaces
.implements Ljava9/util/stream/Sink$OfLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ChainedLong"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E_OUT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava9/util/stream/Sink$OfLong;"
    }
.end annotation


# instance fields
.field protected final downstream:Ljava9/util/stream/Sink;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava9/util/stream/Sink<",
            "-TE_OUT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava9/util/stream/Sink;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/stream/Sink<",
            "-TE_OUT;>;)V"
        }
    .end annotation

    .line 305
    .local p0, "this":Ljava9/util/stream/Sink$ChainedLong;, "Ljava9/util/stream/Sink$ChainedLong<TE_OUT;>;"
    .local p1, "downstream":Ljava9/util/stream/Sink;, "Ljava9/util/stream/Sink<-TE_OUT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava9/util/stream/Sink;

    iput-object v0, p0, Ljava9/util/stream/Sink$ChainedLong;->downstream:Ljava9/util/stream/Sink;

    .line 307
    return-void
.end method


# virtual methods
.method public begin(J)V
    .locals 1
    .param p1, "size"    # J

    .line 311
    .local p0, "this":Ljava9/util/stream/Sink$ChainedLong;, "Ljava9/util/stream/Sink$ChainedLong<TE_OUT;>;"
    iget-object v0, p0, Ljava9/util/stream/Sink$ChainedLong;->downstream:Ljava9/util/stream/Sink;

    invoke-interface {v0, p1, p2}, Ljava9/util/stream/Sink;->begin(J)V

    .line 312
    return-void
.end method

.method public cancellationRequested()Z
    .locals 1

    .line 321
    .local p0, "this":Ljava9/util/stream/Sink$ChainedLong;, "Ljava9/util/stream/Sink$ChainedLong<TE_OUT;>;"
    iget-object v0, p0, Ljava9/util/stream/Sink$ChainedLong;->downstream:Ljava9/util/stream/Sink;

    invoke-interface {v0}, Ljava9/util/stream/Sink;->cancellationRequested()Z

    move-result v0

    return v0
.end method

.method public end()V
    .locals 1

    .line 316
    .local p0, "this":Ljava9/util/stream/Sink$ChainedLong;, "Ljava9/util/stream/Sink$ChainedLong<TE_OUT;>;"
    iget-object v0, p0, Ljava9/util/stream/Sink$ChainedLong;->downstream:Ljava9/util/stream/Sink;

    invoke-interface {v0}, Ljava9/util/stream/Sink;->end()V

    .line 317
    return-void
.end method
