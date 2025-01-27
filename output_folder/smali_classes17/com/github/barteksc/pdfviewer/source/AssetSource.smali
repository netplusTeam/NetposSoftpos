.class public Lcom/github/barteksc/pdfviewer/source/AssetSource;
.super Ljava/lang/Object;
.source "AssetSource.java"

# interfaces
.implements Lcom/github/barteksc/pdfviewer/source/DocumentSource;


# instance fields
.field private final assetName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "assetName"    # Ljava/lang/String;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/source/AssetSource;->assetName:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public createDocument(Landroid/content/Context;Lcom/shockwave/pdfium/PdfiumCore;Ljava/lang/String;)Lcom/shockwave/pdfium/PdfDocument;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "core"    # Lcom/shockwave/pdfium/PdfiumCore;
    .param p3, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/source/AssetSource;->assetName:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/github/barteksc/pdfviewer/util/FileUtils;->fileFromAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 40
    .local v0, "f":Ljava/io/File;
    const/high16 v1, 0x10000000

    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 41
    .local v1, "pfd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p2, v1, p3}, Lcom/shockwave/pdfium/PdfiumCore;->newDocument(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Lcom/shockwave/pdfium/PdfDocument;

    move-result-object v2

    return-object v2
.end method
