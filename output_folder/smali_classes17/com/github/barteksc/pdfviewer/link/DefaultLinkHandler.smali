.class public Lcom/github/barteksc/pdfviewer/link/DefaultLinkHandler;
.super Ljava/lang/Object;
.source "DefaultLinkHandler.java"

# interfaces
.implements Lcom/github/barteksc/pdfviewer/link/LinkHandler;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private pdfView:Lcom/github/barteksc/pdfviewer/PDFView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-class v0, Lcom/github/barteksc/pdfviewer/link/DefaultLinkHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/github/barteksc/pdfviewer/link/DefaultLinkHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/github/barteksc/pdfviewer/PDFView;)V
    .locals 0
    .param p1, "pdfView"    # Lcom/github/barteksc/pdfviewer/PDFView;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/link/DefaultLinkHandler;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    .line 34
    return-void
.end method

.method private handlePage(I)V
    .locals 1
    .param p1, "page"    # I

    .line 59
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/link/DefaultLinkHandler;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0, p1}, Lcom/github/barteksc/pdfviewer/PDFView;->jumpTo(I)V

    .line 60
    return-void
.end method

.method private handleUri(Ljava/lang/String;)V
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;

    .line 48
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 49
    .local v0, "parsedUri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 50
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/link/DefaultLinkHandler;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v2}, Lcom/github/barteksc/pdfviewer/PDFView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 51
    .local v2, "context":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 52
    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 54
    :cond_0
    sget-object v3, Lcom/github/barteksc/pdfviewer/link/DefaultLinkHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No activity found for URI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :goto_0
    return-void
.end method


# virtual methods
.method public handleLinkEvent(Lcom/github/barteksc/pdfviewer/model/LinkTapEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/github/barteksc/pdfviewer/model/LinkTapEvent;

    .line 38
    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/model/LinkTapEvent;->getLink()Lcom/shockwave/pdfium/PdfDocument$Link;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shockwave/pdfium/PdfDocument$Link;->getUri()Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "uri":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/model/LinkTapEvent;->getLink()Lcom/shockwave/pdfium/PdfDocument$Link;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shockwave/pdfium/PdfDocument$Link;->getDestPageIdx()Ljava/lang/Integer;

    move-result-object v1

    .line 40
    .local v1, "page":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 41
    invoke-direct {p0, v0}, Lcom/github/barteksc/pdfviewer/link/DefaultLinkHandler;->handleUri(Ljava/lang/String;)V

    goto :goto_0

    .line 42
    :cond_0
    if-eqz v1, :cond_1

    .line 43
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/github/barteksc/pdfviewer/link/DefaultLinkHandler;->handlePage(I)V

    .line 45
    :cond_1
    :goto_0
    return-void
.end method
