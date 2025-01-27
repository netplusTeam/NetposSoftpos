.class public Lcom/itextpdf/kernel/pdf/PdfDocument;
.super Ljava/lang/Object;
.source "PdfDocument.java"

# interfaces
.implements Lcom/itextpdf/kernel/events/IEventDispatcher;
.implements Ljava/io/Closeable;
.implements Ljava/io/Serializable;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final lastDocumentId:Ljava/util/concurrent/atomic/AtomicLong;

.field private static pdfPageFactory:Lcom/itextpdf/kernel/pdf/IPdfPageFactory; = null

.field private static final serialVersionUID:J = -0x61b8b6c61836df5eL


# instance fields
.field protected catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

.field protected closeReader:Z

.field protected closeWriter:Z

.field protected closed:Z

.field protected currentPage:Lcom/itextpdf/kernel/pdf/PdfPage;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private defaultFont:Lcom/itextpdf/kernel/font/PdfFont;

.field protected defaultPageSize:Lcom/itextpdf/kernel/geom/PageSize;

.field private documentFonts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/itextpdf/kernel/pdf/PdfIndirectReference;",
            "Lcom/itextpdf/kernel/font/PdfFont;",
            ">;"
        }
    .end annotation
.end field

.field private documentId:J

.field protected transient eventDispatcher:Lcom/itextpdf/kernel/events/EventDispatcher;

.field protected fingerPrint:Lcom/itextpdf/kernel/pdf/FingerPrint;

.field protected flushUnusedObjects:Z

.field protected info:Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;

.field protected isClosing:Z

.field private linkAnnotations:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Lcom/itextpdf/kernel/pdf/PdfPage;",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;",
            ">;>;"
        }
    .end annotation
.end field

.field memoryLimitsAwareHandler:Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;

.field private modifiedDocumentId:Lcom/itextpdf/kernel/pdf/PdfString;

.field private originalDocumentId:Lcom/itextpdf/kernel/pdf/PdfString;

.field protected pdfVersion:Lcom/itextpdf/kernel/pdf/PdfVersion;

.field protected final properties:Lcom/itextpdf/kernel/pdf/StampingProperties;

.field protected reader:Lcom/itextpdf/kernel/pdf/PdfReader;

.field serializedObjectsCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/itextpdf/kernel/pdf/PdfIndirectReference;",
            "[B>;"
        }
    .end annotation
.end field

.field protected structParentIndex:I

.field protected structTreeRoot:Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

.field protected transient tagStructureContext:Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

.field protected trailer:Lcom/itextpdf/kernel/pdf/PdfDictionary;

.field private versionInfo:Lcom/itextpdf/kernel/VersionInfo;

.field protected writer:Lcom/itextpdf/kernel/pdf/PdfWriter;

