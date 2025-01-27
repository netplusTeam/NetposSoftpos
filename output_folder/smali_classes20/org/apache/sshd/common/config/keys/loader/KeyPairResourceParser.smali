.class public interface abstract Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceParser;
.super Ljava/lang/Object;
.source "KeyPairResourceParser.java"

# interfaces
.implements Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceLoader;


# static fields
.field public static final EMPTY:Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    new-instance v0, Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceParser$1;

    invoke-direct {v0}, Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceParser$1;-><init>()V

    sput-object v0, Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceParser;->EMPTY:Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceParser;

    return-void
.end method

.method public static aggregate(Ljava/util/Collection;)Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceParser;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceParser;",
            ">;)",
            "Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceParser;"
        }
    .end annotation

    .line 154
    .local p0, "parsers":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceParser;>;"
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "No parsers to aggregate"

    invoke-static {p0, v1, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/util/Collection;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Collection;

    .line 155
    new-instance v0, Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceParser$2;

    invoke-direct {v0, p0}, Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceParser$2;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static varargs aggregate([Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceParser;)Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceParser;
    .locals 2
    .param p0, "parsers"    # [Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceParser;

    .line 150
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "No parsers to aggregate"

    invoke-static {p0, v1, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty([Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceParser;->aggregate(Ljava/util/Collection;)Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceParser;

    move-result-object v0

    return-object v0
.end method

.method public static containsMarkerLine(Ljava/util/List;Ljava/lang/String;)Z
    .locals 1
    .param p1, "marker"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 101
    .local p0, "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    nop

    .line 102
    const-string v0, "No marker"

    invoke-static {p1, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 101
    invoke-static {p0, v0}, Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceParser;->containsMarkerLine(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public static containsMarkerLine(Ljava/util/List;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 106
    .local p0, "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p1, "markers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0, p1}, Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceParser;->findMarkerLine(Ljava/util/List;Ljava/util/List;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static extractDataBytes(Ljava/util/Collection;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    .line 88
    .local p0, "lines":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static {p0}, Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceParser;->joinDataLines(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "data":Ljava/lang/String;
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v1

    .line 90
    .local v1, "decoder":Ljava/util/Base64$Decoder;
    invoke-virtual {v1, v0}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v2

    return-object v2
.end method

.method public static findMarkerLine(Ljava/util/List;ILjava/util/List;)Ljava/util/AbstractMap$SimpleImmutableEntry;
    .locals 7
    .param p1, "startLine"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/AbstractMap$SimpleImmutableEntry<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 132
    .local p0, "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "markers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    invoke-static {p2}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 136
    :cond_0
    move v0, p1

    .local v0, "lineIndex":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 137
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 138
    .local v2, "l":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "markerIndex":I
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 139
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 140
    .local v4, "m":Ljava/lang/String;
    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 141
    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 138
    .end local v4    # "m":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 136
    .end local v2    # "l":Ljava/lang/String;
    .end local v3    # "markerIndex":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 146
    .end local v0    # "lineIndex":I
    :cond_3
    return-object v1

    .line 133
    :cond_4
    :goto_2
    return-object v1
.end method

.method public static findMarkerLine(Ljava/util/List;Ljava/util/List;)Ljava/util/AbstractMap$SimpleImmutableEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/AbstractMap$SimpleImmutableEntry<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 119
    .local p0, "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p1, "markers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceParser;->findMarkerLine(Ljava/util/List;ILjava/util/List;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v0

    return-object v0
.end method

.method public static joinDataLines(Ljava/util/Collection;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 94
    .local p0, "lines":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/16 v0, 0x20

    invoke-static {p0, v0}, Lorg/apache/sshd/common/util/GenericUtils;->join(Ljava/lang/Iterable;C)Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "data":Ljava/lang/String;
    const-string v1, "\\s"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 97
    return-object v0
.end method


# virtual methods
.method public abstract canExtractKeyPairs(Lorg/apache/sshd/common/NamedResource;Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/NamedResource;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method
