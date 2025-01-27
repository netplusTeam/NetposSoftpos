.class final Lorg/osgi/framework/FrameworkUtil$DNChainMatching;
.super Ljava/lang/Object;
.source "FrameworkUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osgi/framework/FrameworkUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DNChainMatching"
.end annotation


# static fields
.field private static final MINUS_WILDCARD:Ljava/lang/String; = "-"

.field private static final STAR_WILDCARD:Ljava/lang/String; = "*"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1707
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static dnChainMatch(Ljava/util/List;ILjava/util/List;I)Z
    .locals 9
    .param p1, "dnChainIndex"    # I
    .param p3, "dnChainPatternIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;I)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1956
    .local p0, "dnChain":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .local p2, "dnChainPattern":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lt p1, v0, :cond_0

    .line 1957
    return v1

    .line 1959
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lt p3, v0, :cond_1

    .line 1960
    return v1

    .line 1963
    :cond_1
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 1964
    .local v0, "dnPattern":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    const-string v3, "expected wildcard in DN pattern"

    const-string v4, "*"

    const-string v5, "-"

    const/4 v6, 0x1

    if-eqz v2, :cond_d

    .line 1965
    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 1966
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1970
    :cond_3
    :goto_0
    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1971
    invoke-static {p2, p3}, Lorg/osgi/framework/FrameworkUtil$DNChainMatching;->skipWildCards(Ljava/util/List;I)I

    move-result p3

    goto :goto_1

    .line 1973
    :cond_4
    add-int/2addr p3, v6

    .line 1975
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lt p3, v2, :cond_7

    .line 1978
    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :goto_2
    move v1, v6

    goto :goto_3

    :cond_5
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v6

    if-ne v2, p1, :cond_6

    goto :goto_2

    :cond_6
    :goto_3
    return v1

    .line 1985
    :cond_7
    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1987
    invoke-static {p0, p1, p2, p3}, Lorg/osgi/framework/FrameworkUtil$DNChainMatching;->dnChainMatch(Ljava/util/List;ILjava/util/List;I)Z

    move-result v2

    if-nez v2, :cond_8

    add-int/lit8 v2, p1, 0x1

    invoke-static {p0, v2, p2, p3}, Lorg/osgi/framework/FrameworkUtil$DNChainMatching;->dnChainMatch(Ljava/util/List;ILjava/util/List;I)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    move v1, v6

    :cond_9
    return v1

    .line 1989
    :cond_a
    move v2, p1

    .local v2, "i":I
    :goto_4
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_c

    .line 1991
    invoke-static {p0, v2, p2, p3}, Lorg/osgi/framework/FrameworkUtil$DNChainMatching;->dnChainMatch(Ljava/util/List;ILjava/util/List;I)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1992
    return v6

    .line 1989
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 2051
    .end local v2    # "i":I
    :cond_c
    return v1

    .line 1998
    :cond_d
    instance-of v2, v0, Ljava/util/List;

    const-string v7, "expected String or List in DN Pattern"

    if-eqz v2, :cond_17

    .line 2002
    :goto_5
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move-object v8, v0

    check-cast v8, Ljava/util/List;

    invoke-static {v2, v8}, Lorg/osgi/framework/FrameworkUtil$DNChainMatching;->dnmatch(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 2003
    return v1

    .line 2006
    :cond_e
    add-int/lit8 p1, p1, 0x1

    .line 2007
    add-int/lit8 p3, p3, 0x1

    .line 2009
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-lt p1, v2, :cond_f

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lt p3, v2, :cond_f

    .line 2010
    return v6

    .line 2015
    :cond_f
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-lt p1, v2, :cond_11

    .line 2016
    invoke-static {p2, p3}, Lorg/osgi/framework/FrameworkUtil$DNChainMatching;->skipWildCards(Ljava/util/List;I)I

    move-result p3

    .line 2020
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lt p3, v2, :cond_10

    move v1, v6

    :cond_10
    return v1

    .line 2024
    :cond_11
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lt p3, v2, :cond_12

    .line 2025
    return v1

    .line 2028
    :cond_12
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 2029
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_15

    .line 2030
    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_6

    .line 2031
    :cond_13
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2035
    :cond_14
    :goto_6
    invoke-static {p0, p1, p2, p3}, Lorg/osgi/framework/FrameworkUtil$DNChainMatching;->dnChainMatch(Ljava/util/List;ILjava/util/List;I)Z

    move-result v1

    return v1

    .line 2037
    :cond_15
    instance-of v2, v0, Ljava/util/List;

    if-eqz v2, :cond_16

    goto :goto_5

    .line 2038
    :cond_16
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2047
    :cond_17
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static dnmatch(Ljava/util/List;Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;",
            "Ljava/util/List<",
            "*>;)Z"
        }
    .end annotation

    .line 1740
    .local p0, "dn":Ljava/util/List;, "Ljava/util/List<*>;"
    .local p1, "dnPattern":Ljava/util/List;, "Ljava/util/List<*>;"
    const/4 v0, 0x0

    .line 1741
    .local v0, "dnStart":I
    const/4 v1, 0x0

    .line 1742
    .local v1, "patStart":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 1743
    .local v2, "patLen":I
    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 1744
    return v3

    .line 1746
    :cond_0
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1747
    const/4 v1, 0x1

    .line 1748
    add-int/lit8 v2, v2, -0x1

    .line 1750
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v4, v2, :cond_2

    .line 1751
    return v3

    .line 1753
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v2, :cond_4

    .line 1754
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1757
    return v3

    .line 1761
    :cond_3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    sub-int v0, v4, v2

    .line 1764
    :cond_4
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_6

    .line 1765
    add-int v5, v4, v0

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    add-int v6, v4, v1

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v5, v6}, Lorg/osgi/framework/FrameworkUtil$DNChainMatching;->rdnmatch(Ljava/util/List;Ljava/util/List;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 1766
    return v3

    .line 1764
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1769
    .end local v4    # "i":I
    :cond_6
    const/4 v3, 0x1

    return v3
.end method

.method static match(Ljava/lang/String;Ljava/util/List;)Z
    .locals 6
    .param p0, "pattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 2091
    .local p1, "dnChain":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lorg/osgi/framework/FrameworkUtil$DNChainMatching;->parseDNchain(Ljava/util/List;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2096
    .local v1, "parsedDNChain":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    nop

    .line 2098
    :try_start_1
    invoke-static {p0}, Lorg/osgi/framework/FrameworkUtil$DNChainMatching;->parseDNchainPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2103
    .local v0, "parsedDNPattern":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    nop

    .line 2104
    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2}, Lorg/osgi/framework/FrameworkUtil$DNChainMatching;->dnChainMatch(Ljava/util/List;ILjava/util/List;I)Z

    move-result v2

    return v2

    .line 2099
    .end local v0    # "parsedDNPattern":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :catch_0
    move-exception v2

    .line 2100
    .restart local v0    # "parsedDNPattern":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .local v2, "e":Ljava/lang/RuntimeException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid match pattern: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 2101
    .local v3, "iae":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v3, v2}, Ljava/lang/IllegalArgumentException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 2102
    throw v3

    .line 2092
    .end local v0    # "parsedDNPattern":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v1    # "parsedDNChain":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v2    # "e":Ljava/lang/RuntimeException;
    .end local v3    # "iae":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 2093
    .local v0, "parsedDNChain":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .local v1, "e":Ljava/lang/RuntimeException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid DN chain: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lorg/osgi/framework/FrameworkUtil$DNChainMatching;->toString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 2094
    .local v2, "iae":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2, v1}, Ljava/lang/IllegalArgumentException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 2095
    throw v2
