.class final Ljava9/util/Spliterators$AbstractLongSpliterator$HoldingLongConsumer;
.super Ljava/lang/Object;
.source "Spliterators.java"

# interfaces
.implements Ljava9/util/function/LongConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/Spliterators$AbstractLongSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "HoldingLongConsumer"
.end annotation


# instance fields
.field value:J


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1826
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(J)V
    .locals 0
    .param p1, "value"    # J

    .line 1831
    iput-wide p1, p0, Ljava9/util/Spliterators$AbstractLongSpliterator$HoldingLongConsumer;->value:J

    .line 1832
    return-void
.end method
