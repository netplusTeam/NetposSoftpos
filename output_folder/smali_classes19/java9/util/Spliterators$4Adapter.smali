.class Ljava9/util/Spliterators$4Adapter;
.super Ljava/lang/Object;
.source "Spliterators.java"

# interfaces
.implements Ljava9/util/PrimitiveIterator$OfDouble;
.implements Ljava9/util/function/DoubleConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava9/util/Spliterators;->iterator(Ljava9/util/Spliterator$OfDouble;)Ljava9/util/PrimitiveIterator$OfDouble;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Adapter"
.end annotation


# instance fields
.field nextElement:D

.field final synthetic val$spliterator:Ljava9/util/Spliterator$OfDouble;

.field valueReady:Z


# direct methods
.method constructor <init>(Ljava9/util/Spliterator$OfDouble;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1118
    iput-object p1, p0, Ljava9/util/Spliterators$4Adapter;->val$spliterator:Ljava9/util/Spliterator$OfDouble;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1119
    const/4 p1, 0x0

    iput-boolean p1, p0, Ljava9/util/Spliterators$4Adapter;->valueReady:Z

    return-void
.end method


# virtual methods
.method public accept(D)V
    .locals 1
    .param p1, "t"    # D

    .line 1124
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava9/util/Spliterators$4Adapter;->valueReady:Z

    .line 1125
    iput-wide p1, p0, Ljava9/util/Spliterators$4Adapter;->nextElement:D

    .line 1126
    return-void
.end method

.method public hasNext()Z
    .locals 1

    .line 1130
    iget-boolean v0, p0, Ljava9/util/Spliterators$4Adapter;->valueReady:Z

    if-nez v0, :cond_0

    .line 1131
    iget-object v0, p0, Ljava9/util/Spliterators$4Adapter;->val$spliterator:Ljava9/util/Spliterator$OfDouble;

    invoke-interface {v0, p0}, Ljava9/util/Spliterator$OfDouble;->tryAdvance(Ljava9/util/function/DoubleConsumer;)Z

    .line 1132
    :cond_0
    iget-boolean v0, p0, Ljava9/util/Spliterators$4Adapter;->valueReady:Z

    return v0
.end method

.method public nextDouble()D
    .locals 2

    .line 1137
    iget-boolean v0, p0, Ljava9/util/Spliterators$4Adapter;->valueReady:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava9/util/Spliterators$4Adapter;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1138
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 1140
    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava9/util/Spliterators$4Adapter;->valueReady:Z

    .line 1141
    iget-wide v0, p0, Ljava9/util/Spliterators$4Adapter;->nextElement:D

    return-wide v0
.end method

.method public remove()V
    .locals 2

    .line 1147
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