.end method

.method private static parseDN(Ljava/lang/String;Ljava/util/List;)V
    .locals 7
    .param p0, "dn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1889
    .local p1, "rdn":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .line 1890
    .local v0, "startIndex":I
    const/4 v1, 0x0

    .line 1891
    .local v1, "c":C
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1892
    .local v2, "nameValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_6

    .line 1894
    move v3, v0

    .local v3, "endIndex":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x2b

    if-ge v3, v4, :cond_2

    .line 1895
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1896
    const/16 v4, 0x2c

    if-eq v1, v4, :cond_2

    if-ne v1, v5, :cond_0

    .line 1897
    goto :goto_2

    .line 1899
    :cond_0
    const/16 v4, 0x5c

    if-ne v1, v4, :cond_1

    .line 1900
    add-int/lit8 v3, v3, 0x1

    .line 1894
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1903
    :cond_2
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v3, v4, :cond_5

    .line 1906
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1907
    if-eq v1, v5, :cond_4

    .line 1908
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1909
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v3, v4, :cond_3

    .line 1910
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v4

    goto :goto_3

    .line 1912
    :cond_3
    const/4 v2, 0x0

    .line 1915
    :cond_4
    :goto_3
    add-int/lit8 v0, v3, 0x1

    .line 1916
    .end local v3    # "endIndex":I
    goto :goto_0

    .line 1904
    .restart local v3    # "endIndex":I
    :cond_5
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unterminated escape "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1917
    .end local v3    # "endIndex":I
    :cond_6
    if-nez v2, :cond_7

    .line 1920
    return-void

    .line 1918
    :cond_7
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "improperly terminated DN "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static parseDNchain(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1850
    .local p0, "chain":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p0, :cond_2

    .line 1853
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1856
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1857
    .local v2, "dn":Ljava/lang/String;
    new-instance v3, Ljavax/security/auth/x500/X500Principal;

    invoke-direct {v3, v2}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    const-string v4, "CANONICAL"

    invoke-virtual {v3, v4}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1859
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1860
    .local v3, "rdns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-static {v2, v3}, Lorg/osgi/framework/FrameworkUtil$DNChainMatching;->parseDN(Ljava/lang/String;Ljava/util/List;)V

    .line 1861
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1862
    .end local v2    # "dn":Ljava/lang/String;
    .end local v3    # "rdns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    goto :goto_0

    .line 1863
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 1866
    return-object v0

    .line 1864
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "empty DN chain"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1851
    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DN chain must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static parseDNchainPattern(Ljava/lang/String;)Ljava/util/List;
    .locals 13
    .param p0, "pattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1786
    if-eqz p0, :cond_c

    .line 1789
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1790
    .local v0, "parsed":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1791
    .local v1, "length":I
    const/16 v2, 0x3b

    .line 1792
    .local v2, "c":C
    const/4 v3, 0x0

    invoke-static {p0, v3}, Lorg/osgi/framework/FrameworkUtil$DNChainMatching;->skipSpaces(Ljava/lang/String;I)I

    move-result v4

    .local v4, "startIndex":I
    :goto_0
    const/4 v5, 0x1

    if-ge v4, v1, :cond_5

    .line 1793
    move v6, v4

    .line 1794
    .local v6, "cursor":I
    move v7, v4

    .line 1795
    .local v7, "endIndex":I
    const/4 v8, 0x0

    .local v8, "inQuote":Z
    :goto_1
    if-ge v6, v1, :cond_4

    .line 1796
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1797
    sparse-switch v2, :sswitch_data_0

    goto :goto_3

    .line 1802
    :sswitch_0
    add-int/lit8 v6, v6, 0x1

    .line 1803
    if-eq v6, v1, :cond_0

    goto :goto_3

    .line 1804
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "unterminated escape"

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1808
    :sswitch_1
    if-nez v8, :cond_2

    .line 1809
    goto :goto_4

    .line 1799
    :sswitch_2
    if-nez v8, :cond_1

    move v9, v5

    goto :goto_2

    :cond_1
    move v9, v3

    :goto_2
    move v8, v9

    .line 1800
    nop

    .line 1813
    :cond_2
    :goto_3
    const/16 v9, 0x20

    if-eq v2, v9, :cond_3

    .line 1814
    add-int/lit8 v7, v6, 0x1

    .line 1795
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1817
    .end local v8    # "inQuote":Z
    :cond_4
    :goto_4
    invoke-virtual {p0, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1818
    add-int/lit8 v5, v6, 0x1

    invoke-static {p0, v5}, Lorg/osgi/framework/FrameworkUtil$DNChainMatching;->skipSpaces(Ljava/lang/String;I)I

    move-result v4

    .line 1819
    .end local v6    # "cursor":I
    .end local v7    # "endIndex":I
    goto :goto_0

    .line 1820
    .end local v4    # "startIndex":I
    :cond_5
    const/16 v4, 0x3b

    if-eq v2, v4, :cond_b

    .line 1826
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_a

    .line 1827
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1828
    .local v6, "dn":Ljava/lang/String;
    const-string v7, "*"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    const-string v8, "-"

    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1829
    goto :goto_7

    .line 1831
    :cond_6
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1832
    .local v8, "rdns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x2a

    const-string v11, "CANONICAL"

    if-ne v9, v10, :cond_8

    .line 1833
    invoke-static {v6, v5}, Lorg/osgi/framework/FrameworkUtil$DNChainMatching;->skipSpaces(Ljava/lang/String;I)I

    move-result v9

    .line 1834
    .local v9, "index":I
    invoke-virtual {v6, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v12, 0x2c

    if-ne v10, v12, :cond_7

    .line 1837
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1838
    new-instance v7, Ljavax/security/auth/x500/X500Principal;

    add-int/lit8 v10, v9, 0x1

    invoke-virtual {v6, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v11}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1839
    .end local v9    # "index":I
    goto :goto_6

    .line 1835
    .restart local v9    # "index":I
    :cond_7
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "invalid wildcard prefix"

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1840
    .end local v9    # "index":I
    :cond_8
    new-instance v7, Ljavax/security/auth/x500/X500Principal;

    invoke-direct {v7, v6}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v11}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1843
    :goto_6
    invoke-static {v6, v8}, Lorg/osgi/framework/FrameworkUtil$DNChainMatching;->parseDN(Ljava/lang/String;Ljava/util/List;)V

    .line 1844
    invoke-interface {v0, v4, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1826
    .end local v6    # "dn":Ljava/lang/String;
    .end local v8    # "rdns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_9
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 1846
    .end local v4    # "i":I
    :cond_a
    return-object v0

    .line 1821
    :cond_b
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "empty pattern"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1787
    .end local v0    # "parsed":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v1    # "length":I
    .end local v2    # "c":C
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The pattern must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_2
        0x3b -> :sswitch_1
        0x5c -> :sswitch_0
    .end sparse-switch
.end method

.method private static rdnmatch(Ljava/util/List;Ljava/util/List;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;",
            "Ljava/util/List<",
            "*>;)Z"
        }
    .end annotation

    .line 1719
    .local p0, "rdn":Ljava/util/List;, "Ljava/util/List<*>;"
    .local p1, "rdnPattern":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 1720
    return v2

    .line 1722
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 1723
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1724
    .local v1, "rdnNameValue":Ljava/lang/String;
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1725
    .local v3, "patNameValue":Ljava/lang/String;
    const/16 v4, 0x3d

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 1726
    .local v5, "rdnNameEnd":I
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 1727
    .local v4, "patNameEnd":I
    if-ne v5, v4, :cond_3

    invoke-virtual {v1, v2, v3, v2, v5}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    .line 1730
    :cond_1
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 1731
    .local v6, "patValue":Ljava/lang/String;
    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 1732
    .local v7, "rdnValue":Ljava/lang/String;
    invoke-virtual {v7, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "=*"

    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "=#16012a"

    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 1733
    return v2

    .line 1722
    .end local v1    # "rdnNameValue":Ljava/lang/String;
    .end local v3    # "patNameValue":Ljava/lang/String;
    .end local v4    # "patNameEnd":I
    .end local v5    # "rdnNameEnd":I
    .end local v6    # "patValue":Ljava/lang/String;
    .end local v7    # "rdnValue":Ljava/lang/String;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1728
    .restart local v1    # "rdnNameValue":Ljava/lang/String;
    .restart local v3    # "patNameValue":Ljava/lang/String;
    .restart local v4    # "patNameEnd":I
    .restart local v5    # "rdnNameEnd":I
    :cond_3
    :goto_1
    return v2

    .line 1736
    .end local v0    # "i":I
    .end local v1    # "rdnNameValue":Ljava/lang/String;
    .end local v3    # "patNameValue":Ljava/lang/String;
    .end local v4    # "patNameEnd":I
    .end local v5    # "rdnNameEnd":I
    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method private static skipSpaces(Ljava/lang/String;I)I
    .locals 2
    .param p0, "dnChain"    # Ljava/lang/String;
    .param p1, "startIndex"    # I

    .line 1874
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 1875
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 1877
    :cond_0
    return p1
.end method

.method private static skipWildCards(Ljava/util/List;I)I
    .locals 4
    .param p1, "dnChainPatternIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;I)I"
        }
    .end annotation

    .line 1928
    .local p0, "dnChainPattern":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    move v0, p1

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 1929
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 1930
    .local v1, "dnPattern":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 1931
    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 1932
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "expected wildcard in DN pattern"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1928
    .end local v1    # "dnPattern":Ljava/lang/Object;
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1936
    .restart local v1    # "dnPattern":Ljava/lang/Object;
    :cond_2
    instance-of v2, v1, Ljava/util/List;

    if-eqz v2, :cond_3

    .line 1938
    goto :goto_2

    .line 1941
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "expected String or List in DN Pattern"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1947
    .end local v1    # "dnPattern":Ljava/lang/Object;
    :cond_4
    :goto_2
    return v0
.end method

.method private static toString(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 2108
    .local p0, "dnChain":Ljava/util/List;, "Ljava/util/List<*>;"
    if-nez p0, :cond_0

    .line 2109
    const/4 v0, 0x0

    return-object v0

    .line 2111
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 2112
    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iChain":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2113
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 2114
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2115
    const-string v2, "; "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 2118
    .end local v1    # "iChain":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
