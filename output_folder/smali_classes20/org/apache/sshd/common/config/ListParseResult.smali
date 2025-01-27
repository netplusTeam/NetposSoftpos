.class public abstract Lorg/apache/sshd/common/config/ListParseResult;
.super Ljava/lang/Object;
.source "ListParseResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final parsed:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final unsupported:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TE;>;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 40
    .local p0, "this":Lorg/apache/sshd/common/config/ListParseResult;, "Lorg/apache/sshd/common/config/ListParseResult<TE;>;"
    .local p1, "parsed":Ljava/util/List;, "Ljava/util/List<TE;>;"
    .local p2, "unsupported":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/apache/sshd/common/config/ListParseResult;->parsed:Ljava/util/List;

    .line 42
    iput-object p2, p0, Lorg/apache/sshd/common/config/ListParseResult;->unsupported:Ljava/util/List;

    .line 43
    return-void
.end method


# virtual methods
.method public final getParsedValues()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 50
    .local p0, "this":Lorg/apache/sshd/common/config/ListParseResult;, "Lorg/apache/sshd/common/config/ListParseResult<TE;>;"
    iget-object v0, p0, Lorg/apache/sshd/common/config/ListParseResult;->parsed:Ljava/util/List;

    return-object v0
.end method

.method public getUnsupportedValues()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 58
    .local p0, "this":Lorg/apache/sshd/common/config/ListParseResult;, "Lorg/apache/sshd/common/config/ListParseResult<TE;>;"
    iget-object v0, p0, Lorg/apache/sshd/common/config/ListParseResult;->unsupported:Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 63
    .local p0, "this":Lorg/apache/sshd/common/config/ListParseResult;, "Lorg/apache/sshd/common/config/ListParseResult<TE;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parsed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/sshd/common/config/ListParseResult;->getParsedValues()Ljava/util/List;

    move-result-object v1

    const/16 v2, 0x2c

    invoke-static {v1, v2}, Lorg/apache/sshd/common/util/GenericUtils;->join(Ljava/lang/Iterable;C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";unsupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 64
    invoke-virtual {p0}, Lorg/apache/sshd/common/config/ListParseResult;->getUnsupportedValues()Ljava/util/List;

    move-result-object v1

    invoke-static {v1, v2}, Lorg/apache/sshd/common/util/GenericUtils;->join(Ljava/lang/Iterable;C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    return-object v0
.end method
