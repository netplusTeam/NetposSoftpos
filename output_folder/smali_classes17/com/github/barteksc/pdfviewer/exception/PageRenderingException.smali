.class public Lcom/github/barteksc/pdfviewer/exception/PageRenderingException;
.super Ljava/lang/Exception;
.source "PageRenderingException.java"


# instance fields
.field private final page:I


# direct methods
.method public constructor <init>(ILjava/lang/Throwable;)V
    .locals 0
    .param p1, "page"    # I
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 7
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 8
    iput p1, p0, Lcom/github/barteksc/pdfviewer/exception/PageRenderingException;->page:I

    .line 9
    return-void
.end method


# virtual methods
.method public getPage()I
    .locals 1

    .line 12
    iget v0, p0, Lcom/github/barteksc/pdfviewer/exception/PageRenderingException;->page:I

    return v0
.end method
