.class public Lcom/shockwave/pdfium/PdfiumCore;
.super Ljava/lang/Object;
.source "PdfiumCore.java"


# static fields
.field private static final FD_CLASS:Ljava/lang/Class;

.field private static final FD_FIELD_NAME:Ljava/lang/String; = "descriptor"

.field private static final TAG:Ljava/lang/String;

.field private static final lock:Ljava/lang/Object;

.field private static mFdField:Ljava/lang/reflect/Field;


# instance fields
.field private mCurrentDpi:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 20
    const-class v0, Lcom/shockwave/pdfium/PdfiumCore;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/shockwave/pdfium/PdfiumCore;->TAG:Ljava/lang/String;

    .line 21
    const-class v0, Ljava/io/FileDescriptor;

    sput-object v0, Lcom/shockwave/pdfium/PdfiumCore;->FD_CLASS:Ljava/lang/Class;

    .line 26
    :try_start_0
    const-string v0, "c++_shared"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 27
    const-string v0, "modpng"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 28
    const-string v0, "modft2"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 29
    const-string v0, "modpdfium"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 30
    const-string v0, "jniPdfium"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    goto :goto_0

    .line 31
    :catch_0
    move-exception v0

    .line 32
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    sget-object v1, Lcom/shockwave/pdfium/PdfiumCore;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Native libraries failed to load - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/shockwave/pdfium/PdfiumCore;->lock:Ljava/lang/Object;

    .line 98
    const/4 v0, 0x0

    sput-object v0, Lcom/shockwave/pdfium/PdfiumCore;->mFdField:Ljava/lang/reflect/Field;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, p0, Lcom/shockwave/pdfium/PdfiumCore;->mCurrentDpi:I

    .line 122
    sget-object v0, Lcom/shockwave/pdfium/PdfiumCore;->TAG:Ljava/lang/String;

    const-string v1, "Starting PdfiumAndroid 1.9.0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return-void
.end method

.method public static getNumFd(Landroid/os/ParcelFileDescriptor;)I
    .locals 3
    .param p0, "fdObj"    # Landroid/os/ParcelFileDescriptor;

    .line 103
    const/4 v0, -0x1

    :try_start_0
    sget-object v1, Lcom/shockwave/pdfium/PdfiumCore;->mFdField:Ljava/lang/reflect/Field;

    if-nez v1, :cond_0

    .line 104
    sget-object v1, Lcom/shockwave/pdfium/PdfiumCore;->FD_CLASS:Ljava/lang/Class;

    const-string v2, "descriptor"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lcom/shockwave/pdfium/PdfiumCore;->mFdField:Ljava/lang/reflect/Field;

    .line 105
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 108
    :cond_0
    sget-object v1, Lcom/shockwave/pdfium/PdfiumCore;->mFdField:Ljava/lang/reflect/Field;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 112
    :catch_0
    move-exception v1

    .line 113
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 114
    return v0

    .line 109
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v1

    .line 110
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    .line 111
    return v0
.end method

.method private native nativeCloseDocument(J)V
.end method

.method private native nativeClosePage(J)V
.end method

