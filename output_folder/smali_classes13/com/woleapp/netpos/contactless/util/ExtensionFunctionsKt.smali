.class public final Lcom/woleapp/netpos/contactless/util/ExtensionFunctionsKt;
.super Ljava/lang/Object;
.source "ExtensionFunctions.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExtensionFunctions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExtensionFunctions.kt\ncom/woleapp/netpos/contactless/util/ExtensionFunctionsKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,215:1\n1#2:216\n13579#3,2:217\n*S KotlinDebug\n*F\n+ 1 ExtensionFunctions.kt\ncom/woleapp/netpos/contactless/util/ExtensionFunctionsKt\n*L\n179#1:217,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000c\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u001a\u001e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005\u001a \u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000b\u001a\u0010\u0010\r\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000fH\u0002\u001a\u000e\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u0002\u001a\u00020\u0003\u001a\u000e\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u0002\u001a\u00020\u0003\u001a\u0010\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u000bH\u0002\u001a\u0018\u0010\u0014\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0015\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u0005\u001a\u000c\u0010\u0017\u001a\u0004\u0018\u00010\u0008*\u00020\u0005\u001a\n\u0010\u0018\u001a\u00020\u0001*\u00020\u0019\u001a\u0012\u0010\u001a\u001a\u00020\u0001*\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001d\u001a\u000c\u0010\u001e\u001a\u0004\u0018\u00010\u0005*\u00020\u001f\u001a\n\u0010 \u001a\u00020\u0005*\u00020!\u001a\'\u0010\"\u001a\u00020\u0001*\u00020#2\u0016\u0010$\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00050%\"\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010&\u001a\n\u0010\'\u001a\u00020(*\u00020!\u001a\u0012\u0010)\u001a\u00020(*\u00020!2\u0006\u0010*\u001a\u00020\u000b\u001a\n\u0010+\u001a\u00020(*\u00020\u0005\u00a8\u0006,"
    }
    d2 = {
        "copyTextToClipboard",
        "",
        "context",
        "Landroid/content/Context;",
        "label",
        "",
        "text",
        "encodeAsBitmap",
        "Landroid/graphics/Bitmap;",
        "source",
        "width",
        "",
        "height",
        "fromHex",
        "c",
        "",
        "getPlansJson",
        "getServiceProviderPlansJson",
        "toHex",
        "nybble",
        "xorHex",
        "a",
        "b",
        "decodeBase64ToBitmap",
        "dismissIfShowing",
        "Landroidx/appcompat/app/AlertDialog;",
        "disposeWith",
        "Lio/reactivex/disposables/Disposable;",
        "compositeDisposable",
        "Lio/reactivex/disposables/CompositeDisposable;",
        "formatDate",
        "",
        "getResponseBody",
        "",
        "highlightTexts",
        "Landroid/widget/TextView;",
        "words",
        "",
        "(Landroid/widget/TextView;[Ljava/lang/String;)V",
        "isHttpException",
        "",
        "isHttpStatusCode",
        "statusCode",
        "isValidIpAddress",
        "app_fcmbeasypayDebug"
    }
    k = 0x2
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final copyTextToClipboard(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "label"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "text"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    const-string v0, "clipboard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 67
    nop

    .line 69
    .local v0, "clipboard":Landroid/content/ClipboardManager;
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    move-object v2, p2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v1, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    .line 70
    .local v1, "clip":Landroid/content/ClipData;
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 71
    return-void
.end method

.method public static final decodeBase64ToBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "$this$decodeBase64ToBitmap"    # Ljava/lang/String;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    const-string v2, "decode(this, Base64.DEFAULT)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    .local v1, "decodedString":[B
    array-length v2, v1

    invoke-static {v1, v0, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static final dismissIfShowing(Landroidx/appcompat/app/AlertDialog;)V
    .locals 1
    .param p0, "$this$dismissIfShowing"    # Landroidx/appcompat/app/AlertDialog;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    .line 175
    :cond_0
    return-void
.end method

.method public static final disposeWith(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;)V
    .locals 1
    .param p0, "$this$disposeWith"    # Lio/reactivex/disposables/Disposable;
    .param p1, "compositeDisposable"    # Lio/reactivex/disposables/CompositeDisposable;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "compositeDisposable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p1, p0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 37
    return-void
.end method

.method public static final encodeAsBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 13
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "width"    # I
    .param p2, "height"    # I

    const-string v0, "source"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    nop

    .line 145
    :try_start_0
    new-instance v1, Lcom/google/zxing/MultiFormatWriter;

    invoke-direct {v1}, Lcom/google/zxing/MultiFormatWriter;-><init>()V

    sget-object v3, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    const/4 v6, 0x0

    move-object v2, p0

    move v4, p1

    move v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/google/zxing/MultiFormatWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    .line 144
    const-string v1, "{\n        MultiFormatWri\u2026idth, height, null)\n    }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    .local v0, "result":Lcom/google/zxing/common/BitMatrix;
    invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v9

    .line 151
    .local v9, "w":I
    invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v10

    .line 152
    .local v10, "h":I
    mul-int v1, v9, v10

    new-array v11, v1, [I

    .line 154
    .local v11, "pixels":[I
    const/4 v1, 0x0

    .local v1, "y":I
    :goto_0
    if-ge v1, v10, :cond_2

    .line 155
    mul-int v2, v1, v9

    .line 156
    .local v2, "offset":I
    const/4 v3, 0x0

    .local v3, "x":I
    :goto_1
    if-ge v3, v9, :cond_1

    .line 157
    add-int v4, v2, v3

    invoke-virtual {v0, v3, v1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_0

    const/high16 v5, -0x1000000

    goto :goto_2

    :cond_0
    const/4 v5, -0x1

    :goto_2
    aput v5, v11, v4

    .line 156
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 154
    .end local v2    # "offset":I
    .end local v3    # "x":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 160
    .end local v1    # "y":I
    :cond_2
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v10, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    const-string v2, "createBitmap(w, h, Bitmap.Config.ARGB_8888)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v12, v1

    .line 161
    .local v12, "bitmap":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v11

    move v4, p1

    move v7, v9

    move v8, v10

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 163
    return-object v12

    .line 146
    .end local v0    # "result":Lcom/google/zxing/common/BitMatrix;
    .end local v9    # "w":I
    .end local v10    # "h":I
    .end local v11    # "pixels":[I
    .end local v12    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method public static final formatDate(J)Ljava/lang/String;
    .locals 3
    .param p0, "$this$formatDate"    # J

    .line 33
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "yyyy-MM-dd hh:mm a"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final fromHex(C)I
    .locals 3
    .param p0, "c"    # C

    .line 49
    const/16 v0, 0x30

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gt v0, p0, :cond_0

    const/16 v0, 0x3a

    if-ge p0, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 50
    add-int/lit8 v0, p0, -0x30

    return v0

    .line 52
    :cond_1
    const/16 v0, 0x41

    if-gt v0, p0, :cond_2

    const/16 v0, 0x47

    if-ge p0, v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    if-eqz v0, :cond_3

    .line 53
    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    return v0

    .line 55
    :cond_3
    const/16 v0, 0x61

    if-gt v0, p0, :cond_4

    const/16 v0, 0x67

    if-ge p0, v0, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    if-eqz v1, :cond_5

    .line 56
    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    return v0

    .line 58
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static final getPlansJson(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    const-string v1, "context.resources.openRawResource(R.raw.plans)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    check-cast v2, Ljava/io/Reader;

    instance-of v0, v2, Ljava/io/BufferedReader;

    if-eqz v0, :cond_0

    check-cast v2, Ljava/io/BufferedReader;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/BufferedReader;

    const/16 v1, 0x2000

    invoke-direct {v0, v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v2, v0

    :goto_0
    check-cast v2, Ljava/io/Closeable;

    const/4 v0, 0x0

    :try_start_0
    move-object v1, v2

    check-cast v1, Ljava/io/BufferedReader;

    .line 216
    .local v1, "it":Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 137
    .local v3, "$i$a$-use-ExtensionFunctionsKt$getPlansJson$1":I
    move-object v4, v1

    check-cast v4, Ljava/io/Reader;

    invoke-static {v4}, Lkotlin/io/TextStreamsKt;->readText(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "it":Ljava/io/BufferedReader;
    .end local v3    # "$i$a$-use-ExtensionFunctionsKt$getPlansJson$1":I
    invoke-static {v2, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v4

    :catchall_0
    move-exception v0

    .end local p0    # "context":Landroid/content/Context;
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .restart local p0    # "context":Landroid/content/Context;
    :catchall_1
    move-exception v1

    invoke-static {v2, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static final getResponseBody(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 6
    .param p0, "$this$getResponseBody"    # Ljava/lang/Throwable;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    invoke-static {p0}, Lcom/woleapp/netpos/contactless/util/ExtensionFunctionsKt;->isHttpException(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 114
    move-object v0, p0

    check-cast v0, Lretrofit2/HttpException;

    invoke-virtual {v0}, Lretrofit2/HttpException;->response()Lretrofit2/Response;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object v0

    .line 113
    nop

    .line 115
    .local v0, "body":Lokhttp3/ResponseBody;
    nop

    .line 116
    const-string v1, "}, Please try again\"}"

    const-string v2, "{\"message\": \"An unexpected error occurred {"

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 124
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 120
    :catch_0
    move-exception v3

    goto :goto_1

    .line 116
    :cond_0
    const/4 v3, 0x0

    .line 117
    .local v3, "sBody":Ljava/lang/String;
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "body "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    if-nez v3, :cond_1

    .line 119
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, p0

    check-cast v5, Lretrofit2/HttpException;

    invoke-virtual {v5}, Lretrofit2/HttpException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v1

    .line 124
    .end local v3    # "sBody":Ljava/lang/String;
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V

    .line 125
    :cond_2
    goto :goto_2

    .line 122
    .local v3, "e1":Ljava/lang/Exception;
    :goto_1
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v4, p0

    check-cast v4, Lretrofit2/HttpException;

    invoke-virtual {v4}, Lretrofit2/HttpException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    .end local v3    # "e1":Ljava/lang/Exception;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V

    .line 125
    :cond_3
    move-object v3, v1

    .line 124
    :goto_2
    nop

    .end local v0    # "body":Lokhttp3/ResponseBody;
    goto :goto_4

    .restart local v0    # "body":Lokhttp3/ResponseBody;
    :goto_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V

    :cond_4
    throw v1

    .line 127
    .end local v0    # "body":Lokhttp3/ResponseBody;
    :cond_5
    const-string v3, "{\"message\": \"An unexpected error occurred, Please try again\"}"

    .line 112
    :goto_4
    return-object v3
.end method

.method public static final getServiceProviderPlansJson(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    const-string v1, "context.resources.openRa\u2026esource(R.raw.data_plans)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    check-cast v2, Ljava/io/Reader;

    instance-of v0, v2, Ljava/io/BufferedReader;

    if-eqz v0, :cond_0

    check-cast v2, Ljava/io/BufferedReader;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/BufferedReader;

    const/16 v1, 0x2000

    invoke-direct {v0, v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v2, v0

    :goto_0
    check-cast v2, Ljava/io/Closeable;

    const/4 v0, 0x0

    :try_start_0
    move-object v1, v2

    check-cast v1, Ljava/io/BufferedReader;

    .line 216
    .local v1, "it":Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 141
    .local v3, "$i$a$-use-ExtensionFunctionsKt$getServiceProviderPlansJson$1":I
    move-object v4, v1

    check-cast v4, Ljava/io/Reader;

    invoke-static {v4}, Lkotlin/io/TextStreamsKt;->readText(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "it":Ljava/io/BufferedReader;
    .end local v3    # "$i$a$-use-ExtensionFunctionsKt$getServiceProviderPlansJson$1":I
    invoke-static {v2, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v4

    :catchall_0
    move-exception v0

    .end local p0    # "context":Landroid/content/Context;
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .restart local p0    # "context":Landroid/content/Context;
    :catchall_1
    move-exception v1

    invoke-static {v2, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static final varargs highlightTexts(Landroid/widget/TextView;[Ljava/lang/String;)V
    .locals 21
    .param p0, "$this$highlightTexts"    # Landroid/widget/TextView;
    .param p1, "words"    # [Ljava/lang/String;

    move-object/from16 v0, p0

    const-string v1, "<this>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "words"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    new-instance v1, Landroid/text/SpannableString;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-direct {v1, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    check-cast v1, Landroid/text/Spannable;

    .line 179
    .local v1, "spannable":Landroid/text/Spannable;
    move-object/from16 v3, p1

    .local v3, "$this$forEach$iv":[Ljava/lang/Object;
    const/4 v4, 0x0

    .line 217
    .local v4, "$i$f$forEach":I
    array-length v5, v3

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_2

    aget-object v8, v3, v7

    .local v8, "element$iv":Ljava/lang/Object;
    move-object v9, v8

    .local v9, "word":Ljava/lang/String;
    const/4 v10, 0x0

    .line 180
    .local v10, "$i$a$-forEach-ExtensionFunctionsKt$highlightTexts$1":I
    if-eqz v9, :cond_1

    move-object/from16 v17, v9

    .local v17, "it":Ljava/lang/String;
    const/16 v18, 0x0

    .line 181
    .local v18, "$i$a$-let-ExtensionFunctionsKt$highlightTexts$1$1":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    check-cast v11, Ljava/lang/CharSequence;

    move-object/from16 v12, v17

    check-cast v12, Ljava/lang/CharSequence;

    const/4 v13, 0x2

    const/4 v14, 0x0

    invoke-static {v11, v12, v6, v13, v14}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 182
    nop

    .line 183
    new-instance v15, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f060035

    invoke-static {v11, v12}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v11

    invoke-direct {v15, v11}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 184
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    check-cast v11, Ljava/lang/CharSequence;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x6

    const/16 v19, 0x0

    move-object/from16 v12, v17

    move-object v6, v15

    move/from16 v15, v16

    move-object/from16 v16, v19

    invoke-static/range {v11 .. v16}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v15

    .line 185
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    check-cast v11, Ljava/lang/CharSequence;

    const/16 v16, 0x6

    move/from16 v20, v15

    move/from16 v15, v16

    move-object/from16 v16, v19

    invoke-static/range {v11 .. v16}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v11

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v11, v12

    .line 186
    const/16 v12, 0x21

    .line 182
    move/from16 v13, v20

    invoke-interface {v1, v6, v13, v11, v12}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 189
    :cond_0
    nop

    .line 180
    .end local v17    # "it":Ljava/lang/String;
    .end local v18    # "$i$a$-let-ExtensionFunctionsKt$highlightTexts$1$1":I
    nop

    .line 190
    :cond_1
    nop

    .end local v8    # "element$iv":Ljava/lang/Object;
    .end local v9    # "word":Ljava/lang/String;
    .end local v10    # "$i$a$-forEach-ExtensionFunctionsKt$highlightTexts$1":I
    add-int/lit8 v7, v7, 0x1

    const/4 v6, 0x0

    goto :goto_0

    .line 218
    :cond_2
    nop

    .line 191
    .end local v3    # "$this$forEach$iv":[Ljava/lang/Object;
    .end local v4    # "$i$f$forEach":I
    move-object v3, v1

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    return-void
.end method

.method public static final isHttpException(Ljava/lang/Throwable;)Z
    .locals 4
    .param p0, "$this$isHttpException"    # Ljava/lang/Throwable;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    instance-of v0, p0, Lretrofit2/HttpException;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lretrofit2/HttpException;

    invoke-virtual {v0}, Lretrofit2/HttpException;->code()I

    move-result v0

    const/16 v3, 0x190

    if-gt v3, v0, :cond_0

    const/16 v3, 0x258

    if-ge v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1
.end method

.method public static final isHttpStatusCode(Ljava/lang/Throwable;I)Z
    .locals 1
    .param p0, "$this$isHttpStatusCode"    # Ljava/lang/Throwable;
    .param p1, "statusCode"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    instance-of v0, p0, Lretrofit2/HttpException;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lretrofit2/HttpException;

    invoke-virtual {v0}, Lretrofit2/HttpException;->code()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isValidIpAddress(Ljava/lang/String;)Z
    .locals 2
    .param p0, "$this$isValidIpAddress"    # Ljava/lang/String;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    sget-object v0, Lkotlin/text/Regex;->Companion:Lkotlin/text/Regex$Companion;

    const-string v1, "^((0|1\\d?\\d?|2[0-4]?\\d?|25[0-5]?|[3-9]\\d?)\\.){3}(0|1\\d?\\d?|2[0-4]?\\d?|25[0-5]?|[3-9]\\d?)$"

    invoke-virtual {v0, v1}, Lkotlin/text/Regex$Companion;->fromLiteral(Ljava/lang/String;)Lkotlin/text/Regex;

    move-result-object v0

    .line 74
    nop

    .line 76
    .local v0, "PATTERN":Lkotlin/text/Regex;
    move-object v1, p0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method private static final toHex(I)C
    .locals 2
    .param p0, "nybble"    # I

    .line 62
    if-ltz p0, :cond_0

    const/16 v0, 0xf

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 63
    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0, p0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0

    .line 62
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed requirement."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final xorHex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;

    const-string v0, "a"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [C

    .line 42
    .local v0, "chars":[C
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 43
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/woleapp/netpos/contactless/util/ExtensionFunctionsKt;->fromHex(C)I

    move-result v3

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/woleapp/netpos/contactless/util/ExtensionFunctionsKt;->fromHex(C)I

    move-result v4

    xor-int/2addr v3, v4

    invoke-static {v3}, Lcom/woleapp/netpos/contactless/util/ExtensionFunctionsKt;->toHex(I)C

    move-result v3

    aput-char v3, v0, v1

    .line 42
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 45
    .end local v1    # "i":I
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method
