.class public Lcom/itextpdf/pdfa/PdfADocument;
.super Lcom/itextpdf/kernel/pdf/PdfDocument;
.source "PdfADocument.java"


# static fields
.field private static pdfAPageFactory:Lcom/itextpdf/kernel/pdf/IPdfPageFactory; = null

.field private static final serialVersionUID:J = -0x51fed1f84346b716L


# instance fields
.field private alreadyLoggedThatObjectFlushingWasNotPerformed:Z

.field private alreadyLoggedThatPageFlushingWasNotPerformed:Z

.field protected checker:Lcom/itextpdf/pdfa/checker/PdfAChecker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 99
    new-instance v0, Lcom/itextpdf/pdfa/PdfAPageFactory;

    invoke-direct {v0}, Lcom/itextpdf/pdfa/PdfAPageFactory;-><init>()V

    sput-object v0, Lcom/itextpdf/pdfa/PdfADocument;->pdfAPageFactory:Lcom/itextpdf/kernel/pdf/IPdfPageFactory;

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfReader;Lcom/itextpdf/kernel/pdf/PdfWriter;)V
    .locals 1
    .param p1, "reader"    # Lcom/itextpdf/kernel/pdf/PdfReader;
    .param p2, "writer"    # Lcom/itextpdf/kernel/pdf/PdfWriter;

    .line 143
    new-instance v0, Lcom/itextpdf/kernel/pdf/StampingProperties;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/StampingProperties;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/itextpdf/pdfa/PdfADocument;-><init>(Lcom/itextpdf/kernel/pdf/PdfReader;Lcom/itextpdf/kernel/pdf/PdfWriter;Lcom/itextpdf/kernel/pdf/StampingProperties;)V

    .line 144
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfReader;Lcom/itextpdf/kernel/pdf/PdfWriter;Lcom/itextpdf/kernel/pdf/StampingProperties;)V
    .locals 5
    .param p1, "reader"    # Lcom/itextpdf/kernel/pdf/PdfReader;
    .param p2, "writer"    # Lcom/itextpdf/kernel/pdf/PdfWriter;
    .param p3, "properties"    # Lcom/itextpdf/kernel/pdf/StampingProperties;

    .line 154
    invoke-direct {p0, p1, p2, p3}, Lcom/itextpdf/kernel/pdf/PdfDocument;-><init>(Lcom/itextpdf/kernel/pdf/PdfReader;Lcom/itextpdf/kernel/pdf/PdfWriter;Lcom/itextpdf/kernel/pdf/StampingProperties;)V

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/pdfa/PdfADocument;->alreadyLoggedThatObjectFlushingWasNotPerformed:Z

    .line 105
    iput-boolean v0, p0, Lcom/itextpdf/pdfa/PdfADocument;->alreadyLoggedThatPageFlushingWasNotPerformed:Z

    .line 156
    invoke-virtual {p0}, Lcom/itextpdf/pdfa/PdfADocument;->getXmpMetadata()[B

    move-result-object v0

    .line 157
    .local v0, "existingXmpMetadata":[B
    const-string v1, "Document to read from shall be a pdfa conformant file with valid xmp metadata"

    if-eqz v0, :cond_1

    .line 162
    :try_start_0
    invoke-static {v0}, Lcom/itextpdf/kernel/xmp/XMPMetaFactory;->parseFromBuffer([B)Lcom/itextpdf/kernel/xmp/XMPMeta;

    move-result-object v2
    :try_end_0
    .catch Lcom/itextpdf/kernel/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    .local v2, "meta":Lcom/itextpdf/kernel/xmp/XMPMeta;
    nop

    .line 166
    invoke-static {v2}, Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;->getConformanceLevel(Lcom/itextpdf/kernel/xmp/XMPMeta;)Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    move-result-object v3

    .line 167
    .local v3, "conformanceLevel":Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;
    if-eqz v3, :cond_0

    .line 171
    invoke-virtual {p0, v3}, Lcom/itextpdf/pdfa/PdfADocument;->setChecker(Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)V

    .line 172
    return-void

    .line 168
    :cond_0
    new-instance v4, Lcom/itextpdf/pdfa/PdfAConformanceException;

    invoke-direct {v4, v1}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 163
    .end local v2    # "meta":Lcom/itextpdf/kernel/xmp/XMPMeta;
    .end local v3    # "conformanceLevel":Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;
    :catch_0
    move-exception v2

    .line 164
    .local v2, "exc":Lcom/itextpdf/kernel/xmp/XMPException;
    new-instance v3, Lcom/itextpdf/pdfa/PdfAConformanceException;

    invoke-direct {v3, v1}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 158
    .end local v2    # "exc":Lcom/itextpdf/kernel/xmp/XMPException;
    :cond_1
    new-instance v2, Lcom/itextpdf/pdfa/PdfAConformanceException;

    invoke-direct {v2, v1}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfWriter;Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;Lcom/itextpdf/kernel/pdf/PdfOutputIntent;)V
    .locals 1
    .param p1, "writer"    # Lcom/itextpdf/kernel/pdf/PdfWriter;
    .param p2, "conformanceLevel"    # Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;
    .param p3, "outputIntent"    # Lcom/itextpdf/kernel/pdf/PdfOutputIntent;

    .line 117
    new-instance v0, Lcom/itextpdf/kernel/pdf/DocumentProperties;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/DocumentProperties;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/itextpdf/pdfa/PdfADocument;-><init>(Lcom/itextpdf/kernel/pdf/PdfWriter;Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;Lcom/itextpdf/kernel/pdf/PdfOutputIntent;Lcom/itextpdf/kernel/pdf/DocumentProperties;)V

    .line 118
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfWriter;Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;Lcom/itextpdf/kernel/pdf/PdfOutputIntent;Lcom/itextpdf/kernel/pdf/DocumentProperties;)V
    .locals 1
    .param p1, "writer"    # Lcom/itextpdf/kernel/pdf/PdfWriter;
    .param p2, "conformanceLevel"    # Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;
    .param p3, "outputIntent"    # Lcom/itextpdf/kernel/pdf/PdfOutputIntent;
    .param p4, "properties"    # Lcom/itextpdf/kernel/pdf/DocumentProperties;

    .line 131
    invoke-direct {p0, p1, p4}, Lcom/itextpdf/kernel/pdf/PdfDocument;-><init>(Lcom/itextpdf/kernel/pdf/PdfWriter;Lcom/itextpdf/kernel/pdf/DocumentProperties;)V

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/pdfa/PdfADocument;->alreadyLoggedThatObjectFlushingWasNotPerformed:Z

    .line 105
    iput-boolean v0, p0, Lcom/itextpdf/pdfa/PdfADocument;->alreadyLoggedThatPageFlushingWasNotPerformed:Z

    .line 132
    invoke-virtual {p0, p2}, Lcom/itextpdf/pdfa/PdfADocument;->setChecker(Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)V

    .line 133
    invoke-virtual {p0, p3}, Lcom/itextpdf/pdfa/PdfADocument;->addOutputIntent(Lcom/itextpdf/kernel/pdf/PdfOutputIntent;)V

    .line 134
    return-void
.end method

.method private static getPdfVersionForPdfA(Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)Lcom/itextpdf/kernel/pdf/PdfVersion;
    .locals 2
    .param p0, "conformanceLevel"    # Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    .line 338
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;->getPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    goto :goto_0

    :pswitch_0
    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :pswitch_1
    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :pswitch_2
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_1

    .line 349
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfVersion;->PDF_1_4:Lcom/itextpdf/kernel/pdf/PdfVersion;

    .local v0, "version":Lcom/itextpdf/kernel/pdf/PdfVersion;
    goto :goto_2

    .line 346
    .end local v0    # "version":Lcom/itextpdf/kernel/pdf/PdfVersion;
    :pswitch_3
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfVersion;->PDF_1_7:Lcom/itextpdf/kernel/pdf/PdfVersion;

    .line 347
    .restart local v0    # "version":Lcom/itextpdf/kernel/pdf/PdfVersion;
    goto :goto_2

    .line 343
    .end local v0    # "version":Lcom/itextpdf/kernel/pdf/PdfVersion;
    :pswitch_4
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfVersion;->PDF_1_7:Lcom/itextpdf/kernel/pdf/PdfVersion;

    .line 344
    .restart local v0    # "version":Lcom/itextpdf/kernel/pdf/PdfVersion;
    goto :goto_2

    .line 340
    .end local v0    # "version":Lcom/itextpdf/kernel/pdf/PdfVersion;
    :pswitch_5
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfVersion;->PDF_1_4:Lcom/itextpdf/kernel/pdf/PdfVersion;

    .line 341
    .restart local v0    # "version":Lcom/itextpdf/kernel/pdf/PdfVersion;
    nop

    .line 352
    :goto_2
    return-object v0

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
.method protected addCustomMetadataExtensions(Lcom/itextpdf/kernel/xmp/XMPMeta;)V
    .locals 3
    .param p1, "xmpMeta"    # Lcom/itextpdf/kernel/xmp/XMPMeta;

    .line 251
    invoke-virtual {p0}, Lcom/itextpdf/pdfa/PdfADocument;->isTagged()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 253
    :try_start_0
    const-string v0, "http://www.aiim.org/pdfua/ns/id/"

    const-string v1, "part"

    invoke-interface {p1, v0, v1}, Lcom/itextpdf/kernel/xmp/XMPMeta;->getPropertyInteger(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 254
    const-string v0, "    <x:xmpmeta xmlns:x=\"adobe:ns:meta/\">\n      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">\n        <rdf:Description rdf:about=\"\" xmlns:pdfaExtension=\"http://www.aiim.org/pdfa/ns/extension/\" xmlns:pdfaSchema=\"http://www.aiim.org/pdfa/ns/schema#\" xmlns:pdfaProperty=\"http://www.aiim.org/pdfa/ns/property#\">\n          <pdfaExtension:schemas>\n            <rdf:Bag>\n              <rdf:li rdf:parseType=\"Resource\">\n                <pdfaSchema:namespaceURI>http://www.aiim.org/pdfua/ns/id/</pdfaSchema:namespaceURI>\n                <pdfaSchema:prefix>pdfuaid</pdfaSchema:prefix>\n                <pdfaSchema:schema>PDF/UA identification schema</pdfaSchema:schema>\n                <pdfaSchema:property>\n                  <rdf:Seq>\n                    <rdf:li rdf:parseType=\"Resource\">\n                      <pdfaProperty:category>internal</pdfaProperty:category>\n                      <pdfaProperty:description>PDF/UA version identifier</pdfaProperty:description>\n                      <pdfaProperty:name>part</pdfaProperty:name>\n                      <pdfaProperty:valueType>Integer</pdfaProperty:valueType>\n                    </rdf:li>\n                    <rdf:li rdf:parseType=\"Resource\">\n                      <pdfaProperty:category>internal</pdfaProperty:category>\n                      <pdfaProperty:description>PDF/UA amendment identifier</pdfaProperty:description>\n                      <pdfaProperty:name>amd</pdfaProperty:name>\n                      <pdfaProperty:valueType>Text</pdfaProperty:valueType>\n                    </rdf:li>\n                    <rdf:li rdf:parseType=\"Resource\">\n                      <pdfaProperty:category>internal</pdfaProperty:category>\n                      <pdfaProperty:description>PDF/UA corrigenda identifier</pdfaProperty:description>\n                      <pdfaProperty:name>corr</pdfaProperty:name>\n                      <pdfaProperty:valueType>Text</pdfaProperty:valueType>\n                    </rdf:li>\n                  </rdf:Seq>\n                </pdfaSchema:property>\n              </rdf:li>\n            </rdf:Bag>\n          </pdfaExtension:schemas>\n        </rdf:Description>\n      </rdf:RDF>\n    </x:xmpmeta>"

    invoke-static {v0}, Lcom/itextpdf/kernel/xmp/XMPMetaFactory;->parseFromString(Ljava/lang/String;)Lcom/itextpdf/kernel/xmp/XMPMeta;

    move-result-object v0

    .line 255
    .local v0, "taggedExtensionMeta":Lcom/itextpdf/kernel/xmp/XMPMeta;
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Lcom/itextpdf/kernel/xmp/XMPUtils;->appendProperties(Lcom/itextpdf/kernel/xmp/XMPMeta;Lcom/itextpdf/kernel/xmp/XMPMeta;ZZ)V
    :try_end_0
    .catch Lcom/itextpdf/kernel/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    .end local v0    # "taggedExtensionMeta":Lcom/itextpdf/kernel/xmp/XMPMeta;
    :cond_0
    goto :goto_0

    .line 257
    :catch_0
    move-exception v0

    .line 258
    .local v0, "exc":Lcom/itextpdf/kernel/xmp/XMPException;
    const-class v1, Lcom/itextpdf/pdfa/PdfADocument;

    invoke-static {v1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v1

    .line 259
    .local v1, "logger":Lorg/slf4j/Logger;
    const-string v2, "Exception while updating XmpMetadata"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 262
    .end local v0    # "exc":Lcom/itextpdf/kernel/xmp/XMPException;
    .end local v1    # "logger":Lorg/slf4j/Logger;
    :cond_1
    :goto_0
    return-void
.end method

.method protected checkIsoConformance()V
    .locals 2

    .line 280
    iget-object v0, p0, Lcom/itextpdf/pdfa/PdfADocument;->checker:Lcom/itextpdf/pdfa/checker/PdfAChecker;

    iget-object v1, p0, Lcom/itextpdf/pdfa/PdfADocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {v0, v1}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkDocument(Lcom/itextpdf/kernel/pdf/PdfCatalog;)V

    .line 281
    return-void
.end method

.method public checkIsoConformance(Ljava/lang/Object;Lcom/itextpdf/kernel/pdf/IsoKey;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "key"    # Lcom/itextpdf/kernel/pdf/IsoKey;

    .line 176
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/itextpdf/pdfa/PdfADocument;->checkIsoConformance(Ljava/lang/Object;Lcom/itextpdf/kernel/pdf/IsoKey;Lcom/itextpdf/kernel/pdf/PdfResources;Lcom/itextpdf/kernel/pdf/PdfStream;)V

    .line 177
    return-void
.end method

.method public checkIsoConformance(Ljava/lang/Object;Lcom/itextpdf/kernel/pdf/IsoKey;Lcom/itextpdf/kernel/pdf/PdfResources;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "key"    # Lcom/itextpdf/kernel/pdf/IsoKey;
    .param p3, "resources"    # Lcom/itextpdf/kernel/pdf/PdfResources;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 182
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/itextpdf/pdfa/PdfADocument;->checkIsoConformance(Ljava/lang/Object;Lcom/itextpdf/kernel/pdf/IsoKey;Lcom/itextpdf/kernel/pdf/PdfResources;Lcom/itextpdf/kernel/pdf/PdfStream;)V

    .line 183
    return-void
.end method

.method public checkIsoConformance(Ljava/lang/Object;Lcom/itextpdf/kernel/pdf/IsoKey;Lcom/itextpdf/kernel/pdf/PdfResources;Lcom/itextpdf/kernel/pdf/PdfStream;)V
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "key"    # Lcom/itextpdf/kernel/pdf/IsoKey;
    .param p3, "resources"    # Lcom/itextpdf/kernel/pdf/PdfResources;
    .param p4, "contentStream"    # Lcom/itextpdf/kernel/pdf/PdfStream;

    .line 188
    const/4 v0, 0x0

    .line 189
    .local v0, "currentColorSpaces":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-eqz p3, :cond_0

    .line 190
    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/PdfResources;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->ColorSpace:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    .line 192
    :cond_0
    sget-object v1, Lcom/itextpdf/pdfa/PdfADocument$1;->$SwitchMap$com$itextpdf$kernel$pdf$IsoKey:[I

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/IsoKey;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 227
    :pswitch_0
    iget-object v1, p0, Lcom/itextpdf/pdfa/PdfADocument;->checker:Lcom/itextpdf/pdfa/checker/PdfAChecker;

    move-object v2, p1

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfXrefTable;

    invoke-virtual {v1, v2}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkXrefTable(Lcom/itextpdf/kernel/pdf/PdfXrefTable;)V

    goto/16 :goto_0

    .line 224
    :pswitch_1
    iget-object v1, p0, Lcom/itextpdf/pdfa/PdfADocument;->checker:Lcom/itextpdf/pdfa/checker/PdfAChecker;

    move-object v2, p1

    check-cast v2, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getFont()Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v2

    invoke-virtual {v1, v2, p4}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkFontGlyphs(Lcom/itextpdf/kernel/font/PdfFont;Lcom/itextpdf/kernel/pdf/PdfStream;)V

    .line 225
    goto :goto_0

    .line 221
    :pswitch_2
    iget-object v1, p0, Lcom/itextpdf/pdfa/PdfADocument;->checker:Lcom/itextpdf/pdfa/checker/PdfAChecker;

    move-object v2, p1

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfObject;

    invoke-virtual {v1, v2}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkTagStructureElement(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 222
    goto :goto_0

    .line 217
    :pswitch_3
    move-object v1, p1

    check-cast v1, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    .line 218
    .local v1, "gState":Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;
    iget-object v2, p0, Lcom/itextpdf/pdfa/PdfADocument;->checker:Lcom/itextpdf/pdfa/checker/PdfAChecker;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getStrokeColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v0, v4, p4}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkColor(Lcom/itextpdf/kernel/colors/Color;Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/lang/Boolean;Lcom/itextpdf/kernel/pdf/PdfStream;)V

    .line 219
    goto :goto_0

    .line 214
    .end local v1    # "gState":Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;
    :pswitch_4
    iget-object v1, p0, Lcom/itextpdf/pdfa/PdfADocument;->checker:Lcom/itextpdf/pdfa/checker/PdfAChecker;

    move-object v2, p1

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfPage;

    invoke-virtual {v1, v2}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkSinglePage(Lcom/itextpdf/kernel/pdf/PdfPage;)V

    .line 215
    goto :goto_0

    .line 210
    :pswitch_5
    move-object v1, p1

    check-cast v1, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    .line 211
    .restart local v1    # "gState":Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;
    iget-object v2, p0, Lcom/itextpdf/pdfa/PdfADocument;->checker:Lcom/itextpdf/pdfa/checker/PdfAChecker;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getFillColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v0, v4, p4}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkColor(Lcom/itextpdf/kernel/colors/Color;Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/lang/Boolean;Lcom/itextpdf/kernel/pdf/PdfStream;)V

    .line 212
    goto :goto_0

    .line 206
    .end local v1    # "gState":Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;
    :pswitch_6
    move-object v1, p1

    check-cast v1, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    .line 207
    .restart local v1    # "gState":Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;
    iget-object v2, p0, Lcom/itextpdf/pdfa/PdfADocument;->checker:Lcom/itextpdf/pdfa/checker/PdfAChecker;

    invoke-virtual {v2, v1, p4}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkExtGState(Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;Lcom/itextpdf/kernel/pdf/PdfStream;)V

    .line 208
    goto :goto_0

    .line 203
    .end local v1    # "gState":Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;
    :pswitch_7
    iget-object v1, p0, Lcom/itextpdf/pdfa/PdfADocument;->checker:Lcom/itextpdf/pdfa/checker/PdfAChecker;

    move-object v2, p1

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v1, v2, v0}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkInlineImage(Lcom/itextpdf/kernel/pdf/PdfStream;Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 204
    goto :goto_0

    .line 200
    :pswitch_8
    iget-object v1, p0, Lcom/itextpdf/pdfa/PdfADocument;->checker:Lcom/itextpdf/pdfa/checker/PdfAChecker;

    move-object v2, p1

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkRenderingIntent(Lcom/itextpdf/kernel/pdf/PdfName;)V

    .line 201
    goto :goto_0

    .line 197
    :pswitch_9
    iget-object v1, p0, Lcom/itextpdf/pdfa/PdfADocument;->checker:Lcom/itextpdf/pdfa/checker/PdfAChecker;

    move-object v2, p1

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfObject;

    invoke-virtual {v1, v2}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkPdfObject(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 198
    goto :goto_0

    .line 194
    :pswitch_a
    iget-object v1, p0, Lcom/itextpdf/pdfa/PdfADocument;->checker:Lcom/itextpdf/pdfa/checker/PdfAChecker;

    move-object v2, p1

    check-cast v2, Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkCanvasStack(C)V

    .line 195
    nop

    .line 229
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected flushFonts()V
    .locals 3

    .line 297
    invoke-virtual {p0}, Lcom/itextpdf/pdfa/PdfADocument;->getDocumentFonts()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/font/PdfFont;

    .line 298
    .local v1, "pdfFont":Lcom/itextpdf/kernel/font/PdfFont;
    iget-object v2, p0, Lcom/itextpdf/pdfa/PdfADocument;->checker:Lcom/itextpdf/pdfa/checker/PdfAChecker;

    invoke-virtual {v2, v1}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkFont(Lcom/itextpdf/kernel/font/PdfFont;)V

    .line 299
    .end local v1    # "pdfFont":Lcom/itextpdf/kernel/font/PdfFont;
    goto :goto_0

    .line 300
    :cond_0
    invoke-super {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->flushFonts()V

    .line 301
    return-void
.end method

.method protected flushObject(Lcom/itextpdf/kernel/pdf/PdfObject;Z)V
    .locals 2
    .param p1, "pdfObject"    # Lcom/itextpdf/kernel/pdf/PdfObject;
    .param p2, "canBeInObjStm"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 285
    invoke-virtual {p0, p1}, Lcom/itextpdf/pdfa/PdfADocument;->markObjectAsMustBeFlushed(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 286
    iget-boolean v0, p0, Lcom/itextpdf/pdfa/PdfADocument;->isClosing:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/itextpdf/pdfa/PdfADocument;->checker:Lcom/itextpdf/pdfa/checker/PdfAChecker;

    invoke-virtual {v0, p1}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->objectIsChecked(Lcom/itextpdf/kernel/pdf/PdfObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 288
    :cond_0
    iget-boolean v0, p0, Lcom/itextpdf/pdfa/PdfADocument;->alreadyLoggedThatObjectFlushingWasNotPerformed:Z

    if-nez v0, :cond_2

    .line 289
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/pdfa/PdfADocument;->alreadyLoggedThatObjectFlushingWasNotPerformed:Z

    .line 291
    const-class v0, Lcom/itextpdf/pdfa/PdfADocument;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    const-string v1, "Object flushing was not performed. Object in PDF/A mode can only be flushed if the document is closed or if this object has already been checked for compliance with PDF/A rules."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_1

    .line 287
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->flushObject(Lcom/itextpdf/kernel/pdf/PdfObject;Z)V

    .line 293
    :cond_2
    :goto_1
    return-void
.end method

.method public getConformanceLevel()Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/itextpdf/pdfa/PdfADocument;->checker:Lcom/itextpdf/pdfa/checker/PdfAChecker;

    invoke-virtual {v0}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->getConformanceLevel()Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    move-result-object v0

    return-object v0
.end method

.method protected getCounters()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/log/ICounter;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 324
    invoke-static {}, Lcom/itextpdf/kernel/log/CounterManager;->getInstance()Lcom/itextpdf/kernel/log/CounterManager;

    move-result-object v0

    const-class v1, Lcom/itextpdf/pdfa/PdfADocument;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/log/CounterManager;->getCounters(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getPageFactory()Lcom/itextpdf/kernel/pdf/IPdfPageFactory;
    .locals 1

    .line 329
    sget-object v0, Lcom/itextpdf/pdfa/PdfADocument;->pdfAPageFactory:Lcom/itextpdf/kernel/pdf/IPdfPageFactory;

    return-object v0
.end method

.method protected initTagStructureContext()V
    .locals 2

    .line 318
    new-instance v0, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    iget-object v1, p0, Lcom/itextpdf/pdfa/PdfADocument;->checker:Lcom/itextpdf/pdfa/checker/PdfAChecker;

    invoke-virtual {v1}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->getConformanceLevel()Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    move-result-object v1

    invoke-static {v1}, Lcom/itextpdf/pdfa/PdfADocument;->getPdfVersionForPdfA(Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)Lcom/itextpdf/kernel/pdf/PdfVersion;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/pdf/PdfVersion;)V

    iput-object v0, p0, Lcom/itextpdf/pdfa/PdfADocument;->tagStructureContext:Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    .line 319
    return-void
.end method

.method isClosing()Z
    .locals 1

    .line 333
    iget-boolean v0, p0, Lcom/itextpdf/pdfa/PdfADocument;->isClosing:Z

    return v0
.end method

.method logThatPdfAPageFlushingWasNotPerformed()V
    .locals 2

    .line 242
    iget-boolean v0, p0, Lcom/itextpdf/pdfa/PdfADocument;->alreadyLoggedThatPageFlushingWasNotPerformed:Z

    if-nez v0, :cond_0

    .line 243
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/pdfa/PdfADocument;->alreadyLoggedThatPageFlushingWasNotPerformed:Z

    .line 245
    const-class v0, Lcom/itextpdf/pdfa/PdfADocument;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    const-string v1, "Page flushing was not performed. Pages flushing in PDF/A mode works only with explicit calls to PdfPage#flush(boolean) with flushResourcesContentStreams argument set to true"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 247
    :cond_0
    return-void
.end method

.method protected setChecker(Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)V
    .locals 2
    .param p1, "conformanceLevel"    # Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    .line 304
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;->getPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    goto :goto_0

    :pswitch_0
    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :pswitch_1
    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :pswitch_2
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_1

    goto :goto_2

    .line 312
    :pswitch_3
    new-instance v0, Lcom/itextpdf/pdfa/checker/PdfA3Checker;

    invoke-direct {v0, p1}, Lcom/itextpdf/pdfa/checker/PdfA3Checker;-><init>(Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)V

    iput-object v0, p0, Lcom/itextpdf/pdfa/PdfADocument;->checker:Lcom/itextpdf/pdfa/checker/PdfAChecker;

    goto :goto_2

    .line 309
    :pswitch_4
    new-instance v0, Lcom/itextpdf/pdfa/checker/PdfA2Checker;

    invoke-direct {v0, p1}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;-><init>(Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)V

    iput-object v0, p0, Lcom/itextpdf/pdfa/PdfADocument;->checker:Lcom/itextpdf/pdfa/checker/PdfAChecker;

    .line 310
    goto :goto_2

    .line 306
    :pswitch_5
    new-instance v0, Lcom/itextpdf/pdfa/checker/PdfA1Checker;

    invoke-direct {v0, p1}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;-><init>(Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)V

    iput-object v0, p0, Lcom/itextpdf/pdfa/PdfADocument;->checker:Lcom/itextpdf/pdfa/checker/PdfAChecker;

    .line 307
    nop

    .line 315
    :goto_2
    return-void

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

.method protected updateXmpMetadata()V
    .locals 4

    .line 267
    const-string v0, "http://www.aiim.org/pdfa/ns/id/"

    :try_start_0
    invoke-virtual {p0}, Lcom/itextpdf/pdfa/PdfADocument;->updateDefaultXmpMetadata()Lcom/itextpdf/kernel/xmp/XMPMeta;

    move-result-object v1

    .line 268
    .local v1, "xmpMeta":Lcom/itextpdf/kernel/xmp/XMPMeta;
    const-string v2, "part"

    iget-object v3, p0, Lcom/itextpdf/pdfa/PdfADocument;->checker:Lcom/itextpdf/pdfa/checker/PdfAChecker;

    invoke-virtual {v3}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->getConformanceLevel()Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;->getPart()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v2, v3}, Lcom/itextpdf/kernel/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 269
    const-string v2, "conformance"

    iget-object v3, p0, Lcom/itextpdf/pdfa/PdfADocument;->checker:Lcom/itextpdf/pdfa/checker/PdfAChecker;

    invoke-virtual {v3}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->getConformanceLevel()Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;->getConformance()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v2, v3}, Lcom/itextpdf/kernel/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 270
    invoke-virtual {p0, v1}, Lcom/itextpdf/pdfa/PdfADocument;->addCustomMetadataExtensions(Lcom/itextpdf/kernel/xmp/XMPMeta;)V

    .line 271
    invoke-virtual {p0, v1}, Lcom/itextpdf/pdfa/PdfADocument;->setXmpMetadata(Lcom/itextpdf/kernel/xmp/XMPMeta;)V
    :try_end_0
    .catch Lcom/itextpdf/kernel/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    .end local v1    # "xmpMeta":Lcom/itextpdf/kernel/xmp/XMPMeta;
    goto :goto_0

    .line 272
    :catch_0
    move-exception v0

    .line 273
    .local v0, "e":Lcom/itextpdf/kernel/xmp/XMPException;
    const-class v1, Lcom/itextpdf/pdfa/PdfADocument;

    invoke-static {v1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v1

    .line 274
    .local v1, "logger":Lorg/slf4j/Logger;
    const-string v2, "Exception while updating XmpMetadata"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 276
    .end local v0    # "e":Lcom/itextpdf/kernel/xmp/XMPException;
    .end local v1    # "logger":Lorg/slf4j/Logger;
    :goto_0
    return-void
.end method
