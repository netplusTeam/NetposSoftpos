.class public final synthetic Ljava9/util/stream/StreamSpliterators$LongWrappingSpliterator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava9/util/stream/Sink$OfLong;


# instance fields
.field public final synthetic f$0:Ljava9/util/stream/SpinedBuffer$OfLong;


# direct methods
.method public synthetic constructor <init>(Ljava9/util/stream/SpinedBuffer$OfLong;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava9/util/stream/StreamSpliterators$LongWrappingSpliterator$$ExternalSyntheticLambda0;->f$0:Ljava9/util/stream/SpinedBuffer$OfLong;

    return-void
.end method


# virtual methods
.method public final accept(J)V
    .locals 1

    iget-object v0, p0, Ljava9/util/stream/StreamSpliterators$LongWrappingSpliterator$$ExternalSyntheticLambda0;->f$0:Ljava9/util/stream/SpinedBuffer$OfLong;

    invoke-virtual {v0, p1, p2}, Ljava9/util/stream/SpinedBuffer$OfLong;->accept(J)V

    return-void
.end method
