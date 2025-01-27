.class public final synthetic Ljava9/util/stream/StreamSpliterators$DoubleWrappingSpliterator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava9/util/stream/Sink$OfDouble;


# instance fields
.field public final synthetic f$0:Ljava9/util/stream/SpinedBuffer$OfDouble;


# direct methods
.method public synthetic constructor <init>(Ljava9/util/stream/SpinedBuffer$OfDouble;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava9/util/stream/StreamSpliterators$DoubleWrappingSpliterator$$ExternalSyntheticLambda0;->f$0:Ljava9/util/stream/SpinedBuffer$OfDouble;

    return-void
.end method


# virtual methods
.method public final accept(D)V
    .locals 1

    iget-object v0, p0, Ljava9/util/stream/StreamSpliterators$DoubleWrappingSpliterator$$ExternalSyntheticLambda0;->f$0:Ljava9/util/stream/SpinedBuffer$OfDouble;

    invoke-virtual {v0, p1, p2}, Ljava9/util/stream/SpinedBuffer$OfDouble;->accept(D)V

    return-void
.end method
