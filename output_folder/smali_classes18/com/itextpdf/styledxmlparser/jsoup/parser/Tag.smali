.class public Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;
.super Ljava/lang/Object;
.source "Tag.java"


# static fields
.field private static final blockTags:[Ljava/lang/String;

.field private static final emptyTags:[Ljava/lang/String;

.field private static final formListedTags:[Ljava/lang/String;

.field private static final formSubmitTags:[Ljava/lang/String;

.field private static final formatAsInlineTags:[Ljava/lang/String;

.field private static final inlineTags:[Ljava/lang/String;

.field private static final preserveWhitespaceTags:[Ljava/lang/String;

.field private static final tags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private canContainBlock:Z

.field private canContainInline:Z

.field private empty:Z

.field private formList:Z

.field private formSubmit:Z

.field private formatAsBlock:Z

.field private isBlock:Z

.field private preserveWhitespace:Z

.field private selfClosing:Z

.field private tagName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 66

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->tags:Ljava/util/Map;

    .line 262
    const-string v1, "html"

    const-string v2, "head"

    const-string v3, "body"

    const-string v4, "frameset"

    const-string/jumbo v5, "script"

    const-string v6, "noscript"

    const-string/jumbo v7, "style"

    const-string v8, "meta"

    const-string v9, "link"

    const-string/jumbo v10, "title"

    const-string v11, "frame"

    const-string v12, "noframes"

    const-string/jumbo v13, "section"

    const-string v14, "nav"

    const-string v15, "aside"

    const-string v16, "hgroup"

    const-string v17, "header"

    const-string v18, "footer"

    const-string v19, "p"

    const-string v20, "h1"

    const-string v21, "h2"

    const-string v22, "h3"

    const-string v23, "h4"

    const-string v24, "h5"

    const-string v25, "h6"

    const-string/jumbo v26, "ul"

    const-string v27, "ol"

    const-string v28, "pre"

    const-string v29, "div"

    const-string v30, "blockquote"

    const-string v31, "hr"

    const-string v32, "address"

    const-string v33, "figure"

    const-string v34, "figcaption"

    const-string v35, "form"

    const-string v36, "fieldset"

    const-string v37, "ins"

    const-string v38, "del"

    const-string/jumbo v39, "s"

    const-string v40, "dl"

    const-string v41, "dt"

    const-string v42, "dd"

    const-string v43, "li"

    const-string/jumbo v44, "table"

    const-string v45, "caption"

    const-string/jumbo v46, "thead"

    const-string/jumbo v47, "tfoot"

    const-string/jumbo v48, "tbody"

    const-string v49, "colgroup"

    const-string v50, "col"

    const-string/jumbo v51, "tr"

    const-string/jumbo v52, "th"

    const-string/jumbo v53, "td"

    const-string/jumbo v54, "video"

    const-string v55, "audio"

    const-string v56, "canvas"

    const-string v57, "details"

    const-string v58, "menu"

    const-string v59, "plaintext"

    const-string/jumbo v60, "template"

    const-string v61, "article"

    const-string v62, "main"

    const-string/jumbo v63, "svg"

    const-string v64, "math"

    filled-new-array/range {v1 .. v64}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->blockTags:[Ljava/lang/String;

    .line 270
    const-string v1, "object"

    const-string v2, "base"

    const-string v3, "font"

    const-string/jumbo v4, "tt"

    const-string v5, "i"

    const-string v6, "b"

    const-string/jumbo v7, "u"

    const-string v8, "big"

    const-string/jumbo v9, "small"

    const-string v10, "em"

    const-string/jumbo v11, "strong"

    const-string v12, "dfn"

    const-string v13, "code"

    const-string/jumbo v14, "samp"

    const-string v15, "kbd"

    const-string/jumbo v16, "var"

    const-string v17, "cite"

    const-string v18, "abbr"

    const-string/jumbo v19, "time"

    const-string v20, "acronym"

    const-string v21, "mark"

    const-string/jumbo v22, "ruby"

    const-string/jumbo v23, "rt"

    const-string/jumbo v24, "rp"

    const-string v25, "a"

    const-string v26, "img"

    const-string v27, "br"

    const-string/jumbo v28, "wbr"

    const-string v29, "map"

    const-string/jumbo v30, "q"

    const-string/jumbo v31, "sub"

    const-string/jumbo v32, "sup"

    const-string v33, "bdo"

    const-string v34, "iframe"

    const-string v35, "embed"

    const-string/jumbo v36, "span"

    const-string v37, "input"

    const-string/jumbo v38, "select"

    const-string/jumbo v39, "textarea"

    const-string v40, "label"

    const-string v41, "button"

    const-string v42, "optgroup"

    const-string v43, "option"

    const-string v44, "legend"

    const-string v45, "datalist"

    const-string v46, "keygen"

    const-string v47, "output"

    const-string v48, "progress"

    const-string v49, "meter"

    const-string v50, "area"

    const-string v51, "param"

    const-string/jumbo v52, "source"

    const-string/jumbo v53, "track"

    const-string/jumbo v54, "summary"

    const-string v55, "command"

    const-string v56, "device"

    const-string v57, "area"

    const-string v58, "basefont"

    const-string v59, "bgsound"

    const-string v60, "menuitem"

    const-string v61, "param"

    const-string/jumbo v62, "source"

    const-string/jumbo v63, "track"

    const-string v64, "data"

    const-string v65, "bdi"

    filled-new-array/range {v1 .. v65}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->inlineTags:[Ljava/lang/String;

    .line 278
    const-string v2, "meta"

    const-string v3, "link"

    const-string v4, "base"

    const-string v5, "frame"

    const-string v6, "img"

    const-string v7, "br"

    const-string/jumbo v8, "wbr"

    const-string v9, "embed"

    const-string v10, "hr"

    const-string v11, "input"

    const-string v12, "keygen"

    const-string v13, "col"

    const-string v14, "command"

    const-string v15, "device"

    const-string v16, "area"

    const-string v17, "basefont"

    const-string v18, "bgsound"

    const-string v19, "menuitem"

    const-string v20, "param"

    const-string/jumbo v21, "source"

    const-string/jumbo v22, "track"

    filled-new-array/range {v2 .. v22}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->emptyTags:[Ljava/lang/String;

    .line 282
    const-string/jumbo v2, "title"

    const-string v3, "a"

    const-string v4, "p"

    const-string v5, "h1"

    const-string v6, "h2"

    const-string v7, "h3"

    const-string v8, "h4"

    const-string v9, "h5"

    const-string v10, "h6"

    const-string v11, "pre"

    const-string v12, "address"

    const-string v13, "li"

    const-string/jumbo v14, "th"

    const-string/jumbo v15, "td"

    const-string/jumbo v16, "script"

    const-string/jumbo v17, "style"

    const-string v18, "ins"

    const-string v19, "del"

    const-string/jumbo v20, "s"

    filled-new-array/range {v2 .. v20}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->formatAsInlineTags:[Ljava/lang/String;

    .line 286
    const-string v1, "pre"

    const-string v2, "plaintext"

    const-string/jumbo v3, "title"

    const-string/jumbo v4, "textarea"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->preserveWhitespaceTags:[Ljava/lang/String;

    .line 291
    const-string v5, "button"

    const-string v6, "fieldset"

    const-string v7, "input"

    const-string v8, "keygen"

    const-string v9, "object"

    const-string v10, "output"

    const-string/jumbo v11, "select"

    const-string/jumbo v12, "textarea"

    filled-new-array/range {v5 .. v12}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->formListedTags:[Ljava/lang/String;

    .line 294
    const-string v1, "input"

    const-string v2, "keygen"

    const-string v3, "object"

    const-string/jumbo v5, "select"

    filled-new-array {v1, v2, v3, v5, v4}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->formSubmitTags:[Ljava/lang/String;

    .line 300
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 301
    .local v4, "tagName":Ljava/lang/String;
    new-instance v5, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;

    invoke-direct {v5, v4}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;-><init>(Ljava/lang/String;)V

    .line 302
    .local v5, "tag":Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;
    invoke-static {v5}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->register(Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;)V

    .line 300
    .end local v4    # "tagName":Ljava/lang/String;
    .end local v5    # "tag":Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 304
    :cond_0
    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->inlineTags:[Ljava/lang/String;

    array-length v1, v0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 305
    .restart local v4    # "tagName":Ljava/lang/String;
    new-instance v5, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;

    invoke-direct {v5, v4}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;-><init>(Ljava/lang/String;)V

    .line 306
    .restart local v5    # "tag":Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;
    iput-boolean v2, v5, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->isBlock:Z

    .line 307
    iput-boolean v2, v5, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->canContainBlock:Z

    .line 308
    iput-boolean v2, v5, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->formatAsBlock:Z

    .line 309
    invoke-static {v5}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->register(Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;)V

    .line 304
    .end local v4    # "tagName":Ljava/lang/String;
    .end local v5    # "tag":Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 313
    :cond_1
    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->emptyTags:[Ljava/lang/String;

    array-length v1, v0

    move v3, v2

    :goto_2
    const/4 v4, 0x1

    if-ge v3, v1, :cond_2

    aget-object v5, v0, v3

    .line 314
    .local v5, "tagName":Ljava/lang/String;
    sget-object v6, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->tags:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;

    .line 315
    .local v6, "tag":Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;
    invoke-static {v6}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 316
    iput-boolean v2, v6, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->canContainBlock:Z

    .line 317
    iput-boolean v2, v6, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->canContainInline:Z

    .line 318
    iput-boolean v4, v6, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->empty:Z

    .line 313
    .end local v5    # "tagName":Ljava/lang/String;
    .end local v6    # "tag":Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 321
    :cond_2
    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->formatAsInlineTags:[Ljava/lang/String;

    array-length v1, v0

    move v3, v2

    :goto_3
    if-ge v3, v1, :cond_3

    aget-object v5, v0, v3

    .line 322
    .restart local v5    # "tagName":Ljava/lang/String;
    sget-object v6, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->tags:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;

    .line 323
    .restart local v6    # "tag":Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;
    invoke-static {v6}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 324
    iput-boolean v2, v6, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->formatAsBlock:Z

    .line 321
    .end local v5    # "tagName":Ljava/lang/String;
    .end local v6    # "tag":Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 327
    :cond_3
    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->preserveWhitespaceTags:[Ljava/lang/String;

    array-length v1, v0

    move v3, v2

    :goto_4
    if-ge v3, v1, :cond_4

    aget-object v5, v0, v3

    .line 328
    .restart local v5    # "tagName":Ljava/lang/String;
    sget-object v6, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->tags:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;

    .line 329
    .restart local v6    # "tag":Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;
    invoke-static {v6}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 330
    iput-boolean v4, v6, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->preserveWhitespace:Z

    .line 327
    .end local v5    # "tagName":Ljava/lang/String;
    .end local v6    # "tag":Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 333
    :cond_4
    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->formListedTags:[Ljava/lang/String;

    array-length v1, v0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_5

    aget-object v5, v0, v3

    .line 334
    .restart local v5    # "tagName":Ljava/lang/String;
    sget-object v6, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->tags:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;

    .line 335
    .restart local v6    # "tag":Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;
    invoke-static {v6}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 336
    iput-boolean v4, v6, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->formList:Z

    .line 333
    .end local v5    # "tagName":Ljava/lang/String;
    .end local v6    # "tag":Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 339
    :cond_5
    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->formSubmitTags:[Ljava/lang/String;

    array-length v1, v0

    :goto_6
    if-ge v2, v1, :cond_6

    aget-object v3, v0, v2

    .line 340
    .local v3, "tagName":Ljava/lang/String;
    sget-object v5, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->tags:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;

    .line 341
    .local v5, "tag":Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;
    invoke-static {v5}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 342
    iput-boolean v4, v5, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->formSubmit:Z

    .line 339
    .end local v3    # "tagName":Ljava/lang/String;
    .end local v5    # "tag":Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 344
    :cond_6
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "tagName"    # Ljava/lang/String;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->isBlock:Z

    .line 60
    iput-boolean v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->formatAsBlock:Z

    .line 61
    iput-boolean v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->canContainBlock:Z

    .line 62
    iput-boolean v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->canContainInline:Z

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->empty:Z

    .line 64
    iput-boolean v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->selfClosing:Z

    .line 65
    iput-boolean v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->preserveWhitespace:Z

    .line 66
    iput-boolean v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->formList:Z

    .line 67
    iput-boolean v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->formSubmit:Z

    .line 70
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->tagName:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public static isKnownTag(Ljava/lang/String;)Z
    .locals 1
    .param p0, "tagName"    # Ljava/lang/String;

    .line 188
    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->tags:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static register(Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;)V
    .locals 2
    .param p0, "tag"    # Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;

    .line 347
    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->tags:Ljava/util/Map;

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->tagName:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;
    .locals 3
    .param p0, "tagName"    # Ljava/lang/String;

    .line 91
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 92
    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->tags:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;

    .line 94
    .local v1, "tag":Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;
    if-nez v1, :cond_0

    .line 95
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 96
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 97
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;

    .line 99
    if-nez v1, :cond_0

    .line 101
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;

    invoke-direct {v0, p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->isBlock:Z

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->canContainBlock:Z

    .line 106
    :cond_0
    return-object v1
.end method


# virtual methods
.method public canContainBlock()Z
    .locals 1

    .line 133
    iget-boolean v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->canContainBlock:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 223
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 224
    :cond_0
    instance-of v1, p1, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 226
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;

    .line 228
    .local v1, "tag":Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;
    iget-object v3, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->tagName:Ljava/lang/String;

    iget-object v4, v1, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->tagName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    .line 229
    :cond_2
    iget-boolean v3, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->canContainBlock:Z

    iget-boolean v4, v1, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->canContainBlock:Z

    if-eq v3, v4, :cond_3

    return v2

    .line 230
    :cond_3
    iget-boolean v3, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->canContainInline:Z

    iget-boolean v4, v1, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->canContainInline:Z

    if-eq v3, v4, :cond_4

    return v2

    .line 231
    :cond_4
    iget-boolean v3, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->empty:Z

    iget-boolean v4, v1, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->empty:Z

    if-eq v3, v4, :cond_5

    return v2

    .line 232
    :cond_5
    iget-boolean v3, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->formatAsBlock:Z

    iget-boolean v4, v1, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->formatAsBlock:Z

    if-eq v3, v4, :cond_6

    return v2

    .line 233
    :cond_6
    iget-boolean v3, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->isBlock:Z

    iget-boolean v4, v1, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->isBlock:Z

    if-eq v3, v4, :cond_7

    return v2

    .line 234
    :cond_7
    iget-boolean v3, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->preserveWhitespace:Z

    iget-boolean v4, v1, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->preserveWhitespace:Z

    if-eq v3, v4, :cond_8

    return v2

    .line 235
    :cond_8
    iget-boolean v3, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->selfClosing:Z

    iget-boolean v4, v1, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->selfClosing:Z

    if-eq v3, v4, :cond_9

    return v2

    .line 236
    :cond_9
    iget-boolean v3, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->formList:Z

    iget-boolean v4, v1, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->formList:Z

    if-eq v3, v4, :cond_a

    return v2

    .line 237
    :cond_a
    iget-boolean v3, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->formSubmit:Z

    iget-boolean v4, v1, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->formSubmit:Z

    if-ne v3, v4, :cond_b

    goto :goto_0

    :cond_b
    move v0, v2

    :goto_0
    return v0
.end method

.method public formatAsBlock()Z
    .locals 1

    .line 124
    iget-boolean v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->formatAsBlock:Z

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->tagName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 242
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->tagName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 243
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->isBlock:Z

    add-int/2addr v1, v2

    .line 244
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->formatAsBlock:Z

    add-int/2addr v0, v2

    .line 245
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->canContainBlock:Z

    add-int/2addr v1, v2

    .line 246
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->canContainInline:Z

    add-int/2addr v0, v2

    .line 247
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->empty:Z

    add-int/2addr v1, v2

    .line 248
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->selfClosing:Z

    add-int/2addr v0, v2

    .line 249
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->preserveWhitespace:Z

    add-int/2addr v1, v2

    .line 250
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->formList:Z

    add-int/2addr v0, v2

    .line 251
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->formSubmit:Z

    add-int/2addr v1, v2

    .line 252
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public isBlock()Z
    .locals 1

    .line 115
    iget-boolean v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->isBlock:Z

    return v0
.end method

.method public isData()Z
    .locals 1

    .line 151
    iget-boolean v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->canContainInline:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 160
    iget-boolean v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->empty:Z

    return v0
.end method

.method public isFormListed()Z
    .locals 1

    .line 205
    iget-boolean v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->formList:Z

    return v0
.end method

.method public isFormSubmittable()Z
    .locals 1

    .line 213
    iget-boolean v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->formSubmit:Z

    return v0
.end method

.method public isInline()Z
    .locals 1

    .line 142
    iget-boolean v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->isBlock:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isKnownTag()Z
    .locals 2

    .line 178
    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->tags:Ljava/util/Map;

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->tagName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSelfClosing()Z
    .locals 1

    .line 169
    iget-boolean v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->empty:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->selfClosing:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public preserveWhitespace()Z
    .locals 1

    .line 197
    iget-boolean v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->preserveWhitespace:Z

    return v0
.end method

.method setSelfClosing()Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;
    .locals 1

    .line 217
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->selfClosing:Z

    .line 218
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->tagName:Ljava/lang/String;

    return-object v0
.end method
