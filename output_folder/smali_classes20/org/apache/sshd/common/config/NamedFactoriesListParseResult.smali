.class public abstract Lorg/apache/sshd/common/config/NamedFactoriesListParseResult;
.super Lorg/apache/sshd/common/config/FactoriesListParseResult;
.source "NamedFactoriesListParseResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "F::",
        "Lorg/apache/sshd/common/NamedResource;",
        ">",
        "Lorg/apache/sshd/common/config/FactoriesListParseResult<",
        "TT;TF;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TF;>;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 39
    .local p0, "this":Lorg/apache/sshd/common/config/NamedFactoriesListParseResult;, "Lorg/apache/sshd/common/config/NamedFactoriesListParseResult<TT;TF;>;"
    .local p1, "parsed":Ljava/util/List;, "Ljava/util/List<TF;>;"
    .local p2, "unsupported":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/sshd/common/config/FactoriesListParseResult;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 40
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 44
    .local p0, "this":Lorg/apache/sshd/common/config/NamedFactoriesListParseResult;, "Lorg/apache/sshd/common/config/NamedFactoriesListParseResult<TT;TF;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parsed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/sshd/common/config/NamedFactoriesListParseResult;->getParsedFactories()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/sshd/common/NamedResource;->getNames(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 45
    invoke-virtual {p0}, Lorg/apache/sshd/common/config/NamedFactoriesListParseResult;->getUnsupportedFactories()Ljava/util/List;

    move-result-object v1

    const/16 v2, 0x2c

    invoke-static {v1, v2}, Lorg/apache/sshd/common/util/GenericUtils;->join(Ljava/lang/Iterable;C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 44
    return-object v0
.end method
