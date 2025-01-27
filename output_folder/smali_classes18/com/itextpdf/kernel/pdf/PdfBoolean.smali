.class public Lcom/itextpdf/kernel/pdf/PdfBoolean;
.super Lcom/itextpdf/kernel/pdf/PdfPrimitiveObject;
.source "PdfBoolean.java"


# static fields
.field public static final FALSE:Lcom/itextpdf/kernel/pdf/PdfBoolean;

.field private static final False:[B

.field public static final TRUE:Lcom/itextpdf/kernel/pdf/PdfBoolean;

.field private static final True:[B

.field private static final serialVersionUID:J = -0x12ed552002a89ab0L


# instance fields
.field private value:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 52
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Lcom/itextpdf/kernel/pdf/PdfBoolean;-><init>(ZZ)V

    sput-object v0, Lcom/itextpdf/kernel/pdf/PdfBoolean;->TRUE:Lcom/itextpdf/kernel/pdf/PdfBoolean;

    .line 53
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfBoolean;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/itextpdf/kernel/pdf/PdfBoolean;-><init>(ZZ)V

    sput-object v0, Lcom/itextpdf/kernel/pdf/PdfBoolean;->FALSE:Lcom/itextpdf/kernel/pdf/PdfBoolean;

    .line 55
    const-string/jumbo v0, "true"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/PdfBoolean;->True:[B

    .line 56
    const-string v0, "false"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/PdfBoolean;->False:[B

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/PdfPrimitiveObject;-><init>()V

    .line 76
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/PdfBoolean;-><init>(ZZ)V

    .line 67
    return-void
.end method

.method private constructor <init>(ZZ)V
    .locals 0
    .param p1, "value"    # Z
    .param p2, "directOnly"    # Z

    .line 70
    invoke-direct {p0, p2}, Lcom/itextpdf/kernel/pdf/PdfPrimitiveObject;-><init>(Z)V

    .line 71
    iput-boolean p1, p0, Lcom/itextpdf/kernel/pdf/PdfBoolean;->value:Z

    .line 72
    return-void
.end method

.method public static valueOf(Z)Lcom/itextpdf/kernel/pdf/PdfBoolean;
    .locals 1
    .param p0, "value"    # Z

    .line 128
    if-eqz p0, :cond_0

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfBoolean;->TRUE:Lcom/itextpdf/kernel/pdf/PdfBoolean;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfBoolean;->FALSE:Lcom/itextpdf/kernel/pdf/PdfBoolean;

    :goto_0
    return-object v0
.end method


# virtual methods
.method protected copyContent(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 2
    .param p1, "from"    # Lcom/itextpdf/kernel/pdf/PdfObject;
    .param p2, "document"    # Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 103
    invoke-super {p0, p1, p2}, Lcom/itextpdf/kernel/pdf/PdfPrimitiveObject;->copyContent(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 104
    move-object v0, p1

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfBoolean;

    .line 105
    .local v0, "bool":Lcom/itextpdf/kernel/pdf/PdfBoolean;
    iget-boolean v1, v0, Lcom/itextpdf/kernel/pdf/PdfBoolean;->value:Z

    iput-boolean v1, p0, Lcom/itextpdf/kernel/pdf/PdfBoolean;->value:Z

    .line 106
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 110
    if-eq p0, p1, :cond_1

    if-eqz p1, :cond_0

    .line 111
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfBoolean;->value:Z

    move-object v1, p1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfBoolean;

    iget-boolean v1, v1, Lcom/itextpdf/kernel/pdf/PdfBoolean;->value:Z

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 110
    :goto_1
    return v0
.end method

.method protected generateContent()V
    .locals 1

    .line 93
    iget-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfBoolean;->value:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfBoolean;->True:[B

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfBoolean;->False:[B

    :goto_0
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfBoolean;->content:[B

    .line 94
    return-void
.end method

.method public getType()B
    .locals 1

    .line 83
    const/4 v0, 0x2

    return v0
.end method

.method public getValue()Z
    .locals 1

    .line 79
    iget-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfBoolean;->value:Z

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 116
    iget-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfBoolean;->value:Z

    return v0
.end method

.method protected newInstance()Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 1

    .line 98
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfBoolean;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfBoolean;-><init>()V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 88
    iget-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfBoolean;->value:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "true"

    goto :goto_0

    :cond_0
    const-string v0, "false"

    :goto_0
    return-object v0
.end method
