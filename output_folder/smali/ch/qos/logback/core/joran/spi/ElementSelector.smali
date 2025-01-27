.class public Lch/qos/logback/core/joran/spi/ElementSelector;
.super Lch/qos/logback/core/joran/spi/ElementPath;
.source "ElementSelector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lch/qos/logback/core/joran/spi/ElementPath;-><init>()V

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "p"    # Ljava/lang/String;

    .line 45
    invoke-direct {p0, p1}, Lch/qos/logback/core/joran/spi/ElementPath;-><init>(Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 35
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lch/qos/logback/core/joran/spi/ElementPath;-><init>(Ljava/util/List;)V

    .line 36
    return-void
.end method

.method private equalityCheck(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "x"    # Ljava/lang/String;
    .param p2, "y"    # Ljava/lang/String;

    .line 141
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 146
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    instance-of v1, p1, Lch/qos/logback/core/joran/spi/ElementSelector;

    if-nez v1, :cond_0

    goto :goto_1

    .line 150
    :cond_0
    move-object v1, p1

    check-cast v1, Lch/qos/logback/core/joran/spi/ElementSelector;

    .line 152
    .local v1, "r":Lch/qos/logback/core/joran/spi/ElementSelector;
    invoke-virtual {v1}, Lch/qos/logback/core/joran/spi/ElementSelector;->size()I

    move-result v2

    invoke-virtual {p0}, Lch/qos/logback/core/joran/spi/ElementSelector;->size()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 153
    return v0

    .line 156
    :cond_1
    invoke-virtual {p0}, Lch/qos/logback/core/joran/spi/ElementSelector;->size()I

    move-result v2

    .line 158
    .local v2, "len":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 159
    invoke-virtual {p0, v3}, Lch/qos/logback/core/joran/spi/ElementSelector;->get(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3}, Lch/qos/logback/core/joran/spi/ElementSelector;->get(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lch/qos/logback/core/joran/spi/ElementSelector;->equalityCheck(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 160
    return v0

    .line 158
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 165
    .end local v3    # "i":I
    :cond_3
    const/4 v0, 0x1

    return v0

    .line 147
    .end local v1    # "r":Lch/qos/logback/core/joran/spi/ElementSelector;
    .end local v2    # "len":I
    :cond_4
    :goto_1
    return v0
.end method

.method public fullPathMatch(Lch/qos/logback/core/joran/spi/ElementPath;)Z
    .locals 5
    .param p1, "path"    # Lch/qos/logback/core/joran/spi/ElementPath;

    .line 49
    invoke-virtual {p1}, Lch/qos/logback/core/joran/spi/ElementPath;->size()I

    move-result v0

    invoke-virtual {p0}, Lch/qos/logback/core/joran/spi/ElementSelector;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 50
    return v2

    .line 53
    :cond_0
    invoke-virtual {p0}, Lch/qos/logback/core/joran/spi/ElementSelector;->size()I

    move-result v0

    .line 54
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 55
    invoke-virtual {p0, v1}, Lch/qos/logback/core/joran/spi/ElementSelector;->get(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1}, Lch/qos/logback/core/joran/spi/ElementPath;->get(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lch/qos/logback/core/joran/spi/ElementSelector;->equalityCheck(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 56
    return v2

    .line 54
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 60
    .end local v1    # "i":I
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method public getPrefixMatchLength(Lch/qos/logback/core/joran/spi/ElementPath;)I
    .locals 8
    .param p1, "p"    # Lch/qos/logback/core/joran/spi/ElementPath;

    .line 111
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 112
    return v0

    .line 115
    :cond_0
    iget-object v1, p0, Lch/qos/logback/core/joran/spi/ElementSelector;->partList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 116
    .local v1, "lSize":I
    iget-object v2, p1, Lch/qos/logback/core/joran/spi/ElementPath;->partList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 119
    .local v2, "rSize":I
    if-eqz v1, :cond_4

    if-nez v2, :cond_1

    goto :goto_2

    .line 123
    :cond_1
    if-gt v1, v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 124
    .local v0, "minLen":I
    :goto_0
    const/4 v3, 0x0

    .line 126
    .local v3, "match":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v0, :cond_3

    .line 127
    iget-object v5, p0, Lch/qos/logback/core/joran/spi/ElementSelector;->partList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 128
    .local v5, "l":Ljava/lang/String;
    iget-object v6, p1, Lch/qos/logback/core/joran/spi/ElementPath;->partList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 130
    .local v6, "r":Ljava/lang/String;
    invoke-direct {p0, v5, v6}, Lch/qos/logback/core/joran/spi/ElementSelector;->equalityCheck(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 131
    nop

    .end local v5    # "l":Ljava/lang/String;
    .end local v6    # "r":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    .line 126
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 137
    .end local v4    # "i":I
    :cond_3
    return v3

    .line 120
    .end local v0    # "minLen":I
    .end local v3    # "match":I
    :cond_4
    :goto_2
    return v0
.end method

.method public getTailMatchLength(Lch/qos/logback/core/joran/spi/ElementPath;)I
    .locals 8
    .param p1, "p"    # Lch/qos/logback/core/joran/spi/ElementPath;

    .line 69
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 70
    return v0

    .line 73
    :cond_0
    iget-object v1, p0, Lch/qos/logback/core/joran/spi/ElementSelector;->partList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 74
    .local v1, "lSize":I
    iget-object v2, p1, Lch/qos/logback/core/joran/spi/ElementPath;->partList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 77
    .local v2, "rSize":I
    if-eqz v1, :cond_4

    if-nez v2, :cond_1

    goto :goto_2

    .line 81
    :cond_1
    if-gt v1, v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 82
    .local v0, "minLen":I
    :goto_0
    const/4 v3, 0x0

    .line 85
    .local v3, "match":I
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_1
    if-gt v4, v0, :cond_3

    .line 86
    iget-object v5, p0, Lch/qos/logback/core/joran/spi/ElementSelector;->partList:Ljava/util/ArrayList;

    sub-int v6, v1, v4

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 87
    .local v5, "l":Ljava/lang/String;
    iget-object v6, p1, Lch/qos/logback/core/joran/spi/ElementPath;->partList:Ljava/util/ArrayList;

    sub-int v7, v2, v4

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 89
    .local v6, "r":Ljava/lang/String;
    invoke-direct {p0, v5, v6}, Lch/qos/logback/core/joran/spi/ElementSelector;->equalityCheck(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 90
    nop

    .end local v5    # "l":Ljava/lang/String;
    .end local v6    # "r":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    .line 85
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 95
    .end local v4    # "i":I
    :cond_3
    return v3

    .line 78
    .end local v0    # "minLen":I
    .end local v3    # "match":I
    :cond_4
    :goto_2
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 170
    const/4 v0, 0x0

    .line 171
    .local v0, "hc":I
    invoke-virtual {p0}, Lch/qos/logback/core/joran/spi/ElementSelector;->size()I

    move-result v1

    .line 173
    .local v1, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 176
    invoke-virtual {p0, v2}, Lch/qos/logback/core/joran/spi/ElementSelector;->get(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v0, v3

    .line 173
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 178
    .end local v2    # "i":I
    :cond_0
    return v0
.end method

.method public isContainedIn(Lch/qos/logback/core/joran/spi/ElementPath;)Z
    .locals 2
    .param p1, "p"    # Lch/qos/logback/core/joran/spi/ElementPath;

    .line 99
    if-nez p1, :cond_0

    .line 100
    const/4 v0, 0x0

    return v0

    .line 102
    :cond_0
    invoke-virtual {p1}, Lch/qos/logback/core/joran/spi/ElementPath;->toStableString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lch/qos/logback/core/joran/spi/ElementSelector;->toStableString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method
