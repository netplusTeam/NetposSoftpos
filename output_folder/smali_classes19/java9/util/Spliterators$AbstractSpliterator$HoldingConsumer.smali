.class final Ljava9/util/Spliterators$AbstractSpliterator$HoldingConsumer;
.super Ljava/lang/Object;
.source "Spliterators.java"

# interfaces
.implements Ljava9/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/Spliterators$AbstractSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "HoldingConsumer"
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


# instance fields
.field value:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1593
    .local p0, "this":Ljava9/util/Spliterators$AbstractSpliterator$HoldingConsumer;, "Ljava9/util/Spliterators$AbstractSpliterator$HoldingConsumer<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1598
    .local p0, "this":Ljava9/util/Spliterators$AbstractSpliterator$HoldingConsumer;, "Ljava9/util/Spliterators$AbstractSpliterator$HoldingConsumer<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Ljava9/util/Spliterators$AbstractSpliterator$HoldingConsumer;->value:Ljava/lang/Object;

    .line 1599
    return-void
.end method