.method private native nativeClosePages([J)V
.end method

.method private native nativeGetBookmarkDestIndex(JJ)J
.end method

.method private native nativeGetBookmarkTitle(J)Ljava/lang/String;
.end method

.method private native nativeGetDestPageIndex(JJ)Ljava/lang/Integer;
.end method

.method private native nativeGetDocumentMetaText(JLjava/lang/String;)Ljava/lang/String;
.end method

.method private native nativeGetFirstChildBookmark(JLjava/lang/Long;)Ljava/lang/Long;
.end method

.method private native nativeGetLinkRect(J)Landroid/graphics/RectF;
.end method

.method private native nativeGetLinkURI(JJ)Ljava/lang/String;
.end method

.method private native nativeGetPageCount(J)I
.end method

.method private native nativeGetPageHeightPixel(JI)I
.end method

.method private native nativeGetPageHeightPoint(J)I
.end method

.method private native nativeGetPageLinks(J)[J
.end method

.method private native nativeGetPageSizeByIndex(JII)Lcom/shockwave/pdfium/util/Size;
.end method

.method private native nativeGetPageWidthPixel(JI)I
.end method

.method private native nativeGetPageWidthPoint(J)I
.end method

.method private native nativeGetSiblingBookmark(JJ)Ljava/lang/Long;
.end method

.method private native nativeLoadPage(JI)J
.end method

.method private native nativeLoadPages(JII)[J
.end method

.method private native nativeOpenDocument(ILjava/lang/String;)J
.end method

.method private native nativeOpenMemDocument([BLjava/lang/String;)J
.end method

.method private native nativePageCoordsToDevice(JIIIIIDD)Landroid/graphics/Point;
.end method

.method private native nativeRenderPage(JLandroid/view/Surface;IIIIIZ)V
.end method

.method private native nativeRenderPageBitmap(JLandroid/graphics/Bitmap;IIIIIZ)V
.end method

.method private recursiveGetBookmark(Ljava/util/List;Lcom/shockwave/pdfium/PdfDocument;J)V
    .locals 5
    .param p2, "doc"    # Lcom/shockwave/pdfium/PdfDocument;
    .param p3, "bookmarkPtr"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shockwave/pdfium/PdfDocument$Bookmark;",
            ">;",
            "Lcom/shockwave/pdfium/PdfDocument;",
            "J)V"
        }
    .end annotation

    .line 375
    .local p1, "tree":Ljava/util/List;, "Ljava/util/List<Lcom/shockwave/pdfium/PdfDocument$Bookmark;>;"
    new-instance v0, Lcom/shockwave/pdfium/PdfDocument$Bookmark;

    invoke-direct {v0}, Lcom/shockwave/pdfium/PdfDocument$Bookmark;-><init>()V

    .line 376
    .local v0, "bookmark":Lcom/shockwave/pdfium/PdfDocument$Bookmark;
    iput-wide p3, v0, Lcom/shockwave/pdfium/PdfDocument$Bookmark;->mNativePtr:J

    .line 377
    invoke-direct {p0, p3, p4}, Lcom/shockwave/pdfium/PdfiumCore;->nativeGetBookmarkTitle(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/shockwave/pdfium/PdfDocument$Bookmark;->title:Ljava/lang/String;

    .line 378
    iget-wide v1, p2, Lcom/shockwave/pdfium/PdfDocument;->mNativeDocPtr:J

    invoke-direct {p0, v1, v2, p3, p4}, Lcom/shockwave/pdfium/PdfiumCore;->nativeGetBookmarkDestIndex(JJ)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/shockwave/pdfium/PdfDocument$Bookmark;->pageIdx:J

    .line 379
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 381
    iget-wide v1, p2, Lcom/shockwave/pdfium/PdfDocument;->mNativeDocPtr:J

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/shockwave/pdfium/PdfiumCore;->nativeGetFirstChildBookmark(JLjava/lang/Long;)Ljava/lang/Long;

    move-result-object v1

    .line 382
    .local v1, "child":Ljava/lang/Long;
    if-eqz v1, :cond_0

    .line 383
    invoke-virtual {v0}, Lcom/shockwave/pdfium/PdfDocument$Bookmark;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {p0, v2, p2, v3, v4}, Lcom/shockwave/pdfium/PdfiumCore;->recursiveGetBookmark(Ljava/util/List;Lcom/shockwave/pdfium/PdfDocument;J)V

    .line 386
    :cond_0
    iget-wide v2, p2, Lcom/shockwave/pdfium/PdfDocument;->mNativeDocPtr:J

    invoke-direct {p0, v2, v3, p3, p4}, Lcom/shockwave/pdfium/PdfiumCore;->nativeGetSiblingBookmark(JJ)Ljava/lang/Long;

    move-result-object v2

    .line 387
    .local v2, "sibling":Ljava/lang/Long;
    if-eqz v2, :cond_1

    .line 388
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {p0, p1, p2, v3, v4}, Lcom/shockwave/pdfium/PdfiumCore;->recursiveGetBookmark(Ljava/util/List;Lcom/shockwave/pdfium/PdfDocument;J)V

    .line 390
    :cond_1
    return-void
.end method


# virtual methods
.method public closeDocument(Lcom/shockwave/pdfium/PdfDocument;)V
    .locals 5
    .param p1, "doc"    # Lcom/shockwave/pdfium/PdfDocument;

    .line 326
    sget-object v0, Lcom/shockwave/pdfium/PdfiumCore;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 327
    :try_start_0
    iget-object v1, p1, Lcom/shockwave/pdfium/PdfDocument;->mNativePagesPtr:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 328
    .local v2, "index":Ljava/lang/Integer;
    iget-object v3, p1, Lcom/shockwave/pdfium/PdfDocument;->mNativePagesPtr:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lcom/shockwave/pdfium/PdfiumCore;->nativeClosePage(J)V

    .line 329
    .end local v2    # "index":Ljava/lang/Integer;
    goto :goto_0

    .line 330
    :cond_0
    iget-object v1, p1, Lcom/shockwave/pdfium/PdfDocument;->mNativePagesPtr:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 332
    iget-wide v1, p1, Lcom/shockwave/pdfium/PdfDocument;->mNativeDocPtr:J

    invoke-direct {p0, v1, v2}, Lcom/shockwave/pdfium/PdfiumCore;->nativeCloseDocument(J)V

    .line 334
    iget-object v1, p1, Lcom/shockwave/pdfium/PdfDocument;->parcelFileDescriptor:Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 336
    :try_start_1
    iget-object v1, p1, Lcom/shockwave/pdfium/PdfDocument;->parcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 339
    goto :goto_1

    .line 337
    :catch_0
    move-exception v1

    .line 340
    :goto_1
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p1, Lcom/shockwave/pdfium/PdfDocument;->parcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 342
    :cond_1
    monitor-exit v0

    .line 343
    return-void

    .line 342
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getDocumentMeta(Lcom/shockwave/pdfium/PdfDocument;)Lcom/shockwave/pdfium/PdfDocument$Meta;
    .locals 5
    .param p1, "doc"    # Lcom/shockwave/pdfium/PdfDocument;

    .line 347
    sget-object v0, Lcom/shockwave/pdfium/PdfiumCore;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 348
    :try_start_0
    new-instance v1, Lcom/shockwave/pdfium/PdfDocument$Meta;

    invoke-direct {v1}, Lcom/shockwave/pdfium/PdfDocument$Meta;-><init>()V

    .line 349
    .local v1, "meta":Lcom/shockwave/pdfium/PdfDocument$Meta;
    iget-wide v2, p1, Lcom/shockwave/pdfium/PdfDocument;->mNativeDocPtr:J

    const-string v4, "Title"

    invoke-direct {p0, v2, v3, v4}, Lcom/shockwave/pdfium/PdfiumCore;->nativeGetDocumentMetaText(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/shockwave/pdfium/PdfDocument$Meta;->title:Ljava/lang/String;

    .line 350
    iget-wide v2, p1, Lcom/shockwave/pdfium/PdfDocument;->mNativeDocPtr:J

    const-string v4, "Author"

    invoke-direct {p0, v2, v3, v4}, Lcom/shockwave/pdfium/PdfiumCore;->nativeGetDocumentMetaText(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/shockwave/pdfium/PdfDocument$Meta;->author:Ljava/lang/String;

    .line 351
    iget-wide v2, p1, Lcom/shockwave/pdfium/PdfDocument;->mNativeDocPtr:J

    const-string v4, "Subject"

    invoke-direct {p0, v2, v3, v4}, Lcom/shockwave/pdfium/PdfiumCore;->nativeGetDocumentMetaText(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/shockwave/pdfium/PdfDocument$Meta;->subject:Ljava/lang/String;

    .line 352
    iget-wide v2, p1, Lcom/shockwave/pdfium/PdfDocument;->mNativeDocPtr:J

    const-string v4, "Keywords"

    invoke-direct {p0, v2, v3, v4}, Lcom/shockwave/pdfium/PdfiumCore;->nativeGetDocumentMetaText(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/shockwave/pdfium/PdfDocument$Meta;->keywords:Ljava/lang/String;

    .line 353
    iget-wide v2, p1, Lcom/shockwave/pdfium/PdfDocument;->mNativeDocPtr:J

    const-string v4, "Creator"

    invoke-direct {p0, v2, v3, v4}, Lcom/shockwave/pdfium/PdfiumCore;->nativeGetDocumentMetaText(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/shockwave/pdfium/PdfDocument$Meta;->creator:Ljava/lang/String;

    .line 354
    iget-wide v2, p1, Lcom/shockwave/pdfium/PdfDocument;->mNativeDocPtr:J

    const-string v4, "Producer"

    invoke-direct {p0, v2, v3, v4}, Lcom/shockwave/pdfium/PdfiumCore;->nativeGetDocumentMetaText(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/shockwave/pdfium/PdfDocument$Meta;->producer:Ljava/lang/String;

    .line 355
    iget-wide v2, p1, Lcom/shockwave/pdfium/PdfDocument;->mNativeDocPtr:J

    const-string v4, "CreationDate"

    invoke-direct {p0, v2, v3, v4}, Lcom/shockwave/pdfium/PdfiumCore;->nativeGetDocumentMetaText(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/shockwave/pdfium/PdfDocument$Meta;->creationDate:Ljava/lang/String;

    .line 356
    iget-wide v2, p1, Lcom/shockwave/pdfium/PdfDocument;->mNativeDocPtr:J

    const-string v4, "ModDate"

    invoke-direct {p0, v2, v3, v4}, Lcom/shockwave/pdfium/PdfiumCore;->nativeGetDocumentMetaText(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/shockwave/pdfium/PdfDocument$Meta;->modDate:Ljava/lang/String;

    .line 358
    monitor-exit v0

    return-object v1

    .line 359
    .end local v1    # "meta":Lcom/shockwave/pdfium/PdfDocument$Meta;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPageCount(Lcom/shockwave/pdfium/PdfDocument;)I
    .locals 3
    .param p1, "doc"    # Lcom/shockwave/pdfium/PdfDocument;

    .line 157
    sget-object v0, Lcom/shockwave/pdfium/PdfiumCore;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 158
    :try_start_0
    iget-wide v1, p1, Lcom/shockwave/pdfium/PdfDocument;->mNativeDocPtr:J

    invoke-direct {p0, v1, v2}, Lcom/shockwave/pdfium/PdfiumCore;->nativeGetPageCount(J)I

    move-result v1

    monitor-exit v0

    return v1

    .line 159
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPageHeight(Lcom/shockwave/pdfium/PdfDocument;I)I
    .locals 5
    .param p1, "doc"    # Lcom/shockwave/pdfium/PdfDocument;
    .param p2, "index"    # I

    .line 208
    sget-object v0, Lcom/shockwave/pdfium/PdfiumCore;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 210
    :try_start_0
    iget-object v1, p1, Lcom/shockwave/pdfium/PdfDocument;->mNativePagesPtr:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    move-object v2, v1

    .local v2, "pagePtr":Ljava/lang/Long;
    if-eqz v1, :cond_0

    .line 211
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget v1, p0, Lcom/shockwave/pdfium/PdfiumCore;->mCurrentDpi:I

    invoke-direct {p0, v3, v4, v1}, Lcom/shockwave/pdfium/PdfiumCore;->nativeGetPageHeightPixel(JI)I

    move-result v1

    monitor-exit v0

    return v1

    .line 213
    :cond_0
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 214
    .end local v2    # "pagePtr":Ljava/lang/Long;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPageHeightPoint(Lcom/shockwave/pdfium/PdfDocument;I)I
    .locals 5
    .param p1, "doc"    # Lcom/shockwave/pdfium/PdfDocument;
    .param p2, "index"    # I

    .line 236
    sget-object v0, Lcom/shockwave/pdfium/PdfiumCore;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 238
    :try_start_0
    iget-object v1, p1, Lcom/shockwave/pdfium/PdfDocument;->mNativePagesPtr:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    move-object v2, v1

    .local v2, "pagePtr":Ljava/lang/Long;
    if-eqz v1, :cond_0

    .line 239
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lcom/shockwave/pdfium/PdfiumCore;->nativeGetPageHeightPoint(J)I

    move-result v1

    monitor-exit v0

    return v1

    .line 241
    :cond_0
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 242
    .end local v2    # "pagePtr":Ljava/lang/Long;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPageLinks(Lcom/shockwave/pdfium/PdfDocument;I)Ljava/util/List;
    .locals 12
    .param p1, "doc"    # Lcom/shockwave/pdfium/PdfDocument;
    .param p2, "pageIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shockwave/pdfium/PdfDocument;",
            "I)",
            "Ljava/util/List<",
            "Lcom/shockwave/pdfium/PdfDocument$Link;",
            ">;"
        }
    .end annotation

    .line 394
    sget-object v0, Lcom/shockwave/pdfium/PdfiumCore;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 395
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 396
    .local v1, "links":Ljava/util/List;, "Ljava/util/List<Lcom/shockwave/pdfium/PdfDocument$Link;>;"
    iget-object v2, p1, Lcom/shockwave/pdfium/PdfDocument;->mNativePagesPtr:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 397
    .local v2, "nativePagePtr":Ljava/lang/Long;
    if-nez v2, :cond_0

    .line 398
    monitor-exit v0

    return-object v1

    .line 400
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lcom/shockwave/pdfium/PdfiumCore;->nativeGetPageLinks(J)[J

    move-result-object v3

    .line 401
    .local v3, "linkPtrs":[J
    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_3

    aget-wide v6, v3, v5

    .line 402
    .local v6, "linkPtr":J
    iget-wide v8, p1, Lcom/shockwave/pdfium/PdfDocument;->mNativeDocPtr:J

    invoke-direct {p0, v8, v9, v6, v7}, Lcom/shockwave/pdfium/PdfiumCore;->nativeGetDestPageIndex(JJ)Ljava/lang/Integer;

    move-result-object v8

    .line 403
    .local v8, "index":Ljava/lang/Integer;
    iget-wide v9, p1, Lcom/shockwave/pdfium/PdfDocument;->mNativeDocPtr:J

    invoke-direct {p0, v9, v10, v6, v7}, Lcom/shockwave/pdfium/PdfiumCore;->nativeGetLinkURI(JJ)Ljava/lang/String;

    move-result-object v9

    .line 405
    .local v9, "uri":Ljava/lang/String;
    invoke-direct {p0, v6, v7}, Lcom/shockwave/pdfium/PdfiumCore;->nativeGetLinkRect(J)Landroid/graphics/RectF;

    move-result-object v10

    .line 406
    .local v10, "rect":Landroid/graphics/RectF;
    if-eqz v10, :cond_2

    if-nez v8, :cond_1

    if-eqz v9, :cond_2

    .line 407
    :cond_1
    new-instance v11, Lcom/shockwave/pdfium/PdfDocument$Link;

    invoke-direct {v11, v10, v8, v9}, Lcom/shockwave/pdfium/PdfDocument$Link;-><init>(Landroid/graphics/RectF;Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 401
    .end local v6    # "linkPtr":J
    .end local v8    # "index":Ljava/lang/Integer;
    .end local v9    # "uri":Ljava/lang/String;
    .end local v10    # "rect":Landroid/graphics/RectF;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 411
    :cond_3
    monitor-exit v0

    return-object v1

    .line 412
    .end local v1    # "links":Ljava/util/List;, "Ljava/util/List<Lcom/shockwave/pdfium/PdfDocument$Link;>;"
    .end local v2    # "nativePagePtr":Ljava/lang/Long;
    .end local v3    # "linkPtrs":[J
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPageSize(Lcom/shockwave/pdfium/PdfDocument;I)Lcom/shockwave/pdfium/util/Size;
    .locals 4
    .param p1, "doc"    # Lcom/shockwave/pdfium/PdfDocument;
    .param p2, "index"    # I

    .line 250
    sget-object v0, Lcom/shockwave/pdfium/PdfiumCore;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 251
    :try_start_0
    iget-wide v1, p1, Lcom/shockwave/pdfium/PdfDocument;->mNativeDocPtr:J

    iget v3, p0, Lcom/shockwave/pdfium/PdfiumCore;->mCurrentDpi:I

    invoke-direct {p0, v1, v2, p2, v3}, Lcom/shockwave/pdfium/PdfiumCore;->nativeGetPageSizeByIndex(JII)Lcom/shockwave/pdfium/util/Size;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 252
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPageWidth(Lcom/shockwave/pdfium/PdfDocument;I)I
    .locals 5
    .param p1, "doc"    # Lcom/shockwave/pdfium/PdfDocument;
    .param p2, "index"    # I

    .line 194
    sget-object v0, Lcom/shockwave/pdfium/PdfiumCore;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 196
    :try_start_0
    iget-object v1, p1, Lcom/shockwave/pdfium/PdfDocument;->mNativePagesPtr:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    move-object v2, v1

    .local v2, "pagePtr":Ljava/lang/Long;
    if-eqz v1, :cond_0

    .line 197
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget v1, p0, Lcom/shockwave/pdfium/PdfiumCore;->mCurrentDpi:I

    invoke-direct {p0, v3, v4, v1}, Lcom/shockwave/pdfium/PdfiumCore;->nativeGetPageWidthPixel(JI)I

    move-result v1

    monitor-exit v0

    return v1

    .line 199
    :cond_0
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 200
    .end local v2    # "pagePtr":Ljava/lang/Long;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPageWidthPoint(Lcom/shockwave/pdfium/PdfDocument;I)I
    .locals 5
    .param p1, "doc"    # Lcom/shockwave/pdfium/PdfDocument;
    .param p2, "index"    # I

    .line 222
    sget-object v0, Lcom/shockwave/pdfium/PdfiumCore;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 224
    :try_start_0
    iget-object v1, p1, Lcom/shockwave/pdfium/PdfDocument;->mNativePagesPtr:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    move-object v2, v1

    .local v2, "pagePtr":Ljava/lang/Long;
    if-eqz v1, :cond_0

    .line 225
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lcom/shockwave/pdfium/PdfiumCore;->nativeGetPageWidthPoint(J)I

    move-result v1

    monitor-exit v0

    return v1

    .line 227
    :cond_0
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 228
    .end local v2    # "pagePtr":Ljava/lang/Long;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getTableOfContents(Lcom/shockwave/pdfium/PdfDocument;)Ljava/util/List;
    .locals 5
    .param p1, "doc"    # Lcom/shockwave/pdfium/PdfDocument;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shockwave/pdfium/PdfDocument;",
            ")",
            "Ljava/util/List<",
            "Lcom/shockwave/pdfium/PdfDocument$Bookmark;",
            ">;"
        }
    .end annotation

    .line 364
    sget-object v0, Lcom/shockwave/pdfium/PdfiumCore;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 365
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 366
    .local v1, "topLevel":Ljava/util/List;, "Ljava/util/List<Lcom/shockwave/pdfium/PdfDocument$Bookmark;>;"
    iget-wide v2, p1, Lcom/shockwave/pdfium/PdfDocument;->mNativeDocPtr:J

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/shockwave/pdfium/PdfiumCore;->nativeGetFirstChildBookmark(JLjava/lang/Long;)Ljava/lang/Long;

    move-result-object v2

    .line 367
    .local v2, "first":Ljava/lang/Long;
    if-eqz v2, :cond_0

    .line 368
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {p0, v1, p1, v3, v4}, Lcom/shockwave/pdfium/PdfiumCore;->recursiveGetBookmark(Ljava/util/List;Lcom/shockwave/pdfium/PdfDocument;J)V

    .line 370
    :cond_0
    monitor-exit v0

    return-object v1

    .line 371
    .end local v1    # "topLevel":Ljava/util/List;, "Ljava/util/List<Lcom/shockwave/pdfium/PdfDocument$Bookmark;>;"
    .end local v2    # "first":Ljava/lang/Long;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public mapPageCoordsToDevice(Lcom/shockwave/pdfium/PdfDocument;IIIIIIDD)Landroid/graphics/Point;
    .locals 16
    .param p1, "doc"    # Lcom/shockwave/pdfium/PdfDocument;
    .param p2, "pageIndex"    # I
    .param p3, "startX"    # I
    .param p4, "startY"    # I
    .param p5, "sizeX"    # I
    .param p6, "sizeY"    # I
    .param p7, "rotate"    # I
    .param p8, "pageX"    # D
    .param p10, "pageY"    # D

    .line 432
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/shockwave/pdfium/PdfDocument;->mNativePagesPtr:Ljava/util/Map;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 433
    .local v14, "pagePtr":J
    move-object/from16 v2, p0

    move-wide v3, v14

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-wide/from16 v10, p8

    move-wide/from16 v12, p10

    invoke-direct/range {v2 .. v13}, Lcom/shockwave/pdfium/PdfiumCore;->nativePageCoordsToDevice(JIIIIIDD)Landroid/graphics/Point;

    move-result-object v1

    return-object v1
.end method

.method public mapRectToDevice(Lcom/shockwave/pdfium/PdfDocument;IIIIIILandroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 15
    .param p1, "doc"    # Lcom/shockwave/pdfium/PdfDocument;
    .param p2, "pageIndex"    # I
    .param p3, "startX"    # I
    .param p4, "startY"    # I
    .param p5, "sizeX"    # I
    .param p6, "sizeY"    # I
    .param p7, "rotate"    # I
    .param p8, "coords"    # Landroid/graphics/RectF;

    .line 443
    move-object/from16 v0, p8

    iget v1, v0, Landroid/graphics/RectF;->left:F

    float-to-double v10, v1

    iget v1, v0, Landroid/graphics/RectF;->top:F

    float-to-double v12, v1

    move-object v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-virtual/range {v2 .. v13}, Lcom/shockwave/pdfium/PdfiumCore;->mapPageCoordsToDevice(Lcom/shockwave/pdfium/PdfDocument;IIIIIIDD)Landroid/graphics/Point;

    move-result-object v1

    .line 445
    .local v1, "leftTop":Landroid/graphics/Point;
    iget v2, v0, Landroid/graphics/RectF;->right:F

    float-to-double v11, v2

    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    float-to-double v13, v2

    move-object v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-virtual/range {v3 .. v14}, Lcom/shockwave/pdfium/PdfiumCore;->mapPageCoordsToDevice(Lcom/shockwave/pdfium/PdfDocument;IIIIIIDD)Landroid/graphics/Point;

    move-result-object v2

    .line 447
    .local v2, "rightBottom":Landroid/graphics/Point;
    new-instance v3, Landroid/graphics/RectF;

    iget v4, v1, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget v5, v1, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    iget v6, v2, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    iget v7, v2, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v3
.end method

.method public newDocument(Landroid/os/ParcelFileDescriptor;)Lcom/shockwave/pdfium/PdfDocument;
    .locals 1
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/shockwave/pdfium/PdfiumCore;->newDocument(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Lcom/shockwave/pdfium/PdfDocument;

    move-result-object v0

    return-object v0
.end method

.method public newDocument(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Lcom/shockwave/pdfium/PdfDocument;
    .locals 4
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    new-instance v0, Lcom/shockwave/pdfium/PdfDocument;

    invoke-direct {v0}, Lcom/shockwave/pdfium/PdfDocument;-><init>()V

    .line 133
    .local v0, "document":Lcom/shockwave/pdfium/PdfDocument;
    iput-object p1, v0, Lcom/shockwave/pdfium/PdfDocument;->parcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 134
    sget-object v1, Lcom/shockwave/pdfium/PdfiumCore;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 135
    :try_start_0
    invoke-static {p1}, Lcom/shockwave/pdfium/PdfiumCore;->getNumFd(Landroid/os/ParcelFileDescriptor;)I

    move-result v2

    invoke-direct {p0, v2, p2}, Lcom/shockwave/pdfium/PdfiumCore;->nativeOpenDocument(ILjava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/shockwave/pdfium/PdfDocument;->mNativeDocPtr:J

    .line 136
    monitor-exit v1

    .line 138
    return-object v0

    .line 136
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public newDocument([B)Lcom/shockwave/pdfium/PdfDocument;
    .locals 1
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/shockwave/pdfium/PdfiumCore;->newDocument([BLjava/lang/String;)Lcom/shockwave/pdfium/PdfDocument;

    move-result-object v0

    return-object v0
.end method

.method public newDocument([BLjava/lang/String;)Lcom/shockwave/pdfium/PdfDocument;
    .locals 4
    .param p1, "data"    # [B
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    new-instance v0, Lcom/shockwave/pdfium/PdfDocument;

    invoke-direct {v0}, Lcom/shockwave/pdfium/PdfDocument;-><init>()V

    .line 149
    .local v0, "document":Lcom/shockwave/pdfium/PdfDocument;
    sget-object v1, Lcom/shockwave/pdfium/PdfiumCore;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 150
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/shockwave/pdfium/PdfiumCore;->nativeOpenMemDocument([BLjava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/shockwave/pdfium/PdfDocument;->mNativeDocPtr:J

    .line 151
    monitor-exit v1

    .line 152
    return-object v0

    .line 151
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public openPage(Lcom/shockwave/pdfium/PdfDocument;I)J
    .locals 6
    .param p1, "doc"    # Lcom/shockwave/pdfium/PdfDocument;
    .param p2, "pageIndex"    # I

    .line 165
    sget-object v0, Lcom/shockwave/pdfium/PdfiumCore;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 166
    :try_start_0
    iget-wide v1, p1, Lcom/shockwave/pdfium/PdfDocument;->mNativeDocPtr:J

    invoke-direct {p0, v1, v2, p2}, Lcom/shockwave/pdfium/PdfiumCore;->nativeLoadPage(JI)J

    move-result-wide v1

    .line 167
    .local v1, "pagePtr":J
    iget-object v3, p1, Lcom/shockwave/pdfium/PdfDocument;->mNativePagesPtr:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    monitor-exit v0

    return-wide v1

    .line 169
    .end local v1    # "pagePtr":J
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public openPage(Lcom/shockwave/pdfium/PdfDocument;II)[J
    .locals 10
    .param p1, "doc"    # Lcom/shockwave/pdfium/PdfDocument;
    .param p2, "fromIndex"    # I
    .param p3, "toIndex"    # I

    .line 176
    sget-object v0, Lcom/shockwave/pdfium/PdfiumCore;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 177
    :try_start_0
    iget-wide v1, p1, Lcom/shockwave/pdfium/PdfDocument;->mNativeDocPtr:J

    invoke-direct {p0, v1, v2, p2, p3}, Lcom/shockwave/pdfium/PdfiumCore;->nativeLoadPages(JII)[J

    move-result-object v1

    .line 178
    .local v1, "pagesPtr":[J
    move v2, p2

    .line 179
    .local v2, "pageIndex":I
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-wide v5, v1, v4

    .line 180
    .local v5, "page":J
    if-le v2, p3, :cond_0

    goto :goto_1

    .line 181
    :cond_0
    iget-object v7, p1, Lcom/shockwave/pdfium/PdfDocument;->mNativePagesPtr:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    nop

    .end local v5    # "page":J
    add-int/lit8 v2, v2, 0x1

    .line 179
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 185
    :cond_1
    :goto_1
    monitor-exit v0

    return-object v1

    .line 186
    .end local v1    # "pagesPtr":[J
    .end local v2    # "pageIndex":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public renderPage(Lcom/shockwave/pdfium/PdfDocument;Landroid/view/Surface;IIIII)V
    .locals 9
    .param p1, "doc"    # Lcom/shockwave/pdfium/PdfDocument;
    .param p2, "surface"    # Landroid/view/Surface;
    .param p3, "pageIndex"    # I
    .param p4, "startX"    # I
    .param p5, "startY"    # I
    .param p6, "drawSizeX"    # I
    .param p7, "drawSizeY"    # I

    .line 261
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/shockwave/pdfium/PdfiumCore;->renderPage(Lcom/shockwave/pdfium/PdfDocument;Landroid/view/Surface;IIIIIZ)V

    .line 262
    return-void
.end method

.method public renderPage(Lcom/shockwave/pdfium/PdfDocument;Landroid/view/Surface;IIIIIZ)V
    .locals 14
    .param p1, "doc"    # Lcom/shockwave/pdfium/PdfDocument;
    .param p2, "surface"    # Landroid/view/Surface;
    .param p3, "pageIndex"    # I
    .param p4, "startX"    # I
    .param p5, "startY"    # I
    .param p6, "drawSizeX"    # I
    .param p7, "drawSizeY"    # I
    .param p8, "renderAnnot"    # Z

    .line 271
    sget-object v1, Lcom/shockwave/pdfium/PdfiumCore;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 274
    move-object v2, p1

    :try_start_0
    iget-object v0, v2, Lcom/shockwave/pdfium/PdfDocument;->mNativePagesPtr:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v13, p0

    :try_start_1
    iget v7, v13, Lcom/shockwave/pdfium/PdfiumCore;->mCurrentDpi:I

    move-object v3, p0

    move-object/from16 v6, p2

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    invoke-direct/range {v3 .. v12}, Lcom/shockwave/pdfium/PdfiumCore;->nativeRenderPage(JLandroid/view/Surface;IIIIIZ)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    .line 279
    :catch_0
    move-exception v0

    goto :goto_0

    .line 276
    :catch_1
    move-exception v0

    goto :goto_1

    .line 283
    :catchall_0
    move-exception v0

    move-object v13, p0

    goto :goto_4

    .line 279
    :catch_2
    move-exception v0

    move-object v13, p0

    .line 280
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    :try_start_2
    sget-object v3, Lcom/shockwave/pdfium/PdfiumCore;->TAG:Ljava/lang/String;

    const-string v4, "Exception throw from native"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 276
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    move-object v13, p0

    .line 277
    .local v0, "e":Ljava/lang/NullPointerException;
    :goto_1
    sget-object v3, Lcom/shockwave/pdfium/PdfiumCore;->TAG:Ljava/lang/String;

    const-string v4, "mContext may be null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 282
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :goto_2
    nop

    .line 283
    :goto_3
    monitor-exit v1

    .line 284
    return-void

    .line 283
    :catchall_1
    move-exception v0

    :goto_4
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public renderPageBitmap(Lcom/shockwave/pdfium/PdfDocument;Landroid/graphics/Bitmap;IIIII)V
    .locals 9
    .param p1, "doc"    # Lcom/shockwave/pdfium/PdfDocument;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "pageIndex"    # I
    .param p4, "startX"    # I
    .param p5, "startY"    # I
    .param p6, "drawSizeX"    # I
    .param p7, "drawSizeY"    # I

    .line 298
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/shockwave/pdfium/PdfiumCore;->renderPageBitmap(Lcom/shockwave/pdfium/PdfDocument;Landroid/graphics/Bitmap;IIIIIZ)V

    .line 299
    return-void
.end method

.method public renderPageBitmap(Lcom/shockwave/pdfium/PdfDocument;Landroid/graphics/Bitmap;IIIIIZ)V
    .locals 14
    .param p1, "doc"    # Lcom/shockwave/pdfium/PdfDocument;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "pageIndex"    # I
    .param p4, "startX"    # I
    .param p5, "startY"    # I
    .param p6, "drawSizeX"    # I
    .param p7, "drawSizeY"    # I
    .param p8, "renderAnnot"    # Z

    .line 310
    sget-object v1, Lcom/shockwave/pdfium/PdfiumCore;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 312
    move-object v2, p1

    :try_start_0
    iget-object v0, v2, Lcom/shockwave/pdfium/PdfDocument;->mNativePagesPtr:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v13, p0

    :try_start_1
    iget v7, v13, Lcom/shockwave/pdfium/PdfiumCore;->mCurrentDpi:I

    move-object v3, p0

    move-object/from16 v6, p2

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    invoke-direct/range {v3 .. v12}, Lcom/shockwave/pdfium/PdfiumCore;->nativeRenderPageBitmap(JLandroid/graphics/Bitmap;IIIIIZ)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    .line 317
    :catch_0
    move-exception v0

    goto :goto_0

    .line 314
    :catch_1
    move-exception v0

    goto :goto_1

    .line 321
    :catchall_0
    move-exception v0

    move-object v13, p0

    goto :goto_4

    .line 317
    :catch_2
    move-exception v0

    move-object v13, p0

    .line 318
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    :try_start_2
    sget-object v3, Lcom/shockwave/pdfium/PdfiumCore;->TAG:Ljava/lang/String;

    const-string v4, "Exception throw from native"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 314
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    move-object v13, p0

    .line 315
    .local v0, "e":Ljava/lang/NullPointerException;
    :goto_1
    sget-object v3, Lcom/shockwave/pdfium/PdfiumCore;->TAG:Ljava/lang/String;

    const-string v4, "mContext may be null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 320
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :goto_2
    nop

    .line 321
    :goto_3
    monitor-exit v1

    .line 322
    return-void

    .line 321
    :catchall_1
    move-exception v0

    :goto_4
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method
