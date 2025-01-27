.class public abstract Lorg/apache/sshd/common/config/FactoriesListParseResult;
.super Lorg/apache/sshd/common/config/ListParseResult;
.source "FactoriesListParseResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "F::",
        "Lorg/apache/sshd/common/NamedResource;",
        ">",
        "Lorg/apache/sshd/common/config/ListParseResult<",
        "TF;>;"
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

    .line 34
    .local p0, "this":Lorg/apache/sshd/common/config/FactoriesListParseResult;, "Lorg/apache/sshd/common/config/FactoriesListParseResult<TT;TF;>;"
    .local p1, "parsed":Ljava/util/List;, "Ljava/util/List<TF;>;"
    .local p2, "unsupported":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/sshd/common/config/ListParseResult;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 35
    return-void
.end method


# virtual methods
.method public final getParsedFactories()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TF;>;"
        }
    .end annotation

    .line 42
    .local p0, "this":Lorg/apache/sshd/common/config/FactoriesListParseResult;, "Lorg/apache/sshd/common/config/FactoriesListParseResult<TT;TF;>;"
    invoke-virtual {p0}, Lorg/apache/sshd/common/config/FactoriesListParseResult;->getParsedValues()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUnsupportedFactories()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 50
    .local p0, "this":Lorg/apache/sshd/common/config/FactoriesListParseResult;, "Lorg/apache/sshd/common/config/FactoriesListParseResult<TT;TF;>;"
    invoke-virtual {p0}, Lorg/apache/sshd/common/config/FactoriesListParseResult;->getUnsupportedValues()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
