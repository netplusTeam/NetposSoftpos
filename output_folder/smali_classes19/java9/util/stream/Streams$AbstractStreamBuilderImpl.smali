.class abstract Ljava9/util/stream/Streams$AbstractStreamBuilderImpl;
.super Ljava/lang/Object;
.source "Streams.java"

# interfaces
.implements Ljava9/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/stream/Streams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "AbstractStreamBuilderImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "S::",
        "Ljava9/util/Spliterator<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Ljava9/util/Spliterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field count:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 293
    .local p0, "this":Ljava9/util/stream/Streams$AbstractStreamBuilderImpl;, "Ljava9/util/stream/Streams$AbstractStreamBuilderImpl<TT;TS;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljava9/util/stream/Streams$1;)V
    .locals 0
    .param p1, "x0"    # Ljava9/util/stream/Streams$1;

    .line 293
    .local p0, "this":Ljava9/util/stream/Streams$AbstractStreamBuilderImpl;, "Ljava9/util/stream/Streams$AbstractStreamBuilderImpl<TT;TS;>;"
    invoke-direct {p0}, Ljava9/util/stream/Streams$AbstractStreamBuilderImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    .line 316
    .local p0, "this":Ljava9/util/stream/Streams$AbstractStreamBuilderImpl;, "Ljava9/util/stream/Streams$AbstractStreamBuilderImpl<TT;TS;>;"
    const/16 v0, 0x4450

    return v0
.end method

.method public estimateSize()J
    .locals 2

    .line 311
    .local p0, "this":Ljava9/util/stream/Streams$AbstractStreamBuilderImpl;, "Ljava9/util/stream/Streams$AbstractStreamBuilderImpl<TT;TS;>;"
    iget v0, p0, Ljava9/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    neg-int v0, v0

    add-int/lit8 v0, v0, -0x1

    int-to-long v0, v0

    return-wide v0
.end method

.method public trySplit()Ljava9/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .line 306
    .local p0, "this":Ljava9/util/stream/Streams$AbstractStreamBuilderImpl;, "Ljava9/util/stream/Streams$AbstractStreamBuilderImpl<TT;TS;>;"
    const/4 v0, 0x0

    return-object v0
.end method
