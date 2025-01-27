.class public Lch/qos/logback/core/joran/spi/ElementPath;
.super Ljava/lang/Object;
.source "ElementPath.java"


# instance fields
.field partList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lch/qos/logback/core/joran/spi/ElementPath;->partList:Ljava/util/ArrayList;

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .param p1, "pathStr"    # Ljava/lang/String;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lch/qos/logback/core/joran/spi/ElementPath;->partList:Ljava/util/ArrayList;

    .line 42
    if-nez p1, :cond_0

    .line 43
    return-void

    .line 46
    :cond_0
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "partArray":[Ljava/lang/String;
    if-nez v0, :cond_1

    .line 48
    return-void

    .line 50
    :cond_1
    move-object v1, v0

    .local v1, "arr$":[Ljava/lang/String;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 51
    .local v4, "part":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 52
    iget-object v5, p0, Lch/qos/logback/core/joran/spi/ElementPath;->partList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    .end local v4    # "part":Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 55
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_3
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 32
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lch/qos/logback/core/joran/spi/ElementPath;->partList:Ljava/util/ArrayList;

    .line 33
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 34
    return-void
.end method

.method private equalityCheck(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "x"    # Ljava/lang/String;
    .param p2, "y"    # Ljava/lang/String;

    .line 89
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public duplicate()Lch/qos/logback/core/joran/spi/ElementPath;
    .locals 3

    .line 58
    new-instance v0, Lch/qos/logback/core/joran/spi/ElementPath;

    invoke-direct {v0}, Lch/qos/logback/core/joran/spi/ElementPath;-><init>()V

    .line 59
    .local v0, "p":Lch/qos/logback/core/joran/spi/ElementPath;
    iget-object v1, v0, Lch/qos/logback/core/joran/spi/ElementPath;->partList:Ljava/util/ArrayList;

    iget-object v2, p0, Lch/qos/logback/core/joran/spi/ElementPath;->partList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 60
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 66
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    instance-of v1, p1, Lch/qos/logback/core/joran/spi/ElementPath;

    if-nez v1, :cond_0

    goto :goto_1

    .line 70
    :cond_0
    move-object v1, p1

    check-cast v1, Lch/qos/logback/core/joran/spi/ElementPath;

    .line 72
    .local v1, "r":Lch/qos/logback/core/joran/spi/ElementPath;
    invoke-virtual {v1}, Lch/qos/logback/core/joran/spi/ElementPath;->size()I

    move-result v2

    invoke-virtual {p0}, Lch/qos/logback/core/joran/spi/ElementPath;->size()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 73
    return v0

    .line 76
    :cond_1
    invoke-virtual {p0}, Lch/qos/logback/core/joran/spi/ElementPath;->size()I

    move-result v2

    .line 78
    .local v2, "len":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 79
    invoke-virtual {p0, v3}, Lch/qos/logback/core/joran/spi/ElementPath;->get(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3}, Lch/qos/logback/core/joran/spi/ElementPath;->get(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lch/qos/logback/core/joran/spi/ElementPath;->equalityCheck(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 80
    return v0

    .line 78
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 85
    .end local v3    # "i":I
    :cond_3
    const/4 v0, 0x1

    return v0

    .line 67
    .end local v1    # "r":Lch/qos/logback/core/joran/spi/ElementPath;
    .end local v2    # "len":I
    :cond_4
    :goto_1
    return v0
.end method

.method public get(I)Ljava/lang/String;
    .locals 1
    .param p1, "i"    # I

    .line 101
    iget-object v0, p0, Lch/qos/logback/core/joran/spi/ElementPath;->partList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getCopyOfPartList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lch/qos/logback/core/joran/spi/ElementPath;->partList:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public peekLast()Ljava/lang/String;
    .locals 3

    .line 111
    iget-object v0, p0, Lch/qos/logback/core/joran/spi/ElementPath;->partList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    iget-object v0, p0, Lch/qos/logback/core/joran/spi/ElementPath;->partList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 113
    .local v0, "size":I
    iget-object v1, p0, Lch/qos/logback/core/joran/spi/ElementPath;->partList:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 115
    .end local v0    # "size":I
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public pop()V
    .locals 2

    .line 105
    iget-object v0, p0, Lch/qos/logback/core/joran/spi/ElementPath;->partList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lch/qos/logback/core/joran/spi/ElementPath;->partList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 108
    :cond_0
    return-void
.end method

.method public push(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 97
    iget-object v0, p0, Lch/qos/logback/core/joran/spi/ElementPath;->partList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    return-void
.end method

.method public size()I
    .locals 1

    .line 120
    iget-object v0, p0, Lch/qos/logback/core/joran/spi/ElementPath;->partList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method protected toStableString()Ljava/lang/String;
    .locals 5

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .local v0, "result":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lch/qos/logback/core/joran/spi/ElementPath;->partList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 126
    .local v2, "current":Ljava/lang/String;
    const-string v3, "["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .end local v2    # "current":Ljava/lang/String;
    goto :goto_0

    .line 128
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 133
    invoke-virtual {p0}, Lch/qos/logback/core/joran/spi/ElementPath;->toStableString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
