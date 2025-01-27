.class public Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;
.super Ljava/lang/Object;
.source "PdfAConformanceLevel.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final PDF_A_1A:Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

.field public static final PDF_A_1B:Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

.field public static final PDF_A_2A:Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

.field public static final PDF_A_2B:Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

.field public static final PDF_A_2U:Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

.field public static final PDF_A_3A:Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

.field public static final PDF_A_3B:Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

.field public static final PDF_A_3U:Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

.field private static final serialVersionUID:J = 0x1490b046dd5c5dfbL


# instance fields
.field private final conformance:Ljava/lang/String;

.field private final part:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 58
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    const-string v1, "1"

    const-string v2, "A"

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;->PDF_A_1A:Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    .line 59
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    const-string v3, "B"

    invoke-direct {v0, v1, v3}, Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;->PDF_A_1B:Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    .line 60
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    const-string v1, "2"

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;->PDF_A_2A:Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    .line 61
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    invoke-direct {v0, v1, v3}, Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;->PDF_A_2B:Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    .line 62
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    const-string v4, "U"

    invoke-direct {v0, v1, v4}, Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;->PDF_A_2U:Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    .line 63
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    const-string v1, "3"

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;->PDF_A_3A:Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    .line 64
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    invoke-direct {v0, v1, v3}, Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;->PDF_A_3B:Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    .line 65
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    invoke-direct {v0, v1, v4}, Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;->PDF_A_3U:Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "part"    # Ljava/lang/String;
    .param p2, "conformance"    # Ljava/lang/String;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p2, p0, Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;->conformance:Ljava/lang/String;

    .line 73
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;->part:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public static getConformanceLevel(Lcom/itextpdf/kernel/xmp/XMPMeta;)Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;
    .locals 5
    .param p0, "meta"    # Lcom/itextpdf/kernel/xmp/XMPMeta;

    .line 118
    const-string v0, "http://www.aiim.org/pdfa/ns/id/"

    const/4 v1, 0x0

    .line 119
    .local v1, "conformanceXmpProperty":Lcom/itextpdf/kernel/xmp/properties/XMPProperty;
    const/4 v2, 0x0

    .line 121
    .local v2, "partXmpProperty":Lcom/itextpdf/kernel/xmp/properties/XMPProperty;
    :try_start_0
    const-string v3, "conformance"

    invoke-interface {p0, v0, v3}, Lcom/itextpdf/kernel/xmp/XMPMeta;->getProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/kernel/xmp/properties/XMPProperty;

    move-result-object v3

    move-object v1, v3

    .line 122
    const-string v3, "part"

    invoke-interface {p0, v0, v3}, Lcom/itextpdf/kernel/xmp/XMPMeta;->getProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/kernel/xmp/properties/XMPProperty;

    move-result-object v0
    :try_end_0
    .catch Lcom/itextpdf/kernel/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    .line 124
    goto :goto_0

    .line 123
    :catch_0
    move-exception v0

    .line 125
    :goto_0
    if-eqz v1, :cond_1

    if-nez v2, :cond_0

    goto :goto_1

    .line 128
    :cond_0
    invoke-interface {v1}, Lcom/itextpdf/kernel/xmp/properties/XMPProperty;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "conformance":Ljava/lang/String;
    invoke-interface {v2}, Lcom/itextpdf/kernel/xmp/properties/XMPProperty;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 130
    .local v3, "part":Ljava/lang/String;
    invoke-static {v3, v0}, Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;->getConformanceLevel(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    move-result-object v4

    return-object v4

    .line 126
    .end local v0    # "conformance":Ljava/lang/String;
    .end local v3    # "part":Ljava/lang/String;
    :cond_1
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getConformanceLevel(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;
    .locals 5
    .param p0, "part"    # Ljava/lang/String;
    .param p1, "conformance"    # Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "lowLetter":Ljava/lang/String;
    const-string v1, "A"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 87
    .local v1, "aLevel":Z
    const-string v2, "B"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 88
    .local v2, "bLevel":Z
    const-string v3, "U"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 90
    .local v3, "uLevel":Z
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_0
    goto :goto_0

    :pswitch_0
    const-string v4, "3"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x2

    goto :goto_1

    :pswitch_1
    const-string v4, "2"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :pswitch_2
    const-string v4, "1"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    :goto_0
    const/4 v4, -0x1

    :goto_1
    packed-switch v4, :pswitch_data_1

    goto :goto_2

    .line 106
    :pswitch_3
    if-eqz v1, :cond_1

    .line 107
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;->PDF_A_3A:Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    return-object v4

    .line 108
    :cond_1
    if-eqz v2, :cond_2

    .line 109
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;->PDF_A_3B:Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    return-object v4

    .line 110
    :cond_2
    if-eqz v3, :cond_6

    .line 111
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;->PDF_A_3U:Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    return-object v4

    .line 98
    :pswitch_4
    if-eqz v1, :cond_3

    .line 99
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;->PDF_A_2A:Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    return-object v4

    .line 100
    :cond_3
    if-eqz v2, :cond_4

    .line 101
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;->PDF_A_2B:Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    return-object v4

    .line 102
    :cond_4
    if-eqz v3, :cond_6

    .line 103
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;->PDF_A_2U:Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    return-object v4

    .line 92
    :pswitch_5
    if-eqz v1, :cond_5

    .line 93
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;->PDF_A_1A:Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    return-object v4

    .line 94
    :cond_5
    if-eqz v2, :cond_6

    .line 95
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;->PDF_A_1B:Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    return-object v4

    .line 114
    :cond_6
    :goto_2
    const/4 v4, 0x0

    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public getConformance()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;->conformance:Ljava/lang/String;

    return-object v0
.end method

.method public getPart()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;->part:Ljava/lang/String;

    return-object v0
.end method
