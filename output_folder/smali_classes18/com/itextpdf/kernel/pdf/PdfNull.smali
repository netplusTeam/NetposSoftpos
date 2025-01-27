.class public Lcom/itextpdf/kernel/pdf/PdfNull;
.super Lcom/itextpdf/kernel/pdf/PdfPrimitiveObject;
.source "PdfNull.java"


# static fields
.field private static final NullContent:[B

.field public static final PDF_NULL:Lcom/itextpdf/kernel/pdf/PdfNull;

.field private static final serialVersionUID:J = 0x6c187dee73757211L


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 55
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfNull;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfNull;-><init>(Z)V

    sput-object v0, Lcom/itextpdf/kernel/pdf/PdfNull;->PDF_NULL:Lcom/itextpdf/kernel/pdf/PdfNull;

    .line 56
    const-string v0, "null"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/PdfNull;->NullContent:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/PdfPrimitiveObject;-><init>()V

    .line 63
    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0
    .param p1, "directOnly"    # Z

    .line 66
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfPrimitiveObject;-><init>(Z)V

    .line 67
    return-void
.end method


# virtual methods
.method protected copyContent(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 0
    .param p1, "from"    # Lcom/itextpdf/kernel/pdf/PdfObject;
    .param p2, "document"    # Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 93
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 97
    if-eq p0, p1, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

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

.method protected generateContent()V
    .locals 1

    .line 81
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfNull;->NullContent:[B

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfNull;->content:[B

    .line 82
    return-void
.end method

.method public getType()B
    .locals 1

    .line 71
    const/4 v0, 0x7

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method protected newInstance()Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 1

    .line 87
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfNull;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfNull;-><init>()V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 76
    const-string v0, "null"

    return-object v0
.end method
