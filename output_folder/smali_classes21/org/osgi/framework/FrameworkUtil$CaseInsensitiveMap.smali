.class final Lorg/osgi/framework/FrameworkUtil$CaseInsensitiveMap;
.super Ljava/util/AbstractMap;
.source "FrameworkUtil.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osgi/framework/FrameworkUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CaseInsensitiveMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final dictionary:Ljava/util/Dictionary;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Dictionary<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation
.end field

.field private final keys:[Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/util/Dictionary;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Dictionary<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .line 1599
    .local p1, "dictionary":Ljava/util/Dictionary;, "Ljava/util/Dictionary<Ljava/lang/String;*>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 1600
    if-nez p1, :cond_0

    .line 1601
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osgi/framework/FrameworkUtil$CaseInsensitiveMap;->dictionary:Ljava/util/Dictionary;

    .line 1602
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/osgi/framework/FrameworkUtil$CaseInsensitiveMap;->keys:[Ljava/lang/String;

    .line 1603
    return-void

    .line 1605
    :cond_0
    iput-object p1, p0, Lorg/osgi/framework/FrameworkUtil$CaseInsensitiveMap;->dictionary:Ljava/util/Dictionary;

    .line 1606
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/Dictionary;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1607
    .local v0, "keyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/Dictionary;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1608
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    .line 1609
    .local v2, "k":Ljava/lang/Object;
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 1610
    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    .line 1611
    .local v3, "key":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1612
    .local v5, "i":Ljava/lang/String;
    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1613
    .end local v5    # "i":Ljava/lang/String;
    goto :goto_1

    .restart local v5    # "i":Ljava/lang/String;
    :cond_1
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v6

    .line 1616
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "i":Ljava/lang/String;
    :cond_2
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1618
    .end local v2    # "k":Ljava/lang/Object;
    .end local v3    # "key":Ljava/lang/String;
    :cond_3
    goto :goto_0

    .line 1619
    .end local v1    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Lorg/osgi/framework/FrameworkUtil$CaseInsensitiveMap;->keys:[Ljava/lang/String;

    .line 1620
    return-void
.end method


# virtual methods
.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 1634
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 1624
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    .line 1625
    .local v0, "k":Ljava/lang/String;
    iget-object v1, p0, Lorg/osgi/framework/FrameworkUtil$CaseInsensitiveMap;->keys:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 1626
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1627
    iget-object v5, p0, Lorg/osgi/framework/FrameworkUtil$CaseInsensitiveMap;->dictionary:Ljava/util/Dictionary;

    invoke-virtual {v5, v4}, Ljava/util/Dictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    return-object v5

    .line 1625
    .end local v4    # "key":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1630
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method
