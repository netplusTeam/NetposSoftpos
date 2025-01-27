.class public Lorg/apache/sshd/common/util/IgnoringEmptyMap;
.super Ljava/lang/Object;
.source "IgnoringEmptyMap.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lorg/apache/sshd/common/util/IgnoringEmptyMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Lorg/apache/sshd/common/util/IgnoringEmptyMap;

    invoke-direct {v0}, Lorg/apache/sshd/common/util/IgnoringEmptyMap;-><init>()V

    sput-object v0, Lorg/apache/sshd/common/util/IgnoringEmptyMap;->INSTANCE:Lorg/apache/sshd/common/util/IgnoringEmptyMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    .local p0, "this":Lorg/apache/sshd/common/util/IgnoringEmptyMap;, "Lorg/apache/sshd/common/util/IgnoringEmptyMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public static getInstance()Lorg/apache/sshd/common/util/IgnoringEmptyMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/sshd/common/util/IgnoringEmptyMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 126
    sget-object v0, Lorg/apache/sshd/common/util/IgnoringEmptyMap;->INSTANCE:Lorg/apache/sshd/common/util/IgnoringEmptyMap;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 0

    .line 92
    .local p0, "this":Lorg/apache/sshd/common/util/IgnoringEmptyMap;, "Lorg/apache/sshd/common/util/IgnoringEmptyMap<TK;TV;>;"
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 61
    .local p0, "this":Lorg/apache/sshd/common/util/IgnoringEmptyMap;, "Lorg/apache/sshd/common/util/IgnoringEmptyMap<TK;TV;>;"
    const-string v0, "No key provided"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 55
    .local p0, "this":Lorg/apache/sshd/common/util/IgnoringEmptyMap;, "Lorg/apache/sshd/common/util/IgnoringEmptyMap<TK;TV;>;"
    const-string v0, "No value provided"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 121
    .local p0, "this":Lorg/apache/sshd/common/util/IgnoringEmptyMap;, "Lorg/apache/sshd/common/util/IgnoringEmptyMap<TK;TV;>;"
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 106
    .local p0, "this":Lorg/apache/sshd/common/util/IgnoringEmptyMap;, "Lorg/apache/sshd/common/util/IgnoringEmptyMap<TK;TV;>;"
    instance-of v0, p1, Lorg/apache/sshd/common/util/IgnoringEmptyMap;

    return v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 67
    .local p0, "this":Lorg/apache/sshd/common/util/IgnoringEmptyMap;, "Lorg/apache/sshd/common/util/IgnoringEmptyMap<TK;TV;>;"
    const-string v0, "No key provided"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 68
    const/4 v0, 0x0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 111
    .local p0, "this":Lorg/apache/sshd/common/util/IgnoringEmptyMap;, "Lorg/apache/sshd/common/util/IgnoringEmptyMap<TK;TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 50
    .local p0, "this":Lorg/apache/sshd/common/util/IgnoringEmptyMap;, "Lorg/apache/sshd/common/util/IgnoringEmptyMap<TK;TV;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 96
    .local p0, "this":Lorg/apache/sshd/common/util/IgnoringEmptyMap;, "Lorg/apache/sshd/common/util/IgnoringEmptyMap<TK;TV;>;"
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 73
    .local p0, "this":Lorg/apache/sshd/common/util/IgnoringEmptyMap;, "Lorg/apache/sshd/common/util/IgnoringEmptyMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const-string v0, "No key provided"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 74
    const-string v0, "No value provided"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 75
    const/4 v0, 0x0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 87
    .local p0, "this":Lorg/apache/sshd/common/util/IgnoringEmptyMap;, "Lorg/apache/sshd/common/util/IgnoringEmptyMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 80
    .local p0, "this":Lorg/apache/sshd/common/util/IgnoringEmptyMap;, "Lorg/apache/sshd/common/util/IgnoringEmptyMap<TK;TV;>;"
    const-string v0, "No key provided"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 81
    const/4 v0, 0x0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 45
    .local p0, "this":Lorg/apache/sshd/common/util/IgnoringEmptyMap;, "Lorg/apache/sshd/common/util/IgnoringEmptyMap<TK;TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 116
    .local p0, "this":Lorg/apache/sshd/common/util/IgnoringEmptyMap;, "Lorg/apache/sshd/common/util/IgnoringEmptyMap<TK;TV;>;"
    const-string/jumbo v0, "{}"

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 101
    .local p0, "this":Lorg/apache/sshd/common/util/IgnoringEmptyMap;, "Lorg/apache/sshd/common/util/IgnoringEmptyMap<TK;TV;>;"
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
