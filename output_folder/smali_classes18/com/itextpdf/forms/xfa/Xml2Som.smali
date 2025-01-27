.class Lcom/itextpdf/forms/xfa/Xml2Som;
.super Ljava/lang/Object;
.source "Xml2Som.java"


# instance fields
.field protected anform:I

.field protected inverseSearch:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/forms/xfa/InverseStore;",
            ">;"
        }
    .end annotation
.end field

.field protected name2Node:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/w3c/dom/Node;",
            ">;"
        }
    .end annotation
.end field

.field protected order:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected stack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static escapeSom(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "s"    # Ljava/lang/String;

    .line 84
    if-nez p0, :cond_0

    .line 85
    const-string v0, ""

    return-object v0

    .line 86
    :cond_0
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 87
    .local v1, "idx":I
    if-gez v1, :cond_1

    .line 88
    return-object p0

    .line 89
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 91
    .local v3, "last":I
    :goto_0
    if-ltz v1, :cond_2

    .line 92
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    const/16 v4, 0x5c

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 94
    move v3, v1

    .line 95
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v0, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    goto :goto_0

    .line 97
    :cond_2
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getShortName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "s"    # Ljava/lang/String;

    .line 145
    const-string v0, ".#subform["

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 146
    .local v1, "idx":I
    if-gez v1, :cond_0

    .line 147
    return-object p0

    .line 148
    :cond_0
    const/4 v2, 0x0

    .line 149
    .local v2, "last":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .local v3, "sb":Ljava/lang/StringBuilder;
    :goto_0
    if-ltz v1, :cond_2

    .line 151
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    add-int/lit8 v4, v1, 0xa

    const-string v5, "]"

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 153
    if-gez v1, :cond_1

    .line 154
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 155
    :cond_1
    add-int/lit8 v2, v1, 0x1

    .line 156
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    .line 158
    :cond_2
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static inverseSearchAdd(Ljava/util/Map;Ljava/util/Stack;Ljava/lang/String;)V
    .locals 6
    .param p2, "unstack"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/forms/xfa/InverseStore;",
            ">;",
            "Ljava/util/Stack<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 179
    .local p0, "inverseSearch":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/itextpdf/forms/xfa/InverseStore;>;"
    .local p1, "stack":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 180
    .local v0, "last":Ljava/lang/String;
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/forms/xfa/InverseStore;

    .line 181
    .local v1, "store":Lcom/itextpdf/forms/xfa/InverseStore;
    if-nez v1, :cond_0

    .line 182
    new-instance v2, Lcom/itextpdf/forms/xfa/InverseStore;

    invoke-direct {v2}, Lcom/itextpdf/forms/xfa/InverseStore;-><init>()V

    move-object v1, v2

    .line 183
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    :cond_0
    invoke-virtual {p1}, Ljava/util/Stack;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    .local v2, "k":I
    :goto_0
    if-ltz v2, :cond_2

    .line 186
    invoke-virtual {p1, v2}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    .line 188
    iget-object v3, v1, Lcom/itextpdf/forms/xfa/InverseStore;->part:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 189
    .local v3, "idx":I
    if-gez v3, :cond_1

    .line 190
    iget-object v4, v1, Lcom/itextpdf/forms/xfa/InverseStore;->part:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    new-instance v4, Lcom/itextpdf/forms/xfa/InverseStore;

    invoke-direct {v4}, Lcom/itextpdf/forms/xfa/InverseStore;-><init>()V

    .line 192
    .local v4, "store2":Lcom/itextpdf/forms/xfa/InverseStore;
    iget-object v5, v1, Lcom/itextpdf/forms/xfa/InverseStore;->follow:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 194
    .end local v4    # "store2":Lcom/itextpdf/forms/xfa/InverseStore;
    :cond_1
    iget-object v4, v1, Lcom/itextpdf/forms/xfa/InverseStore;->follow:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/forms/xfa/InverseStore;

    .line 195
    .restart local v4    # "store2":Lcom/itextpdf/forms/xfa/InverseStore;
    :goto_1
    move-object v1, v4

    .line 185
    .end local v3    # "idx":I
    .end local v4    # "store2":Lcom/itextpdf/forms/xfa/InverseStore;
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 197
    .end local v2    # "k":I
    :cond_2
    iget-object v2, v1, Lcom/itextpdf/forms/xfa/InverseStore;->part:Ljava/util/List;

    const-string v3, ""

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    iget-object v2, v1, Lcom/itextpdf/forms/xfa/InverseStore;->follow:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    return-void
.end method

.method public static splitParts(Ljava/lang/String;)Ljava/util/Stack;
    .locals 6
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Stack<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 234
    :goto_0
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 236
    :cond_0
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 237
    .local v0, "parts":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 238
    .local v1, "last":I
    const/4 v2, 0x0

    .line 241
    .local v2, "pos":I
    :goto_1
    move v2, v1

    .line 243
    :goto_2
    const/16 v3, 0x2e

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 244
    if-gez v2, :cond_1

    .line 245
    goto :goto_3

    .line 246
    :cond_1
    add-int/lit8 v3, v2, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_2

    .line 247
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 251
    :cond_2
    :goto_3
    const-string v3, "[0]"

    const-string v4, "]"

    if-gez v2, :cond_4

    .line 252
    nop

    .line 259
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 260
    .local v5, "part":Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 261
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 262
    :cond_3
    invoke-virtual {v0, v5}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 263
    return-object v0

    .line 253
    .end local v5    # "part":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 254
    .restart local v5    # "part":Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 255
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 256
    :cond_5
    invoke-virtual {v0, v5}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 257
    add-int/lit8 v1, v2, 0x1

    goto :goto_1
.end method

.method public static unescapeSom(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "s"    # Ljava/lang/String;

    .line 108
    const/16 v0, 0x5c

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 109
    .local v1, "idx":I
    if-gez v1, :cond_0

    .line 110
    return-object p0

    .line 111
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 113
    .local v3, "last":I
    :goto_0
    if-ltz v1, :cond_1

    .line 114
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    add-int/lit8 v3, v1, 0x1

    .line 116
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v0, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    goto :goto_0

    .line 118
    :cond_1
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getInverseSearch()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/forms/xfa/InverseStore;",
            ">;"
        }
    .end annotation

    .line 308
    iget-object v0, p0, Lcom/itextpdf/forms/xfa/Xml2Som;->inverseSearch:Ljava/util/Map;

    return-object v0
.end method

.method public getName2Node()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/w3c/dom/Node;",
            ">;"
        }
    .end annotation

    .line 290
    iget-object v0, p0, Lcom/itextpdf/forms/xfa/Xml2Som;->name2Node:Ljava/util/Map;

    return-object v0
