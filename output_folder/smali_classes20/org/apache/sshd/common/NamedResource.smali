.class public interface abstract Lorg/apache/sshd/common/NamedResource;
.super Ljava/lang/Object;
.source "NamedResource.java"


# annotations
.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# static fields
.field public static final BY_NAME_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lorg/apache/sshd/common/NamedResource;",
            ">;"
        }
    .end annotation
.end field

.field public static final NAME_EXTRACTOR:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Lorg/apache/sshd/common/NamedResource;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    new-instance v0, Lorg/apache/sshd/common/NamedResource$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/apache/sshd/common/NamedResource$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lorg/apache/sshd/common/NamedResource;->NAME_EXTRACTOR:Ljava/util/function/Function;

    .line 44
    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    .line 45
    invoke-static {v0, v1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/common/NamedResource;->BY_NAME_COMPARATOR:Ljava/util/Comparator;

    .line 44
    return-void
.end method

.method public static findByName(Ljava/lang/String;Ljava/util/Comparator;Ljava/util/Collection;)Lorg/apache/sshd/common/NamedResource;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lorg/apache/sshd/common/NamedResource;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Comparator<",
            "-",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "+TR;>;)TR;"
        }
    .end annotation

    .line 100
    .local p1, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-Ljava/lang/String;>;"
    .local p2, "resources":Ljava/util/Collection;, "Ljava/util/Collection<+TR;>;"
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 102
    :cond_0
    invoke-static {p2}, Lorg/apache/sshd/common/util/GenericUtils;->stream(Ljava/lang/Iterable;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lorg/apache/sshd/common/NamedResource$$ExternalSyntheticLambda2;

    invoke-direct {v2, p1, p0}, Lorg/apache/sshd/common/NamedResource$$ExternalSyntheticLambda2;-><init>(Ljava/util/Comparator;Ljava/lang/String;)V

    .line 103
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 104
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    .line 105
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lorg/apache/sshd/common/NamedResource;

    .line 100
    :goto_0
    return-object v1
.end method

.method public static getNameList(Ljava/util/Collection;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/apache/sshd/common/NamedResource;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 58
    .local p0, "resources":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/sshd/common/NamedResource;>;"
    new-instance v0, Lorg/apache/sshd/common/NamedResource$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/apache/sshd/common/NamedResource$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p0, v0}, Lorg/apache/sshd/common/util/GenericUtils;->map(Ljava/util/Collection;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getNames(Ljava/util/Collection;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/apache/sshd/common/NamedResource;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 66
    .local p0, "resources":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/sshd/common/NamedResource;>;"
    invoke-static {p0}, Lorg/apache/sshd/common/NamedResource;->getNameList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 67
    .local v0, "nameList":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/16 v1, 0x2c

    invoke-static {v0, v1}, Lorg/apache/sshd/common/util/GenericUtils;->join(Ljava/lang/Iterable;C)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static synthetic lambda$findByName$1(Ljava/util/Comparator;Ljava/lang/String;Lorg/apache/sshd/common/NamedResource;)Z
    .locals 1
    .param p0, "c"    # Ljava/util/Comparator;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "r"    # Lorg/apache/sshd/common/NamedResource;

    .line 103
    invoke-interface {p2}, Lorg/apache/sshd/common/NamedResource;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$static$0(Lorg/apache/sshd/common/NamedResource;)Ljava/lang/String;
    .locals 1
    .param p0, "input"    # Lorg/apache/sshd/common/NamedResource;

    .line 38
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/apache/sshd/common/NamedResource;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static ofName(Ljava/lang/String;)Lorg/apache/sshd/common/NamedResource;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 115
    new-instance v0, Lorg/apache/sshd/common/NamedResource$1;

    invoke-direct {v0, p0}, Lorg/apache/sshd/common/NamedResource$1;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static removeByName(Ljava/lang/String;Ljava/util/Comparator;Ljava/util/Collection;)Lorg/apache/sshd/common/NamedResource;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lorg/apache/sshd/common/NamedResource;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Comparator<",
            "-",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "+TR;>;)TR;"
        }
    .end annotation

    .line 82
    .local p1, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-Ljava/lang/String;>;"
    .local p2, "resources":Ljava/util/Collection;, "Ljava/util/Collection<+TR;>;"
    invoke-static {p0, p1, p2}, Lorg/apache/sshd/common/NamedResource;->findByName(Ljava/lang/String;Ljava/util/Comparator;Ljava/util/Collection;)Lorg/apache/sshd/common/NamedResource;

    move-result-object v0

    .line 83
    .local v0, "r":Lorg/apache/sshd/common/NamedResource;, "TR;"
    if-eqz v0, :cond_0

    .line 84
    invoke-interface {p2, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 86
    :cond_0
    return-object v0
.end method


# virtual methods
.method public abstract getName()Ljava/lang/String;
.end method