.field protected xmpMetadata:[B

.field final xref:Lcom/itextpdf/kernel/pdf/PdfXrefTable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 113
    nop

    .line 117
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfPageFactory;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfPageFactory;-><init>()V

    sput-object v0, Lcom/itextpdf/kernel/pdf/PdfDocument;->pdfPageFactory:Lcom/itextpdf/kernel/pdf/IPdfPageFactory;

    .line 210
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lcom/itextpdf/kernel/pdf/PdfDocument;->lastDocumentId:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfReader;)V
    .locals 1
    .param p1, "reader"    # Lcom/itextpdf/kernel/pdf/PdfReader;

    .line 238
    new-instance v0, Lcom/itextpdf/kernel/pdf/DocumentProperties;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/DocumentProperties;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;-><init>(Lcom/itextpdf/kernel/pdf/PdfReader;Lcom/itextpdf/kernel/pdf/DocumentProperties;)V

    .line 239
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfReader;Lcom/itextpdf/kernel/pdf/DocumentProperties;)V
    .locals 3
    .param p1, "reader"    # Lcom/itextpdf/kernel/pdf/PdfReader;
    .param p2, "properties"    # Lcom/itextpdf/kernel/pdf/DocumentProperties;

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->currentPage:Lcom/itextpdf/kernel/pdf/PdfPage;

    .line 130
    sget-object v1, Lcom/itextpdf/kernel/geom/PageSize;->Default:Lcom/itextpdf/kernel/geom/PageSize;

    iput-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->defaultPageSize:Lcom/itextpdf/kernel/geom/PageSize;

    .line 132
    new-instance v1, Lcom/itextpdf/kernel/events/EventDispatcher;

    invoke-direct {v1}, Lcom/itextpdf/kernel/events/EventDispatcher;-><init>()V

    iput-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->eventDispatcher:Lcom/itextpdf/kernel/events/EventDispatcher;

    .line 138
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->writer:Lcom/itextpdf/kernel/pdf/PdfWriter;

    .line 144
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->reader:Lcom/itextpdf/kernel/pdf/PdfReader;

    .line 149
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->xmpMetadata:[B

    .line 154
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    .line 159
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->trailer:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 164
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->info:Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;

    .line 169
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfVersion;->PDF_1_7:Lcom/itextpdf/kernel/pdf/PdfVersion;

    iput-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->pdfVersion:Lcom/itextpdf/kernel/pdf/PdfVersion;

    .line 184
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfXrefTable;

    invoke-direct {v1}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;-><init>()V

    iput-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->xref:Lcom/itextpdf/kernel/pdf/PdfXrefTable;

    .line 191
    const/4 v1, -0x1

    iput v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->structParentIndex:I

    .line 193
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->closeReader:Z

    .line 194
    iput-boolean v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->closeWriter:Z

    .line 196
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->isClosing:Z

    .line 198
    iput-boolean v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->closed:Z

    .line 203
    iput-boolean v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->flushUnusedObjects:Z

    .line 205
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->documentFonts:Ljava/util/Map;

    .line 206
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->defaultFont:Lcom/itextpdf/kernel/font/PdfFont;

    .line 213
    invoke-static {}, Lcom/itextpdf/kernel/Version;->getInstance()Lcom/itextpdf/kernel/Version;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/Version;->getInfo()Lcom/itextpdf/kernel/VersionInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->versionInfo:Lcom/itextpdf/kernel/VersionInfo;

    .line 220
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->linkAnnotations:Ljava/util/LinkedHashMap;

    .line 225
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->serializedObjectsCache:Ljava/util/Map;

    .line 230
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->memoryLimitsAwareHandler:Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;

    .line 248
    if-eqz p1, :cond_0

    .line 251
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfDocument;->lastDocumentId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->documentId:J

    .line 252
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->reader:Lcom/itextpdf/kernel/pdf/PdfReader;

    .line 254
    new-instance v1, Lcom/itextpdf/kernel/pdf/StampingProperties;

    invoke-direct {v1}, Lcom/itextpdf/kernel/pdf/StampingProperties;-><init>()V

    iput-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->properties:Lcom/itextpdf/kernel/pdf/StampingProperties;

    .line 255
    iget-object v2, p2, Lcom/itextpdf/kernel/pdf/DocumentProperties;->metaInfo:Lcom/itextpdf/kernel/counter/event/IMetaInfo;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/StampingProperties;->setEventCountingMetaInfo(Lcom/itextpdf/kernel/counter/event/IMetaInfo;)Lcom/itextpdf/kernel/pdf/DocumentProperties;

    .line 256
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->open(Lcom/itextpdf/kernel/pdf/PdfVersion;)V

    .line 257
    return-void

    .line 249
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The reader in PdfDocument constructor can not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfReader;Lcom/itextpdf/kernel/pdf/PdfWriter;)V
    .locals 1
    .param p1, "reader"    # Lcom/itextpdf/kernel/pdf/PdfReader;
    .param p2, "writer"    # Lcom/itextpdf/kernel/pdf/PdfWriter;

    .line 296
    new-instance v0, Lcom/itextpdf/kernel/pdf/StampingProperties;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/StampingProperties;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;-><init>(Lcom/itextpdf/kernel/pdf/PdfReader;Lcom/itextpdf/kernel/pdf/PdfWriter;Lcom/itextpdf/kernel/pdf/StampingProperties;)V

    .line 297
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfReader;Lcom/itextpdf/kernel/pdf/PdfWriter;Lcom/itextpdf/kernel/pdf/StampingProperties;)V
    .locals 4
    .param p1, "reader"    # Lcom/itextpdf/kernel/pdf/PdfReader;
    .param p2, "writer"    # Lcom/itextpdf/kernel/pdf/PdfWriter;
    .param p3, "properties"    # Lcom/itextpdf/kernel/pdf/StampingProperties;

    .line 306
    const-class v0, Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->currentPage:Lcom/itextpdf/kernel/pdf/PdfPage;

    .line 130
    sget-object v2, Lcom/itextpdf/kernel/geom/PageSize;->Default:Lcom/itextpdf/kernel/geom/PageSize;

    iput-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->defaultPageSize:Lcom/itextpdf/kernel/geom/PageSize;

    .line 132
    new-instance v2, Lcom/itextpdf/kernel/events/EventDispatcher;

    invoke-direct {v2}, Lcom/itextpdf/kernel/events/EventDispatcher;-><init>()V

    iput-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->eventDispatcher:Lcom/itextpdf/kernel/events/EventDispatcher;

    .line 138
    iput-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->writer:Lcom/itextpdf/kernel/pdf/PdfWriter;

    .line 144
    iput-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->reader:Lcom/itextpdf/kernel/pdf/PdfReader;

    .line 149
    iput-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->xmpMetadata:[B

    .line 154
    iput-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    .line 159
    iput-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->trailer:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 164
    iput-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->info:Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;

    .line 169
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfVersion;->PDF_1_7:Lcom/itextpdf/kernel/pdf/PdfVersion;

    iput-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->pdfVersion:Lcom/itextpdf/kernel/pdf/PdfVersion;

    .line 184
    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfXrefTable;

    invoke-direct {v2}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;-><init>()V

    iput-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->xref:Lcom/itextpdf/kernel/pdf/PdfXrefTable;

    .line 191
    const/4 v2, -0x1

    iput v2, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->structParentIndex:I

    .line 193
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->closeReader:Z

    .line 194
    iput-boolean v2, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->closeWriter:Z

    .line 196
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->isClosing:Z

    .line 198
    iput-boolean v2, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->closed:Z

    .line 203
    iput-boolean v2, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->flushUnusedObjects:Z

    .line 205
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->documentFonts:Ljava/util/Map;

    .line 206
    iput-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->defaultFont:Lcom/itextpdf/kernel/font/PdfFont;

    .line 213
    invoke-static {}, Lcom/itextpdf/kernel/Version;->getInstance()Lcom/itextpdf/kernel/Version;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/Version;->getInfo()Lcom/itextpdf/kernel/VersionInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->versionInfo:Lcom/itextpdf/kernel/VersionInfo;

    .line 220
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->linkAnnotations:Ljava/util/LinkedHashMap;

    .line 225
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->serializedObjectsCache:Ljava/util/Map;

    .line 230
    iput-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->memoryLimitsAwareHandler:Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;

    .line 307
    if-eqz p1, :cond_3

    .line 310
    if-eqz p2, :cond_2

    .line 313
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfDocument;->lastDocumentId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->documentId:J

    .line 314
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->reader:Lcom/itextpdf/kernel/pdf/PdfReader;

    .line 315
    iput-object p2, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->writer:Lcom/itextpdf/kernel/pdf/PdfWriter;

    .line 316
    iput-object p3, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->properties:Lcom/itextpdf/kernel/pdf/StampingProperties;

    .line 318
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->writerHasEncryption()Z

    move-result v1

    .line 319
    .local v1, "writerHasEncryption":Z
    iget-boolean v2, p3, Lcom/itextpdf/kernel/pdf/StampingProperties;->appendMode:Z

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 320
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v2

    .line 321
    .local v2, "logger":Lorg/slf4j/Logger;
    const-string v3, "Writer encryption will be ignored, because append mode is used. Document will preserve the original encryption (or will stay unencrypted)"

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 323
    .end local v2    # "logger":Lorg/slf4j/Logger;
    :cond_0
    iget-boolean v2, p3, Lcom/itextpdf/kernel/pdf/StampingProperties;->preserveEncryption:Z

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 324
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 325
    .local v0, "logger":Lorg/slf4j/Logger;
    const-string v2, "Writer encryption will be ignored, because preservation of encryption is enabled. Document will preserve the original encryption (or will stay unencrypted)"

    invoke-interface {v0, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 328
    .end local v0    # "logger":Lorg/slf4j/Logger;
    :cond_1
    iget-object v0, p2, Lcom/itextpdf/kernel/pdf/PdfWriter;->properties:Lcom/itextpdf/kernel/pdf/WriterProperties;

    iget-object v0, v0, Lcom/itextpdf/kernel/pdf/WriterProperties;->pdfVersion:Lcom/itextpdf/kernel/pdf/PdfVersion;

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->open(Lcom/itextpdf/kernel/pdf/PdfVersion;)V

    .line 329
    return-void

    .line 311
    .end local v1    # "writerHasEncryption":Z
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The writer in PdfDocument constructor can not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 308
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The reader in PdfDocument constructor can not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfWriter;)V
    .locals 1
    .param p1, "writer"    # Lcom/itextpdf/kernel/pdf/PdfWriter;

    .line 266
    new-instance v0, Lcom/itextpdf/kernel/pdf/DocumentProperties;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/DocumentProperties;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;-><init>(Lcom/itextpdf/kernel/pdf/PdfWriter;Lcom/itextpdf/kernel/pdf/DocumentProperties;)V

    .line 267
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfWriter;Lcom/itextpdf/kernel/pdf/DocumentProperties;)V
    .locals 2
    .param p1, "writer"    # Lcom/itextpdf/kernel/pdf/PdfWriter;
    .param p2, "properties"    # Lcom/itextpdf/kernel/pdf/DocumentProperties;

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->currentPage:Lcom/itextpdf/kernel/pdf/PdfPage;

    .line 130
    sget-object v1, Lcom/itextpdf/kernel/geom/PageSize;->Default:Lcom/itextpdf/kernel/geom/PageSize;

    iput-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->defaultPageSize:Lcom/itextpdf/kernel/geom/PageSize;

    .line 132
    new-instance v1, Lcom/itextpdf/kernel/events/EventDispatcher;

    invoke-direct {v1}, Lcom/itextpdf/kernel/events/EventDispatcher;-><init>()V

    iput-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->eventDispatcher:Lcom/itextpdf/kernel/events/EventDispatcher;

    .line 138
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->writer:Lcom/itextpdf/kernel/pdf/PdfWriter;

    .line 144
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->reader:Lcom/itextpdf/kernel/pdf/PdfReader;

    .line 149
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->xmpMetadata:[B

    .line 154
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    .line 159
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->trailer:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 164
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->info:Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;

    .line 169
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfVersion;->PDF_1_7:Lcom/itextpdf/kernel/pdf/PdfVersion;

    iput-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->pdfVersion:Lcom/itextpdf/kernel/pdf/PdfVersion;

    .line 184
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfXrefTable;

    invoke-direct {v1}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;-><init>()V

    iput-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->xref:Lcom/itextpdf/kernel/pdf/PdfXrefTable;

    .line 191
    const/4 v1, -0x1

    iput v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->structParentIndex:I

    .line 193
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->closeReader:Z

    .line 194
    iput-boolean v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->closeWriter:Z

    .line 196
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->isClosing:Z

    .line 198
    iput-boolean v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->closed:Z

    .line 203
    iput-boolean v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->flushUnusedObjects:Z

    .line 205
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->documentFonts:Ljava/util/Map;

    .line 206
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->defaultFont:Lcom/itextpdf/kernel/font/PdfFont;

    .line 213
    invoke-static {}, Lcom/itextpdf/kernel/Version;->getInstance()Lcom/itextpdf/kernel/Version;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/Version;->getInfo()Lcom/itextpdf/kernel/VersionInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->versionInfo:Lcom/itextpdf/kernel/VersionInfo;

    .line 220
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->linkAnnotations:Ljava/util/LinkedHashMap;

    .line 225
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->serializedObjectsCache:Ljava/util/Map;

    .line 230
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->memoryLimitsAwareHandler:Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;

    .line 277
    if-eqz p1, :cond_0

    .line 280
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfDocument;->lastDocumentId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->documentId:J

    .line 281
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->writer:Lcom/itextpdf/kernel/pdf/PdfWriter;

    .line 283
    new-instance v0, Lcom/itextpdf/kernel/pdf/StampingProperties;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/StampingProperties;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->properties:Lcom/itextpdf/kernel/pdf/StampingProperties;

    .line 284
    iget-object v1, p2, Lcom/itextpdf/kernel/pdf/DocumentProperties;->metaInfo:Lcom/itextpdf/kernel/counter/event/IMetaInfo;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/StampingProperties;->setEventCountingMetaInfo(Lcom/itextpdf/kernel/counter/event/IMetaInfo;)Lcom/itextpdf/kernel/pdf/DocumentProperties;

    .line 285
    iget-object v0, p1, Lcom/itextpdf/kernel/pdf/PdfWriter;->properties:Lcom/itextpdf/kernel/pdf/WriterProperties;

    iget-object v0, v0, Lcom/itextpdf/kernel/pdf/WriterProperties;->pdfVersion:Lcom/itextpdf/kernel/pdf/PdfVersion;

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->open(Lcom/itextpdf/kernel/pdf/PdfVersion;)V

    .line 286
    return-void

    .line 278
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The writer in PdfDocument constructor can not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private addModifiedPostfix(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "producer"    # Ljava/lang/String;

    .line 2459
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->versionInfo:Lcom/itextpdf/kernel/VersionInfo;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/VersionInfo;->getVersion()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->versionInfo:Lcom/itextpdf/kernel/VersionInfo;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/VersionInfo;->getProduct()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2462
    :cond_0
    const-string v0, "; modified using"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 2464
    .local v0, "idx":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 2465
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .local v1, "buf":Ljava/lang/StringBuilder;
    goto :goto_0

    .line 2467
    .end local v1    # "buf":Ljava/lang/StringBuilder;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2469
    .restart local v1    # "buf":Ljava/lang/StringBuilder;
    :goto_0
    const-string v2, "; modified using "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2470
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->versionInfo:Lcom/itextpdf/kernel/VersionInfo;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/VersionInfo;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2471
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 2460
    .end local v0    # "idx":I
    .end local v1    # "buf":Ljava/lang/StringBuilder;
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->versionInfo:Lcom/itextpdf/kernel/VersionInfo;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/VersionInfo;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private cloneOutlines(Ljava/util/Set;Lcom/itextpdf/kernel/pdf/PdfOutline;Lcom/itextpdf/kernel/pdf/PdfOutline;Ljava/util/Map;Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 10
    .param p2, "newParent"    # Lcom/itextpdf/kernel/pdf/PdfOutline;
    .param p3, "oldParent"    # Lcom/itextpdf/kernel/pdf/PdfOutline;
    .param p5, "toDocument"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/itextpdf/kernel/pdf/PdfOutline;",
            ">;",
            "Lcom/itextpdf/kernel/pdf/PdfOutline;",
            "Lcom/itextpdf/kernel/pdf/PdfOutline;",
            "Ljava/util/Map<",
            "Lcom/itextpdf/kernel/pdf/PdfPage;",
            "Lcom/itextpdf/kernel/pdf/PdfPage;",
            ">;",
            "Lcom/itextpdf/kernel/pdf/PdfDocument;",
            ")V"
        }
    .end annotation

    .line 2377
    .local p1, "outlinesToCopy":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfOutline;>;"
    .local p4, "page2page":Ljava/util/Map;, "Ljava/util/Map<Lcom/itextpdf/kernel/pdf/PdfPage;Lcom/itextpdf/kernel/pdf/PdfPage;>;"
    if-nez p3, :cond_0

    .line 2378
    return-void

    .line 2380
    :cond_0
    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/PdfOutline;->getAllChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfOutline;

    .line 2381
    .local v1, "outline":Lcom/itextpdf/kernel/pdf/PdfOutline;
    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2382
    const/4 v2, 0x0

    .line 2383
    .local v2, "copiedDest":Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfOutline;->getDestination()Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2384
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfOutline;->getDestination()Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    .line 2385
    .local v3, "destObjToCopy":Lcom/itextpdf/kernel/pdf/PdfObject;
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object v4

    invoke-virtual {v4, v3, p4, p5}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->copyDestination(Lcom/itextpdf/kernel/pdf/PdfObject;Ljava/util/Map;Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;

    move-result-object v2

    move-object v8, v2

    goto :goto_1

    .line 2383
    .end local v3    # "destObjToCopy":Lcom/itextpdf/kernel/pdf/PdfObject;
    :cond_1
    move-object v8, v2

    .line 2387
    .end local v2    # "copiedDest":Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;
    .local v8, "copiedDest":Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;
    :goto_1
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfOutline;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/itextpdf/kernel/pdf/PdfOutline;->addOutline(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/PdfOutline;

    move-result-object v9

    .line 2388
    .local v9, "child":Lcom/itextpdf/kernel/pdf/PdfOutline;
    if-eqz v8, :cond_2

    .line 2389
    invoke-virtual {v9, v8}, Lcom/itextpdf/kernel/pdf/PdfOutline;->addDestination(Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;)V

    .line 2392
    :cond_2
    move-object v2, p0

    move-object v3, p1

    move-object v4, v9

    move-object v5, v1

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/itextpdf/kernel/pdf/PdfDocument;->cloneOutlines(Ljava/util/Set;Lcom/itextpdf/kernel/pdf/PdfOutline;Lcom/itextpdf/kernel/pdf/PdfOutline;Ljava/util/Map;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 2394
    .end local v1    # "outline":Lcom/itextpdf/kernel/pdf/PdfOutline;
    .end local v8    # "copiedDest":Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;
    .end local v9    # "child":Lcom/itextpdf/kernel/pdf/PdfOutline;
    :cond_3
    goto :goto_0

    .line 2395
    :cond_4
    return-void
.end method

.method private copyLinkAnnotations(Lcom/itextpdf/kernel/pdf/PdfDocument;Ljava/util/Map;)V
    .locals 16
    .param p1, "toDocument"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/PdfDocument;",
            "Ljava/util/Map<",
            "Lcom/itextpdf/kernel/pdf/PdfPage;",
            "Lcom/itextpdf/kernel/pdf/PdfPage;",
            ">;)V"
        }
    .end annotation

    .line 2276
    .local p2, "page2page":Ljava/util/Map;, "Ljava/util/Map<Lcom/itextpdf/kernel/pdf/PdfPage;Lcom/itextpdf/kernel/pdf/PdfPage;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2277
    .local v3, "excludedKeys":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/pdf/PdfName;>;"
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->Dest:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2278
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->A:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2279
    iget-object v4, v0, Lcom/itextpdf/kernel/pdf/PdfDocument;->linkAnnotations:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 2281
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/itextpdf/kernel/pdf/PdfPage;Ljava/util/List<Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;>;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;

    .line 2282
    .local v7, "annot":Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;
    const/4 v8, 0x1

    .line 2283
    .local v8, "toCopyAnnot":Z
    const/4 v9, 0x0

    .line 2284
    .local v9, "copiedDest":Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;
    const/4 v10, 0x0

    .line 2286
    .local v10, "copiedAction":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;->getDestinationObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v11

    .line 2287
    .local v11, "dest":Lcom/itextpdf/kernel/pdf/PdfObject;
    const/4 v12, 0x1

    if-eqz v11, :cond_1

    .line 2291
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object v14

    invoke-virtual {v14, v11, v2, v1}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->copyDestination(Lcom/itextpdf/kernel/pdf/PdfObject;Ljava/util/Map;Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;

    move-result-object v9

    .line 2292
    if-eqz v9, :cond_0

    move v14, v12

    goto :goto_2

    :cond_0
    const/4 v14, 0x0

    :goto_2
    move v8, v14

    goto :goto_4

    .line 2297
    :cond_1
    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;->getAction()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v14

    .line 2298
    .local v14, "action":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-eqz v14, :cond_4

    .line 2299
    sget-object v15, Lcom/itextpdf/kernel/pdf/PdfName;->GoTo:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v13, Lcom/itextpdf/kernel/pdf/PdfName;->S:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v14, v13}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v13

    invoke-virtual {v15, v13}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 2300
    new-array v13, v12, [Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v15, Lcom/itextpdf/kernel/pdf/PdfName;->D:Lcom/itextpdf/kernel/pdf/PdfName;

    const/4 v12, 0x0

    aput-object v15, v13, v12

    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    invoke-virtual {v14, v1, v13, v12}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->copyTo(Lcom/itextpdf/kernel/pdf/PdfDocument;Ljava/util/List;Z)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v10

    .line 2301
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object v12

    sget-object v13, Lcom/itextpdf/kernel/pdf/PdfName;->D:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v14, v13}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v13

    invoke-virtual {v12, v13, v2, v1}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->copyDestination(Lcom/itextpdf/kernel/pdf/PdfObject;Ljava/util/Map;Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;

    move-result-object v12

    .line 2302
    .local v12, "goToDest":Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;
    if-eqz v12, :cond_2

    .line 2303
    sget-object v13, Lcom/itextpdf/kernel/pdf/PdfName;->D:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v12}, Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v15

    invoke-virtual {v10, v13, v15}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_3

    .line 2305
    :cond_2
    const/4 v8, 0x0

    .line 2307
    .end local v12    # "goToDest":Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;
    :goto_3
    goto :goto_4

    .line 2308
    :cond_3
    const/4 v12, 0x0

    invoke-virtual {v14, v1, v12}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->copyTo(Lcom/itextpdf/kernel/pdf/PdfDocument;Z)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v13

    move-object v10, v13

    check-cast v10, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 2313
    .end local v14    # "action":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :cond_4
    :goto_4
    if-eqz v8, :cond_7

    .line 2314
    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v12

    check-cast v12, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    const/4 v13, 0x1

    invoke-virtual {v12, v1, v3, v13}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->copyTo(Lcom/itextpdf/kernel/pdf/PdfDocument;Ljava/util/List;Z)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v12

    invoke-static {v12}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->makeAnnotation(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    move-result-object v12

    check-cast v12, Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;

    .line 2315
    .local v12, "newAnnot":Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;
    if-eqz v9, :cond_5

    .line 2316
    invoke-virtual {v12, v9}, Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;->setDestination(Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;)Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;

    .line 2318
    :cond_5
    if-eqz v10, :cond_6

    .line 2319
    invoke-virtual {v12, v10}, Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;->setAction(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;

    .line 2321
    :cond_6
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/itextpdf/kernel/pdf/PdfPage;

    const/4 v14, -0x1

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v12, v15}, Lcom/itextpdf/kernel/pdf/PdfPage;->addAnnotation(ILcom/itextpdf/kernel/pdf/annot/PdfAnnotation;Z)Lcom/itextpdf/kernel/pdf/PdfPage;

    .line 2323
    .end local v7    # "annot":Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;
    .end local v8    # "toCopyAnnot":Z
    .end local v9    # "copiedDest":Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;
    .end local v10    # "copiedAction":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .end local v11    # "dest":Lcom/itextpdf/kernel/pdf/PdfObject;
    .end local v12    # "newAnnot":Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;
    :cond_7
    goto/16 :goto_1

    .line 2324
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/itextpdf/kernel/pdf/PdfPage;Ljava/util/List<Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;>;>;"
    :cond_8
    goto/16 :goto_0

    .line 2325
    :cond_9
    iget-object v4, v0, Lcom/itextpdf/kernel/pdf/PdfDocument;->linkAnnotations:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->clear()V

    .line 2326
    return-void
.end method

.method private copyOutlines(Ljava/util/Set;Lcom/itextpdf/kernel/pdf/PdfDocument;Ljava/util/Map;)V
    .locals 8
    .param p2, "toDocument"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/itextpdf/kernel/pdf/PdfOutline;",
            ">;",
            "Lcom/itextpdf/kernel/pdf/PdfDocument;",
            "Ljava/util/Map<",
            "Lcom/itextpdf/kernel/pdf/PdfPage;",
            "Lcom/itextpdf/kernel/pdf/PdfPage;",
            ">;)V"
        }
    .end annotation

    .line 2336
    .local p1, "outlines":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfOutline;>;"
    .local p3, "page2page":Ljava/util/Map;, "Ljava/util/Map<Lcom/itextpdf/kernel/pdf/PdfPage;Lcom/itextpdf/kernel/pdf/PdfPage;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2337
    .local v0, "outlinesToCopy":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfOutline;>;"
    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2339
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfOutline;

    .line 2340
    .local v2, "outline":Lcom/itextpdf/kernel/pdf/PdfOutline;
    invoke-direct {p0, v2, v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getAllOutlinesToCopy(Lcom/itextpdf/kernel/pdf/PdfOutline;Ljava/util/Set;)V

    .line 2341
    .end local v2    # "outline":Lcom/itextpdf/kernel/pdf/PdfOutline;
    goto :goto_0

    .line 2343
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getOutlines(Z)Lcom/itextpdf/kernel/pdf/PdfOutline;

    move-result-object v2

    .line 2344
    .local v2, "rootOutline":Lcom/itextpdf/kernel/pdf/PdfOutline;
    if-nez v2, :cond_1

    .line 2345
    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfOutline;

    invoke-direct {v3, p2}, Lcom/itextpdf/kernel/pdf/PdfOutline;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    move-object v2, v3

    .line 2346
    const-string v3, "Outlines"

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfOutline;->setTitle(Ljava/lang/String;)V

    move-object v7, v2

    goto :goto_1

    .line 2344
    :cond_1
    move-object v7, v2

    .line 2349
    .end local v2    # "rootOutline":Lcom/itextpdf/kernel/pdf/PdfOutline;
    .local v7, "rootOutline":Lcom/itextpdf/kernel/pdf/PdfOutline;
    :goto_1
    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getOutlines(Z)Lcom/itextpdf/kernel/pdf/PdfOutline;

    move-result-object v4

    move-object v1, p0

    move-object v2, v0

    move-object v3, v7

    move-object v5, p3

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/itextpdf/kernel/pdf/PdfDocument;->cloneOutlines(Ljava/util/Set;Lcom/itextpdf/kernel/pdf/PdfOutline;Lcom/itextpdf/kernel/pdf/PdfOutline;Ljava/util/Map;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 2350
    return-void
.end method

.method private ensureTreeRootAddedToNames(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfName;)V
    .locals 3
    .param p1, "treeRoot"    # Lcom/itextpdf/kernel/pdf/PdfObject;
    .param p2, "treeType"    # Lcom/itextpdf/kernel/pdf/PdfName;

    .line 2398
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Names:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    .line 2399
    .local v0, "names":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-nez v0, :cond_0

    .line 2400
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    move-object v0, v1

    .line 2401
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Names:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2, v0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfCatalog;

    .line 2402
    invoke-virtual {v0, p0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 2404
    :cond_0
    invoke-virtual {v0, p2, p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 2405
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->setModified()Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 2406
    return-void
.end method

.method private getAllOutlinesToCopy(Lcom/itextpdf/kernel/pdf/PdfOutline;Ljava/util/Set;)V
    .locals 3
    .param p1, "outline"    # Lcom/itextpdf/kernel/pdf/PdfOutline;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/PdfOutline;",
            "Ljava/util/Set<",
            "Lcom/itextpdf/kernel/pdf/PdfOutline;",
            ">;)V"
        }
    .end annotation

    .line 2359
    .local p2, "outlinesToCopy":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfOutline;>;"
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfOutline;->getParent()Lcom/itextpdf/kernel/pdf/PdfOutline;

    move-result-object v0

    .line 2362
    .local v0, "parent":Lcom/itextpdf/kernel/pdf/PdfOutline;
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfOutline;->getTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Outlines"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2365
    :cond_0
    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2366
    invoke-direct {p0, v0, p2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getAllOutlinesToCopy(Lcom/itextpdf/kernel/pdf/PdfOutline;Ljava/util/Set;)V

    .line 2367
    return-void

    .line 2363
    :cond_1
    :goto_0
    return-void
.end method

.method private getSerializedBytes()[B
    .locals 6

    .line 2410
    const/4 v0, 0x0

    .line 2411
    .local v0, "bos":Lcom/itextpdf/io/source/ByteArrayOutputStream;
    const/4 v1, 0x0

    .line 2413
    .local v1, "oos":Ljava/io/ObjectOutputStream;
    :try_start_0
    new-instance v2, Lcom/itextpdf/io/source/ByteArrayOutputStream;

    invoke-direct {v2}, Lcom/itextpdf/io/source/ByteArrayOutputStream;-><init>()V

    move-object v0, v2

    .line 2414
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v1, v2

    .line 2415
    invoke-virtual {v1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 2416
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V

    .line 2417
    invoke-virtual {v0}, Lcom/itextpdf/io/source/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2423
    nop

    .line 2425
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2427
    goto :goto_0

    .line 2426
    :catch_0
    move-exception v3

    .line 2429
    :goto_0
    nop

    .line 2431
    :try_start_2
    invoke-virtual {v0}, Lcom/itextpdf/io/source/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2433
    goto :goto_1

    .line 2432
    :catch_1
    move-exception v3

    .line 2417
    :goto_1
    return-object v2

    .line 2423
    :catchall_0
    move-exception v2

    goto :goto_4

    .line 2418
    :catch_2
    move-exception v2

    .line 2419
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    const-class v3, Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-static {v3}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v3

    .line 2420
    .local v3, "logger":Lorg/slf4j/Logger;
    const-string v4, "Unhandled exception while serialization"

    invoke-interface {v3, v4, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2421
    const/4 v4, 0x0

    .line 2423
    if-eqz v1, :cond_0

    .line 2425
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 2427
    goto :goto_2

    .line 2426
    :catch_3
    move-exception v5

    .line 2429
    :cond_0
    :goto_2
    if-eqz v0, :cond_1

    .line 2431
    :try_start_5
    invoke-virtual {v0}, Lcom/itextpdf/io/source/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 2433
    goto :goto_3

    .line 2432
    :catch_4
    move-exception v5

    .line 2421
    :cond_1
    :goto_3
    return-object v4

    .line 2423
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "logger":Lorg/slf4j/Logger;
    :goto_4
    if-eqz v1, :cond_2

    .line 2425
    :try_start_6
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 2427
    goto :goto_5

    .line 2426
    :catch_5
    move-exception v3

    .line 2429
    :cond_2
    :goto_5
    if-eqz v0, :cond_3

    .line 2431
    :try_start_7
    invoke-virtual {v0}, Lcom/itextpdf/io/source/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 2433
    goto :goto_6

    .line 2432
    :catch_6
    move-exception v3

    .line 2435
    :cond_3
    :goto_6
    throw v2
.end method

.method private static isXmpMetaHasProperty(Lcom/itextpdf/kernel/xmp/XMPMeta;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "xmpMeta"    # Lcom/itextpdf/kernel/xmp/XMPMeta;
    .param p1, "schemaNS"    # Ljava/lang/String;
    .param p2, "propName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    .line 2526
    invoke-interface {p0, p1, p2}, Lcom/itextpdf/kernel/xmp/XMPMeta;->getProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/kernel/xmp/properties/XMPProperty;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static overrideFullCompressionInWriterProperties(Lcom/itextpdf/kernel/pdf/WriterProperties;Z)V
    .locals 3
    .param p0, "properties"    # Lcom/itextpdf/kernel/pdf/WriterProperties;
    .param p1, "readerHasXrefStream"    # Z

    .line 2515
    const-class v0, Lcom/itextpdf/kernel/pdf/PdfDocument;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/WriterProperties;->isFullCompression:Ljava/lang/Boolean;

    if-ne v1, v2, :cond_0

    if-nez p1, :cond_0

    .line 2516
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 2517
    .local v0, "logger":Lorg/slf4j/Logger;
    const-string v1, "Full compression mode requested in append mode but the original document has cross-reference table, not cross-reference stream. Falling back to cross-reference table in appended document and switching full compression off"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .end local v0    # "logger":Lorg/slf4j/Logger;
    goto :goto_0

    .line 2518
    :cond_0
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/WriterProperties;->isFullCompression:Ljava/lang/Boolean;

    if-ne v1, v2, :cond_1

    if-eqz p1, :cond_1

    .line 2519
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 2520
    .restart local v0    # "logger":Lorg/slf4j/Logger;
    const-string v1, "Full compression mode was requested to be switched off in append mode but the original document has cross-reference stream, not cross-reference table. Falling back to cross-reference stream in appended document and switching full compression on"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_1

    .line 2518
    .end local v0    # "logger":Lorg/slf4j/Logger;
    :cond_1
    :goto_0
    nop

    .line 2522
    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/WriterProperties;->isFullCompression:Ljava/lang/Boolean;

    .line 2523
    return-void
.end method

.method private processReadingError(Ljava/lang/String;)V
    .locals 2
    .param p1, "errorMessage"    # Ljava/lang/String;

    .line 2506
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;->CONSERVATIVE:Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->reader:Lcom/itextpdf/kernel/pdf/PdfReader;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfReader;->getStrictnessLevel()Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;->isStricter(Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2507
    const-class v0, Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 2508
    .local v0, "logger":Lorg/slf4j/Logger;
    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 2509
    .end local v0    # "logger":Lorg/slf4j/Logger;
    nop

    .line 2512
    return-void

    .line 2510
    :cond_0
    new-instance v0, Lcom/itextpdf/kernel/PdfException;

    invoke-direct {v0, p1}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readDocumentIds()V
    .locals 3

    .line 2491
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->reader:Lcom/itextpdf/kernel/pdf/PdfReader;

    iget-object v0, v0, Lcom/itextpdf/kernel/pdf/PdfReader;->trailer:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->ID:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    .line 2493
    .local v0, "id":Lcom/itextpdf/kernel/pdf/PdfArray;
    if-eqz v0, :cond_2

    .line 2494
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 2495
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsString(I)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v1

    iput-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->originalDocumentId:Lcom/itextpdf/kernel/pdf/PdfString;

    .line 2496
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsString(I)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v1

    iput-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->modifiedDocumentId:Lcom/itextpdf/kernel/pdf/PdfString;

    .line 2499
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->originalDocumentId:Lcom/itextpdf/kernel/pdf/PdfString;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->modifiedDocumentId:Lcom/itextpdf/kernel/pdf/PdfString;

    if-nez v1, :cond_2

    .line 2500
    :cond_1
    const-string v1, "The document original and/or modified id is corrupted"

    invoke-direct {p0, v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->processReadingError(Ljava/lang/String;)V

    .line 2503
    :cond_2
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 2450
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 2451
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->versionInfo:Lcom/itextpdf/kernel/VersionInfo;

    if-nez v0, :cond_0

    .line 2452
    invoke-static {}, Lcom/itextpdf/kernel/Version;->getInstance()Lcom/itextpdf/kernel/Version;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/Version;->getInfo()Lcom/itextpdf/kernel/VersionInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->versionInfo:Lcom/itextpdf/kernel/VersionInfo;

    .line 2455
    :cond_0
    new-instance v0, Lcom/itextpdf/kernel/events/EventDispatcher;

    invoke-direct {v0}, Lcom/itextpdf/kernel/events/EventDispatcher;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->eventDispatcher:Lcom/itextpdf/kernel/events/EventDispatcher;

    .line 2456
    return-void
.end method

.method private removeUnusedWidgetsFromFields(Lcom/itextpdf/kernel/pdf/PdfPage;)V
    .locals 5
    .param p1, "page"    # Lcom/itextpdf/kernel/pdf/PdfPage;

    .line 2264
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->isFlushed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2265
    return-void

    .line 2267
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->getAnnotations()Ljava/util/List;

    move-result-object v0

    .line 2268
    .local v0, "annots":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    .line 2269
    .local v2, "annot":Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getSubtype()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v3

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->Widget:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2270
    move-object v3, v2

    check-cast v3, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->releaseFormFieldFromWidgetAnnotation()V

    .line 2272
    .end local v2    # "annot":Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;
    :cond_1
    goto :goto_0

    .line 2273
    :cond_2
    return-void
.end method

.method private tryFlushTagStructure(Z)V
    .locals 3
    .param p1, "isAppendMode"    # Z

    .line 2238
    :try_start_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->tagStructureContext:Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    if-eqz v0, :cond_0

    .line 2239
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->prepareToDocumentClosing()V

    .line 2241
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->structTreeRoot:Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->isModified()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2242
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->structTreeRoot:Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2246
    :cond_2
    nop

    .line 2247
    return-void

    .line 2244
    :catch_0
    move-exception v0

    .line 2245
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Lcom/itextpdf/kernel/PdfException;

    const-string v2, "Tag structure flushing failed: it might be corrupted."

    invoke-direct {v1, v2, v0}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private updatePdfVersionFromCatalog()V
    .locals 2

    .line 2476
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Version:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2480
    :try_start_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Version:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    invoke-static {v0}, Lcom/itextpdf/kernel/pdf/PdfVersion;->fromPdfName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfVersion;

    move-result-object v0

    .line 2481
    .local v0, "catalogVersion":Lcom/itextpdf/kernel/pdf/PdfVersion;
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->pdfVersion:Lcom/itextpdf/kernel/pdf/PdfVersion;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfVersion;->compareTo(Lcom/itextpdf/kernel/pdf/PdfVersion;)I

    move-result v1

    if-lez v1, :cond_0

    .line 2482
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->pdfVersion:Lcom/itextpdf/kernel/pdf/PdfVersion;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2486
    .end local v0    # "catalogVersion":Lcom/itextpdf/kernel/pdf/PdfVersion;
    :cond_0
    goto :goto_0

    .line 2484
    :catch_0
    move-exception v0

    .line 2485
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "The document version specified in catalog is corrupted"

    invoke-direct {p0, v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->processReadingError(Ljava/lang/String;)V

    .line 2488
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    :goto_0
    return-void
.end method

.method private updateProducerInInfoDictionary()V
    .locals 4

    .line 2205
    const/4 v0, 0x0

    .line 2206
    .local v0, "producer":Ljava/lang/String;
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->reader:Lcom/itextpdf/kernel/pdf/PdfReader;

    if-nez v1, :cond_0

    .line 2207
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->versionInfo:Lcom/itextpdf/kernel/VersionInfo;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/VersionInfo;->getVersion()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2209
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->info:Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Producer:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2210
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->info:Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Producer:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v1

    .line 2211
    .local v1, "producerPdfStr":Lcom/itextpdf/kernel/pdf/PdfString;
    if-nez v1, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    move-object v0, v2

    .line 2213
    .end local v1    # "producerPdfStr":Lcom/itextpdf/kernel/pdf/PdfString;
    :cond_2
    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->addModifiedPostfix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2215
    :goto_1
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->info:Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Producer:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfString;

    invoke-direct {v3, v0}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 2216
    return-void
.end method

.method private updateValueInMarkInfoDict(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)V
    .locals 3
    .param p1, "key"    # Lcom/itextpdf/kernel/pdf/PdfName;
    .param p2, "value"    # Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 2250
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->MarkInfo:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    .line 2251
    .local v0, "markInfo":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-nez v0, :cond_0

    .line 2252
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    move-object v0, v1

    .line 2253
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->MarkInfo:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 2255
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 2256
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2439
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->tagStructureContext:Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    if-eqz v0, :cond_0

    .line 2440
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    const-string v1, "Tag structure context is not null and will be reinitialized in the copy of document. The copy may lose some data"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 2442
    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 2443
    return-void
.end method

.method private writerHasEncryption()Z
    .locals 1

    .line 2446
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->writer:Lcom/itextpdf/kernel/pdf/PdfWriter;

    iget-object v0, v0, Lcom/itextpdf/kernel/pdf/PdfWriter;->properties:Lcom/itextpdf/kernel/pdf/WriterProperties;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/WriterProperties;->isStandardEncryptionUsed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->writer:Lcom/itextpdf/kernel/pdf/PdfWriter;

    iget-object v0, v0, Lcom/itextpdf/kernel/pdf/PdfWriter;->properties:Lcom/itextpdf/kernel/pdf/WriterProperties;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/WriterProperties;->isPublicKeyEncryptionUsed()Z

    move-result v0

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


# virtual methods
.method public addAssociatedFile(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;)V
    .locals 3
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "fs"    # Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;

    .line 1567
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->AFRelationship:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1568
    const-class v0, Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 1569
    .local v0, "logger":Lorg/slf4j/Logger;
    const-string v1, "For associated files their associated file specification dictionaries shall include the AFRelationship key."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 1572
    .end local v0    # "logger":Lorg/slf4j/Logger;
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->AF:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    .line 1573
    .local v0, "afArray":Lcom/itextpdf/kernel/pdf/PdfArray;
    if-nez v0, :cond_1

    .line 1574
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v1}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    invoke-virtual {v1, p0}, Lcom/itextpdf/kernel/pdf/PdfArray;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 1575
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->AF:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2, v0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfCatalog;

    .line 1577
    :cond_1
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 1579
    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->addFileAttachment(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;)V

    .line 1580
    return-void
.end method

.method protected addCustomMetadataExtensions(Lcom/itextpdf/kernel/xmp/XMPMeta;)V
    .locals 0
    .param p1, "xmpMeta"    # Lcom/itextpdf/kernel/xmp/XMPMeta;

    .line 2070
    return-void
.end method

.method public addEventHandler(Ljava/lang/String;Lcom/itextpdf/kernel/events/IEventHandler;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "handler"    # Lcom/itextpdf/kernel/events/IEventHandler;

    .line 721
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->eventDispatcher:Lcom/itextpdf/kernel/events/EventDispatcher;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/kernel/events/EventDispatcher;->addEventHandler(Ljava/lang/String;Lcom/itextpdf/kernel/events/IEventHandler;)V

    .line 722
    return-void
.end method

.method public addFileAttachment(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "fs"    # Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;

    .line 1549
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->checkClosingStatus()V

    .line 1550
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->EmbeddedFiles:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, p1, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->addNameToNameTree(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfName;)V

    .line 1551
    return-void
.end method

.method public addFont(Lcom/itextpdf/kernel/font/PdfFont;)Lcom/itextpdf/kernel/font/PdfFont;
    .locals 2
    .param p1, "font"    # Lcom/itextpdf/kernel/font/PdfFont;

    .line 1794
    invoke-virtual {p1, p0}, Lcom/itextpdf/kernel/font/PdfFont;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    .line 1796
    invoke-virtual {p1}, Lcom/itextpdf/kernel/font/PdfFont;->setForbidRelease()V

    .line 1797
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->documentFonts:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/font/PdfFont;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1798
    return-object p1
.end method

.method public addNamedDestination(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfObject;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 1444
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->checkClosingStatus()V

    .line 1445
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfObject;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1446
    const-class v0, Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    const-string v1, "When destination\'s not associated with a Remote or Embedded Go-To action, it shall specify page dictionary instead of page number. Otherwise destination might be considered invalid"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 1447
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->addNamedDestination(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 1448
    return-void
.end method

.method public addNewPage()Lcom/itextpdf/kernel/pdf/PdfPage;
    .locals 1

    .line 468
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getDefaultPageSize()Lcom/itextpdf/kernel/geom/PageSize;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->addNewPage(Lcom/itextpdf/kernel/geom/PageSize;)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v0

    return-object v0
.end method

.method public addNewPage(I)Lcom/itextpdf/kernel/pdf/PdfPage;
    .locals 1
    .param p1, "index"    # I

    .line 494
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getDefaultPageSize()Lcom/itextpdf/kernel/geom/PageSize;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->addNewPage(ILcom/itextpdf/kernel/geom/PageSize;)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v0

    return-object v0
.end method

.method public addNewPage(ILcom/itextpdf/kernel/geom/PageSize;)Lcom/itextpdf/kernel/pdf/PdfPage;
    .locals 3
    .param p1, "index"    # I
    .param p2, "pageSize"    # Lcom/itextpdf/kernel/geom/PageSize;

    .line 506
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->checkClosingStatus()V

    .line 507
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPageFactory()Lcom/itextpdf/kernel/pdf/IPdfPageFactory;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/itextpdf/kernel/pdf/IPdfPageFactory;->createPdfPage(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/PageSize;)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v0

    .line 508
    .local v0, "page":Lcom/itextpdf/kernel/pdf/PdfPage;
    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->checkAndAddPage(ILcom/itextpdf/kernel/pdf/PdfPage;)V

    .line 509
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->currentPage:Lcom/itextpdf/kernel/pdf/PdfPage;

    .line 510
    new-instance v1, Lcom/itextpdf/kernel/events/PdfDocumentEvent;

    const-string v2, "StartPdfPage"

    invoke-direct {v1, v2, v0}, Lcom/itextpdf/kernel/events/PdfDocumentEvent;-><init>(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfPage;)V

    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->dispatchEvent(Lcom/itextpdf/kernel/events/Event;)V

    .line 511
    new-instance v1, Lcom/itextpdf/kernel/events/PdfDocumentEvent;

    const-string v2, "InsertPdfPage"

    invoke-direct {v1, v2, v0}, Lcom/itextpdf/kernel/events/PdfDocumentEvent;-><init>(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfPage;)V

    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->dispatchEvent(Lcom/itextpdf/kernel/events/Event;)V

    .line 512
    return-object v0
.end method

.method public addNewPage(Lcom/itextpdf/kernel/geom/PageSize;)Lcom/itextpdf/kernel/pdf/PdfPage;
    .locals 3
    .param p1, "pageSize"    # Lcom/itextpdf/kernel/geom/PageSize;

    .line 478
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->checkClosingStatus()V

    .line 479
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPageFactory()Lcom/itextpdf/kernel/pdf/IPdfPageFactory;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/itextpdf/kernel/pdf/IPdfPageFactory;->createPdfPage(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/PageSize;)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v0

    .line 480
    .local v0, "page":Lcom/itextpdf/kernel/pdf/PdfPage;
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->checkAndAddPage(Lcom/itextpdf/kernel/pdf/PdfPage;)V

    .line 481
    new-instance v1, Lcom/itextpdf/kernel/events/PdfDocumentEvent;

    const-string v2, "StartPdfPage"

    invoke-direct {v1, v2, v0}, Lcom/itextpdf/kernel/events/PdfDocumentEvent;-><init>(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfPage;)V

    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->dispatchEvent(Lcom/itextpdf/kernel/events/Event;)V

    .line 482
    new-instance v1, Lcom/itextpdf/kernel/events/PdfDocumentEvent;

    const-string v2, "InsertPdfPage"

    invoke-direct {v1, v2, v0}, Lcom/itextpdf/kernel/events/PdfDocumentEvent;-><init>(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfPage;)V

    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->dispatchEvent(Lcom/itextpdf/kernel/events/Event;)V

    .line 483
    return-object v0
.end method

.method public addOutputIntent(Lcom/itextpdf/kernel/pdf/PdfOutputIntent;)V
    .locals 3
    .param p1, "outputIntent"    # Lcom/itextpdf/kernel/pdf/PdfOutputIntent;

    .line 1485
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->checkClosingStatus()V

    .line 1486
    if-nez p1, :cond_0

    .line 1487
    return-void

    .line 1489
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->OutputIntents:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    .line 1490
    .local v0, "outputIntents":Lcom/itextpdf/kernel/pdf/PdfArray;
    if-nez v0, :cond_1

    .line 1491
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v1}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    move-object v0, v1

    .line 1492
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->OutputIntents:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2, v0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfCatalog;

    .line 1494
    :cond_1
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfOutputIntent;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 1495
    return-void
.end method

.method public addPage(ILcom/itextpdf/kernel/pdf/PdfPage;)Lcom/itextpdf/kernel/pdf/PdfPage;
    .locals 2
    .param p1, "index"    # I
    .param p2, "page"    # Lcom/itextpdf/kernel/pdf/PdfPage;

    .line 538
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->checkClosingStatus()V

    .line 539
    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->checkAndAddPage(ILcom/itextpdf/kernel/pdf/PdfPage;)V

    .line 540
    iput-object p2, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->currentPage:Lcom/itextpdf/kernel/pdf/PdfPage;

    .line 541
    new-instance v0, Lcom/itextpdf/kernel/events/PdfDocumentEvent;

    const-string v1, "InsertPdfPage"

    invoke-direct {v0, v1, p2}, Lcom/itextpdf/kernel/events/PdfDocumentEvent;-><init>(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfPage;)V

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->dispatchEvent(Lcom/itextpdf/kernel/events/Event;)V

    .line 542
    return-object p2
.end method

.method public addPage(Lcom/itextpdf/kernel/pdf/PdfPage;)Lcom/itextpdf/kernel/pdf/PdfPage;
    .locals 2
    .param p1, "page"    # Lcom/itextpdf/kernel/pdf/PdfPage;

    .line 523
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->checkClosingStatus()V

    .line 524
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->checkAndAddPage(Lcom/itextpdf/kernel/pdf/PdfPage;)V

    .line 525
    new-instance v0, Lcom/itextpdf/kernel/events/PdfDocumentEvent;

    const-string v1, "InsertPdfPage"

    invoke-direct {v0, v1, p1}, Lcom/itextpdf/kernel/events/PdfDocumentEvent;-><init>(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfPage;)V

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->dispatchEvent(Lcom/itextpdf/kernel/events/Event;)V

    .line 526
    return-object p1
.end method

.method protected checkAndAddPage(ILcom/itextpdf/kernel/pdf/PdfPage;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "page"    # Lcom/itextpdf/kernel/pdf/PdfPage;

    .line 2138
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfPage;->isFlushed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2141
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfPage;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfPage;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 2142
    :cond_0
    new-instance v0, Lcom/itextpdf/kernel/PdfException;

    const-string v1, "Page {0} cannot be added to document {1}, because it belongs to document {2}."

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfPage;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/PdfException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/kernel/PdfException;

    move-result-object v0

    throw v0

    .line 2144
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPageTree()Lcom/itextpdf/kernel/pdf/PdfPagesTree;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->addPage(ILcom/itextpdf/kernel/pdf/PdfPage;)V

    .line 2145
    return-void

    .line 2139
    :cond_2
    new-instance v0, Lcom/itextpdf/kernel/PdfException;

    const-string v1, "Flushed page cannot be added or inserted."

    invoke-direct {v0, v1, p2}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    throw v0
.end method

.method protected checkAndAddPage(Lcom/itextpdf/kernel/pdf/PdfPage;)V
    .locals 4
    .param p1, "page"    # Lcom/itextpdf/kernel/pdf/PdfPage;

    .line 2153
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->isFlushed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2155
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 2156
    :cond_0
    new-instance v0, Lcom/itextpdf/kernel/PdfException;

    const-string v1, "Page {0} cannot be added to document {1}, because it belongs to document {2}."

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/PdfException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/kernel/PdfException;

    move-result-object v0

    throw v0

    .line 2157
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPageTree()Lcom/itextpdf/kernel/pdf/PdfPagesTree;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->addPage(Lcom/itextpdf/kernel/pdf/PdfPage;)V

    .line 2158
    return-void

    .line 2154
    :cond_2
    new-instance v0, Lcom/itextpdf/kernel/PdfException;

    const-string v1, "Flushed page cannot be added or inserted."

    invoke-direct {v0, v1, p1}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    throw v0
.end method

.method protected checkClosingStatus()V
    .locals 2

    .line 2164
    iget-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->closed:Z

    if-nez v0, :cond_0

    .line 2167
    return-void

    .line 2165
    :cond_0
    new-instance v0, Lcom/itextpdf/kernel/PdfException;

    const-string v1, "Document was closed. It is impossible to execute action."

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected checkIsoConformance()V
    .locals 0

    .line 1876
    return-void
.end method

.method public checkIsoConformance(Ljava/lang/Object;Lcom/itextpdf/kernel/pdf/IsoKey;)V
    .locals 0
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "key"    # Lcom/itextpdf/kernel/pdf/IsoKey;

    .line 1505
    return-void
.end method

.method public checkIsoConformance(Ljava/lang/Object;Lcom/itextpdf/kernel/pdf/IsoKey;Lcom/itextpdf/kernel/pdf/PdfResources;)V
    .locals 0
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "key"    # Lcom/itextpdf/kernel/pdf/IsoKey;
    .param p3, "resources"    # Lcom/itextpdf/kernel/pdf/PdfResources;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1518
    return-void
.end method

.method public checkIsoConformance(Ljava/lang/Object;Lcom/itextpdf/kernel/pdf/IsoKey;Lcom/itextpdf/kernel/pdf/PdfResources;Lcom/itextpdf/kernel/pdf/PdfStream;)V
    .locals 0
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "key"    # Lcom/itextpdf/kernel/pdf/IsoKey;
    .param p3, "resources"    # Lcom/itextpdf/kernel/pdf/PdfResources;
    .param p4, "contentStream"    # Lcom/itextpdf/kernel/pdf/PdfStream;

    .line 1530
    return-void
.end method

.method public checkShowTextIsoConformance(Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;Lcom/itextpdf/kernel/pdf/PdfResources;)V
    .locals 0
    .param p1, "gState"    # Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;
    .param p2, "resources"    # Lcom/itextpdf/kernel/pdf/PdfResources;

    .line 1540
    return-void
.end method

.method public close()V
    .locals 12

    .line 828
    const-string v0, "PdfReader closing failed due to the error occurred!"

    const-string v1, "PdfWriter closing failed due to the error occurred!"

    const-class v2, Lcom/itextpdf/kernel/pdf/PdfDocument;

    iget-boolean v3, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->closed:Z

    if-eqz v3, :cond_0

    .line 829
    return-void

    .line 831
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->isClosing:Z

    .line 833
    :try_start_0
    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->writer:Lcom/itextpdf/kernel/pdf/PdfWriter;

    if-eqz v4, :cond_1d

    .line 834
    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->isFlushed()Z

    move-result v4

    if-nez v4, :cond_1c

    .line 837
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->updateProducerInInfoDictionary()V

    .line 838
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->updateXmpMetadata()V

    .line 840
    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->pdfVersion:Lcom/itextpdf/kernel/pdf/PdfVersion;

    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfVersion;->PDF_2_0:Lcom/itextpdf/kernel/pdf/PdfVersion;

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/PdfVersion;->compareTo(Lcom/itextpdf/kernel/pdf/PdfVersion;)I

    move-result v4

    const/4 v5, 0x0

    if-ltz v4, :cond_1

    .line 841
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;->PDF20_DEPRECATED_KEYS:[Lcom/itextpdf/kernel/pdf/PdfName;

    array-length v6, v4

    move v7, v5

    :goto_0
    if-ge v7, v6, :cond_1

    aget-object v8, v4, v7

    .line 842
    .local v8, "deprecatedKey":Lcom/itextpdf/kernel/pdf/PdfName;
    iget-object v9, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->info:Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;

    invoke-virtual {v9}, Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->remove(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 841
    nop

    .end local v8    # "deprecatedKey":Lcom/itextpdf/kernel/pdf/PdfName;
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 845
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getXmpMetadata()[B

    move-result-object v4

    if-eqz v4, :cond_3

    .line 846
    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->Metadata:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v4, v6}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsStream(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object v4

    .line 847
    .local v4, "xmp":Lcom/itextpdf/kernel/pdf/PdfStream;
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->isAppendMode()Z

    move-result v6

    if-eqz v6, :cond_2

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfStream;->isFlushed()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfStream;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 849
    iget-object v6, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->xmpMetadata:[B

    invoke-virtual {v4, v6}, Lcom/itextpdf/kernel/pdf/PdfStream;->setData([B)V

    .line 850
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfStream;->setModified()Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_1

    .line 853
    :cond_2
    new-instance v6, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-direct {v6}, Lcom/itextpdf/kernel/pdf/PdfStream;-><init>()V

    invoke-virtual {v6, p0}, Lcom/itextpdf/kernel/pdf/PdfStream;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/kernel/pdf/PdfStream;

    move-object v4, v6

    .line 854
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v6

    iget-object v7, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->xmpMetadata:[B

    invoke-virtual {v6, v7}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write([B)V

    .line 855
    iget-object v6, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfName;->Metadata:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v6, v7, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 856
    iget-object v6, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->setModified()Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    .line 858
    :goto_1
    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->Type:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfName;->Metadata:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v4, v6, v7}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 859
    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->Subtype:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfName;->XML:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v4, v6, v7}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 860
    iget-object v6, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->writer:Lcom/itextpdf/kernel/pdf/PdfWriter;

    iget-object v6, v6, Lcom/itextpdf/kernel/pdf/PdfWriter;->crypto:Lcom/itextpdf/kernel/pdf/PdfEncryption;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->writer:Lcom/itextpdf/kernel/pdf/PdfWriter;

    iget-object v6, v6, Lcom/itextpdf/kernel/pdf/PdfWriter;->crypto:Lcom/itextpdf/kernel/pdf/PdfEncryption;

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->isMetadataEncrypted()Z

    move-result v6

    if-nez v6, :cond_3

    .line 861
    new-instance v6, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v6}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 862
    .local v6, "ar":Lcom/itextpdf/kernel/pdf/PdfArray;
    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfName;->Crypt:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v6, v7}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 863
    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfName;->Filter:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v4, v7, v6}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 866
    .end local v4    # "xmp":Lcom/itextpdf/kernel/pdf/PdfStream;
    .end local v6    # "ar":Lcom/itextpdf/kernel/pdf/PdfArray;
    :cond_3
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->checkIsoConformance()V

    .line 868
    const/4 v4, 0x0

    .line 869
    .local v4, "crypto":Lcom/itextpdf/kernel/pdf/PdfObject;
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 870
    .local v6, "forbiddenToFlush":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfIndirectReference;>;"
    iget-object v7, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->properties:Lcom/itextpdf/kernel/pdf/StampingProperties;

    iget-boolean v7, v7, Lcom/itextpdf/kernel/pdf/StampingProperties;->appendMode:Z

    if-eqz v7, :cond_10

    .line 871
    iget-object v7, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->structTreeRoot:Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

    if-eqz v7, :cond_4

    .line 872
    invoke-direct {p0, v3}, Lcom/itextpdf/kernel/pdf/PdfDocument;->tryFlushTagStructure(Z)V

    .line 874
    :cond_4
    iget-object v7, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->isOCPropertiesMayHaveChanged()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {v7, v5}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getOCProperties(Z)Lcom/itextpdf/kernel/pdf/layer/PdfOCProperties;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/layer/PdfOCProperties;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->isModified()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 875
    iget-object v7, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {v7, v5}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getOCProperties(Z)Lcom/itextpdf/kernel/pdf/layer/PdfOCProperties;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/layer/PdfOCProperties;->flush()V

    .line 877
    :cond_5
    iget-object v7, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    iget-object v7, v7, Lcom/itextpdf/kernel/pdf/PdfCatalog;->pageLabels:Lcom/itextpdf/kernel/pdf/PdfNumTree;

    if-eqz v7, :cond_6

    .line 878
    iget-object v7, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    sget-object v8, Lcom/itextpdf/kernel/pdf/PdfName;->PageLabels:Lcom/itextpdf/kernel/pdf/PdfName;

    iget-object v9, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    iget-object v9, v9, Lcom/itextpdf/kernel/pdf/PdfCatalog;->pageLabels:Lcom/itextpdf/kernel/pdf/PdfNumTree;

    invoke-virtual {v9}, Lcom/itextpdf/kernel/pdf/PdfNumTree;->buildTree()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfCatalog;

    .line 881
    :cond_6
    iget-object v7, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    iget-object v7, v7, Lcom/itextpdf/kernel/pdf/PdfCatalog;->nameTrees:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 882
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfNameTree;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/itextpdf/kernel/pdf/PdfNameTree;

    .line 883
    .local v9, "tree":Lcom/itextpdf/kernel/pdf/PdfNameTree;
    invoke-virtual {v9}, Lcom/itextpdf/kernel/pdf/PdfNameTree;->isModified()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 884
    invoke-virtual {v9}, Lcom/itextpdf/kernel/pdf/PdfNameTree;->buildTree()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v10

    invoke-virtual {v10, p0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v10

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {p0, v10, v11}, Lcom/itextpdf/kernel/pdf/PdfDocument;->ensureTreeRootAddedToNames(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfName;)V

    .line 886
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfNameTree;>;"
    .end local v9    # "tree":Lcom/itextpdf/kernel/pdf/PdfNameTree;
    :cond_7
    goto :goto_2

    .line 888
    :cond_8
    iget-object v7, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPageTree()Lcom/itextpdf/kernel/pdf/PdfPagesTree;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->generateTree()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v7

    .line 889
    .local v7, "pageRoot":Lcom/itextpdf/kernel/pdf/PdfObject;
    iget-object v8, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->isModified()Z

    move-result v8

    if-nez v8, :cond_9

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfObject;->isModified()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 890
    :cond_9
    iget-object v8, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    sget-object v9, Lcom/itextpdf/kernel/pdf/PdfName;->Pages:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v8, v9, v7}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfCatalog;

    .line 891
    iget-object v8, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v8, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->flush(Z)V

    .line 895
    :cond_a
    iget-object v8, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->info:Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;

    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v8

    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->isModified()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 896
    iget-object v8, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->info:Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;

    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->flush(Z)V

    .line 898
    :cond_b
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->flushFonts()V

    .line 901
    iget-object v8, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->writer:Lcom/itextpdf/kernel/pdf/PdfWriter;

    iget-object v8, v8, Lcom/itextpdf/kernel/pdf/PdfWriter;->crypto:Lcom/itextpdf/kernel/pdf/PdfEncryption;

    if-eqz v8, :cond_d

    .line 902
    iget-object v8, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->reader:Lcom/itextpdf/kernel/pdf/PdfReader;

    iget-object v8, v8, Lcom/itextpdf/kernel/pdf/PdfReader;->decrypt:Lcom/itextpdf/kernel/pdf/PdfEncryption;

    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v8

    iget-object v9, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->writer:Lcom/itextpdf/kernel/pdf/PdfWriter;

    iget-object v9, v9, Lcom/itextpdf/kernel/pdf/PdfWriter;->crypto:Lcom/itextpdf/kernel/pdf/PdfEncryption;

    invoke-virtual {v9}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v9

    if-ne v8, v9, :cond_c

    .line 903
    iget-object v8, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->reader:Lcom/itextpdf/kernel/pdf/PdfReader;

    iget-object v8, v8, Lcom/itextpdf/kernel/pdf/PdfReader;->decrypt:Lcom/itextpdf/kernel/pdf/PdfEncryption;

    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v8

    move-object v4, v8

    .line 904
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfObject;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v8

    if-eqz v8, :cond_d

    .line 906
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfObject;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 902
    :cond_c
    new-instance v3, Ljava/lang/AssertionError;

    const-string v5, "Conflict with source encryption"

    invoke-direct {v3, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 910
    :cond_d
    :goto_3
    iget-object v8, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->writer:Lcom/itextpdf/kernel/pdf/PdfWriter;

    invoke-virtual {v8, v6}, Lcom/itextpdf/kernel/pdf/PdfWriter;->flushModifiedWaitingObjects(Ljava/util/Set;)V

    .line 911
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_4
    iget-object v9, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->xref:Lcom/itextpdf/kernel/pdf/PdfXrefTable;

    invoke-virtual {v9}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->size()I

    move-result v9

    if-ge v8, v9, :cond_f

    .line 912
    iget-object v9, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->xref:Lcom/itextpdf/kernel/pdf/PdfXrefTable;

    invoke-virtual {v9, v8}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->get(I)Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v9

    .line 913
    .local v9, "indirectReference":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    if-eqz v9, :cond_e

    invoke-virtual {v9}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->isFree()Z

    move-result v10

    if-nez v10, :cond_e

    const/16 v10, 0x8

    .line 914
    invoke-virtual {v9, v10}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->checkState(S)Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-virtual {v9, v3}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->checkState(S)Z

    move-result v10

    if-nez v10, :cond_e

    .line 915
    invoke-interface {v6, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_e

    .line 916
    invoke-virtual {v9}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->setFree()V

    .line 911
    .end local v9    # "indirectReference":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    :cond_e
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 919
    .end local v7    # "pageRoot":Lcom/itextpdf/kernel/pdf/PdfObject;
    .end local v8    # "i":I
    :cond_f
    goto/16 :goto_9

    .line 920
    :cond_10
    iget-object v7, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->isOCPropertiesMayHaveChanged()Z

    move-result v7

    if-eqz v7, :cond_11

    .line 921
    iget-object v7, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v8, Lcom/itextpdf/kernel/pdf/PdfName;->OCProperties:Lcom/itextpdf/kernel/pdf/PdfName;

    iget-object v9, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {v9, v5}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getOCProperties(Z)Lcom/itextpdf/kernel/pdf/layer/PdfOCProperties;

    move-result-object v9

    invoke-virtual {v9}, Lcom/itextpdf/kernel/pdf/layer/PdfOCProperties;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 922
    iget-object v7, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {v7, v5}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getOCProperties(Z)Lcom/itextpdf/kernel/pdf/layer/PdfOCProperties;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/layer/PdfOCProperties;->flush()V

    .line 924
    :cond_11
    iget-object v7, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    iget-object v7, v7, Lcom/itextpdf/kernel/pdf/PdfCatalog;->pageLabels:Lcom/itextpdf/kernel/pdf/PdfNumTree;

    if-eqz v7, :cond_12

    .line 925
    iget-object v7, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    sget-object v8, Lcom/itextpdf/kernel/pdf/PdfName;->PageLabels:Lcom/itextpdf/kernel/pdf/PdfName;

    iget-object v9, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    iget-object v9, v9, Lcom/itextpdf/kernel/pdf/PdfCatalog;->pageLabels:Lcom/itextpdf/kernel/pdf/PdfNumTree;

    invoke-virtual {v9}, Lcom/itextpdf/kernel/pdf/PdfNumTree;->buildTree()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfCatalog;

    .line 928
    :cond_12
    iget-object v7, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v8, Lcom/itextpdf/kernel/pdf/PdfName;->Pages:Lcom/itextpdf/kernel/pdf/PdfName;

    iget-object v9, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {v9}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPageTree()Lcom/itextpdf/kernel/pdf/PdfPagesTree;

    move-result-object v9

    invoke-virtual {v9}, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->generateTree()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 930
    iget-object v7, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    iget-object v7, v7, Lcom/itextpdf/kernel/pdf/PdfCatalog;->nameTrees:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_14

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 931
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfNameTree;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/itextpdf/kernel/pdf/PdfNameTree;

    .line 932
    .local v9, "tree":Lcom/itextpdf/kernel/pdf/PdfNameTree;
    invoke-virtual {v9}, Lcom/itextpdf/kernel/pdf/PdfNameTree;->isModified()Z

    move-result v10

    if-eqz v10, :cond_13

    .line 933
    invoke-virtual {v9}, Lcom/itextpdf/kernel/pdf/PdfNameTree;->buildTree()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v10

    invoke-virtual {v10, p0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v10

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {p0, v10, v11}, Lcom/itextpdf/kernel/pdf/PdfDocument;->ensureTreeRootAddedToNames(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfName;)V

    .line 935
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfNameTree;>;"
    .end local v9    # "tree":Lcom/itextpdf/kernel/pdf/PdfNameTree;
    :cond_13
    goto :goto_5

    .line 937
    :cond_14
    const/4 v7, 0x1

    .local v7, "pageNum":I
    :goto_6
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getNumberOfPages()I

    move-result v8

    if-gt v7, v8, :cond_15

    .line 938
    invoke-virtual {p0, v7}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPage(I)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v8

    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/PdfPage;->flush()V

    .line 937
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 940
    .end local v7    # "pageNum":I
    :cond_15
    iget-object v7, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->structTreeRoot:Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

    if-eqz v7, :cond_16

    .line 941
    invoke-direct {p0, v5}, Lcom/itextpdf/kernel/pdf/PdfDocument;->tryFlushTagStructure(Z)V

    .line 943
    :cond_16
    iget-object v7, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v7, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->flush(Z)V

    .line 944
    iget-object v7, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->info:Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->flush(Z)V

    .line 945
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->flushFonts()V

    .line 947
    iget-object v7, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->writer:Lcom/itextpdf/kernel/pdf/PdfWriter;

    iget-object v7, v7, Lcom/itextpdf/kernel/pdf/PdfWriter;->crypto:Lcom/itextpdf/kernel/pdf/PdfEncryption;

    if-eqz v7, :cond_17

    .line 948
    iget-object v7, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->writer:Lcom/itextpdf/kernel/pdf/PdfWriter;

    iget-object v7, v7, Lcom/itextpdf/kernel/pdf/PdfWriter;->crypto:Lcom/itextpdf/kernel/pdf/PdfEncryption;

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v7

    move-object v4, v7

    .line 949
    invoke-virtual {v4, p0}, Lcom/itextpdf/kernel/pdf/PdfObject;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 950
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfObject;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 953
    :cond_17
    iget-object v7, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->writer:Lcom/itextpdf/kernel/pdf/PdfWriter;

    invoke-virtual {v7, v6}, Lcom/itextpdf/kernel/pdf/PdfWriter;->flushWaitingObjects(Ljava/util/Set;)V

    .line 954
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_7
    iget-object v8, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->xref:Lcom/itextpdf/kernel/pdf/PdfXrefTable;

    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->size()I

    move-result v8

    if-ge v7, v8, :cond_1a

    .line 955
    iget-object v8, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->xref:Lcom/itextpdf/kernel/pdf/PdfXrefTable;

    invoke-virtual {v8, v7}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->get(I)Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v8

    .line 956
    .local v8, "indirectReference":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    if-eqz v8, :cond_19

    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->isFree()Z

    move-result v9

    if-nez v9, :cond_19

    invoke-virtual {v8, v3}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->checkState(S)Z

    move-result v9

    if-nez v9, :cond_19

    invoke-interface {v6, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_19

    .line 958
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->isFlushUnusedObjects()Z

    move-result v9

    if-eqz v9, :cond_18

    const/16 v9, 0x10

    invoke-virtual {v8, v9}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->checkState(S)Z

    move-result v9

    if-nez v9, :cond_18

    invoke-virtual {v8, v5}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getRefersTo(Z)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v9

    move-object v10, v9

    .local v10, "object":Lcom/itextpdf/kernel/pdf/PdfObject;
    if-eqz v9, :cond_18

    .line 959
    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/PdfObject;->flush()V

    goto :goto_8

    .line 961
    .end local v10    # "object":Lcom/itextpdf/kernel/pdf/PdfObject;
    :cond_18
    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->setFree()V

    .line 954
    .end local v8    # "indirectReference":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    :cond_19
    :goto_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 969
    .end local v7    # "i":I
    :cond_1a
    :goto_9
    iget-object v7, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->writer:Lcom/itextpdf/kernel/pdf/PdfWriter;

    const/4 v8, 0x0

    iput-object v8, v7, Lcom/itextpdf/kernel/pdf/PdfWriter;->crypto:Lcom/itextpdf/kernel/pdf/PdfEncryption;

    .line 971
    iget-object v7, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->properties:Lcom/itextpdf/kernel/pdf/StampingProperties;

    iget-boolean v7, v7, Lcom/itextpdf/kernel/pdf/StampingProperties;->appendMode:Z

    if-nez v7, :cond_1b

    if-eqz v4, :cond_1b

    .line 973
    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/PdfObject;->flush(Z)V

    .line 979
    :cond_1b
    iget-object v5, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->trailer:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfName;->Root:Lcom/itextpdf/kernel/pdf/PdfName;

    iget-object v8, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 980
    iget-object v5, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->trailer:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfName;->Info:Lcom/itextpdf/kernel/pdf/PdfName;

    iget-object v8, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->info:Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;

    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 985
    iget-object v5, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->originalDocumentId:Lcom/itextpdf/kernel/pdf/PdfString;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfString;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v5

    iget-object v7, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->modifiedDocumentId:Lcom/itextpdf/kernel/pdf/PdfString;

    .line 986
    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfString;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v7

    .line 985
    invoke-static {v5, v7}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->createInfoId([B[B)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v5

    .line 987
    .local v5, "fileId":Lcom/itextpdf/kernel/pdf/PdfObject;
    iget-object v7, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->xref:Lcom/itextpdf/kernel/pdf/PdfXrefTable;

    invoke-virtual {v7, p0, v5, v4}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->writeXrefTableAndTrailer(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 988
    iget-object v7, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->writer:Lcom/itextpdf/kernel/pdf/PdfWriter;

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfWriter;->flush()V

    .line 989
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCounters()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/kernel/log/ICounter;

    .line 990
    .local v8, "counter":Lcom/itextpdf/kernel/log/ICounter;
    iget-object v9, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->writer:Lcom/itextpdf/kernel/pdf/PdfWriter;

    invoke-virtual {v9}, Lcom/itextpdf/kernel/pdf/PdfWriter;->getCurrentPos()J

    move-result-wide v9

    invoke-interface {v8, v9, v10}, Lcom/itextpdf/kernel/log/ICounter;->onDocumentWritten(J)V

    .line 991
    .end local v8    # "counter":Lcom/itextpdf/kernel/log/ICounter;
    goto :goto_a

    .line 835
    .end local v4    # "crypto":Lcom/itextpdf/kernel/pdf/PdfObject;
    .end local v5    # "fileId":Lcom/itextpdf/kernel/pdf/PdfObject;
    .end local v6    # "forbiddenToFlush":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfIndirectReference;>;"
    :cond_1c
    new-instance v3, Lcom/itextpdf/kernel/PdfException;

    const-string v4, "Cannot close document with already flushed PDF Catalog."

    invoke-direct {v3, v4}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 993
    :cond_1d
    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPageTree()Lcom/itextpdf/kernel/pdf/PdfPagesTree;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->clearPageRefs()V

    .line 994
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->removeAllHandlers()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 998
    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->writer:Lcom/itextpdf/kernel/pdf/PdfWriter;

    if-eqz v4, :cond_1e

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->isCloseWriter()Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 1000
    :try_start_1
    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->writer:Lcom/itextpdf/kernel/pdf/PdfWriter;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfWriter;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1004
    goto :goto_b

    .line 1001
    :catch_0
    move-exception v4

    .line 1002
    .local v4, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v5

    .line 1003
    .local v5, "logger":Lorg/slf4j/Logger;
    invoke-interface {v5, v1, v4}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1007
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "logger":Lorg/slf4j/Logger;
    :cond_1e
    :goto_b
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->reader:Lcom/itextpdf/kernel/pdf/PdfReader;

    if-eqz v1, :cond_1f

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->isCloseReader()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 1009
    :try_start_2
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->reader:Lcom/itextpdf/kernel/pdf/PdfReader;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_c

    .line 1010
    :catch_1
    move-exception v1

    .line 1011
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v2

    .line 1012
    .local v2, "logger":Lorg/slf4j/Logger;
    invoke-interface {v2, v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1017
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "logger":Lorg/slf4j/Logger;
    :cond_1f
    :goto_c
    iput-boolean v3, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->closed:Z

    .line 1018
    return-void

    .line 998
    :catchall_0
    move-exception v3

    goto :goto_d

    .line 995
    :catch_2
    move-exception v3

    .line 996
    .local v3, "e":Ljava/io/IOException;
    :try_start_3
    new-instance v4, Lcom/itextpdf/kernel/PdfException;

    const-string v5, "Cannot close document."

    invoke-direct {v4, v5, v3, p0}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Object;)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 998
    .end local v3    # "e":Ljava/io/IOException;
    :goto_d
    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->writer:Lcom/itextpdf/kernel/pdf/PdfWriter;

    if-eqz v4, :cond_20

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->isCloseWriter()Z

    move-result v4

    if-eqz v4, :cond_20

    .line 1000
    :try_start_4
    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->writer:Lcom/itextpdf/kernel/pdf/PdfWriter;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfWriter;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 1004
    goto :goto_e

    .line 1001
    :catch_3
    move-exception v4

    .line 1002
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v5

    .line 1003
    .restart local v5    # "logger":Lorg/slf4j/Logger;
    invoke-interface {v5, v1, v4}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1007
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "logger":Lorg/slf4j/Logger;
    :cond_20
    :goto_e
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->reader:Lcom/itextpdf/kernel/pdf/PdfReader;

    if-eqz v1, :cond_21

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->isCloseReader()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 1009
    :try_start_5
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->reader:Lcom/itextpdf/kernel/pdf/PdfReader;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 1013
    goto :goto_f

    .line 1010
    :catch_4
    move-exception v1

    .line 1011
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v2

    .line 1012
    .restart local v2    # "logger":Lorg/slf4j/Logger;
    invoke-interface {v2, v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1016
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "logger":Lorg/slf4j/Logger;
    :cond_21
    :goto_f
    throw v3
.end method

.method public copyPagesTo(IILcom/itextpdf/kernel/pdf/PdfDocument;)Ljava/util/List;
    .locals 1
    .param p1, "pageFrom"    # I
    .param p2, "pageTo"    # I
    .param p3, "toDocument"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/itextpdf/kernel/pdf/PdfDocument;",
            ")",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/PdfPage;",
            ">;"
        }
    .end annotation

    .line 1162
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->copyPagesTo(IILcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/pdf/IPdfPageExtraCopier;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public copyPagesTo(IILcom/itextpdf/kernel/pdf/PdfDocument;I)Ljava/util/List;
    .locals 6
    .param p1, "pageFrom"    # I
    .param p2, "pageTo"    # I
    .param p3, "toDocument"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p4, "insertBeforePage"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/itextpdf/kernel/pdf/PdfDocument;",
            "I)",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/PdfPage;",
            ">;"
        }
    .end annotation

    .line 1114
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/kernel/pdf/PdfDocument;->copyPagesTo(IILcom/itextpdf/kernel/pdf/PdfDocument;ILcom/itextpdf/kernel/pdf/IPdfPageExtraCopier;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public copyPagesTo(IILcom/itextpdf/kernel/pdf/PdfDocument;ILcom/itextpdf/kernel/pdf/IPdfPageExtraCopier;)Ljava/util/List;
    .locals 3
    .param p1, "pageFrom"    # I
    .param p2, "pageTo"    # I
    .param p3, "toDocument"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p4, "insertBeforePage"    # I
    .param p5, "copier"    # Lcom/itextpdf/kernel/pdf/IPdfPageExtraCopier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/itextpdf/kernel/pdf/PdfDocument;",
            "I",
            "Lcom/itextpdf/kernel/pdf/IPdfPageExtraCopier;",
            ")",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/PdfPage;",
            ">;"
        }
    .end annotation

    .line 1138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1139
    .local v0, "pages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-gt v1, p2, :cond_0

    .line 1140
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1139
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1142
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0, v0, p3, p4, p5}, Lcom/itextpdf/kernel/pdf/PdfDocument;->copyPagesTo(Ljava/util/List;Lcom/itextpdf/kernel/pdf/PdfDocument;ILcom/itextpdf/kernel/pdf/IPdfPageExtraCopier;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public copyPagesTo(IILcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/pdf/IPdfPageExtraCopier;)Ljava/util/List;
    .locals 7
    .param p1, "pageFrom"    # I
    .param p2, "pageTo"    # I
    .param p3, "toDocument"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p4, "copier"    # Lcom/itextpdf/kernel/pdf/IPdfPageExtraCopier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/itextpdf/kernel/pdf/PdfDocument;",
            "Lcom/itextpdf/kernel/pdf/IPdfPageExtraCopier;",
            ")",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/PdfPage;",
            ">;"
        }
    .end annotation

    .line 1185
    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getNumberOfPages()I

    move-result v0

    add-int/lit8 v5, v0, 0x1

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/itextpdf/kernel/pdf/PdfDocument;->copyPagesTo(IILcom/itextpdf/kernel/pdf/PdfDocument;ILcom/itextpdf/kernel/pdf/IPdfPageExtraCopier;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public copyPagesTo(Ljava/util/List;Lcom/itextpdf/kernel/pdf/PdfDocument;)Ljava/util/List;
    .locals 1
    .param p2, "toDocument"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/itextpdf/kernel/pdf/PdfDocument;",
            ")",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/PdfPage;",
            ">;"
        }
    .end annotation

    .line 1318
    .local p1, "pagesToCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->copyPagesTo(Ljava/util/List;Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/pdf/IPdfPageExtraCopier;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public copyPagesTo(Ljava/util/List;Lcom/itextpdf/kernel/pdf/PdfDocument;I)Ljava/util/List;
    .locals 1
    .param p2, "toDocument"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p3, "insertBeforePage"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/itextpdf/kernel/pdf/PdfDocument;",
            "I)",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/PdfPage;",
            ">;"
        }
    .end annotation

    .line 1204
    .local p1, "pagesToCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->copyPagesTo(Ljava/util/List;Lcom/itextpdf/kernel/pdf/PdfDocument;ILcom/itextpdf/kernel/pdf/IPdfPageExtraCopier;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public copyPagesTo(Ljava/util/List;Lcom/itextpdf/kernel/pdf/PdfDocument;ILcom/itextpdf/kernel/pdf/IPdfPageExtraCopier;)Ljava/util/List;
    .locals 20
    .param p2, "toDocument"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p3, "insertBeforePage"    # I
    .param p4, "copier"    # Lcom/itextpdf/kernel/pdf/IPdfPageExtraCopier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/itextpdf/kernel/pdf/PdfDocument;",
            "I",
            "Lcom/itextpdf/kernel/pdf/IPdfPageExtraCopier;",
            ")",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/PdfPage;",
            ">;"
        }
    .end annotation

    .line 1226
    .local p1, "pagesToCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1227
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1230
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->checkClosingStatus()V

    .line 1231
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    .line 1232
    .local v3, "copiedPages":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/pdf/PdfPage;>;"
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v4, v0

    .line 1233
    .local v4, "page2page":Ljava/util/Map;, "Ljava/util/Map<Lcom/itextpdf/kernel/pdf/PdfPage;Lcom/itextpdf/kernel/pdf/PdfPage;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object v5, v0

    .line 1235
    .local v5, "outlinesToCopy":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfOutline;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v0

    .line 1236
    .local v6, "rangesOfPagesWithIncreasingNumbers":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Lcom/itextpdf/kernel/pdf/PdfPage;Lcom/itextpdf/kernel/pdf/PdfPage;>;>;"
    const/4 v0, 0x0

    move-object/from16 v7, p1

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 1238
    .local v8, "lastCopiedPageNum":I
    move/from16 v9, p3

    .line 1239
    .local v9, "pageInsertIndex":I
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getNumberOfPages()I

    move-result v10

    const/4 v11, 0x1

    add-int/2addr v10, v11

    move/from16 v12, p3

    if-ge v12, v10, :cond_1

    move v10, v11

    goto :goto_0

    :cond_1
    move v10, v0

    .line 1241
    .local v10, "insertInBetween":Z
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    .line 1242
    .local v14, "pageNum":Ljava/lang/Integer;
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v1, v15}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPage(I)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v15

    .line 1243
    .local v15, "page":Lcom/itextpdf/kernel/pdf/PdfPage;
    move-object/from16 v11, p4

    invoke-virtual {v15, v2, v11}, Lcom/itextpdf/kernel/pdf/PdfPage;->copyTo(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/pdf/IPdfPageExtraCopier;)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v0

    .line 1244
    .local v0, "newPage":Lcom/itextpdf/kernel/pdf/PdfPage;
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1245
    invoke-interface {v4, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1248
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-lt v8, v7, :cond_2

    .line 1249
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1251
    :cond_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    const/16 v16, 0x1

    add-int/lit8 v7, v7, -0x1

    .line 1252
    .local v7, "lastRangeInd":I
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    move/from16 v19, v7

    .end local v7    # "lastRangeInd":I
    .local v19, "lastRangeInd":I
    move-object/from16 v7, v18

    check-cast v7, Ljava/util/Map;

    invoke-interface {v7, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1254
    if-eqz v10, :cond_3

    .line 1255
    invoke-virtual {v2, v9, v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->addPage(ILcom/itextpdf/kernel/pdf/PdfPage;)Lcom/itextpdf/kernel/pdf/PdfPage;

    goto :goto_2

    .line 1257
    :cond_3
    invoke-virtual {v2, v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->addPage(Lcom/itextpdf/kernel/pdf/PdfPage;)Lcom/itextpdf/kernel/pdf/PdfPage;

    .line 1259
    :goto_2
    add-int/lit8 v9, v9, 0x1

    .line 1260
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->hasOutlines()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1261
    move-object/from16 v17, v0

    const/4 v7, 0x0

    .end local v0    # "newPage":Lcom/itextpdf/kernel/pdf/PdfPage;
    .local v17, "newPage":Lcom/itextpdf/kernel/pdf/PdfPage;
    invoke-virtual {v15, v7}, Lcom/itextpdf/kernel/pdf/PdfPage;->getOutlines(Z)Ljava/util/List;

    move-result-object v0

    .line 1262
    .local v0, "pageOutlines":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/pdf/PdfOutline;>;"
    if-eqz v0, :cond_5

    .line 1263
    invoke-interface {v5, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    .line 1260
    .end local v17    # "newPage":Lcom/itextpdf/kernel/pdf/PdfPage;
    .local v0, "newPage":Lcom/itextpdf/kernel/pdf/PdfPage;
    :cond_4
    move-object/from16 v17, v0

    const/4 v7, 0x0

    .line 1265
    .end local v0    # "newPage":Lcom/itextpdf/kernel/pdf/PdfPage;
    .restart local v17    # "newPage":Lcom/itextpdf/kernel/pdf/PdfPage;
    :cond_5
    :goto_3
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 1266
    .end local v14    # "pageNum":Ljava/lang/Integer;
    .end local v15    # "page":Lcom/itextpdf/kernel/pdf/PdfPage;
    .end local v17    # "newPage":Lcom/itextpdf/kernel/pdf/PdfPage;
    .end local v19    # "lastRangeInd":I
    move v0, v7

    move/from16 v11, v16

    move-object/from16 v7, p1

    goto :goto_1

    .line 1268
    :cond_6
    move-object/from16 v11, p4

    invoke-direct {v1, v2, v4}, Lcom/itextpdf/kernel/pdf/PdfDocument;->copyLinkAnnotations(Lcom/itextpdf/kernel/pdf/PdfDocument;Ljava/util/Map;)V

    .line 1271
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfName;->OCProperties:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v7}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 1272
    invoke-static {v1, v2, v4}, Lcom/itextpdf/kernel/pdf/OcgPropertiesCopier;->copyOCGProperties(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/pdf/PdfDocument;Ljava/util/Map;)V

    .line 1277
    :cond_7
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->isTagged()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1278
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->isTagged()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1280
    :try_start_0
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .end local p3    # "insertBeforePage":I
    .local v12, "insertBeforePage":I
    :goto_4
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    .line 1281
    .local v7, "increasingPagesRange":Ljava/util/Map;, "Ljava/util/Map<Lcom/itextpdf/kernel/pdf/PdfPage;Lcom/itextpdf/kernel/pdf/PdfPage;>;"
    if-eqz v10, :cond_8

    .line 1282
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getStructTreeRoot()Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

    move-result-object v13

    invoke-virtual {v13, v2, v12, v7}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->copyTo(Lcom/itextpdf/kernel/pdf/PdfDocument;ILjava/util/Map;)V

    goto :goto_5

    .line 1284
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getStructTreeRoot()Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

    move-result-object v13

    invoke-virtual {v13, v2, v7}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->copyTo(Lcom/itextpdf/kernel/pdf/PdfDocument;Ljava/util/Map;)V

    .line 1286
    :goto_5
    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v13

    add-int/2addr v12, v13

    .line 1287
    .end local v7    # "increasingPagesRange":Ljava/util/Map;, "Ljava/util/Map<Lcom/itextpdf/kernel/pdf/PdfPage;Lcom/itextpdf/kernel/pdf/PdfPage;>;"
    goto :goto_4

    .line 1288
    :cond_9
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getTagStructureContext()Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->normalizeDocumentRootTag()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1291
    goto :goto_7

    .line 1289
    :catch_0
    move-exception v0

    goto :goto_6

    .end local v12    # "insertBeforePage":I
    .restart local p3    # "insertBeforePage":I
    :catch_1
    move-exception v0

    .line 1290
    .end local p3    # "insertBeforePage":I
    .local v0, "ex":Ljava/lang/Exception;
    .restart local v12    # "insertBeforePage":I
    :goto_6
    new-instance v7, Lcom/itextpdf/kernel/PdfException;

    const-string v13, "Tag structure copying failed: it might be corrupted in one of the documents."

    invoke-direct {v7, v13, v0}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 1293
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v12    # "insertBeforePage":I
    .restart local p3    # "insertBeforePage":I
    :cond_a
    const-class v0, Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 1294
    .local v0, "logger":Lorg/slf4j/Logger;
    const-string v7, "Not tagged pages are copied to the tagged document. Destination document now may contain not tagged content."

    invoke-interface {v0, v7}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 1297
    .end local v0    # "logger":Lorg/slf4j/Logger;
    .end local p3    # "insertBeforePage":I
    .restart local v12    # "insertBeforePage":I
    :cond_b
    :goto_7
    iget-object v0, v1, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->isOutlineMode()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1298
    invoke-direct {v1, v5, v2, v4}, Lcom/itextpdf/kernel/pdf/PdfDocument;->copyOutlines(Ljava/util/Set;Lcom/itextpdf/kernel/pdf/PdfDocument;Ljava/util/Map;)V

    .line 1300
    :cond_c
    return-object v3
.end method

.method public copyPagesTo(Ljava/util/List;Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/pdf/IPdfPageExtraCopier;)Ljava/util/List;
    .locals 1
    .param p2, "toDocument"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p3, "copier"    # Lcom/itextpdf/kernel/pdf/IPdfPageExtraCopier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/itextpdf/kernel/pdf/PdfDocument;",
            "Lcom/itextpdf/kernel/pdf/IPdfPageExtraCopier;",
            ")",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/PdfPage;",
            ">;"
        }
    .end annotation

    .line 1339
    .local p1, "pagesToCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getNumberOfPages()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/itextpdf/kernel/pdf/PdfDocument;->copyPagesTo(Ljava/util/List;Lcom/itextpdf/kernel/pdf/PdfDocument;ILcom/itextpdf/kernel/pdf/IPdfPageExtraCopier;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public createNextIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    .locals 1

    .line 800
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->checkClosingStatus()V

    .line 801
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->xref:Lcom/itextpdf/kernel/pdf/PdfXrefTable;

    invoke-virtual {v0, p0}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->createNextIndirectReference(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v0

    return-object v0
.end method

.method public dispatchEvent(Lcom/itextpdf/kernel/events/Event;)V
    .locals 1
    .param p1, "event"    # Lcom/itextpdf/kernel/events/Event;

    .line 729
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->eventDispatcher:Lcom/itextpdf/kernel/events/EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/events/EventDispatcher;->dispatchEvent(Lcom/itextpdf/kernel/events/Event;)V

    .line 730
    return-void
.end method

.method public dispatchEvent(Lcom/itextpdf/kernel/events/Event;Z)V
    .locals 1
    .param p1, "event"    # Lcom/itextpdf/kernel/events/Event;
    .param p2, "delayed"    # Z

    .line 737
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->eventDispatcher:Lcom/itextpdf/kernel/events/EventDispatcher;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/kernel/events/EventDispatcher;->dispatchEvent(Lcom/itextpdf/kernel/events/Event;Z)V

    .line 738
    return-void
.end method

.method public findFont(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/kernel/font/PdfFont;
    .locals 3
    .param p1, "fontProgram"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;

    .line 1829
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->documentFonts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/font/PdfFont;

    .line 1830
    .local v1, "font":Lcom/itextpdf/kernel/font/PdfFont;
    invoke-virtual {v1}, Lcom/itextpdf/kernel/font/PdfFont;->isFlushed()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, p1, p2}, Lcom/itextpdf/kernel/font/PdfFont;->isBuiltWith(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1831
    return-object v1

    .line 1832
    .end local v1    # "font":Lcom/itextpdf/kernel/font/PdfFont;
    :cond_0
    goto :goto_0

    .line 1833
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public flushCopiedObjects(Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 3
    .param p1, "sourceDoc"    # Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 1351
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getWriter()Lcom/itextpdf/kernel/pdf/PdfWriter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1352
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getWriter()Lcom/itextpdf/kernel/pdf/PdfWriter;

    move-result-object v0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getDocumentId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfWriter;->flushCopiedObjects(J)V

    .line 1354
    :cond_0
    return-void
.end method

.method protected flushFonts()V
    .locals 4

    .line 2118
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->properties:Lcom/itextpdf/kernel/pdf/StampingProperties;

    iget-boolean v0, v0, Lcom/itextpdf/kernel/pdf/StampingProperties;->appendMode:Z

    if-eqz v0, :cond_3

    .line 2119
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getDocumentFonts()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/font/PdfFont;

    .line 2120
    .local v1, "font":Lcom/itextpdf/kernel/font/PdfFont;
    invoke-virtual {v1}, Lcom/itextpdf/kernel/font/PdfFont;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    const/16 v3, 0x40

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->checkState(S)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/itextpdf/kernel/font/PdfFont;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->checkState(S)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2121
    :cond_0
    invoke-virtual {v1}, Lcom/itextpdf/kernel/font/PdfFont;->flush()V

    .line 2123
    .end local v1    # "font":Lcom/itextpdf/kernel/font/PdfFont;
    :cond_1
    goto :goto_0

    :cond_2
    goto :goto_2

    .line 2125
    :cond_3
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getDocumentFonts()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/font/PdfFont;

    .line 2126
    .restart local v1    # "font":Lcom/itextpdf/kernel/font/PdfFont;
    invoke-virtual {v1}, Lcom/itextpdf/kernel/font/PdfFont;->flush()V

    .line 2127
    .end local v1    # "font":Lcom/itextpdf/kernel/font/PdfFont;
    goto :goto_1

    .line 2129
    :cond_4
    :goto_2
    return-void
.end method

.method protected flushObject(Lcom/itextpdf/kernel/pdf/PdfObject;Z)V
    .locals 1
    .param p1, "pdfObject"    # Lcom/itextpdf/kernel/pdf/PdfObject;
    .param p2, "canBeInObjStm"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1897
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->writer:Lcom/itextpdf/kernel/pdf/PdfWriter;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/kernel/pdf/PdfWriter;->flushObject(Lcom/itextpdf/kernel/pdf/PdfObject;Z)V

    .line 1898
    return-void
.end method

.method public getAssociatedFiles()Lcom/itextpdf/kernel/pdf/PdfArray;
    .locals 2

    .line 1588
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->checkClosingStatus()V

    .line 1589
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->AF:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    return-object v0
.end method

.method public getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;
    .locals 1

    .line 819
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->checkClosingStatus()V

    .line 820
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

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

    .line 2175
    invoke-static {}, Lcom/itextpdf/kernel/log/CounterManager;->getInstance()Lcom/itextpdf/kernel/log/CounterManager;

    move-result-object v0

    const-class v1, Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/log/CounterManager;->getCounters(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultFont()Lcom/itextpdf/kernel/font/PdfFont;
    .locals 3

    .line 1772
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->defaultFont:Lcom/itextpdf/kernel/font/PdfFont;

    if-nez v0, :cond_1

    .line 1774
    :try_start_0
    invoke-static {}, Lcom/itextpdf/kernel/font/PdfFontFactory;->createFont()Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->defaultFont:Lcom/itextpdf/kernel/font/PdfFont;

    .line 1775
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->writer:Lcom/itextpdf/kernel/pdf/PdfWriter;

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0}, Lcom/itextpdf/kernel/font/PdfFont;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1780
    :cond_0
    goto :goto_0

    .line 1776
    :catch_0
    move-exception v0

    .line 1777
    .local v0, "e":Ljava/io/IOException;
    const-class v1, Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-static {v1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v1

    .line 1778
    .local v1, "logger":Lorg/slf4j/Logger;
    const-string v2, "Exception while creating default font (Helvetica, WinAnsi)"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1779
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->defaultFont:Lcom/itextpdf/kernel/font/PdfFont;

    .line 1782
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "logger":Lorg/slf4j/Logger;
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->defaultFont:Lcom/itextpdf/kernel/font/PdfFont;

    return-object v0
.end method

.method public getDefaultPageSize()Lcom/itextpdf/kernel/geom/PageSize;
    .locals 1

    .line 704
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->defaultPageSize:Lcom/itextpdf/kernel/geom/PageSize;

    return-object v0
.end method

.method protected getDocumentFonts()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/itextpdf/kernel/font/PdfFont;",
            ">;"
        }
    .end annotation

    .line 2111
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->documentFonts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method getDocumentId()J
    .locals 2

    .line 2188
    iget-wide v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->documentId:J

    return-wide v0
.end method

.method public getDocumentInfo()Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;
    .locals 1

    .line 671
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->checkClosingStatus()V

    .line 672
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->info:Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;

    return-object v0
.end method

.method public getEncryptedPayloadDocument()Lcom/itextpdf/kernel/pdf/PdfEncryptedPayloadDocument;
    .locals 10

    .line 1599
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getReader()Lcom/itextpdf/kernel/pdf/PdfReader;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getReader()Lcom/itextpdf/kernel/pdf/PdfReader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfReader;->isEncrypted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1600
    return-object v1

    .line 1602
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getCollection()Lcom/itextpdf/kernel/pdf/collection/PdfCollection;

    move-result-object v0

    .line 1603
    .local v0, "collection":Lcom/itextpdf/kernel/pdf/collection/PdfCollection;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/collection/PdfCollection;->isViewHidden()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1604
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/collection/PdfCollection;->getInitialDocument()Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v2

    .line 1605
    .local v2, "documentName":Lcom/itextpdf/kernel/pdf/PdfString;
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object v3

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->EmbeddedFiles:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getNameTree(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNameTree;

    move-result-object v3

    .line 1606
    .local v3, "embeddedFiles":Lcom/itextpdf/kernel/pdf/PdfNameTree;
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v4

    .line 1607
    .local v4, "documentNameUnicode":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfNameTree;->getNames()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 1608
    .local v5, "fileSpecObject":Lcom/itextpdf/kernel/pdf/PdfObject;
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfObject;->isDictionary()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1610
    :try_start_0
    move-object v6, v5

    check-cast v6, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-static {v6}, Lcom/itextpdf/kernel/pdf/filespec/PdfEncryptedPayloadFileSpecFactory;->wrap(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;

    move-result-object v6

    .line 1611
    .local v6, "fileSpec":Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;
    if-eqz v6, :cond_2

    .line 1612
    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v8, Lcom/itextpdf/kernel/pdf/PdfName;->EF:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v7, v8}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v7

    .line 1613
    .local v7, "embeddedDictionary":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    sget-object v8, Lcom/itextpdf/kernel/pdf/PdfName;->UF:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v7, v8}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsStream(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object v8

    .line 1614
    .local v8, "stream":Lcom/itextpdf/kernel/pdf/PdfStream;
    if-nez v8, :cond_1

    .line 1615
    sget-object v9, Lcom/itextpdf/kernel/pdf/PdfName;->F:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v7, v9}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsStream(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object v9

    move-object v8, v9

    .line 1617
    :cond_1
    if-eqz v8, :cond_2

    .line 1618
    new-instance v9, Lcom/itextpdf/kernel/pdf/PdfEncryptedPayloadDocument;

    invoke-direct {v9, v8, v6, v4}, Lcom/itextpdf/kernel/pdf/PdfEncryptedPayloadDocument;-><init>(Lcom/itextpdf/kernel/pdf/PdfStream;Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/itextpdf/kernel/PdfException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v9

    .line 1623
    .end local v6    # "fileSpec":Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;
    .end local v7    # "embeddedDictionary":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .end local v8    # "stream":Lcom/itextpdf/kernel/pdf/PdfStream;
    :cond_2
    goto :goto_0

    .line 1621
    :catch_0
    move-exception v6

    .line 1622
    .local v6, "e":Lcom/itextpdf/kernel/PdfException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v7}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v7

    invoke-virtual {v6}, Lcom/itextpdf/kernel/PdfException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 1626
    .end local v2    # "documentName":Lcom/itextpdf/kernel/pdf/PdfString;
    .end local v3    # "embeddedFiles":Lcom/itextpdf/kernel/pdf/PdfNameTree;
    .end local v4    # "documentNameUnicode":Ljava/lang/String;
    .end local v5    # "fileSpecObject":Lcom/itextpdf/kernel/pdf/PdfObject;
    .end local v6    # "e":Lcom/itextpdf/kernel/PdfException;
    :cond_3
    :goto_0
    return-object v1
.end method

.method public getFingerPrint()Lcom/itextpdf/kernel/pdf/FingerPrint;
    .locals 1

    .line 1817
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->fingerPrint:Lcom/itextpdf/kernel/pdf/FingerPrint;

    return-object v0
.end method

.method public getFirstPage()Lcom/itextpdf/kernel/pdf/PdfPage;
    .locals 1

    .line 449
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->checkClosingStatus()V

    .line 450
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPage(I)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v0

    return-object v0
.end method

.method public getFont(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/font/PdfFont;
    .locals 2
    .param p1, "dictionary"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 1757
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v0

    .line 1758
    .local v0, "indirectReference":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->documentFonts:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1759
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->documentFonts:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/font/PdfFont;

    return-object v1

    .line 1761
    :cond_0
    invoke-static {p1}, Lcom/itextpdf/kernel/font/PdfFontFactory;->createFont(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->addFont(Lcom/itextpdf/kernel/font/PdfFont;)Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v1

    return-object v1
.end method

.method public getLastPage()Lcom/itextpdf/kernel/pdf/PdfPage;
    .locals 1

    .line 459
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getNumberOfPages()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPage(I)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v0

    return-object v0
.end method

.method public getModifiedDocumentId()Lcom/itextpdf/kernel/pdf/PdfString;
    .locals 1

    .line 695
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->modifiedDocumentId:Lcom/itextpdf/kernel/pdf/PdfString;

    return-object v0
.end method

.method public getNextStructParentIndex()I
    .locals 2

    .line 1075
    iget v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->structParentIndex:I

    if-gez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->structParentIndex:I

    :goto_0
    return v0
.end method

.method public getNumberOfPages()I
    .locals 1

    .line 551
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->checkClosingStatus()V

    .line 552
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPageTree()Lcom/itextpdf/kernel/pdf/PdfPagesTree;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->getNumberOfPages()I

    move-result v0

    return v0
.end method

.method public getNumberOfPdfObjects()I
    .locals 1

    .line 418
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->xref:Lcom/itextpdf/kernel/pdf/PdfXrefTable;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->size()I

    move-result v0

    return v0
.end method

.method public getOriginalDocumentId()Lcom/itextpdf/kernel/pdf/PdfString;
    .locals 1

    .line 683
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->originalDocumentId:Lcom/itextpdf/kernel/pdf/PdfString;

    return-object v0
.end method

.method public getOutlines(Z)Lcom/itextpdf/kernel/pdf/PdfOutline;
    .locals 1
    .param p1, "updateOutlines"    # Z

    .line 1424
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->checkClosingStatus()V

    .line 1425
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getOutlines(Z)Lcom/itextpdf/kernel/pdf/PdfOutline;

    move-result-object v0

    return-object v0
.end method

.method public getPage(I)Lcom/itextpdf/kernel/pdf/PdfPage;
    .locals 1
    .param p1, "pageNum"    # I

    .line 428
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->checkClosingStatus()V

    .line 429
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPageTree()Lcom/itextpdf/kernel/pdf/PdfPagesTree;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->getPage(I)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v0

    return-object v0
.end method

.method public getPage(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/PdfPage;
    .locals 1
    .param p1, "pageDictionary"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 439
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->checkClosingStatus()V

    .line 440
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPageTree()Lcom/itextpdf/kernel/pdf/PdfPagesTree;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->getPage(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v0

    return-object v0
.end method

.method protected getPageFactory()Lcom/itextpdf/kernel/pdf/IPdfPageFactory;
    .locals 1

    .line 2184
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfDocument;->pdfPageFactory:Lcom/itextpdf/kernel/pdf/IPdfPageFactory;

    return-object v0
.end method

.method public getPageLabels()[Ljava/lang/String;
    .locals 11

    .line 1669
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPageLabelsTree(Z)Lcom/itextpdf/kernel/pdf/PdfNumTree;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 1670
    return-object v2

    .line 1672
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPageLabelsTree(Z)Lcom/itextpdf/kernel/pdf/PdfNumTree;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumTree;->getNumbers()Ljava/util/Map;

    move-result-object v0

    .line 1673
    .local v0, "pageLabels":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/kernel/pdf/PdfObject;>;"
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 1674
    return-object v2

    .line 1676
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getNumberOfPages()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    .line 1677
    .local v2, "labelStrings":[Ljava/lang/String;
    const/4 v3, 0x1

    .line 1678
    .local v3, "pageCount":I
    const-string v4, ""

    .line 1679
    .local v4, "prefix":Ljava/lang/String;
    const-string v5, "D"

    .line 1680
    .local v5, "type":Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getNumberOfPages()I

    move-result v7

    if-ge v6, v7, :cond_7

    .line 1681
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1682
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 1683
    .local v7, "labelDictionary":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    sget-object v8, Lcom/itextpdf/kernel/pdf/PdfName;->St:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v7, v8}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v8

    .line 1684
    .local v8, "pageRange":Lcom/itextpdf/kernel/pdf/PdfNumber;
    if-eqz v8, :cond_2

    .line 1685
    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v3

    goto :goto_1

    .line 1687
    :cond_2
    const/4 v3, 0x1

    .line 1689
    :goto_1
    sget-object v9, Lcom/itextpdf/kernel/pdf/PdfName;->P:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v7, v9}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v9

    .line 1690
    .local v9, "p":Lcom/itextpdf/kernel/pdf/PdfString;
    if-eqz v9, :cond_3

    .line 1691
    invoke-virtual {v9}, Lcom/itextpdf/kernel/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 1693
    :cond_3
    const-string v4, ""

    .line 1695
    :goto_2
    sget-object v10, Lcom/itextpdf/kernel/pdf/PdfName;->S:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v7, v10}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v10

    .line 1696
    .local v10, "t":Lcom/itextpdf/kernel/pdf/PdfName;
    if-eqz v10, :cond_4

    .line 1697
    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/PdfName;->getValue()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 1699
    :cond_4
    const-string v5, "e"

    .line 1702
    .end local v7    # "labelDictionary":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .end local v8    # "pageRange":Lcom/itextpdf/kernel/pdf/PdfNumber;
    .end local v9    # "p":Lcom/itextpdf/kernel/pdf/PdfString;
    .end local v10    # "t":Lcom/itextpdf/kernel/pdf/PdfName;
    :cond_5
    :goto_3
    const/4 v7, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    :cond_6
    goto :goto_4

    :sswitch_0
    const-string/jumbo v8, "r"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const/4 v7, 0x1

    goto :goto_4

    :sswitch_1
    const-string v8, "e"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const/4 v7, 0x4

    goto :goto_4

    :sswitch_2
    const-string v8, "a"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const/4 v7, 0x3

    goto :goto_4

    :sswitch_3
    const-string v8, "R"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    move v7, v1

    goto :goto_4

    :sswitch_4
    const-string v8, "A"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const/4 v7, 0x2

    :goto_4
    packed-switch v7, :pswitch_data_0

    .line 1719
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v6

    goto :goto_5

    .line 1716
    :pswitch_0
    aput-object v4, v2, v6

    .line 1717
    goto :goto_5

    .line 1713
    :pswitch_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v3}, Lcom/itextpdf/kernel/numbering/EnglishAlphabetNumbering;->toLatinAlphabetNumberLowerCase(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v6

    .line 1714
    goto :goto_5

    .line 1710
    :pswitch_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v3}, Lcom/itextpdf/kernel/numbering/EnglishAlphabetNumbering;->toLatinAlphabetNumberUpperCase(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v6

    .line 1711
    goto :goto_5

    .line 1707
    :pswitch_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v3}, Lcom/itextpdf/kernel/numbering/RomanNumbering;->toRomanLowerCase(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v6

    .line 1708
    goto :goto_5

    .line 1704
    :pswitch_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v3}, Lcom/itextpdf/kernel/numbering/RomanNumbering;->toRomanUpperCase(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v6

    .line 1705
    nop

    .line 1722
    :goto_5
    add-int/lit8 v3, v3, 0x1

    .line 1680
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 1724
    .end local v6    # "i":I
    :cond_7
    return-object v2

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_4
        0x52 -> :sswitch_3
        0x61 -> :sswitch_2
        0x65 -> :sswitch_1
        0x72 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getPageNumber(Lcom/itextpdf/kernel/pdf/PdfDictionary;)I
    .locals 1
    .param p1, "pageDictionary"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 573
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPageTree()Lcom/itextpdf/kernel/pdf/PdfPagesTree;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->getPageNumber(Lcom/itextpdf/kernel/pdf/PdfDictionary;)I

    move-result v0

    return v0
.end method

.method public getPageNumber(Lcom/itextpdf/kernel/pdf/PdfPage;)I
    .locals 1
    .param p1, "page"    # Lcom/itextpdf/kernel/pdf/PdfPage;

    .line 562
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->checkClosingStatus()V

    .line 563
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPageTree()Lcom/itextpdf/kernel/pdf/PdfPagesTree;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->getPageNumber(Lcom/itextpdf/kernel/pdf/PdfPage;)I

    move-result v0

    return v0
.end method

.method public getPdfObject(I)Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 2
    .param p1, "objNum"    # I

    .line 403
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->checkClosingStatus()V

    .line 404
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->xref:Lcom/itextpdf/kernel/pdf/PdfXrefTable;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->get(I)Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v0

    .line 405
    .local v0, "reference":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    if-nez v0, :cond_0

    .line 406
    const/4 v1, 0x0

    return-object v1

    .line 408
    :cond_0
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getRefersTo()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    return-object v1
.end method

.method public getPdfVersion()Lcom/itextpdf/kernel/pdf/PdfVersion;
    .locals 1

    .line 810
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->pdfVersion:Lcom/itextpdf/kernel/pdf/PdfVersion;

    return-object v0
.end method

.method public getReader()Lcom/itextpdf/kernel/pdf/PdfReader;
    .locals 1

    .line 780
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->checkClosingStatus()V

    .line 781
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->reader:Lcom/itextpdf/kernel/pdf/PdfReader;

    return-object v0
.end method

.method public getStructTreeRoot()Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;
    .locals 1

    .line 1064
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->structTreeRoot:Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

    return-object v0
.end method

.method public getTagStructureContext()Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;
    .locals 2

    .line 1085
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->checkClosingStatus()V

    .line 1086
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->tagStructureContext:Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    if-nez v0, :cond_1

    .line 1087
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->isTagged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1091
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->initTagStructureContext()V

    goto :goto_0

    .line 1088
    :cond_0
    new-instance v0, Lcom/itextpdf/kernel/PdfException;

    const-string v1, "Must be a tagged document."

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1094
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->tagStructureContext:Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    return-object v0
.end method

.method public getTrailer()Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .locals 1

    .line 1473
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->checkClosingStatus()V

    .line 1474
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->trailer:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    return-object v0
.end method

.method final getVersionInfo()Lcom/itextpdf/kernel/VersionInfo;
    .locals 1

    .line 2197
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->versionInfo:Lcom/itextpdf/kernel/VersionInfo;

    return-object v0
.end method

.method public getWriter()Lcom/itextpdf/kernel/pdf/PdfWriter;
    .locals 1

    .line 770
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->checkClosingStatus()V

    .line 771
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->writer:Lcom/itextpdf/kernel/pdf/PdfWriter;

    return-object v0
.end method

.method public getXmpMetadata()[B
    .locals 1

    .line 371
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getXmpMetadata(Z)[B

    move-result-object v0

    return-object v0
.end method

.method public getXmpMetadata(Z)[B
    .locals 4
    .param p1, "createNew"    # Z

    .line 381
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->xmpMetadata:[B

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 382
    invoke-static {}, Lcom/itextpdf/kernel/xmp/XMPMetaFactory;->create()Lcom/itextpdf/kernel/xmp/XMPMeta;

    move-result-object v0

    .line 383
    .local v0, "xmpMeta":Lcom/itextpdf/kernel/xmp/XMPMeta;
    const-string/jumbo v1, "xmpmeta"

    invoke-interface {v0, v1}, Lcom/itextpdf/kernel/xmp/XMPMeta;->setObjectName(Ljava/lang/String;)V

    .line 384
    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/itextpdf/kernel/xmp/XMPMeta;->setObjectName(Ljava/lang/String;)V

    .line 385
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->addCustomMetadataExtensions(Lcom/itextpdf/kernel/xmp/XMPMeta;)V

    .line 387
    :try_start_0
    const-string v1, "http://purl.org/dc/elements/1.1/"

    const-string v2, "format"

    const-string v3, "application/pdf"

    invoke-interface {v0, v1, v2, v3}, Lcom/itextpdf/kernel/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 388
    const-string v1, "http://ns.adobe.com/pdf/1.3/"

    const-string v2, "Producer"

    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->versionInfo:Lcom/itextpdf/kernel/VersionInfo;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/VersionInfo;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/itextpdf/kernel/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 389
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->setXmpMetadata(Lcom/itextpdf/kernel/xmp/XMPMeta;)V
    :try_end_0
    .catch Lcom/itextpdf/kernel/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 391
    goto :goto_0

    .line 390
    :catch_0
    move-exception v1

    .line 393
    .end local v0    # "xmpMeta":Lcom/itextpdf/kernel/xmp/XMPMeta;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->xmpMetadata:[B

    return-object v0
.end method

.method getXref()Lcom/itextpdf/kernel/pdf/PdfXrefTable;
    .locals 1

    .line 1842
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->xref:Lcom/itextpdf/kernel/pdf/PdfXrefTable;

    return-object v0
.end method

.method hasAcroForm()Z
    .locals 2

    .line 2201
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->AcroForm:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v0

    return v0
.end method

.method public hasEventHandler(Ljava/lang/String;)Z
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .line 745
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->eventDispatcher:Lcom/itextpdf/kernel/events/EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/events/EventDispatcher;->hasEventHandler(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasOutlines()Z
    .locals 1

    .line 1733
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->hasOutlines()Z

    move-result v0

    return v0
.end method

.method protected initTagStructureContext()V
    .locals 1

    .line 1853
    new-instance v0, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    invoke-direct {v0, p0}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->tagStructureContext:Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    .line 1854
    return-void
.end method

.method public initializeOutlines()V
    .locals 1

    .line 1432
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->checkClosingStatus()V

    .line 1433
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getOutlines(Z)Lcom/itextpdf/kernel/pdf/PdfOutline;

    .line 1434
    return-void
.end method

.method public isAppendMode()Z
    .locals 1

    .line 790
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->checkClosingStatus()V

    .line 791
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->properties:Lcom/itextpdf/kernel/pdf/StampingProperties;

    iget-boolean v0, v0, Lcom/itextpdf/kernel/pdf/StampingProperties;->appendMode:Z

    return v0
.end method

.method public isCloseReader()Z
    .locals 1

    .line 1362
    iget-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->closeReader:Z

    return v0
.end method

.method public isCloseWriter()Z
    .locals 1

    .line 1381
    iget-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->closeWriter:Z

    return v0
.end method

.method public isClosed()Z
    .locals 1

    .line 1026
    iget-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->closed:Z

    return v0
.end method

.method isDocumentFont(Lcom/itextpdf/kernel/pdf/PdfIndirectReference;)Z
    .locals 1
    .param p1, "indRef"    # Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    .line 1846
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->documentFonts:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFlushUnusedObjects()Z
    .locals 1

    .line 1401
    iget-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->flushUnusedObjects:Z

    return v0
.end method

.method public isTagged()Z
    .locals 1

    .line 1035
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->structTreeRoot:Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public listIndirectReferences()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/PdfIndirectReference;",
            ">;"
        }
    .end annotation

    .line 1456
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->checkClosingStatus()V

    .line 1457
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->xref:Lcom/itextpdf/kernel/pdf/PdfXrefTable;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1458
    .local v0, "indRefs":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/pdf/PdfIndirectReference;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->xref:Lcom/itextpdf/kernel/pdf/PdfXrefTable;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1459
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->xref:Lcom/itextpdf/kernel/pdf/PdfXrefTable;

    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->get(I)Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v2

    .line 1460
    .local v2, "indref":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    if-eqz v2, :cond_0

    .line 1461
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1458
    .end local v2    # "indref":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1464
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method protected markObjectAsMustBeFlushed(Lcom/itextpdf/kernel/pdf/PdfObject;)V
    .locals 2
    .param p1, "pdfObject"    # Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 1884
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1885
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->setState(S)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 1887
    :cond_0
    return-void
.end method

.method public movePage(II)V
    .locals 4
    .param p1, "pageNumber"    # I
    .param p2, "insertBefore"    # I

    .line 600
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->checkClosingStatus()V

    .line 601
    const/4 v0, 0x1

    if-lt p2, v0, :cond_2

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getNumberOfPages()I

    move-result v1

    add-int/2addr v1, v0

    if-gt p2, v1, :cond_2

    .line 604
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPage(I)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v0

    .line 605
    .local v0, "page":Lcom/itextpdf/kernel/pdf/PdfPage;
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->isTagged()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 606
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getStructTreeRoot()Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->move(Lcom/itextpdf/kernel/pdf/PdfPage;I)V

    .line 607
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getTagStructureContext()Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->normalizeDocumentRootTag()V

    .line 609
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPageTree()Lcom/itextpdf/kernel/pdf/PdfPagesTree;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->removePage(I)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v1

    .line 610
    .local v1, "removedPage":Lcom/itextpdf/kernel/pdf/PdfPage;
    if-le p2, p1, :cond_1

    .line 611
    add-int/lit8 p2, p2, -0x1

    .line 613
    :cond_1
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPageTree()Lcom/itextpdf/kernel/pdf/PdfPagesTree;

    move-result-object v2

    invoke-virtual {v2, p2, v1}, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->addPage(ILcom/itextpdf/kernel/pdf/PdfPage;)V

    .line 614
    return-void

    .line 602
    .end local v0    # "page":Lcom/itextpdf/kernel/pdf/PdfPage;
    .end local v1    # "removedPage":Lcom/itextpdf/kernel/pdf/PdfPage;
    :cond_2
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const-string v2, "Requested page number {0} is out of bounds."

    invoke-static {v2, v0}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public movePage(Lcom/itextpdf/kernel/pdf/PdfPage;I)Z
    .locals 2
    .param p1, "page"    # Lcom/itextpdf/kernel/pdf/PdfPage;
    .param p2, "insertBefore"    # I

    .line 584
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->checkClosingStatus()V

    .line 585
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPageNumber(Lcom/itextpdf/kernel/pdf/PdfPage;)I

    move-result v0

    .line 586
    .local v0, "pageNum":I
    if-lez v0, :cond_0

    .line 587
    invoke-virtual {p0, v0, p2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->movePage(II)V

    .line 588
    const/4 v1, 0x1

    return v1

    .line 590
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method protected open(Lcom/itextpdf/kernel/pdf/PdfVersion;)V
    .locals 6
    .param p1, "newPdfVersion"    # Lcom/itextpdf/kernel/pdf/PdfVersion;

    .line 1907
    new-instance v0, Lcom/itextpdf/kernel/pdf/FingerPrint;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/FingerPrint;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->fingerPrint:Lcom/itextpdf/kernel/pdf/FingerPrint;

    .line 1910
    :try_start_0
    invoke-static {}, Lcom/itextpdf/kernel/counter/EventCounterHandler;->getInstance()Lcom/itextpdf/kernel/counter/EventCounterHandler;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/kernel/counter/event/CoreEvent;->PROCESS:Lcom/itextpdf/kernel/counter/event/CoreEvent;

    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->properties:Lcom/itextpdf/kernel/pdf/StampingProperties;

    iget-object v2, v2, Lcom/itextpdf/kernel/pdf/StampingProperties;->metaInfo:Lcom/itextpdf/kernel/counter/event/IMetaInfo;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/itextpdf/kernel/counter/EventCounterHandler;->onEvent(Lcom/itextpdf/kernel/counter/event/IEvent;Lcom/itextpdf/kernel/counter/event/IMetaInfo;Ljava/lang/Class;)V

    .line 1911
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->reader:Lcom/itextpdf/kernel/pdf/PdfReader;

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    .line 1912
    iget-object v0, v0, Lcom/itextpdf/kernel/pdf/PdfReader;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    if-nez v0, :cond_6

    .line 1915
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->reader:Lcom/itextpdf/kernel/pdf/PdfReader;

    iput-object p0, v0, Lcom/itextpdf/kernel/pdf/PdfReader;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 1916
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->reader:Lcom/itextpdf/kernel/pdf/PdfReader;

    iget-object v0, v0, Lcom/itextpdf/kernel/pdf/PdfReader;->properties:Lcom/itextpdf/kernel/pdf/ReaderProperties;

    iget-object v0, v0, Lcom/itextpdf/kernel/pdf/ReaderProperties;->memoryLimitsAwareHandler:Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->memoryLimitsAwareHandler:Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;

    .line 1917
    if-nez v0, :cond_0

    .line 1918
    new-instance v0, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;

    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->reader:Lcom/itextpdf/kernel/pdf/PdfReader;

    iget-object v2, v2, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/PdfTokenizer;->getSafeFile()Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->length()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;-><init>(J)V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->memoryLimitsAwareHandler:Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;

    .line 1920
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->reader:Lcom/itextpdf/kernel/pdf/PdfReader;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfReader;->readPdf()V

    .line 1921
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCounters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/log/ICounter;

    .line 1922
    .local v2, "counter":Lcom/itextpdf/kernel/log/ICounter;
    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->reader:Lcom/itextpdf/kernel/pdf/PdfReader;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfReader;->getFileLength()J

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Lcom/itextpdf/kernel/log/ICounter;->onDocumentRead(J)V

    .line 1923
    .end local v2    # "counter":Lcom/itextpdf/kernel/log/ICounter;
    goto :goto_0

    .line 1924
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->reader:Lcom/itextpdf/kernel/pdf/PdfReader;

    iget-object v0, v0, Lcom/itextpdf/kernel/pdf/PdfReader;->headerPdfVersion:Lcom/itextpdf/kernel/pdf/PdfVersion;

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->pdfVersion:Lcom/itextpdf/kernel/pdf/PdfVersion;

    .line 1925
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->reader:Lcom/itextpdf/kernel/pdf/PdfReader;

    iget-object v2, v2, Lcom/itextpdf/kernel/pdf/PdfReader;->trailer:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->trailer:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 1927
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->readDocumentIds()V

    .line 1929
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfCatalog;

    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->trailer:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Root:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v3, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;Z)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfCatalog;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    .line 1930
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->updatePdfVersionFromCatalog()V

    .line 1931
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Metadata:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsStream(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object v0

    .line 1932
    .local v0, "xmpMetadataStream":Lcom/itextpdf/kernel/pdf/PdfStream;
    if-eqz v0, :cond_2

    .line 1933
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getBytes()[B

    move-result-object v2

    iput-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->xmpMetadata:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1935
    :try_start_1
    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->reader:Lcom/itextpdf/kernel/pdf/PdfReader;

    invoke-static {v2}, Lcom/itextpdf/kernel/xmp/XMPMetaFactory;->parseFromBuffer([B)Lcom/itextpdf/kernel/xmp/XMPMeta;

    move-result-object v2

    invoke-static {v2}, Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;->getConformanceLevel(Lcom/itextpdf/kernel/xmp/XMPMeta;)Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    move-result-object v2

    iput-object v2, v3, Lcom/itextpdf/kernel/pdf/PdfReader;->pdfAConformanceLevel:Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;
    :try_end_1
    .catch Lcom/itextpdf/kernel/xmp/XMPException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1937
    goto :goto_1

    .line 1936
    :catch_0
    move-exception v2

    .line 1939
    :cond_2
    :goto_1
    :try_start_2
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->trailer:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Info:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    .line 1940
    .local v2, "infoDict":Lcom/itextpdf/kernel/pdf/PdfObject;
    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;

    instance-of v4, v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    if-eqz v4, :cond_3

    move-object v4, v2

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    goto :goto_2

    :cond_3
    new-instance v4, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    :goto_2
    invoke-direct {v3, v4, p0}, Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    iput-object v3, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->info:Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;

    .line 1941
    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->xmpMetadata:[B

    invoke-static {v4, v3}, Lcom/itextpdf/kernel/pdf/XmpMetaInfoConverter;->appendMetadataToInfo([BLcom/itextpdf/kernel/pdf/PdfDocumentInfo;)V

    .line 1943
    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->StructTreeRoot:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v3

    .line 1944
    .local v3, "str":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-eqz v3, :cond_4

    .line 1945
    invoke-virtual {p0, v3}, Lcom/itextpdf/kernel/pdf/PdfDocument;->tryInitTagStructure(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 1947
    :cond_4
    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->properties:Lcom/itextpdf/kernel/pdf/StampingProperties;

    iget-boolean v4, v4, Lcom/itextpdf/kernel/pdf/StampingProperties;->appendMode:Z

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->reader:Lcom/itextpdf/kernel/pdf/PdfReader;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfReader;->hasRebuiltXref()Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->reader:Lcom/itextpdf/kernel/pdf/PdfReader;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfReader;->hasFixedXref()Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_3

    .line 1948
    :cond_5
    new-instance v1, Lcom/itextpdf/kernel/PdfException;

    const-string v4, "Append mode requires a document without errors, even if recovery is possible."

    invoke-direct {v1, v4}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    .end local p1    # "newPdfVersion":Lcom/itextpdf/kernel/pdf/PdfVersion;
    throw v1

    .line 1913
    .end local v0    # "xmpMetadataStream":Lcom/itextpdf/kernel/pdf/PdfStream;
    .end local v2    # "infoDict":Lcom/itextpdf/kernel/pdf/PdfObject;
    .end local v3    # "str":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .restart local p1    # "newPdfVersion":Lcom/itextpdf/kernel/pdf/PdfVersion;
    :cond_6
    new-instance v0, Lcom/itextpdf/kernel/PdfException;

    const-string v1, "Given PdfReader instance has already been utilized. The PdfReader cannot be reused, please create a new instance."

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    .end local p1    # "newPdfVersion":Lcom/itextpdf/kernel/pdf/PdfVersion;
    throw v0

    .line 1950
    .restart local p1    # "newPdfVersion":Lcom/itextpdf/kernel/pdf/PdfVersion;
    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->xref:Lcom/itextpdf/kernel/pdf/PdfXrefTable;

    invoke-virtual {v0, p0}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->initFreeReferencesList(Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 1951
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->writer:Lcom/itextpdf/kernel/pdf/PdfWriter;

    if-eqz v0, :cond_17

    .line 1952
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->reader:Lcom/itextpdf/kernel/pdf/PdfReader;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfReader;->hasXrefStm()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->writer:Lcom/itextpdf/kernel/pdf/PdfWriter;

    iget-object v0, v0, Lcom/itextpdf/kernel/pdf/PdfWriter;->properties:Lcom/itextpdf/kernel/pdf/WriterProperties;

    iget-object v0, v0, Lcom/itextpdf/kernel/pdf/WriterProperties;->isFullCompression:Ljava/lang/Boolean;

    if-nez v0, :cond_8

    .line 1953
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->writer:Lcom/itextpdf/kernel/pdf/PdfWriter;

    iget-object v0, v0, Lcom/itextpdf/kernel/pdf/PdfWriter;->properties:Lcom/itextpdf/kernel/pdf/WriterProperties;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/itextpdf/kernel/pdf/WriterProperties;->isFullCompression:Ljava/lang/Boolean;

    .line 1955
    :cond_8
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->reader:Lcom/itextpdf/kernel/pdf/PdfReader;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfReader;->isOpenedWithFullPermission()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_4

    .line 1956
    :cond_9
    new-instance v0, Lcom/itextpdf/kernel/crypto/BadPasswordException;

    const-string v1, "PdfReader is not opened with owner password"

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/crypto/BadPasswordException;-><init>(Ljava/lang/String;)V

    .end local p1    # "newPdfVersion":Lcom/itextpdf/kernel/pdf/PdfVersion;
    throw v0

    .line 1958
    .restart local p1    # "newPdfVersion":Lcom/itextpdf/kernel/pdf/PdfVersion;
    :cond_a
    :goto_4
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->reader:Lcom/itextpdf/kernel/pdf/PdfReader;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->properties:Lcom/itextpdf/kernel/pdf/StampingProperties;

    iget-boolean v0, v0, Lcom/itextpdf/kernel/pdf/StampingProperties;->preserveEncryption:Z

    if-eqz v0, :cond_b

    .line 1959
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->writer:Lcom/itextpdf/kernel/pdf/PdfWriter;

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->reader:Lcom/itextpdf/kernel/pdf/PdfReader;

    iget-object v1, v1, Lcom/itextpdf/kernel/pdf/PdfReader;->decrypt:Lcom/itextpdf/kernel/pdf/PdfEncryption;

    iput-object v1, v0, Lcom/itextpdf/kernel/pdf/PdfWriter;->crypto:Lcom/itextpdf/kernel/pdf/PdfEncryption;

    .line 1961
    :cond_b
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->writer:Lcom/itextpdf/kernel/pdf/PdfWriter;

    iput-object p0, v0, Lcom/itextpdf/kernel/pdf/PdfWriter;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 1962
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->reader:Lcom/itextpdf/kernel/pdf/PdfReader;

    if-nez v0, :cond_c

    .line 1963
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-direct {v0, p0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    .line 1964
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;

    invoke-direct {v0, p0}, Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;->addCreationDate()Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->info:Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;

    .line 1966
    :cond_c
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->updateProducerInInfoDictionary()V

    .line 1967
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->info:Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;->addModDate()Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;

    .line 1968
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->trailer:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 1969
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Root:Lcom/itextpdf/kernel/pdf/PdfName;

    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 1970
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->trailer:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Info:Lcom/itextpdf/kernel/pdf/PdfName;

    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->info:Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 1972
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->reader:Lcom/itextpdf/kernel/pdf/PdfReader;

    if-eqz v0, :cond_d

    .line 1974
    iget-object v0, v0, Lcom/itextpdf/kernel/pdf/PdfReader;->trailer:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->ID:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1975
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->trailer:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->ID:Lcom/itextpdf/kernel/pdf/PdfName;

    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->reader:Lcom/itextpdf/kernel/pdf/PdfReader;

    iget-object v2, v2, Lcom/itextpdf/kernel/pdf/PdfReader;->trailer:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->ID:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 1979
    :cond_d
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->writer:Lcom/itextpdf/kernel/pdf/PdfWriter;

    iget-object v0, v0, Lcom/itextpdf/kernel/pdf/PdfWriter;->properties:Lcom/itextpdf/kernel/pdf/WriterProperties;

    if-eqz v0, :cond_14

    .line 1980
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->modifiedDocumentId:Lcom/itextpdf/kernel/pdf/PdfString;

    .line 1981
    .local v0, "readerModifiedId":Lcom/itextpdf/kernel/pdf/PdfString;
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->writer:Lcom/itextpdf/kernel/pdf/PdfWriter;

    iget-object v1, v1, Lcom/itextpdf/kernel/pdf/PdfWriter;->properties:Lcom/itextpdf/kernel/pdf/WriterProperties;

    iget-object v1, v1, Lcom/itextpdf/kernel/pdf/WriterProperties;->initialDocumentId:Lcom/itextpdf/kernel/pdf/PdfString;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->reader:Lcom/itextpdf/kernel/pdf/PdfReader;

    if-eqz v1, :cond_e

    iget-object v1, v1, Lcom/itextpdf/kernel/pdf/PdfReader;->decrypt:Lcom/itextpdf/kernel/pdf/PdfEncryption;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->properties:Lcom/itextpdf/kernel/pdf/StampingProperties;

    iget-boolean v1, v1, Lcom/itextpdf/kernel/pdf/StampingProperties;->appendMode:Z

    if-nez v1, :cond_f

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->properties:Lcom/itextpdf/kernel/pdf/StampingProperties;

    iget-boolean v1, v1, Lcom/itextpdf/kernel/pdf/StampingProperties;->preserveEncryption:Z

    if-nez v1, :cond_f

    .line 1983
    :cond_e
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->writer:Lcom/itextpdf/kernel/pdf/PdfWriter;

    iget-object v1, v1, Lcom/itextpdf/kernel/pdf/PdfWriter;->properties:Lcom/itextpdf/kernel/pdf/WriterProperties;

    iget-object v1, v1, Lcom/itextpdf/kernel/pdf/WriterProperties;->initialDocumentId:Lcom/itextpdf/kernel/pdf/PdfString;

    iput-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->originalDocumentId:Lcom/itextpdf/kernel/pdf/PdfString;

    .line 1985
    :cond_f
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->writer:Lcom/itextpdf/kernel/pdf/PdfWriter;

    iget-object v1, v1, Lcom/itextpdf/kernel/pdf/PdfWriter;->properties:Lcom/itextpdf/kernel/pdf/WriterProperties;

    iget-object v1, v1, Lcom/itextpdf/kernel/pdf/WriterProperties;->modifiedDocumentId:Lcom/itextpdf/kernel/pdf/PdfString;

    if-eqz v1, :cond_10

    .line 1986
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->writer:Lcom/itextpdf/kernel/pdf/PdfWriter;

    iget-object v1, v1, Lcom/itextpdf/kernel/pdf/PdfWriter;->properties:Lcom/itextpdf/kernel/pdf/WriterProperties;

    iget-object v1, v1, Lcom/itextpdf/kernel/pdf/WriterProperties;->modifiedDocumentId:Lcom/itextpdf/kernel/pdf/PdfString;

    iput-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->modifiedDocumentId:Lcom/itextpdf/kernel/pdf/PdfString;

    .line 1988
    :cond_10
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->originalDocumentId:Lcom/itextpdf/kernel/pdf/PdfString;

    if-nez v1, :cond_11

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->modifiedDocumentId:Lcom/itextpdf/kernel/pdf/PdfString;

    if-eqz v1, :cond_11

    .line 1989
    iput-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->originalDocumentId:Lcom/itextpdf/kernel/pdf/PdfString;

    .line 1991
    :cond_11
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->modifiedDocumentId:Lcom/itextpdf/kernel/pdf/PdfString;

    if-nez v1, :cond_13

    .line 1992
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->originalDocumentId:Lcom/itextpdf/kernel/pdf/PdfString;

    if-nez v1, :cond_12

    .line 1993
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfString;

    invoke-static {}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->generateNewDocumentId()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>([B)V

    iput-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->originalDocumentId:Lcom/itextpdf/kernel/pdf/PdfString;

    .line 1995
    :cond_12
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->originalDocumentId:Lcom/itextpdf/kernel/pdf/PdfString;

    iput-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->modifiedDocumentId:Lcom/itextpdf/kernel/pdf/PdfString;

    .line 1997
    :cond_13
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->writer:Lcom/itextpdf/kernel/pdf/PdfWriter;

    iget-object v1, v1, Lcom/itextpdf/kernel/pdf/PdfWriter;->properties:Lcom/itextpdf/kernel/pdf/WriterProperties;

    iget-object v1, v1, Lcom/itextpdf/kernel/pdf/WriterProperties;->modifiedDocumentId:Lcom/itextpdf/kernel/pdf/PdfString;

    if-nez v1, :cond_14

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->modifiedDocumentId:Lcom/itextpdf/kernel/pdf/PdfString;

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1998
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfString;

    invoke-static {}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->generateNewDocumentId()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>([B)V

    iput-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->modifiedDocumentId:Lcom/itextpdf/kernel/pdf/PdfString;

    .line 2002
    .end local v0    # "readerModifiedId":Lcom/itextpdf/kernel/pdf/PdfString;
    :cond_14
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->originalDocumentId:Lcom/itextpdf/kernel/pdf/PdfString;

    if-eqz v0, :cond_16

    .line 2003
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->modifiedDocumentId:Lcom/itextpdf/kernel/pdf/PdfString;

    if-eqz v0, :cond_15

    goto :goto_5

    :cond_15
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .end local p1    # "newPdfVersion":Lcom/itextpdf/kernel/pdf/PdfVersion;
    throw v0

    .line 2002
    .restart local p1    # "newPdfVersion":Lcom/itextpdf/kernel/pdf/PdfVersion;
    :cond_16
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .end local p1    # "newPdfVersion":Lcom/itextpdf/kernel/pdf/PdfVersion;
    throw v0

    .line 2005
    .restart local p1    # "newPdfVersion":Lcom/itextpdf/kernel/pdf/PdfVersion;
    :cond_17
    :goto_5
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->properties:Lcom/itextpdf/kernel/pdf/StampingProperties;

    iget-boolean v0, v0, Lcom/itextpdf/kernel/pdf/StampingProperties;->appendMode:Z

    if-eqz v0, :cond_1a

    .line 2007
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->reader:Lcom/itextpdf/kernel/pdf/PdfReader;

    if-eqz v0, :cond_19

    .line 2008
    iget-object v0, v0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/PdfTokenizer;->getSafeFile()Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    move-result-object v0

    .line 2010
    .local v0, "file":Lcom/itextpdf/io/source/RandomAccessFileOrArray;
    const/16 v1, 0x2000

    new-array v1, v1, [B

    .line 2011
    .local v1, "buffer":[B
    :goto_6
    invoke-virtual {v0, v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read([B)I

    move-result v2

    move v3, v2

    .local v3, "n":I
    if-lez v2, :cond_18

    .line 2012
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->writer:Lcom/itextpdf/kernel/pdf/PdfWriter;

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3}, Lcom/itextpdf/kernel/pdf/PdfWriter;->write([BII)V

    goto :goto_6

    .line 2014
    :cond_18
    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->close()V

    .line 2015
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->writer:Lcom/itextpdf/kernel/pdf/PdfWriter;

    const/16 v4, 0xa

    invoke-virtual {v2, v4}, Lcom/itextpdf/kernel/pdf/PdfWriter;->write(I)V

    .line 2017
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->writer:Lcom/itextpdf/kernel/pdf/PdfWriter;

    iget-object v2, v2, Lcom/itextpdf/kernel/pdf/PdfWriter;->properties:Lcom/itextpdf/kernel/pdf/WriterProperties;

    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->reader:Lcom/itextpdf/kernel/pdf/PdfReader;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfReader;->hasXrefStm()Z

    move-result v4

    invoke-static {v2, v4}, Lcom/itextpdf/kernel/pdf/PdfDocument;->overrideFullCompressionInWriterProperties(Lcom/itextpdf/kernel/pdf/WriterProperties;Z)V

    .line 2019
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->writer:Lcom/itextpdf/kernel/pdf/PdfWriter;

    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->reader:Lcom/itextpdf/kernel/pdf/PdfReader;

    iget-object v4, v4, Lcom/itextpdf/kernel/pdf/PdfReader;->decrypt:Lcom/itextpdf/kernel/pdf/PdfEncryption;

    iput-object v4, v2, Lcom/itextpdf/kernel/pdf/PdfWriter;->crypto:Lcom/itextpdf/kernel/pdf/PdfEncryption;

    .line 2021
    if-eqz p1, :cond_1e

    .line 2024
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->pdfVersion:Lcom/itextpdf/kernel/pdf/PdfVersion;

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfVersion;->PDF_1_4:Lcom/itextpdf/kernel/pdf/PdfVersion;

    invoke-virtual {v2, v4}, Lcom/itextpdf/kernel/pdf/PdfVersion;->compareTo(Lcom/itextpdf/kernel/pdf/PdfVersion;)I

    move-result v2

    if-ltz v2, :cond_1e

    .line 2029
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->reader:Lcom/itextpdf/kernel/pdf/PdfReader;

    iget-object v2, v2, Lcom/itextpdf/kernel/pdf/PdfReader;->headerPdfVersion:Lcom/itextpdf/kernel/pdf/PdfVersion;

    invoke-virtual {p1, v2}, Lcom/itextpdf/kernel/pdf/PdfVersion;->compareTo(Lcom/itextpdf/kernel/pdf/PdfVersion;)I

    move-result v2

    if-lez v2, :cond_1e

    .line 2030
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->Version:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfVersion;->toPdfName()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfCatalog;

    .line 2031
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->setModified()Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    .line 2032
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->pdfVersion:Lcom/itextpdf/kernel/pdf/PdfVersion;

    goto :goto_7

    .line 2007
    .end local v0    # "file":Lcom/itextpdf/io/source/RandomAccessFileOrArray;
    .end local v1    # "buffer":[B
    .end local v3    # "n":I
    :cond_19
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .end local p1    # "newPdfVersion":Lcom/itextpdf/kernel/pdf/PdfVersion;
    throw v0

    .line 2039
    .restart local p1    # "newPdfVersion":Lcom/itextpdf/kernel/pdf/PdfVersion;
    :cond_1a
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->writer:Lcom/itextpdf/kernel/pdf/PdfWriter;

    if-eqz v0, :cond_1e

    .line 2040
    if-eqz p1, :cond_1b

    .line 2041
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->pdfVersion:Lcom/itextpdf/kernel/pdf/PdfVersion;

    .line 2043
    :cond_1b
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfWriter;->writeHeader()V

    .line 2045
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->writer:Lcom/itextpdf/kernel/pdf/PdfWriter;

    iget-object v0, v0, Lcom/itextpdf/kernel/pdf/PdfWriter;->crypto:Lcom/itextpdf/kernel/pdf/PdfEncryption;

    if-nez v0, :cond_1c

    .line 2046
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->writer:Lcom/itextpdf/kernel/pdf/PdfWriter;

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->pdfVersion:Lcom/itextpdf/kernel/pdf/PdfVersion;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfWriter;->initCryptoIfSpecified(Lcom/itextpdf/kernel/pdf/PdfVersion;)V

    .line 2048
    :cond_1c
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->writer:Lcom/itextpdf/kernel/pdf/PdfWriter;

    iget-object v0, v0, Lcom/itextpdf/kernel/pdf/PdfWriter;->crypto:Lcom/itextpdf/kernel/pdf/PdfEncryption;

    if-eqz v0, :cond_1f

    .line 2049
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->writer:Lcom/itextpdf/kernel/pdf/PdfWriter;

    iget-object v0, v0, Lcom/itextpdf/kernel/pdf/PdfWriter;->crypto:Lcom/itextpdf/kernel/pdf/PdfEncryption;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->getCryptoMode()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1d

    .line 2050
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfVersion;->PDF_2_0:Lcom/itextpdf/kernel/pdf/PdfVersion;

    const-string v1, "Encryption algorithms STANDARD_ENCRYPTION_40, STANDARD_ENCRYPTION_128 and ENCRYPTION_AES_128 (see com.itextpdf.kernel.pdf.EncryptionConstants) are deprecated in PDF 2.0. It is highly recommended not to use it."

    invoke-static {p0, v0, v1}, Lcom/itextpdf/kernel/pdf/VersionConforming;->validatePdfVersionForDeprecatedFeatureLogWarn(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/pdf/PdfVersion;Ljava/lang/String;)Z

    goto :goto_8

    .line 2051
    :cond_1d
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->writer:Lcom/itextpdf/kernel/pdf/PdfWriter;

    iget-object v0, v0, Lcom/itextpdf/kernel/pdf/PdfWriter;->crypto:Lcom/itextpdf/kernel/pdf/PdfEncryption;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->getCryptoMode()I

    move-result v0

    if-ne v0, v1, :cond_1f

    .line 2052
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->writer:Lcom/itextpdf/kernel/pdf/PdfWriter;

    iget-object v0, v0, Lcom/itextpdf/kernel/pdf/PdfWriter;->crypto:Lcom/itextpdf/kernel/pdf/PdfEncryption;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->R:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    .line 2053
    .local v0, "r":Lcom/itextpdf/kernel/pdf/PdfNumber;
    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1f

    .line 2054
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfVersion;->PDF_2_0:Lcom/itextpdf/kernel/pdf/PdfVersion;

    const-string v2, "It seems that PDF 1.7 document encrypted with AES256 was updated to PDF 2.0 version and StampingProperties#preserveEncryption flag was set: encryption shall be updated via WriterProperties#setStandardEncryption method. Standard security handler was found with revision 5, which is deprecated and shall not be used in PDF 2.0 documents."

    invoke-static {p0, v1, v2}, Lcom/itextpdf/kernel/pdf/VersionConforming;->validatePdfVersionForDeprecatedFeatureLogWarn(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/pdf/PdfVersion;Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_8

    .line 2039
    .end local v0    # "r":Lcom/itextpdf/kernel/pdf/PdfNumber;
    :cond_1e
    :goto_7
    nop

    .line 2061
    :cond_1f
    :goto_8
    nop

    .line 2062
    return-void

    .line 2059
    :catch_1
    move-exception v0

    .line 2060
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/itextpdf/kernel/PdfException;

    const-string v2, "Cannot open document."

    invoke-direct {v1, v2, v0, p0}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Object;)V

    throw v1
.end method

.method public registerProduct(Lcom/itextpdf/kernel/ProductInfo;)Z
    .locals 1
    .param p1, "productInfo"    # Lcom/itextpdf/kernel/ProductInfo;

    .line 1808
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->fingerPrint:Lcom/itextpdf/kernel/pdf/FingerPrint;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/FingerPrint;->registerProduct(Lcom/itextpdf/kernel/ProductInfo;)Z

    move-result v0

    return v0
.end method

.method public removeAllHandlers()V
    .locals 1

    .line 761
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->eventDispatcher:Lcom/itextpdf/kernel/events/EventDispatcher;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/events/EventDispatcher;->removeAllHandlers()V

    .line 762
    return-void
.end method

.method public removeEventHandler(Ljava/lang/String;Lcom/itextpdf/kernel/events/IEventHandler;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "handler"    # Lcom/itextpdf/kernel/events/IEventHandler;

    .line 753
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->eventDispatcher:Lcom/itextpdf/kernel/events/EventDispatcher;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/kernel/events/EventDispatcher;->removeEventHandler(Ljava/lang/String;Lcom/itextpdf/kernel/events/IEventHandler;)V

    .line 754
    return-void
.end method

.method public removePage(I)V
    .locals 3
    .param p1, "pageNum"    # I

    .line 641
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->checkClosingStatus()V

    .line 643
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPage(I)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v0

    .line 644
    .local v0, "removedPage":Lcom/itextpdf/kernel/pdf/PdfPage;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfPage;->isFlushed()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->isTagged()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->hasAcroForm()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 645
    :cond_0
    new-instance v1, Lcom/itextpdf/kernel/PdfException;

    const-string v2, "Flushed page cannot be removed from a document which is tagged or has an AcroForm"

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 648
    :cond_1
    :goto_0
    if-eqz v0, :cond_4

    .line 649
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->removeOutlines(Lcom/itextpdf/kernel/pdf/PdfPage;)V

    .line 650
    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->removeUnusedWidgetsFromFields(Lcom/itextpdf/kernel/pdf/PdfPage;)V

    .line 651
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->isTagged()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 652
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getTagStructureContext()Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->removePageTags(Lcom/itextpdf/kernel/pdf/PdfPage;)Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    .line 654
    :cond_2
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfPage;->isFlushed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 655
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Parent:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->remove(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 656
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->setFree()V

    .line 659
    :cond_3
    new-instance v1, Lcom/itextpdf/kernel/events/PdfDocumentEvent;

    const-string v2, "RemovePdfPage"

    invoke-direct {v1, v2, v0}, Lcom/itextpdf/kernel/events/PdfDocumentEvent;-><init>(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfPage;)V

    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->dispatchEvent(Lcom/itextpdf/kernel/events/Event;)V

    .line 662
    :cond_4
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPageTree()Lcom/itextpdf/kernel/pdf/PdfPagesTree;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->removePage(I)Lcom/itextpdf/kernel/pdf/PdfPage;

    .line 663
    return-void
.end method

.method public removePage(Lcom/itextpdf/kernel/pdf/PdfPage;)Z
    .locals 2
    .param p1, "page"    # Lcom/itextpdf/kernel/pdf/PdfPage;

    .line 626
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->checkClosingStatus()V

    .line 627
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPageNumber(Lcom/itextpdf/kernel/pdf/PdfPage;)I

    move-result v0

    .line 628
    .local v0, "pageNum":I
    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 629
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->removePage(I)V

    .line 630
    return v1

    .line 632
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public setCloseReader(Z)V
    .locals 0
    .param p1, "closeReader"    # Z

    .line 1371
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->checkClosingStatus()V

    .line 1372
    iput-boolean p1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->closeReader:Z

    .line 1373
    return-void
.end method

.method public setCloseWriter(Z)V
    .locals 0
    .param p1, "closeWriter"    # Z

    .line 1390
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->checkClosingStatus()V

    .line 1391
    iput-boolean p1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->closeWriter:Z

    .line 1392
    return-void
.end method

.method public setDefaultPageSize(Lcom/itextpdf/kernel/geom/PageSize;)V
    .locals 0
    .param p1, "pageSize"    # Lcom/itextpdf/kernel/geom/PageSize;

    .line 713
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->defaultPageSize:Lcom/itextpdf/kernel/geom/PageSize;

    .line 714
    return-void
.end method

.method public setEncryptedPayload(Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;)V
    .locals 4
    .param p1, "fs"    # Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;

    .line 1637
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getWriter()Lcom/itextpdf/kernel/pdf/PdfWriter;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1640
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->writerHasEncryption()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1643
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->EncryptedPayload:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->AFRelationship:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1644
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    const-string v1, "Encrypted payload file spec shall have \'AFRelationship\' filed equal to \'EncryptedPayload\'"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 1646
    :cond_0
    invoke-static {p1}, Lcom/itextpdf/kernel/pdf/PdfEncryptedPayload;->extractFrom(Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;)Lcom/itextpdf/kernel/pdf/PdfEncryptedPayload;

    move-result-object v0

    .line 1647
    .local v0, "encryptedPayload":Lcom/itextpdf/kernel/pdf/PdfEncryptedPayload;
    if-eqz v0, :cond_2

    .line 1650
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getCollection()Lcom/itextpdf/kernel/pdf/collection/PdfCollection;

    move-result-object v1

    .line 1651
    .local v1, "collection":Lcom/itextpdf/kernel/pdf/collection/PdfCollection;
    if-eqz v1, :cond_1

    .line 1652
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v2

    const-string v3, "Collection dictionary already exists. It will be modified."

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 1654
    :cond_1
    new-instance v2, Lcom/itextpdf/kernel/pdf/collection/PdfCollection;

    invoke-direct {v2}, Lcom/itextpdf/kernel/pdf/collection/PdfCollection;-><init>()V

    move-object v1, v2

    .line 1655
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->setCollection(Lcom/itextpdf/kernel/pdf/collection/PdfCollection;)Lcom/itextpdf/kernel/pdf/PdfCatalog;

    .line 1657
    :goto_0
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/collection/PdfCollection;->setView(I)Lcom/itextpdf/kernel/pdf/collection/PdfCollection;

    .line 1658
    invoke-static {v0}, Lcom/itextpdf/kernel/pdf/filespec/PdfEncryptedPayloadFileSpecFactory;->generateFileDisplay(Lcom/itextpdf/kernel/pdf/PdfEncryptedPayload;)Ljava/lang/String;

    move-result-object v2

    .line 1659
    .local v2, "displayName":Ljava/lang/String;
    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/collection/PdfCollection;->setInitialDocument(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/collection/PdfCollection;

    .line 1660
    invoke-virtual {p0, v2, p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->addAssociatedFile(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;)V

    .line 1661
    return-void

    .line 1648
    .end local v1    # "collection":Lcom/itextpdf/kernel/pdf/collection/PdfCollection;
    .end local v2    # "displayName":Ljava/lang/String;
    :cond_2
    new-instance v1, Lcom/itextpdf/kernel/PdfException;

    const-string v2, "Encrypted payload file spec shall have encrypted payload dictionary."

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1641
    .end local v0    # "encryptedPayload":Lcom/itextpdf/kernel/pdf/PdfEncryptedPayload;
    :cond_3
    new-instance v0, Lcom/itextpdf/kernel/PdfException;

    const-string v1, "Cannot set encrypted payload to an encrypted document."

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1638
    :cond_4
    new-instance v0, Lcom/itextpdf/kernel/PdfException;

    const-string v1, "Cannot set encrypted payload to a document opened in read only mode."

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFlushUnusedObjects(Z)V
    .locals 0
    .param p1, "flushUnusedObjects"    # Z

    .line 1411
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->checkClosingStatus()V

    .line 1412
    iput-boolean p1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->flushUnusedObjects:Z

    .line 1413
    return-void
.end method

.method public setTagged()Lcom/itextpdf/kernel/pdf/PdfDocument;
    .locals 3

    .line 1045
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->checkClosingStatus()V

    .line 1046
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->structTreeRoot:Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

    if-nez v0, :cond_0

    .line 1047
    new-instance v0, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

    invoke-direct {v0, p0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->structTreeRoot:Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

    .line 1048
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->StructTreeRoot:Lcom/itextpdf/kernel/pdf/PdfName;

    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->structTreeRoot:Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 1049
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Marked:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfBoolean;->TRUE:Lcom/itextpdf/kernel/pdf/PdfBoolean;

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->updateValueInMarkInfoDict(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 1051
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->structParentIndex:I

    .line 1053
    :cond_0
    return-object p0
.end method

.method public setUserProperties(Z)V
    .locals 2
    .param p1, "userProperties"    # Z

    .line 1742
    if-eqz p1, :cond_0

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfBoolean;->TRUE:Lcom/itextpdf/kernel/pdf/PdfBoolean;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfBoolean;->FALSE:Lcom/itextpdf/kernel/pdf/PdfBoolean;

    .line 1743
    .local v0, "userPropsVal":Lcom/itextpdf/kernel/pdf/PdfBoolean;
    :goto_0
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->UserProperties:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {p0, v1, v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->updateValueInMarkInfoDict(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 1744
    return-void
.end method

.method public setXmpMetadata(Lcom/itextpdf/kernel/xmp/XMPMeta;)V
    .locals 2
    .param p1, "xmpMeta"    # Lcom/itextpdf/kernel/xmp/XMPMeta;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    .line 360
    new-instance v0, Lcom/itextpdf/kernel/xmp/options/SerializeOptions;

    invoke-direct {v0}, Lcom/itextpdf/kernel/xmp/options/SerializeOptions;-><init>()V

    .line 361
    .local v0, "serializeOptions":Lcom/itextpdf/kernel/xmp/options/SerializeOptions;
    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/xmp/options/SerializeOptions;->setPadding(I)Lcom/itextpdf/kernel/xmp/options/SerializeOptions;

    .line 362
    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->setXmpMetadata(Lcom/itextpdf/kernel/xmp/XMPMeta;Lcom/itextpdf/kernel/xmp/options/SerializeOptions;)V

    .line 363
    return-void
.end method

.method public setXmpMetadata(Lcom/itextpdf/kernel/xmp/XMPMeta;Lcom/itextpdf/kernel/xmp/options/SerializeOptions;)V
    .locals 1
    .param p1, "xmpMeta"    # Lcom/itextpdf/kernel/xmp/XMPMeta;
    .param p2, "serializeOptions"    # Lcom/itextpdf/kernel/xmp/options/SerializeOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    .line 349
    invoke-static {p1, p2}, Lcom/itextpdf/kernel/xmp/XMPMetaFactory;->serializeToBuffer(Lcom/itextpdf/kernel/xmp/XMPMeta;Lcom/itextpdf/kernel/xmp/options/SerializeOptions;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->setXmpMetadata([B)V

    .line 350
    return-void
.end method

.method protected setXmpMetadata([B)V
    .locals 0
    .param p1, "xmpMetadata"    # [B

    .line 337
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->xmpMetadata:[B

    .line 338
    return-void
.end method

.method protected storeLinkAnnotation(Lcom/itextpdf/kernel/pdf/PdfPage;Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;)V
    .locals 2
    .param p1, "page"    # Lcom/itextpdf/kernel/pdf/PdfPage;
    .param p2, "annotation"    # Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;

    .line 1863
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->linkAnnotations:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1864
    .local v0, "pageAnnotations":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;>;"
    if-nez v0, :cond_0

    .line 1865
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 1866
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->linkAnnotations:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1868
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1869
    return-void
.end method

.method protected tryInitTagStructure(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 3
    .param p1, "str"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 2226
    :try_start_0
    new-instance v0, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

    invoke-direct {v0, p1, p0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->structTreeRoot:Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

    .line 2227
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getStructTreeRoot()Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->getParentTreeNextKey()I

    move-result v0

    iput v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->structParentIndex:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2233
    goto :goto_0

    .line 2228
    :catch_0
    move-exception v0

    .line 2229
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->structTreeRoot:Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

    .line 2230
    const/4 v1, -0x1

    iput v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->structParentIndex:I

    .line 2231
    const-class v1, Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-static {v1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v1

    .line 2232
    .local v1, "logger":Lorg/slf4j/Logger;
    const-string v2, "Tag structure initialization failed, tag structure is ignored, it might be corrupted."

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2234
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v1    # "logger":Lorg/slf4j/Logger;
    :goto_0
    return-void
.end method

.method protected updateDefaultXmpMetadata()Lcom/itextpdf/kernel/xmp/XMPMeta;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    .line 2095
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getXmpMetadata(Z)[B

    move-result-object v1

    invoke-static {v1}, Lcom/itextpdf/kernel/xmp/XMPMetaFactory;->parseFromBuffer([B)Lcom/itextpdf/kernel/xmp/XMPMeta;

    move-result-object v1

    .line 2096
    .local v1, "xmpMeta":Lcom/itextpdf/kernel/xmp/XMPMeta;
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->info:Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;

    invoke-static {v2, v1}, Lcom/itextpdf/kernel/pdf/XmpMetaInfoConverter;->appendDocumentInfoToMetadata(Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;Lcom/itextpdf/kernel/xmp/XMPMeta;)V

    .line 2098
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->isTagged()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->writer:Lcom/itextpdf/kernel/pdf/PdfWriter;

    iget-object v2, v2, Lcom/itextpdf/kernel/pdf/PdfWriter;->properties:Lcom/itextpdf/kernel/pdf/WriterProperties;

    iget-boolean v2, v2, Lcom/itextpdf/kernel/pdf/WriterProperties;->addUAXmpMetadata:Z

    if-eqz v2, :cond_0

    const-string v2, "http://www.aiim.org/pdfua/ns/id/"

    const-string v3, "part"

    invoke-static {v1, v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDocument;->isXmpMetaHasProperty(Lcom/itextpdf/kernel/xmp/XMPMeta;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2099
    new-instance v4, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    const/high16 v5, 0x40000000    # 2.0f

    invoke-direct {v4, v5}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;-><init>(I)V

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/itextpdf/kernel/xmp/XMPMeta;->setPropertyInteger(Ljava/lang/String;Ljava/lang/String;ILcom/itextpdf/kernel/xmp/options/PropertyOptions;)V

    .line 2102
    :cond_0
    return-object v1
.end method

.method protected updateXmpMetadata()V
    .locals 3

    .line 2079
    :try_start_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->xmpMetadata:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->writer:Lcom/itextpdf/kernel/pdf/PdfWriter;

    iget-object v0, v0, Lcom/itextpdf/kernel/pdf/PdfWriter;->properties:Lcom/itextpdf/kernel/pdf/WriterProperties;

    iget-boolean v0, v0, Lcom/itextpdf/kernel/pdf/WriterProperties;->addXmpMetadata:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->pdfVersion:Lcom/itextpdf/kernel/pdf/PdfVersion;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfVersion;->PDF_2_0:Lcom/itextpdf/kernel/pdf/PdfVersion;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfVersion;->compareTo(Lcom/itextpdf/kernel/pdf/PdfVersion;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 2080
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->updateDefaultXmpMetadata()Lcom/itextpdf/kernel/xmp/XMPMeta;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->setXmpMetadata(Lcom/itextpdf/kernel/xmp/XMPMeta;)V
    :try_end_0
    .catch Lcom/itextpdf/kernel/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2085
    :cond_1
    goto :goto_0

    .line 2082
    :catch_0
    move-exception v0

    .line 2083
    .local v0, "e":Lcom/itextpdf/kernel/xmp/XMPException;
    const-class v1, Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-static {v1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v1

    .line 2084
    .local v1, "logger":Lorg/slf4j/Logger;
    const-string v2, "Exception while updating XmpMetadata"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2086
    .end local v0    # "e":Lcom/itextpdf/kernel/xmp/XMPException;
    .end local v1    # "logger":Lorg/slf4j/Logger;
    :goto_0
    return-void
.end method
