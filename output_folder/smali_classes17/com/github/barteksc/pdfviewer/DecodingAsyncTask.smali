.class Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;
.super Landroid/os/AsyncTask;
.source "DecodingAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field private cancelled:Z

.field private docSource:Lcom/github/barteksc/pdfviewer/source/DocumentSource;

.field private password:Ljava/lang/String;

.field private pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

.field private pdfViewReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/github/barteksc/pdfviewer/PDFView;",
            ">;"
        }
    .end annotation
.end field

.field private pdfiumCore:Lcom/shockwave/pdfium/PdfiumCore;

.field private userPages:[I


# direct methods
.method constructor <init>(Lcom/github/barteksc/pdfviewer/source/DocumentSource;Ljava/lang/String;[ILcom/github/barteksc/pdfviewer/PDFView;Lcom/shockwave/pdfium/PdfiumCore;)V
    .locals 1
    .param p1, "docSource"    # Lcom/github/barteksc/pdfviewer/source/DocumentSource;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "userPages"    # [I
    .param p4, "pdfView"    # Lcom/github/barteksc/pdfviewer/PDFView;
    .param p5, "pdfiumCore"    # Lcom/shockwave/pdfium/PdfiumCore;

    .line 39
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->docSource:Lcom/github/barteksc/pdfviewer/source/DocumentSource;

    .line 41
    iput-object p3, p0, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->userPages:[I

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->cancelled:Z

    .line 43
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->pdfViewReference:Ljava/lang/ref/WeakReference;

    .line 44
    iput-object p2, p0, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->password:Ljava/lang/String;

    .line 45
    iput-object p5, p0, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->pdfiumCore:Lcom/shockwave/pdfium/PdfiumCore;

    .line 46
    return-void
.end method

.method private getViewSize(Lcom/github/barteksc/pdfviewer/PDFView;)Lcom/shockwave/pdfium/util/Size;
    .locals 3
    .param p1, "pdfView"    # Lcom/github/barteksc/pdfviewer/PDFView;

    .line 68
    new-instance v0, Lcom/shockwave/pdfium/util/Size;

    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/shockwave/pdfium/util/Size;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 27
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Throwable;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Throwable;
    .locals 16
    .param p1, "params"    # [Ljava/lang/Void;

    move-object/from16 v1, p0

    .line 51
    :try_start_0
    iget-object v0, v1, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->pdfViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/barteksc/pdfviewer/PDFView;

    .line 52
    .local v0, "pdfView":Lcom/github/barteksc/pdfviewer/PDFView;
    if-eqz v0, :cond_0

    .line 53
    iget-object v2, v1, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->docSource:Lcom/github/barteksc/pdfviewer/source/DocumentSource;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v1, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->pdfiumCore:Lcom/shockwave/pdfium/PdfiumCore;

    iget-object v5, v1, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->password:Ljava/lang/String;

    invoke-interface {v2, v3, v4, v5}, Lcom/github/barteksc/pdfviewer/source/DocumentSource;->createDocument(Landroid/content/Context;Lcom/shockwave/pdfium/PdfiumCore;Ljava/lang/String;)Lcom/shockwave/pdfium/PdfDocument;

    move-result-object v8

    .line 54
    .local v8, "pdfDocument":Lcom/shockwave/pdfium/PdfDocument;
    new-instance v2, Lcom/github/barteksc/pdfviewer/PdfFile;

    iget-object v7, v1, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->pdfiumCore:Lcom/shockwave/pdfium/PdfiumCore;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getPageFitPolicy()Lcom/github/barteksc/pdfviewer/util/FitPolicy;

    move-result-object v9

    invoke-direct {v1, v0}, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->getViewSize(Lcom/github/barteksc/pdfviewer/PDFView;)Lcom/shockwave/pdfium/util/Size;

    move-result-object v10

    iget-object v11, v1, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->userPages:[I

    .line 55
    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->isSwipeVertical()Z

    move-result v12

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getSpacingPx()I

    move-result v13

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->isAutoSpacingEnabled()Z

    move-result v14

    .line 56
    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->isFitEachPage()Z

    move-result v15

    move-object v6, v2

    invoke-direct/range {v6 .. v15}, Lcom/github/barteksc/pdfviewer/PdfFile;-><init>(Lcom/shockwave/pdfium/PdfiumCore;Lcom/shockwave/pdfium/PdfDocument;Lcom/github/barteksc/pdfviewer/util/FitPolicy;Lcom/shockwave/pdfium/util/Size;[IZIZZ)V

    iput-object v2, v1, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    .line 57
    const/4 v2, 0x0

    return-object v2

    .line 59
    .end local v8    # "pdfDocument":Lcom/shockwave/pdfium/PdfDocument;
    :cond_0
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "pdfView == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    .line 62
    .end local v0    # "pdfView":Lcom/github/barteksc/pdfviewer/PDFView;
    :catchall_0
    move-exception v0

    .line 63
    .local v0, "t":Ljava/lang/Throwable;
    return-object v0
.end method

.method protected onCancelled()V
    .locals 1

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->cancelled:Z

    .line 88
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 27
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->onPostExecute(Ljava/lang/Throwable;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 73
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->pdfViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/barteksc/pdfviewer/PDFView;

    .line 74
    .local v0, "pdfView":Lcom/github/barteksc/pdfviewer/PDFView;
    if-eqz v0, :cond_1

    .line 75
    if-eqz p1, :cond_0

    .line 76
    invoke-virtual {v0, p1}, Lcom/github/barteksc/pdfviewer/PDFView;->loadError(Ljava/lang/Throwable;)V

    .line 77
    return-void

    .line 79
    :cond_0
    iget-boolean v1, p0, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->cancelled:Z

    if-nez v1, :cond_1

    .line 80
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    invoke-virtual {v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->loadComplete(Lcom/github/barteksc/pdfviewer/PdfFile;)V

    .line 83
    :cond_1
    return-void
.end method
