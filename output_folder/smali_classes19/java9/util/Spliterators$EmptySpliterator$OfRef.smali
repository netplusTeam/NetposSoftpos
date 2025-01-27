.class final Ljava9/util/Spliterators$EmptySpliterator$OfRef;
.super Ljava9/util/Spliterators$EmptySpliterator;
.source "Spliterators.java"

# interfaces
.implements Ljava9/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/Spliterators$EmptySpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OfRef"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava9/util/Spliterators$EmptySpliterator<",
        "TT;",
        "Ljava9/util/Spliterator<",
        "TT;>;",
        "Ljava9/util/function/Consumer<",
        "-TT;>;>;",
        "Ljava9/util/Spliterator<",
        "TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1184
    .local p0, "this":Ljava9/util/Spliterators$EmptySpliterator$OfRef;, "Ljava9/util/Spliterators$EmptySpliterator$OfRef<TT;>;"
    invoke-direct {p0}, Ljava9/util/Spliterators$EmptySpliterator;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic forEachRemaining(Ljava9/util/function/Consumer;)V
    .locals 0

    .line 1181
    .local p0, "this":Ljava9/util/Spliterators$EmptySpliterator$OfRef;, "Ljava9/util/Spliterators$EmptySpliterator$OfRef<TT;>;"
    invoke-super {p0, p1}, Ljava9/util/Spliterators$EmptySpliterator;->forEachRemaining(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic tryAdvance(Ljava9/util/function/Consumer;)Z
    .locals 0

    .line 1181
    .local p0, "this":Ljava9/util/Spliterators$EmptySpliterator$OfRef;, "Ljava9/util/Spliterators$EmptySpliterator$OfRef<TT;>;"
    invoke-super {p0, p1}, Ljava9/util/Spliterators$EmptySpliterator;->tryAdvance(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
