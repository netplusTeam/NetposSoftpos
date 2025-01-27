.class public final synthetic Ljava9/util/stream/StreamSpliterators$IntWrappingSpliterator$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava9/util/stream/Sink$OfInt;


# instance fields
.field public final synthetic f$0:Ljava9/util/stream/SpinedBuffer$OfInt;


# direct methods
.method public synthetic constructor <init>(Ljava9/util/stream/SpinedBuffer$OfInt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava9/util/stream/StreamSpliterators$IntWrappingSpliterator$$ExternalSyntheticLambda1;->f$0:Ljava9/util/stream/SpinedBuffer$OfInt;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 1

    iget-object v0, p0, Ljava9/util/stream/StreamSpliterators$IntWrappingSpliterator$$ExternalSyntheticLambda1;->f$0:Ljava9/util/stream/SpinedBuffer$OfInt;

    invoke-virtual {v0, p1}, Ljava9/util/stream/SpinedBuffer$OfInt;->accept(I)V

    return-void
.end method
