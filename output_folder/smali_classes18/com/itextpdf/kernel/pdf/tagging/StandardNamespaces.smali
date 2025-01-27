.class public final Lcom/itextpdf/kernel/pdf/tagging/StandardNamespaces;
.super Ljava/lang/Object;
.source "StandardNamespaces.java"


# static fields
.field private static final MATH_ML:Ljava/lang/String; = "http://www.w3.org/1998/Math/MathML"

.field public static final PDF_1_7:Ljava/lang/String; = "http://iso.org/pdf/ssn"

.field public static final PDF_2_0:Ljava/lang/String; = "http://iso.org/pdf2/ssn"

.field private static final STD_STRUCT_NAMESPACE_1_7_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final STD_STRUCT_NAMESPACE_2_0_TYPES:Ljava/util/Set;
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
    .locals 50

    .line 75
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "Document"

    const-string v2, "Part"

    const-string v3, "Div"

    const-string v4, "P"

    const-string v5, "H"

    const-string v6, "H1"

    const-string v7, "H2"

    const-string v8, "H3"

    const-string v9, "H4"

    const-string v10, "H5"

    const-string v11, "H6"

    const-string v12, "Lbl"

    const-string v13, "Span"

    const-string v14, "Link"

    const-string v15, "Annot"

    const-string v16, "Form"

    const-string v17, "Ruby"

    const-string v18, "RB"

    const-string v19, "RT"

    const-string v20, "RP"

    const-string v21, "Warichu"

    const-string v22, "WT"

    const-string v23, "WP"

    const-string v24, "L"

    const-string v25, "LI"

    const-string v26, "LBody"

    const-string v27, "Table"

    const-string v28, "TR"

    const-string v29, "TH"

    const-string v30, "TD"

    const-string v31, "THead"

    const-string v32, "TBody"

    const-string v33, "TFoot"

    const-string v34, "Caption"

    const-string v35, "Figure"

    const-string v36, "Formula"

    const-string v37, "Sect"

    const-string v38, "Art"

    const-string v39, "BlockQuote"

    const-string v40, "TOC"

    const-string v41, "TOCI"

    const-string v42, "Index"

    const-string v43, "NonStruct"

    const-string v44, "Private"

    const-string v45, "Quote"

    const-string v46, "Note"

    const-string v47, "Reference"

    const-string v48, "BibEntry"

    const-string v49, "Code"

    filled-new-array/range {v1 .. v49}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/tagging/StandardNamespaces;->STD_STRUCT_NAMESPACE_1_7_TYPES:Ljava/util/Set;

    .line 129
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "Document"

    const-string v2, "DocumentFragment"

    const-string v3, "Part"

    const-string v4, "Div"

    const-string v5, "Aside"

    const-string v6, "Title"

    const-string v7, "Sub"

    const-string v8, "P"

    const-string v9, "H"

    const-string v10, "Lbl"

    const-string v11, "Em"

    const-string v12, "Strong"

    const-string v13, "Span"

    const-string v14, "Link"

    const-string v15, "Annot"

    const-string v16, "Form"

    const-string v17, "Ruby"

    const-string v18, "RB"

    const-string v19, "RT"

    const-string v20, "RP"

    const-string v21, "Warichu"

    const-string v22, "WT"

    const-string v23, "WP"

    const-string v24, "FENote"

    const-string v25, "L"

    const-string v26, "LI"

    const-string v27, "LBody"

    const-string v28, "Table"

    const-string v29, "TR"

    const-string v30, "TH"

    const-string v31, "TD"

    const-string v32, "THead"

    const-string v33, "TBody"

    const-string v34, "TFoot"

    const-string v35, "Caption"

    const-string v36, "Figure"

    const-string v37, "Formula"

    const-string v38, "Artifact"

    filled-new-array/range {v1 .. v38}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/tagging/StandardNamespaces;->STD_STRUCT_NAMESPACE_2_0_TYPES:Ljava/util/Set;

    .line 171
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefault()Ljava/lang/String;
    .locals 1

    .line 180
    const-string v0, "http://iso.org/pdf/ssn"

    return-object v0
.end method

.method public static isHnRole(Ljava/lang/String;)Z
    .locals 4
    .param p0, "role"    # Ljava/lang/String;

    .line 219
    const-string v0, "H"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x30

    if-eq v0, v3, :cond_1

    .line 221
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v0, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 222
    :catch_0
    move-exception v0

    .line 226
    :cond_1
    return v1
.end method

.method public static isKnownDomainSpecificNamespace(Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;)Z
    .locals 2
    .param p0, "namespace"    # Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;

    .line 190
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;->getNamespaceName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://www.w3.org/1998/Math/MathML"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static roleBelongsToStandardNamespace(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "role"    # Ljava/lang/String;
    .param p1, "standardNamespaceName"    # Ljava/lang/String;

    .line 202
    const-string v0, "http://iso.org/pdf/ssn"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    sget-object v0, Lcom/itextpdf/kernel/pdf/tagging/StandardNamespaces;->STD_STRUCT_NAMESPACE_1_7_TYPES:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 204
    :cond_0
    const-string v0, "http://iso.org/pdf2/ssn"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 205
    sget-object v0, Lcom/itextpdf/kernel/pdf/tagging/StandardNamespaces;->STD_STRUCT_NAMESPACE_2_0_TYPES:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/itextpdf/kernel/pdf/tagging/StandardNamespaces;->isHnRole(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1

    .line 208
    :cond_3
    return v1
.end method
