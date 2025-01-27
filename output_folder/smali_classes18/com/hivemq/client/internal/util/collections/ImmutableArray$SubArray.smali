.class Lcom/hivemq/client/internal/util/collections/ImmutableArray$SubArray;
.super Lcom/hivemq/client/internal/util/collections/ImmutableArray;
.source "ImmutableArray.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/util/collections/ImmutableArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SubArray"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/hivemq/client/internal/util/collections/ImmutableArray<",
        "TE;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final fromIndex:I

.field private final toIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 215
    const-class v0, Lcom/hivemq/client/internal/util/collections/ImmutableArray;

    return-void
.end method

.method constructor <init>([Ljava/lang/Object;II)V
    .locals 2
    .param p1, "array"    # [Ljava/lang/Object;
    .param p2, "fromIndex"    # I
    .param p3, "toIndex"    # I

    .line 221
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/ImmutableArray$SubArray;, "Lcom/hivemq/client/internal/util/collections/ImmutableArray$SubArray<TE;>;"
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/util/collections/ImmutableArray;-><init>([Ljava/lang/Object;)V

    .line 222
    iput p2, p0, Lcom/hivemq/client/internal/util/collections/ImmutableArray$SubArray;->fromIndex:I

    .line 223
    iput p3, p0, Lcom/hivemq/client/internal/util/collections/ImmutableArray$SubArray;->toIndex:I

    .line 224
    sub-int v0, p3, p2

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 225
    sub-int v0, p3, p2

    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 226
    return-void

    .line 225
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 224
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method


# virtual methods
.method public getFromIndex()I
    .locals 1

    .line 230
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/ImmutableArray$SubArray;, "Lcom/hivemq/client/internal/util/collections/ImmutableArray$SubArray<TE;>;"
    iget v0, p0, Lcom/hivemq/client/internal/util/collections/ImmutableArray$SubArray;->fromIndex:I

    return v0
.end method

.method public getToIndex()I
    .locals 1

    .line 235
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/ImmutableArray$SubArray;, "Lcom/hivemq/client/internal/util/collections/ImmutableArray$SubArray<TE;>;"
    iget v0, p0, Lcom/hivemq/client/internal/util/collections/ImmutableArray$SubArray;->toIndex:I

    return v0
.end method

.method public bridge synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 0

    .line 215
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/ImmutableArray$SubArray;, "Lcom/hivemq/client/internal/util/collections/ImmutableArray$SubArray<TE;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/util/collections/ImmutableArray;->listIterator(I)Lcom/hivemq/client/internal/util/collections/ImmutableList$ImmutableListIterator;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    .line 215
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/ImmutableArray$SubArray;, "Lcom/hivemq/client/internal/util/collections/ImmutableArray$SubArray<TE;>;"
    invoke-super {p0, p1, p2}, Lcom/hivemq/client/internal/util/collections/ImmutableArray;->subList(II)Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method public trim()Lcom/hivemq/client/internal/util/collections/ImmutableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/util/collections/ImmutableList<",
            "TE;>;"
        }
    .end annotation

    .line 240
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/ImmutableArray$SubArray;, "Lcom/hivemq/client/internal/util/collections/ImmutableArray$SubArray<TE;>;"
    new-instance v0, Lcom/hivemq/client/internal/util/collections/ImmutableArray;

    invoke-virtual {p0}, Lcom/hivemq/client/internal/util/collections/ImmutableArray$SubArray;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/util/collections/ImmutableArray;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method
