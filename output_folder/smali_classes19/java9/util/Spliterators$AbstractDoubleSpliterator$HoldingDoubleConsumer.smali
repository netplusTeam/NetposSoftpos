.class final Ljava9/util/Spliterators$AbstractDoubleSpliterator$HoldingDoubleConsumer;
.super Ljava/lang/Object;
.source "Spliterators.java"

# interfaces
.implements Ljava9/util/function/DoubleConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/Spliterators$AbstractDoubleSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "HoldingDoubleConsumer"
.end annotation


# instance fields
.field value:D


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1936
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(D)V
    .locals 0
    .param p1, "value"    # D

    .line 1941
    iput-wide p1, p0, Ljava9/util/Spliterators$AbstractDoubleSpliterator$HoldingDoubleConsumer;->value:D

    .line 1942
    return-void
.end method
