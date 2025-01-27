.class public abstract Lorg/jdom2/xpath/util/AbstractXPathCompiled;
.super Ljava/lang/Object;
.source "AbstractXPathCompiled.java"

# interfaces
.implements Lorg/jdom2/xpath/XPathExpression;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jdom2/xpath/util/AbstractXPathCompiled$NamespaceComparator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/jdom2/xpath/XPathExpression<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final NSSORT:Lorg/jdom2/xpath/util/AbstractXPathCompiled$NamespaceComparator;


# instance fields
.field private final xfilter:Lorg/jdom2/filter/Filter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jdom2/filter/Filter<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final xnamespaces:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/jdom2/Namespace;",
            ">;"
        }
    .end annotation
.end field

.field private final xquery:Ljava/lang/String;

.field private xvariables:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 89
    new-instance v0, Lorg/jdom2/xpath/util/AbstractXPathCompiled$NamespaceComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/jdom2/xpath/util/AbstractXPathCompiled$NamespaceComparator;-><init>(Lorg/jdom2/xpath/util/AbstractXPathCompiled$1;)V

    sput-object v0, Lorg/jdom2/xpath/util/AbstractXPathCompiled;->NSSORT:Lorg/jdom2/xpath/util/AbstractXPathCompiled$NamespaceComparator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/jdom2/filter/Filter;Ljava/util/Map;[Lorg/jdom2/Namespace;)V
    .locals 16
    .param p1, "query"    # Ljava/lang/String;
    .param p4, "namespaces"    # [Lorg/jdom2/Namespace;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/jdom2/filter/Filter<",
            "TT;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;[",
            "Lorg/jdom2/Namespace;",
            ")V"
        }
    .end annotation

    .line 127
    .local p0, "this":Lorg/jdom2/xpath/util/AbstractXPathCompiled;, "Lorg/jdom2/xpath/util/AbstractXPathCompiled<TT;>;"
    .local p2, "filter":Lorg/jdom2/filter/Filter;, "Lorg/jdom2/filter/Filter<TT;>;"
    .local p3, "variables":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v0, Lorg/jdom2/xpath/util/AbstractXPathCompiled;->xnamespaces:Ljava/util/Map;

    .line 108
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v0, Lorg/jdom2/xpath/util/AbstractXPathCompiled;->xvariables:Ljava/util/Map;

    .line 128
    if-eqz v1, :cond_e

    .line 131
    if-eqz v2, :cond_d

    .line 134
    sget-object v4, Lorg/jdom2/Namespace;->NO_NAMESPACE:Lorg/jdom2/Namespace;

    invoke-virtual {v4}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lorg/jdom2/Namespace;->NO_NAMESPACE:Lorg/jdom2/Namespace;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    if-eqz p4, :cond_3

    .line 137
    move-object/from16 v3, p4

    .local v3, "arr$":[Lorg/jdom2/Namespace;
    array-length v4, v3

    .local v4, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v4, :cond_3

    aget-object v6, v3, v5

    .line 138
    .local v6, "ns":Lorg/jdom2/Namespace;
    if-eqz v6, :cond_2

    .line 141
    iget-object v7, v0, Lorg/jdom2/xpath/util/AbstractXPathCompiled;->xnamespaces:Ljava/util/Map;

    invoke-virtual {v6}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/jdom2/Namespace;

    .line 142
    .local v7, "oldns":Lorg/jdom2/Namespace;
    if-eqz v7, :cond_1

    if-eq v7, v6, :cond_1

    .line 143
    sget-object v8, Lorg/jdom2/Namespace;->NO_NAMESPACE:Lorg/jdom2/Namespace;

    if-ne v7, v8, :cond_0

    .line 144
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "The default (no prefix) Namespace URI for XPath queries is always \'\' and it cannot be redefined to \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Lorg/jdom2/Namespace;->getURI()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 148
    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "A Namespace with the prefix \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\' has already been declared."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 137
    .end local v6    # "ns":Lorg/jdom2/Namespace;
    .end local v7    # "oldns":Lorg/jdom2/Namespace;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 139
    .restart local v6    # "ns":Lorg/jdom2/Namespace;
    :cond_2
    new-instance v7, Ljava/lang/NullPointerException;

    const-string v8, "Null namespace"

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 155
    .end local v3    # "arr$":[Lorg/jdom2/Namespace;
    .end local v4    # "len$":I
    .end local v5    # "i$":I
    .end local v6    # "ns":Lorg/jdom2/Namespace;
    :cond_3
    if-eqz p3, :cond_c

    .line 156
    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 157
    .local v4, "me":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 158
    .local v5, "qname":Ljava/lang/String;
    if-eqz v5, :cond_b

    .line 161
    const/16 v6, 0x3a

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 162
    .local v6, "p":I
    if-gez v6, :cond_4

    const-string v7, ""

    goto :goto_2

    :cond_4
    const/4 v7, 0x0

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 163
    .local v7, "pfx":Ljava/lang/String;
    :goto_2
    if-gez v6, :cond_5

    move-object v8, v5

    goto :goto_3

    :cond_5
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 165
    .local v8, "lname":Ljava/lang/String;
    :goto_3
    invoke-static {v7}, Lorg/jdom2/Verifier;->checkNamespacePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 166
    .local v9, "vpfxmsg":Ljava/lang/String;
    const-string v10, " is illegal: "

    const-string v11, "Prefix \'"

    const-string v12, "\' for variable "

    if-nez v9, :cond_a

    .line 171
    invoke-static {v8}, Lorg/jdom2/Verifier;->checkXMLName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 172
    .local v13, "vnamemsg":Ljava/lang/String;
    if-nez v13, :cond_9

    .line 178
    iget-object v10, v0, Lorg/jdom2/xpath/util/AbstractXPathCompiled;->xnamespaces:Ljava/util/Map;

    invoke-interface {v10, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/jdom2/Namespace;

    .line 179
    .local v10, "ns":Lorg/jdom2/Namespace;
    if-eqz v10, :cond_8

    .line 185
    iget-object v11, v0, Lorg/jdom2/xpath/util/AbstractXPathCompiled;->xvariables:Ljava/util/Map;

    invoke-virtual {v10}, Lorg/jdom2/Namespace;->getURI()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map;

    .line 186
    .local v11, "vmap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v11, :cond_6

    .line 187
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    move-object v11, v12

    .line 188
    iget-object v12, v0, Lorg/jdom2/xpath/util/AbstractXPathCompiled;->xvariables:Ljava/util/Map;

    invoke-virtual {v10}, Lorg/jdom2/Namespace;->getURI()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v12, v14, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    :cond_6
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v11, v8, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_7

    .line 195
    .end local v4    # "me":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5    # "qname":Ljava/lang/String;
    .end local v6    # "p":I
    .end local v7    # "pfx":Ljava/lang/String;
    .end local v8    # "lname":Ljava/lang/String;
    .end local v9    # "vpfxmsg":Ljava/lang/String;
    .end local v10    # "ns":Lorg/jdom2/Namespace;
    .end local v11    # "vmap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v13    # "vnamemsg":Ljava/lang/String;
    goto :goto_1

    .line 192
    .restart local v4    # "me":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v5    # "qname":Ljava/lang/String;
    .restart local v6    # "p":I
    .restart local v7    # "pfx":Ljava/lang/String;
    .restart local v8    # "lname":Ljava/lang/String;
    .restart local v9    # "vpfxmsg":Ljava/lang/String;
    .restart local v10    # "ns":Lorg/jdom2/Namespace;
    .restart local v11    # "vmap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v13    # "vnamemsg":Ljava/lang/String;
    :cond_7
    new-instance v12, Ljava/lang/IllegalArgumentException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Variable with name "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\' has already been defined."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 180
    .end local v11    # "vmap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_8
    new-instance v14, Ljava/lang/IllegalArgumentException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " has not been assigned a Namespace."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v14, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 173
    .end local v10    # "ns":Lorg/jdom2/Namespace;
    :cond_9
    new-instance v11, Ljava/lang/IllegalArgumentException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Variable name \'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v11, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 167
    .end local v13    # "vnamemsg":Ljava/lang/String;
    :cond_a
    new-instance v13, Ljava/lang/IllegalArgumentException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v13, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 159
    .end local v6    # "p":I
    .end local v7    # "pfx":Ljava/lang/String;
    .end local v8    # "lname":Ljava/lang/String;
    .end local v9    # "vpfxmsg":Ljava/lang/String;
    :cond_b
    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "Variable with a null name"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 197
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "me":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5    # "qname":Ljava/lang/String;
    :cond_c
    iput-object v1, v0, Lorg/jdom2/xpath/util/AbstractXPathCompiled;->xquery:Ljava/lang/String;

    .line 198
    iput-object v2, v0, Lorg/jdom2/xpath/util/AbstractXPathCompiled;->xfilter:Lorg/jdom2/filter/Filter;

    .line 199
    return-void

    .line 132
    :cond_d
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Null filter"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 129
    :cond_e
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Null query"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static final getPrefixForURI(Ljava/lang/String;[Lorg/jdom2/Namespace;)Ljava/lang/String;
    .locals 5
    .param p0, "uri"    # Ljava/lang/String;
    .param p1, "nsa"    # [Lorg/jdom2/Namespace;

    .line 98
    move-object v0, p1

    .local v0, "arr$":[Lorg/jdom2/Namespace;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 99
    .local v3, "ns":Lorg/jdom2/Namespace;
    invoke-virtual {v3}, Lorg/jdom2/Namespace;->getURI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 100
    invoke-virtual {v3}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 98
    .end local v3    # "ns":Lorg/jdom2/Namespace;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 103
    .end local v0    # "arr$":[Lorg/jdom2/Namespace;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No namespace defined with URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 80
    .local p0, "this":Lorg/jdom2/xpath/util/AbstractXPathCompiled;, "Lorg/jdom2/xpath/util/AbstractXPathCompiled<TT;>;"
    invoke-virtual {p0}, Lorg/jdom2/xpath/util/AbstractXPathCompiled;->clone()Lorg/jdom2/xpath/XPathExpression;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/jdom2/xpath/XPathExpression;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jdom2/xpath/XPathExpression<",
            "TT;>;"
        }
    .end annotation

    .line 224
    .local p0, "this":Lorg/jdom2/xpath/util/AbstractXPathCompiled;, "Lorg/jdom2/xpath/util/AbstractXPathCompiled<TT;>;"
    const/4 v0, 0x0

    .line 227
    .local v0, "ret":Lorg/jdom2/xpath/util/AbstractXPathCompiled;, "Lorg/jdom2/xpath/util/AbstractXPathCompiled<TT;>;"
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jdom2/xpath/util/AbstractXPathCompiled;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    .local v1, "c":Lorg/jdom2/xpath/util/AbstractXPathCompiled;, "Lorg/jdom2/xpath/util/AbstractXPathCompiled<TT;>;"
    move-object v0, v1

    .line 234
    .end local v1    # "c":Lorg/jdom2/xpath/util/AbstractXPathCompiled;, "Lorg/jdom2/xpath/util/AbstractXPathCompiled<TT;>;"
    nop

    .line 235
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 236
    .local v1, "vmt":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    iget-object v2, p0, Lorg/jdom2/xpath/util/AbstractXPathCompiled;->xvariables:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 237
    .local v3, "me":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 238
    .local v4, "cmap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 239
    .local v6, "ne":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    .end local v6    # "ne":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_1

    .line 241
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    .end local v3    # "me":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v4    # "cmap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_0

    .line 243
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    iput-object v1, v0, Lorg/jdom2/xpath/util/AbstractXPathCompiled;->xvariables:Ljava/util/Map;

    .line 244
    return-object v0

    .line 230
    .end local v1    # "vmt":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :catch_0
    move-exception v1

    .line 231
    .local v1, "cnse":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Should never be getting a CloneNotSupportedException!"

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public diagnose(Ljava/lang/Object;Z)Lorg/jdom2/xpath/XPathDiagnostic;
    .locals 2
    .param p1, "context"    # Ljava/lang/Object;
    .param p2, "firstonly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Z)",
            "Lorg/jdom2/xpath/XPathDiagnostic<",
            "TT;>;"
        }
    .end annotation

    .line 373
    .local p0, "this":Lorg/jdom2/xpath/util/AbstractXPathCompiled;, "Lorg/jdom2/xpath/util/AbstractXPathCompiled<TT;>;"
    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lorg/jdom2/xpath/util/AbstractXPathCompiled;->evaluateRawFirst(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/jdom2/xpath/util/AbstractXPathCompiled;->evaluateRawAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 376
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<*>;"
    :goto_0
    new-instance v1, Lorg/jdom2/xpath/util/XPathDiagnosticImpl;

    invoke-direct {v1, p1, p0, v0, p2}, Lorg/jdom2/xpath/util/XPathDiagnosticImpl;-><init>(Ljava/lang/Object;Lorg/jdom2/xpath/XPathExpression;Ljava/util/List;Z)V

    return-object v1
.end method

.method public evaluate(Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .param p1, "context"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 356
    .local p0, "this":Lorg/jdom2/xpath/util/AbstractXPathCompiled;, "Lorg/jdom2/xpath/util/AbstractXPathCompiled<TT;>;"
    iget-object v0, p0, Lorg/jdom2/xpath/util/AbstractXPathCompiled;->xfilter:Lorg/jdom2/filter/Filter;

    invoke-virtual {p0, p1}, Lorg/jdom2/xpath/util/AbstractXPathCompiled;->evaluateRawAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/jdom2/filter/Filter;->filter(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public evaluateFirst(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "context"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 364
    .local p0, "this":Lorg/jdom2/xpath/util/AbstractXPathCompiled;, "Lorg/jdom2/xpath/util/AbstractXPathCompiled<TT;>;"
    invoke-virtual {p0, p1}, Lorg/jdom2/xpath/util/AbstractXPathCompiled;->evaluateRawFirst(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 365
    .local v0, "raw":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 366
    const/4 v1, 0x0

    return-object v1

    .line 368
    :cond_0
    iget-object v1, p0, Lorg/jdom2/xpath/util/AbstractXPathCompiled;->xfilter:Lorg/jdom2/filter/Filter;

    invoke-interface {v1, v0}, Lorg/jdom2/filter/Filter;->filter(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method protected abstract evaluateRawAll(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation
.end method

.method protected abstract evaluateRawFirst(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public final getExpression()Ljava/lang/String;
    .locals 1

    .line 249
    .local p0, "this":Lorg/jdom2/xpath/util/AbstractXPathCompiled;, "Lorg/jdom2/xpath/util/AbstractXPathCompiled<TT;>;"
    iget-object v0, p0, Lorg/jdom2/xpath/util/AbstractXPathCompiled;->xquery:Ljava/lang/String;

    return-object v0
.end method

.method public final getFilter()Lorg/jdom2/filter/Filter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jdom2/filter/Filter<",
            "TT;>;"
        }
    .end annotation

    .line 351
    .local p0, "this":Lorg/jdom2/xpath/util/AbstractXPathCompiled;, "Lorg/jdom2/xpath/util/AbstractXPathCompiled<TT;>;"
    iget-object v0, p0, Lorg/jdom2/xpath/util/AbstractXPathCompiled;->xfilter:Lorg/jdom2/filter/Filter;

    return-object v0
.end method

.method public final getNamespace(Ljava/lang/String;)Lorg/jdom2/Namespace;
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;

    .line 254
    .local p0, "this":Lorg/jdom2/xpath/util/AbstractXPathCompiled;, "Lorg/jdom2/xpath/util/AbstractXPathCompiled<TT;>;"
    iget-object v0, p0, Lorg/jdom2/xpath/util/AbstractXPathCompiled;->xnamespaces:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdom2/Namespace;

    .line 255
    .local v0, "ns":Lorg/jdom2/Namespace;
    if-eqz v0, :cond_0

    .line 259
    return-object v0

    .line 256
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Namespace with prefix \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' has not been declared."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getNamespaces()[Lorg/jdom2/Namespace;
    .locals 2

    .line 264
    .local p0, "this":Lorg/jdom2/xpath/util/AbstractXPathCompiled;, "Lorg/jdom2/xpath/util/AbstractXPathCompiled<TT;>;"
    iget-object v0, p0, Lorg/jdom2/xpath/util/AbstractXPathCompiled;->xnamespaces:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lorg/jdom2/xpath/util/AbstractXPathCompiled;->xnamespaces:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Lorg/jdom2/Namespace;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jdom2/Namespace;

    .line 266
    .local v0, "nsa":[Lorg/jdom2/Namespace;
    sget-object v1, Lorg/jdom2/xpath/util/AbstractXPathCompiled;->NSSORT:Lorg/jdom2/xpath/util/AbstractXPathCompiled$NamespaceComparator;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 267
    return-object v0
.end method

.method public getVariable(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "qname"    # Ljava/lang/String;

    .line 293
    .local p0, "this":Lorg/jdom2/xpath/util/AbstractXPathCompiled;, "Lorg/jdom2/xpath/util/AbstractXPathCompiled<TT;>;"
    if-eqz p1, :cond_1

    .line 297
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 298
    .local v0, "pos":I
    if-ltz v0, :cond_0

    .line 299
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/jdom2/xpath/util/AbstractXPathCompiled;->getNamespace(Ljava/lang/String;)Lorg/jdom2/Namespace;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/jdom2/xpath/util/AbstractXPathCompiled;->getVariable(Ljava/lang/String;Lorg/jdom2/Namespace;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 302
    :cond_0
    sget-object v1, Lorg/jdom2/Namespace;->NO_NAMESPACE:Lorg/jdom2/Namespace;

    invoke-virtual {p0, p1, v1}, Lorg/jdom2/xpath/util/AbstractXPathCompiled;->getVariable(Ljava/lang/String;Lorg/jdom2/Namespace;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 294
    .end local v0    # "pos":I
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot get variable value for null qname"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getVariable(Ljava/lang/String;Lorg/jdom2/Namespace;)Ljava/lang/Object;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uri"    # Lorg/jdom2/Namespace;

    .line 272
    .local p0, "this":Lorg/jdom2/xpath/util/AbstractXPathCompiled;, "Lorg/jdom2/xpath/util/AbstractXPathCompiled<TT;>;"
    iget-object v0, p0, Lorg/jdom2/xpath/util/AbstractXPathCompiled;->xvariables:Ljava/util/Map;

    if-nez p2, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lorg/jdom2/Namespace;->getURI()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 274
    .local v0, "vmap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "\' has not been declared."

    const-string v2, "\' in namespace \'"

    const-string v3, "Variable with name \'"

    if-eqz v0, :cond_3

    .line 278
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 279
    .local v4, "ret":Ljava/lang/Object;
    if-nez v4, :cond_2

    .line 280
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 286
    const/4 v1, 0x0

    return-object v1

    .line 281
    :cond_1
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lorg/jdom2/Namespace;->getURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 288
    :cond_2
    return-object v4

    .line 275
    .end local v4    # "ret":Ljava/lang/Object;
    :cond_3
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lorg/jdom2/Namespace;->getURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method protected getVariables()Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 333
    .local p0, "this":Lorg/jdom2/xpath/util/AbstractXPathCompiled;, "Lorg/jdom2/xpath/util/AbstractXPathCompiled<TT;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 334
    .local v0, "vars":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lorg/jdom2/xpath/util/AbstractXPathCompiled;->getNamespaces()[Lorg/jdom2/Namespace;

    move-result-object v1

    .line 335
    .local v1, "nsa":[Lorg/jdom2/Namespace;
    iget-object v2, p0, Lorg/jdom2/xpath/util/AbstractXPathCompiled;->xvariables:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 336
    .local v3, "ue":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 337
    .local v4, "uri":Ljava/lang/String;
    invoke-static {v4, v1}, Lorg/jdom2/xpath/util/AbstractXPathCompiled;->getPrefixForURI(Ljava/lang/String;[Lorg/jdom2/Namespace;)Ljava/lang/String;

    move-result-object v5

    .line 338
    .local v5, "pfx":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 339
    .local v7, "ve":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v8, ""

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 340
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 342
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    .end local v7    # "ve":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_2
    goto :goto_1

    .line 345
    .end local v3    # "ue":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v4    # "uri":Ljava/lang/String;
    .end local v5    # "pfx":Ljava/lang/String;
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_1
    goto :goto_0

    .line 346
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    return-object v0
.end method

.method public setVariable(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "qname"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 315
    .local p0, "this":Lorg/jdom2/xpath/util/AbstractXPathCompiled;, "Lorg/jdom2/xpath/util/AbstractXPathCompiled<TT;>;"
    if-eqz p1, :cond_1

    .line 319
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 320
    .local v0, "pos":I
    if-ltz v0, :cond_0

    .line 321
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/jdom2/xpath/util/AbstractXPathCompiled;->getNamespace(Ljava/lang/String;)Lorg/jdom2/Namespace;

    move-result-object v2

    invoke-virtual {p0, v1, v2, p2}, Lorg/jdom2/xpath/util/AbstractXPathCompiled;->setVariable(Ljava/lang/String;Lorg/jdom2/Namespace;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 324
    :cond_0
    sget-object v1, Lorg/jdom2/Namespace;->NO_NAMESPACE:Lorg/jdom2/Namespace;

    invoke-virtual {p0, p1, v1, p2}, Lorg/jdom2/xpath/util/AbstractXPathCompiled;->setVariable(Ljava/lang/String;Lorg/jdom2/Namespace;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 316
    .end local v0    # "pos":I
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot get variable value for null qname"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setVariable(Ljava/lang/String;Lorg/jdom2/Namespace;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uri"    # Lorg/jdom2/Namespace;
    .param p3, "value"    # Ljava/lang/Object;

    .line 307
    .local p0, "this":Lorg/jdom2/xpath/util/AbstractXPathCompiled;, "Lorg/jdom2/xpath/util/AbstractXPathCompiled<TT;>;"
    invoke-virtual {p0, p1, p2}, Lorg/jdom2/xpath/util/AbstractXPathCompiled;->getVariable(Ljava/lang/String;Lorg/jdom2/Namespace;)Ljava/lang/Object;

    move-result-object v0

    .line 309
    .local v0, "ret":Ljava/lang/Object;
    iget-object v1, p0, Lorg/jdom2/xpath/util/AbstractXPathCompiled;->xvariables:Ljava/util/Map;

    invoke-virtual {p2}, Lorg/jdom2/Namespace;->getURI()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 381
    .local p0, "this":Lorg/jdom2/xpath/util/AbstractXPathCompiled;, "Lorg/jdom2/xpath/util/AbstractXPathCompiled<TT;>;"
    iget-object v0, p0, Lorg/jdom2/xpath/util/AbstractXPathCompiled;->xnamespaces:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    .line 382
    .local v0, "nscnt":I
    const/4 v1, 0x0

    .line 383
    .local v1, "vcnt":I
    iget-object v2, p0, Lorg/jdom2/xpath/util/AbstractXPathCompiled;->xvariables:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 384
    .local v3, "cmap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v4

    add-int/2addr v1, v4

    .line 385
    .end local v3    # "cmap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_0

    .line 386
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p0}, Lorg/jdom2/xpath/util/AbstractXPathCompiled;->getExpression()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "[XPathExpression: %d namespaces and %d variables for query %s]"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
