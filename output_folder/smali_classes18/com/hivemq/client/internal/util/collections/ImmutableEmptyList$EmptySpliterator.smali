.class Lcom/hivemq/client/internal/util/collections/ImmutableEmptyList$EmptySpliterator;
.super Ljava/lang/Object;
.source "ImmutableEmptyList.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/util/collections/ImmutableEmptyList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EmptySpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Spliterator<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/hivemq/client/internal/util/collections/ImmutableEmptyList$EmptySpliterator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 170
    new-instance v0, Lcom/hivemq/client/internal/util/collections/ImmutableEmptyList$EmptySpliterator;

    invoke-direct {v0}, Lcom/hivemq/client/internal/util/collections/ImmutableEmptyList$EmptySpliterator;-><init>()V

    sput-object v0, Lcom/hivemq/client/internal/util/collections/ImmutableEmptyList$EmptySpliterator;->INSTANCE:Lcom/hivemq/client/internal/util/collections/ImmutableEmptyList$EmptySpliterator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static of()Ljava/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Spliterator<",
            "TE;>;"
        }
    .end annotation

    .line 174
    sget-object v0, Lcom/hivemq/client/internal/util/collections/ImmutableEmptyList$EmptySpliterator;->INSTANCE:Lcom/hivemq/client/internal/util/collections/ImmutableEmptyList$EmptySpliterator;

    return-object v0
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    .line 202
    const/16 v0, 0x4551

    return v0
.end method

.method public estimateSize()J
    .locals 2

    .line 192
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 208
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/lang/Object;>;"
    const-string v0, "Consumer"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 209
    return-void
.end method

.method public getExactSizeIfKnown()J
    .locals 2

    .line 197
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 181
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/lang/Object;>;"
    const-string v0, "Consumer"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 182
    const/4 v0, 0x0

    return v0
.end method

.method public trySplit()Ljava/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 187
    const/4 v0, 0x0

    return-object v0
.end method