.end method

.method public getOrder()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 272
    iget-object v0, p0, Lcom/itextpdf/forms/xfa/Xml2Som;->order:Ljava/util/List;

    return-object v0
.end method

.method public inverseSearchAdd(Ljava/lang/String;)V
    .locals 2
    .param p1, "unstack"    # Ljava/lang/String;

    .line 168
    iget-object v0, p0, Lcom/itextpdf/forms/xfa/Xml2Som;->inverseSearch:Ljava/util/Map;

    iget-object v1, p0, Lcom/itextpdf/forms/xfa/Xml2Som;->stack:Ljava/util/Stack;

    invoke-static {v0, v1, p1}, Lcom/itextpdf/forms/xfa/Xml2Som;->inverseSearchAdd(Ljava/util/Map;Ljava/util/Stack;Ljava/lang/String;)V

    .line 169
    return-void
.end method

.method public inverseSearchGlobal(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 208
    .local p1, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 209
    return-object v1

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/forms/xfa/Xml2Som;->inverseSearch:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/forms/xfa/InverseStore;

    .line 212
    .local v0, "store":Lcom/itextpdf/forms/xfa/InverseStore;
    if-nez v0, :cond_1

    .line 213
    return-object v1

    .line 214
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    .local v2, "k":I
    :goto_0
    if-ltz v2, :cond_4

    .line 215
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 216
    .local v3, "part":Ljava/lang/String;
    iget-object v4, v0, Lcom/itextpdf/forms/xfa/InverseStore;->part:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 217
    .local v4, "idx":I
    if-gez v4, :cond_3

    .line 218
    invoke-virtual {v0, v3}, Lcom/itextpdf/forms/xfa/InverseStore;->isSimilar(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 219
    return-object v1

    .line 220
    :cond_2
    invoke-virtual {v0}, Lcom/itextpdf/forms/xfa/InverseStore;->getDefaultName()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 222
    :cond_3
    iget-object v5, v0, Lcom/itextpdf/forms/xfa/InverseStore;->follow:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/itextpdf/forms/xfa/InverseStore;

    .line 214
    .end local v3    # "part":Ljava/lang/String;
    .end local v4    # "idx":I
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 224
    .end local v2    # "k":I
    :cond_4
    invoke-virtual {v0}, Lcom/itextpdf/forms/xfa/InverseStore;->getDefaultName()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected printStack()Ljava/lang/String;
    .locals 4

    .line 129
    iget-object v0, p0, Lcom/itextpdf/forms/xfa/Xml2Som;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 130
    const-string v0, ""

    return-object v0

    .line 132
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    .local v0, "s":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_0
    iget-object v2, p0, Lcom/itextpdf/forms/xfa/Xml2Som;->stack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 134
    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/itextpdf/forms/xfa/Xml2Som;->stack:Ljava/util/Stack;

    invoke-virtual {v3, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 135
    .end local v1    # "k":I
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public setInverseSearch(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/forms/xfa/InverseStore;",
            ">;)V"
        }
    .end annotation

    .line 317
    .local p1, "inverseSearch":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/itextpdf/forms/xfa/InverseStore;>;"
    iput-object p1, p0, Lcom/itextpdf/forms/xfa/Xml2Som;->inverseSearch:Ljava/util/Map;

    .line 318
    return-void
.end method

.method public setName2Node(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/w3c/dom/Node;",
            ">;)V"
        }
    .end annotation

    .line 299
    .local p1, "name2Node":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/w3c/dom/Node;>;"
    iput-object p1, p0, Lcom/itextpdf/forms/xfa/Xml2Som;->name2Node:Ljava/util/Map;

    .line 300
    return-void
.end method

.method public setOrder(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 281
    .local p1, "order":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/itextpdf/forms/xfa/Xml2Som;->order:Ljava/util/List;

    .line 282
    return-void
.end method
