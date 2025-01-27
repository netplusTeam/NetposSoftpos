.class final Lcom/google/common/collect/JdkBackedImmutableSet;
.super Lcom/google/common/collect/IndexedImmutableSet;
.source "JdkBackedImmutableSet.java"


# annotations
.annotation runtime Lcom/google/common/collect/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/IndexedImmutableSet<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final delegate:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "*>;"
        }
    .end annotation
.end field

.field private final delegateList:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Set;Lcom/google/common/collect/ImmutableList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "*>;",
            "Lcom/google/common/collect/ImmutableList<",
            "TE;>;)V"
        }
    .end annotation

    .line 34
    .local p0, "this":Lcom/google/common/collect/JdkBackedImmutableSet;, "Lcom/google/common/collect/JdkBackedImmutableSet<TE;>;"
    .local p1, "delegate":Ljava/util/Set;, "Ljava/util/Set<*>;"
    .local p2, "delegateList":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/IndexedImmutableSet;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/google/common/collect/JdkBackedImmutableSet;->delegate:Ljava/util/Set;

    .line 36
    iput-object p2, p0, Lcom/google/common/collect/JdkBackedImmutableSet;->delegateList:Lcom/google/common/collect/ImmutableList;

    .line 37
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 46
    .local p0, "this":Lcom/google/common/collect/JdkBackedImmutableSet;, "Lcom/google/common/collect/JdkBackedImmutableSet<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/JdkBackedImmutableSet;->delegate:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 41
    .local p0, "this":Lcom/google/common/collect/JdkBackedImmutableSet;, "Lcom/google/common/collect/JdkBackedImmutableSet<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/JdkBackedImmutableSet;->delegateList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method isPartialView()Z
    .locals 1

    .line 51
    .local p0, "this":Lcom/google/common/collect/JdkBackedImmutableSet;, "Lcom/google/common/collect/JdkBackedImmutableSet<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .locals 1

    .line 56
    .local p0, "this":Lcom/google/common/collect/JdkBackedImmutableSet;, "Lcom/google/common/collect/JdkBackedImmutableSet<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/JdkBackedImmutableSet;->delegateList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    return v0
.end method
