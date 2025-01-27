.class public abstract Lorg/apache/sshd/common/config/NamedResourceListParseResult;
.super Lorg/apache/sshd/common/config/ListParseResult;
.source "NamedResourceListParseResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lorg/apache/sshd/common/NamedResource;",
        ">",
        "Lorg/apache/sshd/common/config/ListParseResult<",
        "TR;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TR;>;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 33
    .local p0, "this":Lorg/apache/sshd/common/config/NamedResourceListParseResult;, "Lorg/apache/sshd/common/config/NamedResourceListParseResult<TR;>;"
    .local p1, "parsed":Ljava/util/List;, "Ljava/util/List<TR;>;"
    .local p2, "unsupported":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/sshd/common/config/ListParseResult;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 34
    return-void
.end method


# virtual methods
.method public final getParsedResources()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 41
    .local p0, "this":Lorg/apache/sshd/common/config/NamedResourceListParseResult;, "Lorg/apache/sshd/common/config/NamedResourceListParseResult<TR;>;"
    invoke-virtual {p0}, Lorg/apache/sshd/common/config/NamedResourceListParseResult;->getParsedValues()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUnsupportedResources()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 49
    .local p0, "this":Lorg/apache/sshd/common/config/NamedResourceListParseResult;, "Lorg/apache/sshd/common/config/NamedResourceListParseResult<TR;>;"
    invoke-virtual {p0}, Lorg/apache/sshd/common/config/NamedResourceListParseResult;->getUnsupportedValues()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 54
    .local p0, "this":Lorg/apache/sshd/common/config/NamedResourceListParseResult;, "Lorg/apache/sshd/common/config/NamedResourceListParseResult<TR;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parsed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/sshd/common/config/NamedResourceListParseResult;->getParsedResources()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/sshd/common/NamedResource;->getNames(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 55
    invoke-virtual {p0}, Lorg/apache/sshd/common/config/NamedResourceListParseResult;->getUnsupportedResources()Ljava/util/List;

    move-result-object v1

    const/16 v2, 0x2c

    invoke-static {v1, v2}, Lorg/apache/sshd/common/util/GenericUtils;->join(Ljava/lang/Iterable;C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 54
    return-object v0
.end method
