.class public Lcom/itextpdf/io/font/cmap/CMapLocationResource;
.super Ljava/lang/Object;
.source "CMapLocationResource.java"

# interfaces
.implements Lcom/itextpdf/io/font/cmap/ICMapLocation;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLocation(Ljava/lang/String;)Lcom/itextpdf/io/source/PdfTokenizer;
    .locals 5
    .param p1, "location"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com/itextpdf/io/font/cmap/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "fullName":Ljava/lang/String;
    invoke-static {v0}, Lcom/itextpdf/io/util/ResourceUtil;->getResourceStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 64
    .local v1, "inp":Ljava/io/InputStream;
    if-eqz v1, :cond_0

    .line 67
    new-instance v2, Lcom/itextpdf/io/source/PdfTokenizer;

    new-instance v3, Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    new-instance v4, Lcom/itextpdf/io/source/RandomAccessSourceFactory;

    invoke-direct {v4}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;-><init>()V

    invoke-virtual {v4, v1}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;->createSource(Ljava/io/InputStream;)Lcom/itextpdf/io/source/IRandomAccessSource;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;-><init>(Lcom/itextpdf/io/source/IRandomAccessSource;)V

    invoke-direct {v2, v3}, Lcom/itextpdf/io/source/PdfTokenizer;-><init>(Lcom/itextpdf/io/source/RandomAccessFileOrArray;)V

    return-object v2

    .line 65
    :cond_0
    new-instance v2, Lcom/itextpdf/io/IOException;

    const-string v3, "The CMap {0} was not found."

    invoke-direct {v2, v3}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v2, v3}, Lcom/itextpdf/io/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/IOException;

    move-result-object v2

    throw v2
.end method
