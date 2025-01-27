.class public Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;
.super Ljava/lang/Object;
.source "Whitelist.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$TypedValue;,
        Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$Protocol;,
        Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$AttributeValue;,
        Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$AttributeKey;,
        Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$TagName;
    }
.end annotation


# instance fields
.field private attributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$TagName;",
            "Ljava/util/Set<",
            "Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$AttributeKey;",
            ">;>;"
        }
    .end annotation
.end field

.field private enforcedAttributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$TagName;",
            "Ljava/util/Map<",
            "Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$AttributeKey;",
            "Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$AttributeValue;",
            ">;>;"
        }
    .end annotation
.end field

.field private preserveRelativeLinks:Z

.field private protocols:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$TagName;",
            "Ljava/util/Map<",
            "Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$AttributeKey;",
            "Ljava/util/Set<",
            "Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$Protocol;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private tagNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$TagName;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;->tagNames:Ljava/util/Set;

    .line 220
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;->attributes:Ljava/util/Map;

    .line 221
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;->enforcedAttributes:Ljava/util/Map;

    .line 222
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;->protocols:Ljava/util/Map;

    .line 223
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;->preserveRelativeLinks:Z

    .line 224
    return-void
.end method

.method public static basic()Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;
    .locals 25

    .line 137
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;

    invoke-direct {v0}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;-><init>()V

    const-string v1, "a"

    const-string v2, "b"

    const-string v3, "blockquote"

    const-string v4, "br"

    const-string v5, "cite"

    const-string v6, "code"

    const-string v7, "dd"

    const-string v8, "dl"

    const-string v9, "dt"

    const-string v10, "em"

    const-string v11, "i"

    const-string v12, "li"

    const-string v13, "ol"

    const-string v14, "p"

    const-string v15, "pre"

    const-string/jumbo v16, "q"

    const-string/jumbo v17, "small"

    const-string/jumbo v18, "span"

    const-string/jumbo v19, "strike"

    const-string/jumbo v20, "strong"

    const-string/jumbo v21, "sub"

    const-string/jumbo v22, "sup"

    const-string/jumbo v23, "u"

    const-string/jumbo v24, "ul"

    filled-new-array/range {v1 .. v24}, [Ljava/lang/String;

    move-result-object v1

    .line 138
    invoke-virtual {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;->addTags([Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;

    move-result-object v0

    const-string v1, "href"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    .line 143
    const-string v3, "a"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;

    move-result-object v0

    const-string v2, "cite"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v4

    .line 144
    const-string v5, "blockquote"

    invoke-virtual {v0, v5, v4}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;

    move-result-object v0

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v4

    .line 145
    const-string/jumbo v6, "q"

    invoke-virtual {v0, v6, v4}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;

    move-result-object v0

    const-string v4, "ftp"

    const-string v6, "http"

    const-string v7, "https"

    const-string v8, "mailto"

    filled-new-array {v4, v6, v7, v8}, [Ljava/lang/String;

    move-result-object v4

    .line 147
    invoke-virtual {v0, v3, v1, v4}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;->addProtocols(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;

    move-result-object v0

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v1

    .line 148
    invoke-virtual {v0, v5, v2, v1}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;->addProtocols(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;

    move-result-object v0

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v1

    .line 149
    invoke-virtual {v0, v2, v2, v1}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;->addProtocols(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;

    move-result-object v0

    .line 151
    const-string/jumbo v1, "rel"

    const-string v2, "nofollow"

    invoke-virtual {v0, v3, v1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;->addEnforcedAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;

    move-result-object v0

    .line 137
    return-object v0
.end method

.method public static basicWithImages()Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;
    .locals 8

    .line 163
    invoke-static {}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;->basic()Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;

    move-result-object v0

    const-string v1, "img"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    .line 164
    invoke-virtual {v0, v2}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;->addTags([Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;

    move-result-object v0

    const-string v2, "align"

    const-string v3, "alt"

    const-string v4, "height"

    const-string/jumbo v5, "src"

    const-string/jumbo v6, "title"

    const-string/jumbo v7, "width"

    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object v2

    .line 165
    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;

    move-result-object v0

    const-string v2, "http"

    const-string v3, "https"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    .line 166
    const-string/jumbo v3, "src"

    invoke-virtual {v0, v1, v3, v2}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;->addProtocols(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;

    move-result-object v0

    .line 163
    return-object v0
.end method

.method private isValidAnchor(Ljava/lang/String;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 563
    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ".*\\s.*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static none()Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;
    .locals 1

    .line 110
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;

    invoke-direct {v0}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;-><init>()V

    return-object v0
.end method

.method public static relaxed()Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;
    .locals 43

    .line 180
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;

    invoke-direct {v0}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;-><init>()V

    const-string v1, "a"

    const-string v2, "b"

    const-string v3, "blockquote"

    const-string v4, "br"

    const-string v5, "caption"

    const-string v6, "cite"

    const-string v7, "code"

    const-string v8, "col"

    const-string v9, "colgroup"

    const-string v10, "dd"

    const-string v11, "div"

    const-string v12, "dl"

    const-string v13, "dt"

    const-string v14, "em"

    const-string v15, "h1"

    const-string v16, "h2"

    const-string v17, "h3"

    const-string v18, "h4"

    const-string v19, "h5"

    const-string v20, "h6"

    const-string v21, "i"

    const-string v22, "img"

    const-string v23, "li"

    const-string v24, "ol"

    const-string v25, "p"

    const-string v26, "pre"

    const-string/jumbo v27, "q"

    const-string/jumbo v28, "small"

    const-string/jumbo v29, "span"

    const-string/jumbo v30, "strike"

    const-string/jumbo v31, "strong"

    const-string/jumbo v32, "sub"

    const-string/jumbo v33, "sup"

    const-string/jumbo v34, "table"

    const-string/jumbo v35, "tbody"

    const-string/jumbo v36, "td"

    const-string/jumbo v37, "tfoot"

    const-string/jumbo v38, "th"

    const-string/jumbo v39, "thead"

    const-string/jumbo v40, "tr"

    const-string/jumbo v41, "u"

    const-string/jumbo v42, "ul"

    filled-new-array/range {v1 .. v42}, [Ljava/lang/String;

    move-result-object v1

    .line 181
    invoke-virtual {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;->addTags([Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;

    move-result-object v0

    const-string v1, "href"

    const-string/jumbo v2, "title"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v2

    .line 188
    const-string v3, "a"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;

    move-result-object v0

    const-string v2, "cite"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v4

    .line 189
    const-string v5, "blockquote"

    invoke-virtual {v0, v5, v4}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;

    move-result-object v0

    const-string/jumbo v4, "span"

    const-string/jumbo v6, "width"

    filled-new-array {v4, v6}, [Ljava/lang/String;

    move-result-object v7

    .line 190
    const-string v8, "col"

    invoke-virtual {v0, v8, v7}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;

    move-result-object v0

    filled-new-array {v4, v6}, [Ljava/lang/String;

    move-result-object v4

    .line 191
    const-string v7, "colgroup"

    invoke-virtual {v0, v7, v4}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;

    move-result-object v0

    const-string v7, "align"

    const-string v8, "alt"

    const-string v9, "height"

    const-string/jumbo v10, "src"

    const-string/jumbo v11, "title"

    const-string/jumbo v12, "width"

    filled-new-array/range {v7 .. v12}, [Ljava/lang/String;

    move-result-object v4

    .line 192
    const-string v7, "img"

    invoke-virtual {v0, v7, v4}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;

    move-result-object v0

    const-string/jumbo v4, "start"

    const-string/jumbo v8, "type"

    filled-new-array {v4, v8}, [Ljava/lang/String;

    move-result-object v4

    .line 193
    const-string v9, "ol"

    invoke-virtual {v0, v9, v4}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;

    move-result-object v0

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v4

    .line 194
    const-string/jumbo v9, "q"

    invoke-virtual {v0, v9, v4}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;

    move-result-object v0

    const-string/jumbo v4, "summary"

    filled-new-array {v4, v6}, [Ljava/lang/String;

    move-result-object v4

    .line 195
    const-string/jumbo v10, "table"

    invoke-virtual {v0, v10, v4}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;

    move-result-object v0

    const-string v4, "abbr"

    const-string v10, "axis"

    const-string v11, "colspan"

    const-string/jumbo v12, "rowspan"

    filled-new-array {v4, v10, v11, v12, v6}, [Ljava/lang/String;

    move-result-object v4

    .line 196
    const-string/jumbo v6, "td"

    invoke-virtual {v0, v6, v4}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;

    move-result-object v0

    const-string v10, "abbr"

    const-string v11, "axis"

    const-string v12, "colspan"

    const-string/jumbo v13, "rowspan"

    const-string/jumbo v14, "scope"

    const-string/jumbo v15, "width"

    filled-new-array/range {v10 .. v15}, [Ljava/lang/String;

    move-result-object v4

    .line 197
    const-string/jumbo v6, "th"

    invoke-virtual {v0, v6, v4}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;

    move-result-object v0

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v4

    .line 200
    const-string/jumbo v6, "ul"

    invoke-virtual {v0, v6, v4}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;

    move-result-object v0

    const-string v4, "ftp"

    const-string v6, "http"

    const-string v8, "https"

    const-string v10, "mailto"

    filled-new-array {v4, v6, v8, v10}, [Ljava/lang/String;

    move-result-object v4

    .line 202
    invoke-virtual {v0, v3, v1, v4}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;->addProtocols(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;

    move-result-object v0

    filled-new-array {v6, v8}, [Ljava/lang/String;

    move-result-object v1

    .line 203
    invoke-virtual {v0, v5, v2, v1}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;->addProtocols(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;

    move-result-object v0

    filled-new-array {v6, v8}, [Ljava/lang/String;

    move-result-object v1

    .line 204
    invoke-virtual {v0, v2, v2, v1}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;->addProtocols(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;

    move-result-object v0

    filled-new-array {v6, v8}, [Ljava/lang/String;

    move-result-object v1

    .line 205
    const-string/jumbo v3, "src"

    invoke-virtual {v0, v7, v3, v1}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;->addProtocols(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;

    move-result-object v0

    filled-new-array {v6, v8}, [Ljava/lang/String;

    move-result-object v1

    .line 206
    invoke-virtual {v0, v9, v2, v1}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;->addProtocols(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;

    move-result-object v0

    .line 180
    return-object v0
.end method

.method public static simpleText()Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;
    .locals 6

    .line 120
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;

    invoke-direct {v0}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;-><init>()V

    const-string v1, "b"

    const-string v2, "em"

    const-string v3, "i"

    const-string/jumbo v4, "strong"

    const-string/jumbo v5, "u"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    .line 121
    invoke-virtual {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;->addTags([Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;

    move-result-object v0

    .line 120
    return-object v0
.end method

.method private testValidProtocol(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;Ljava/util/Set;)Z
    .locals 7
    .param p1, "el"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .param p2, "attr"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;",
            "Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;",
            "Ljava/util/Set<",
            "Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$Protocol;",
            ">;)Z"
        }
    .end annotation

    .line 536
    .local p3, "protocols":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$Protocol;>;"
    invoke-virtual {p2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->absUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 537
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 538
    invoke-virtual {p2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 539
    :cond_0
    iget-boolean v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;->preserveRelativeLinks:Z

    if-nez v1, :cond_1

    .line 540
    invoke-virtual {p2, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;->setValue(Ljava/lang/String;)Ljava/lang/String;

    .line 542
    :cond_1
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$Protocol;

    .line 543
    .local v2, "protocol":Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$Protocol;
    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$Protocol;->toString()Ljava/lang/String;

    move-result-object v3

    .line 545
    .local v3, "prot":Ljava/lang/String;
    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    .line 546
    invoke-direct {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;->isValidAnchor(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 547
    return v5

    .line 553
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 555
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 556
    return v5

    .line 558
    .end local v2    # "protocol":Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$Protocol;
    .end local v3    # "prot":Ljava/lang/String;
    :cond_4
    goto :goto_0

    .line 559
    :cond_5
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public varargs addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;
    .locals 6
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "keys"    # [Ljava/lang/String;

    .line 278
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 279
    invoke-static {p2}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 280
    array-length v0, p2

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v2, "No attributes supplied."

    invoke-static {v0, v2}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->isTrue(ZLjava/lang/String;)V

    .line 282
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$TagName;->valueOf(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$TagName;

    move-result-object v0

    .line 283
    .local v0, "tagName":Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$TagName;
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;->tagNames:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 284
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;->tagNames:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 285
    :cond_1
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 286
    .local v2, "attributeSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$AttributeKey;>;"
    array-length v3, p2

    :goto_1
    if-ge v1, v3, :cond_2

    aget-object v4, p2, v1

    .line 287
    .local v4, "key":Ljava/lang/String;
    invoke-static {v4}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 288
    invoke-static {v4}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$AttributeKey;->valueOf(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$AttributeKey;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 286
    .end local v4    # "key":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 290
    :cond_2
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;->attributes:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 291
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;->attributes:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 292
    .local v1, "currentSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$AttributeKey;>;"
    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 293
    .end local v1    # "currentSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$AttributeKey;>;"
    goto :goto_2

    .line 294
    :cond_3
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;->attributes:Ljava/util/Map;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    :goto_2
    return-object p0
.end method

.method public addEnforcedAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;
    .locals 5
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 354
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 355
    invoke-static {p2}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 356
    invoke-static {p3}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 358
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$TagName;->valueOf(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$TagName;

    move-result-object v0

    .line 359
    .local v0, "tagName":Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$TagName;
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;->tagNames:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 360
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;->tagNames:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 361
    :cond_0
    invoke-static {p2}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$AttributeKey;->valueOf(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$AttributeKey;

    move-result-object v1

    .line 362
    .local v1, "attrKey":Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$AttributeKey;
    invoke-static {p3}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$AttributeValue;->valueOf(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$AttributeValue;

    move-result-object v2

    .line 364
    .local v2, "attrVal":Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$AttributeValue;
    iget-object v3, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;->enforcedAttributes:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 365
    iget-object v3, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;->enforcedAttributes:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 367
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 368
    .local v3, "attrMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$AttributeKey;Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$AttributeValue;>;"
    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    iget-object v4, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;->enforcedAttributes:Ljava/util/Map;

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    .end local v3    # "attrMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$AttributeKey;Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$AttributeValue;>;"
    :goto_0
    return-object p0
.end method

.method public varargs addProtocols(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;
    .locals 8
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "protocols"    # [Ljava/lang/String;

    .line 431
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 432
    invoke-static {p2}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 433
    invoke-static {p3}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 435
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$TagName;->valueOf(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$TagName;

    move-result-object v0

    .line 436
    .local v0, "tagName":Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$TagName;
    invoke-static {p2}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$AttributeKey;->valueOf(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$AttributeKey;

    move-result-object v1

    .line 440
    .local v1, "attrKey":Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$AttributeKey;
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;->protocols:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 441
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;->protocols:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .local v2, "attrMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$AttributeKey;Ljava/util/Set<Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$Protocol;>;>;"
    goto :goto_0

    .line 443
    .end local v2    # "attrMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$AttributeKey;Ljava/util/Set<Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$Protocol;>;>;"
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 444
    .restart local v2    # "attrMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$AttributeKey;Ljava/util/Set<Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$Protocol;>;>;"
    iget-object v3, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;->protocols:Ljava/util/Map;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    :goto_0
    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 447
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .local v3, "protSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$Protocol;>;"
    goto :goto_1

    .line 449
    .end local v3    # "protSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$Protocol;>;"
    :cond_1
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 450
    .restart local v3    # "protSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$Protocol;>;"
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    :goto_1
    array-length v4, p3

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v4, :cond_2

    aget-object v6, p3, v5

    .line 453
    .local v6, "protocol":Ljava/lang/String;
    invoke-static {v6}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 454
    invoke-static {v6}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$Protocol;->valueOf(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$Protocol;

    move-result-object v7

    .line 455
    .local v7, "prot":Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$Protocol;
    invoke-interface {v3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 452
    .end local v6    # "protocol":Ljava/lang/String;
    .end local v7    # "prot":Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$Protocol;
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 457
    :cond_2
    return-object p0
.end method

.method public varargs addTags([Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;
    .locals 5
    .param p1, "tags"    # [Ljava/lang/String;

    .line 233
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 235
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 236
    .local v2, "tagName":Ljava/lang/String;
    invoke-static {v2}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 237
    iget-object v3, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;->tagNames:Ljava/util/Set;

    invoke-static {v2}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$TagName;->valueOf(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$TagName;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 235
    .end local v2    # "tagName":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 239
    :cond_0
    return-object p0
.end method

.method getEnforcedAttributes(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;
    .locals 7
    .param p1, "tagName"    # Ljava/lang/String;

    .line 567
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    invoke-direct {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;-><init>()V

    .line 568
    .local v0, "attrs":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$TagName;->valueOf(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$TagName;

    move-result-object v1

    .line 569
    .local v1, "tag":Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$TagName;
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;->enforcedAttributes:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 570
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;->enforcedAttributes:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 571
    .local v2, "keyVals":Ljava/util/Map;, "Ljava/util/Map<Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$AttributeKey;Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$AttributeValue;>;"
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 572
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$AttributeKey;Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$AttributeValue;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$AttributeKey;

    invoke-virtual {v5}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$AttributeKey;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$AttributeValue;

    invoke-virtual {v6}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$AttributeValue;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$AttributeKey;Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$AttributeValue;>;"
    goto :goto_0

    .line 575
    .end local v2    # "keyVals":Ljava/util/Map;, "Ljava/util/Map<Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$AttributeKey;Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$AttributeValue;>;"
    :cond_0
    return-object v0
.end method

.method protected isSafeAttribute(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;)Z
    .locals 6
    .param p1, "tagName"    # Ljava/lang/String;
    .param p2, "el"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .param p3, "attr"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;

    .line 515
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$TagName;->valueOf(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$TagName;

    move-result-object v0

    .line 516
    .local v0, "tag":Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$TagName;
    invoke-virtual {p3}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$AttributeKey;->valueOf(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$AttributeKey;

    move-result-object v1

    .line 518
    .local v1, "key":Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$AttributeKey;
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;->attributes:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    .line 519
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;->attributes:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 520
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;->protocols:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 521
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;->protocols:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 523
    .local v2, "attrProts":Ljava/util/Map;, "Ljava/util/Map<Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$AttributeKey;Ljava/util/Set<Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$Protocol;>;>;"
    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-direct {p0, p2, p3, v5}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;->testValidProtocol(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;Ljava/util/Set;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    move v3, v4

    :cond_1
    return v3

    .line 525
    .end local v2    # "attrProts":Ljava/util/Map;, "Ljava/util/Map<Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$AttributeKey;Ljava/util/Set<Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$Protocol;>;>;"
    :cond_2
    return v4

    .line 530
    :cond_3
    const-string v2, ":all"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {p0, v2, p2, p3}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;->isSafeAttribute(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v3, v4

    :cond_4
    return v3
.end method

.method protected isSafeTag(Ljava/lang/String;)Z
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .line 504
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;->tagNames:Ljava/util/Set;

    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$TagName;->valueOf(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$TagName;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public preserveRelativeLinks(Z)Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;
    .locals 0
    .param p1, "preserve"    # Z

    .line 412
    iput-boolean p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;->preserveRelativeLinks:Z

    .line 413
    return-object p0
.end method

.method public varargs removeAttributes(Ljava/lang/String;[Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;
    .locals 6
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "keys"    # [Ljava/lang/String;

    .line 313
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 314
    invoke-static {p2}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 315
    array-length v0, p2

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v2, "No attributes supplied."

    invoke-static {v0, v2}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->isTrue(ZLjava/lang/String;)V

    .line 317
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$TagName;->valueOf(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$TagName;

    move-result-object v0

    .line 318
    .local v0, "tagName":Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$TagName;
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 319
    .local v2, "attributeSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$AttributeKey;>;"
    array-length v3, p2

    :goto_1
    if-ge v1, v3, :cond_1

    aget-object v4, p2, v1

    .line 320
    .local v4, "key":Ljava/lang/String;
    invoke-static {v4}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 321
    invoke-static {v4}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$AttributeKey;->valueOf(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$AttributeKey;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 319
    .end local v4    # "key":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 323
    :cond_1
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;->tagNames:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;->attributes:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 324
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;->attributes:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 325
    .local v1, "currentSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$AttributeKey;>;"
    invoke-interface {v1, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 327
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 328
    iget-object v3, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;->attributes:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    .end local v1    # "currentSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$AttributeKey;>;"
    :cond_2
    const-string v1, ":all"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 331
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;->attributes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$TagName;

    .line 332
    .local v3, "name":Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$TagName;
    iget-object v4, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;->attributes:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    .line 333
    .local v4, "currentSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$AttributeKey;>;"
    invoke-interface {v4, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 335
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 336
    iget-object v5, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;->attributes:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    .end local v3    # "name":Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$TagName;
    .end local v4    # "currentSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$AttributeKey;>;"
    :cond_3
    goto :goto_2

    .line 338
    :cond_4
    return-object p0
.end method

.method public removeEnforcedAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .line 382
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 383
    invoke-static {p2}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 385
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$TagName;->valueOf(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$TagName;

    move-result-object v0

    .line 386
    .local v0, "tagName":Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$TagName;
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;->tagNames:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;->enforcedAttributes:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 387
    invoke-static {p2}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$AttributeKey;->valueOf(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$AttributeKey;

    move-result-object v1

    .line 388
    .local v1, "attrKey":Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$AttributeKey;
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;->enforcedAttributes:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 389
    .local v2, "attrMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$AttributeKey;Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$AttributeValue;>;"
    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 392
    iget-object v3, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;->enforcedAttributes:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    .end local v1    # "attrKey":Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$AttributeKey;
    .end local v2    # "attrMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$AttributeKey;Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$AttributeValue;>;"
    :cond_0
    return-object p0
.end method

.method public varargs removeProtocols(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;
    .locals 8
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "protocols"    # [Ljava/lang/String;

    .line 471
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 472
    invoke-static {p2}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 473
    invoke-static {p3}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 475
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$TagName;->valueOf(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$TagName;

    move-result-object v0

    .line 476
    .local v0, "tagName":Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$TagName;
    invoke-static {p2}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$AttributeKey;->valueOf(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$AttributeKey;

    move-result-object v1

    .line 478
    .local v1, "attrKey":Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$AttributeKey;
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;->protocols:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 479
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;->protocols:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 480
    .local v2, "attrMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$AttributeKey;Ljava/util/Set<Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$Protocol;>;>;"
    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 481
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 482
    .local v3, "protSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$Protocol;>;"
    array-length v4, p3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, p3, v5

    .line 483
    .local v6, "protocol":Ljava/lang/String;
    invoke-static {v6}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 484
    invoke-static {v6}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$Protocol;->valueOf(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$Protocol;

    move-result-object v7

    .line 485
    .local v7, "prot":Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$Protocol;
    invoke-interface {v3, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 482
    .end local v6    # "protocol":Ljava/lang/String;
    .end local v7    # "prot":Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$Protocol;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 488
    :cond_0
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 489
    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 491
    iget-object v4, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;->protocols:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    .end local v2    # "attrMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$AttributeKey;Ljava/util/Set<Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$Protocol;>;>;"
    .end local v3    # "protSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$Protocol;>;"
    :cond_1
    return-object p0
.end method

.method public varargs removeTags([Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;
    .locals 5
    .param p1, "tags"    # [Ljava/lang/String;

    .line 249
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 251
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 252
    .local v2, "tag":Ljava/lang/String;
    invoke-static {v2}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 253
    invoke-static {v2}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$TagName;->valueOf(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$TagName;

    move-result-object v3

    .line 255
    .local v3, "tagName":Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$TagName;
    iget-object v4, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;->tagNames:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 256
    iget-object v4, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;->attributes:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    iget-object v4, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;->enforcedAttributes:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    iget-object v4, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;->protocols:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    .end local v2    # "tag":Ljava/lang/String;
    .end local v3    # "tagName":Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist$TagName;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 261
    :cond_1
    return-object p0
.end method
