.class public Lcom/itextpdf/styledxmlparser/css/resolve/CssInheritance;
.super Ljava/lang/Object;
.source "CssInheritance.java"

# interfaces
.implements Lcom/itextpdf/styledxmlparser/css/resolve/IStyleInheritance;


# static fields
.field private static final INHERITABLE_PROPERTIES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 54

    .line 61
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "color"

    const-string/jumbo v2, "visibility"

    const-string v3, "hanging-punctuation"

    const-string v4, "hyphens"

    const-string v5, "letter-spacing"

    const-string v6, "line-height"

    const-string v7, "overflow-wrap"

    const-string/jumbo v8, "tab-size"

    const-string/jumbo v9, "text-align"

    const-string/jumbo v10, "text-align-last"

    const-string/jumbo v11, "text-indent"

    const-string/jumbo v12, "text-justify"

    const-string/jumbo v13, "text-transform"

    const-string/jumbo v14, "white-space"

    const-string/jumbo v15, "word-break"

    const-string/jumbo v16, "word-spacing"

    const-string/jumbo v17, "word-wrap"

    const-string/jumbo v18, "text-shadow"

    const-string/jumbo v19, "text-underline-position"

    const-string v20, "font"

    const-string v21, "font-family"

    const-string v22, "font-feature-settings"

    const-string v23, "font-kerning"

    const-string v24, "font-language-override"

    const-string v25, "font-size"

    const-string v26, "font-size-adjust"

    const-string v27, "font-stretch"

    const-string v28, "font-style"

    const-string v29, "font-synthesis"

    const-string v30, "font-variant"

    const-string v31, "font-variant-alternates"

    const-string v32, "font-variant-caps"

    const-string v33, "font-variant-east-asian"

    const-string v34, "font-variant-ligatures"

    const-string v35, "font-variant-numeric"

    const-string v36, "font-variant-position"

    const-string v37, "font-weight"

    const-string v38, "direction"

    const-string/jumbo v39, "text-orientation"

    const-string/jumbo v40, "text-combine-upright"

    const-string/jumbo v41, "unicode-bidi"

    const-string/jumbo v42, "writing-mode"

    const-string v43, "border-collapse"

    const-string v44, "border-spacing"

    const-string v45, "caption-side"

    const-string v46, "empty-cells"

    const-string v47, "list-style"

    const-string v48, "list-style-image"

    const-string v49, "list-style-position"

    const-string v50, "list-style-type"

    const-string/jumbo v51, "quotes"

    const-string v52, "orphans"

    const-string/jumbo v53, "widows"

    filled-new-array/range {v1 .. v53}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/styledxmlparser/css/resolve/CssInheritance;->INHERITABLE_PROPERTIES:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isInheritable(Ljava/lang/String;)Z
    .locals 1
    .param p1, "cssProperty"    # Ljava/lang/String;

    .line 144
    sget-object v0, Lcom/itextpdf/styledxmlparser/css/resolve/CssInheritance;->INHERITABLE_PROPERTIES:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
