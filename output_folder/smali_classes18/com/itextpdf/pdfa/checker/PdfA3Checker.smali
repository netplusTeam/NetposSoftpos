.class public Lcom/itextpdf/pdfa/checker/PdfA3Checker;
.super Lcom/itextpdf/pdfa/checker/PdfA2Checker;
.source "PdfA3Checker.java"


# static fields
.field protected static final allowedAFRelationships:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/itextpdf/kernel/pdf/PdfName;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x5729f9b6c0c14c8dL


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 70
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Source:Lcom/itextpdf/kernel/pdf/PdfName;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Data:Lcom/itextpdf/kernel/pdf/PdfName;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Alternative:Lcom/itextpdf/kernel/pdf/PdfName;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Supplement:Lcom/itextpdf/kernel/pdf/PdfName;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Unspecified:Lcom/itextpdf/kernel/pdf/PdfName;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 71
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/pdfa/checker/PdfA3Checker;->allowedAFRelationships:Ljava/util/Set;

    .line 70
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)V
    .locals 0
    .param p1, "conformanceLevel"    # Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    .line 86
    invoke-direct {p0, p1}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;-><init>(Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)V

    .line 87
    return-void
.end method


# virtual methods
.method protected checkFileSpec(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 6
    .param p1, "fileSpec"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 91
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->AFRelationship:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    .line 92
    .local v0, "relationship":Lcom/itextpdf/kernel/pdf/PdfName;
    if-eqz v0, :cond_7

    sget-object v1, Lcom/itextpdf/pdfa/checker/PdfA3Checker;->allowedAFRelationships:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 96
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->EF:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 97
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->F:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->UF:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Desc:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 102
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->EF:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    .line 103
    .local v1, "ef":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->F:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsStream(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object v2

    .line 104
    .local v2, "embeddedFile":Lcom/itextpdf/kernel/pdf/PdfStream;
    if-eqz v2, :cond_4

    .line 108
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Subtype:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfStream;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 112
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Params:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfStream;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 113
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Params:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfStream;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    .line 114
    .local v3, "params":Lcom/itextpdf/kernel/pdf/PdfObject;
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfObject;->isDictionary()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 117
    move-object v4, v3

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->ModDate:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 120
    .end local v3    # "params":Lcom/itextpdf/kernel/pdf/PdfObject;
    goto :goto_0

    .line 118
    .restart local v3    # "params":Lcom/itextpdf/kernel/pdf/PdfObject;
    :cond_0
    new-instance v4, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v5, "Embedded file shall contain params key with valid moddate key"

    invoke-direct {v4, v5}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 115
    :cond_1
    new-instance v4, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v5, "Embedded file shall contain params key with dictionary as value"

    invoke-direct {v4, v5}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 121
    .end local v3    # "params":Lcom/itextpdf/kernel/pdf/PdfObject;
    :cond_2
    const-class v3, Lcom/itextpdf/pdfa/checker/PdfAChecker;

    invoke-static {v3}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v3

    .line 122
    .local v3, "logger":Lorg/slf4j/Logger;
    const-string v4, "Embedded file should contain params key "

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 109
    .end local v3    # "logger":Lorg/slf4j/Logger;
    :cond_3
    new-instance v3, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v4, "Mime type shall be specified using the subtype key of the file specification stream dictionary"

    invoke-direct {v3, v4}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 105
    :cond_4
    new-instance v3, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v4, "Ef key of file specification dictionary shall contain dictionary with valid f key"

    invoke-direct {v3, v4}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 98
    .end local v1    # "ef":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .end local v2    # "embeddedFile":Lcom/itextpdf/kernel/pdf/PdfStream;
    :cond_5
    new-instance v1, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v2, "File specification dictionary shall contain f key and uf key"

    invoke-direct {v1, v2}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 125
    :cond_6
    :goto_0
    return-void

    .line 93
    :cond_7
    new-instance v1, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v2, "File specification dictionary shall contain one of the predefined afrelationship keys"

    invoke-direct {v1, v2}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
