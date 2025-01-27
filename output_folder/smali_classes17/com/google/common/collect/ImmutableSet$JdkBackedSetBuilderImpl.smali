.class final Lcom/google/common/collect/ImmutableSet$JdkBackedSetBuilderImpl;
.super Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;
.source "ImmutableSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "JdkBackedSetBuilderImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableSet$SetBuilderImpl<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final delegate:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableSet$SetBuilderImpl<",
            "TE;>;)V"
        }
    .end annotation

    .line 941
    .local p0, "this":Lcom/google/common/collect/ImmutableSet$JdkBackedSetBuilderImpl;, "Lcom/google/common/collect/ImmutableSet$JdkBackedSetBuilderImpl<TE;>;"
    .local p1, "toCopy":Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;, "Lcom/google/common/collect/ImmutableSet$SetBuilderImpl<TE;>;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;-><init>(Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;)V

    .line 942
    iget v0, p0, Lcom/google/common/collect/ImmutableSet$JdkBackedSetBuilderImpl;->distinct:I

    invoke-static {v0}, Lcom/google/common/collect/Sets;->newHashSetWithExpectedSize(I)Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ImmutableSet$JdkBackedSetBuilderImpl;->delegate:Ljava/util/Set;

    .line 943
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/google/common/collect/ImmutableSet$JdkBackedSetBuilderImpl;->distinct:I

    if-ge v0, v1, :cond_0

    .line 948
    iget-object v1, p0, Lcom/google/common/collect/ImmutableSet$JdkBackedSetBuilderImpl;->delegate:Ljava/util/Set;

    iget-object v2, p0, Lcom/google/common/collect/ImmutableSet$JdkBackedSetBuilderImpl;->dedupedElements:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 943
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 950
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/common/collect/ImmutableSet$SetBuilderImpl<",
            "TE;>;"
        }
    .end annotation

    .line 954
    .local p0, "this":Lcom/google/common/collect/ImmutableSet$JdkBackedSetBuilderImpl;, "Lcom/google/common/collect/ImmutableSet$JdkBackedSetBuilderImpl<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 955
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSet$JdkBackedSetBuilderImpl;->delegate:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 956
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSet$JdkBackedSetBuilderImpl;->addDedupedElement(Ljava/lang/Object;)V

    .line 958
    :cond_0
    return-object p0
.end method

.method build()Lcom/google/common/collect/ImmutableSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet<",
            "TE;>;"
        }
    .end annotation

    .line 968
    .local p0, "this":Lcom/google/common/collect/ImmutableSet$JdkBackedSetBuilderImpl;, "Lcom/google/common/collect/ImmutableSet$JdkBackedSetBuilderImpl<TE;>;"
    iget v0, p0, Lcom/google/common/collect/ImmutableSet$JdkBackedSetBuilderImpl;->distinct:I

    packed-switch v0, :pswitch_data_0

    .line 978
    new-instance v0, Lcom/google/common/collect/JdkBackedImmutableSet;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableSet$JdkBackedSetBuilderImpl;->delegate:Ljava/util/Set;

    iget-object v2, p0, Lcom/google/common/collect/ImmutableSet$JdkBackedSetBuilderImpl;->dedupedElements:[Ljava/lang/Object;

    iget v3, p0, Lcom/google/common/collect/ImmutableSet$JdkBackedSetBuilderImpl;->distinct:I

    .line 979
    invoke-static {v2, v3}, Lcom/google/common/collect/ImmutableList;->asImmutableList([Ljava/lang/Object;I)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/JdkBackedImmutableSet;-><init>(Ljava/util/Set;Lcom/google/common/collect/ImmutableList;)V

    .line 978
    return-object v0

    .line 976
    :pswitch_0
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSet$JdkBackedSetBuilderImpl;->dedupedElements:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0

    .line 970
    :pswitch_1
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method copy()Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet$SetBuilderImpl<",
            "TE;>;"
        }
    .end annotation

    .line 963
    .local p0, "this":Lcom/google/common/collect/ImmutableSet$JdkBackedSetBuilderImpl;, "Lcom/google/common/collect/ImmutableSet$JdkBackedSetBuilderImpl<TE;>;"
    new-instance v0, Lcom/google/common/collect/ImmutableSet$JdkBackedSetBuilderImpl;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableSet$JdkBackedSetBuilderImpl;-><init>(Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;)V

    return-object v0
.end method
