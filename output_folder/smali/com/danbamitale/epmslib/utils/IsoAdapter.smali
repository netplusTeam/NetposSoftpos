.class public final Lcom/danbamitale/epmslib/utils/IsoAdapter;
.super Ljava/lang/Object;
.source "IsoAdapter.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008J\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0006J\u000e\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0006J\u000e\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\rJ\u0016\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0004J\u0018\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0004H\u0002\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/danbamitale/epmslib/utils/IsoAdapter;",
        "",
        "()V",
        "getResponseDataFromIndex",
        "",
        "isoMsg",
        "Lcom/solab/iso8583/IsoMessage;",
        "index",
        "",
        "logIsoMessage",
        "",
        "msg",
        "prepareByteStream",
        "",
        "isoMessage",
        "isoBytes",
        "processISOBitStreamWithJ8583",
        "context",
        "Landroid/content/Context;",
        "data",
        "unpackWith8583",
        "epmslib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/danbamitale/epmslib/utils/IsoAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/danbamitale/epmslib/utils/IsoAdapter;

    invoke-direct {v0}, Lcom/danbamitale/epmslib/utils/IsoAdapter;-><init>()V

    sput-object v0, Lcom/danbamitale/epmslib/utils/IsoAdapter;->INSTANCE:Lcom/danbamitale/epmslib/utils/IsoAdapter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final unpackWith8583(Landroid/content/Context;Ljava/lang/String;)Lcom/solab/iso8583/IsoMessage;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Ljava/lang/String;

    .line 23
    const-string v0, "Invalid response received"

    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    const-string v2, "forName(\"UTF-8\")"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    const-string/jumbo v2, "this as java.lang.String).getBytes(charset)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .local v1, "dataByteArray":[B
    new-instance v2, Lcom/solab/iso8583/MessageFactory;

    invoke-direct {v2}, Lcom/solab/iso8583/MessageFactory;-><init>()V

    .line 25
    .local v2, "msgFactory":Lcom/solab/iso8583/MessageFactory;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/solab/iso8583/MessageFactory;->setIgnoreLastMissingField(Z)V

    .line 27
    nop

    .line 31
    nop

    .line 32
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/danbamitale/epmslib/R$raw;->config:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    const-string v4, "context.resources.openRawResource(R.raw.config)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    check-cast v5, Ljava/io/Reader;

    const/16 v3, 0x2000

    instance-of v4, v5, Ljava/io/BufferedReader;

    if-eqz v4, :cond_0

    check-cast v5, Ljava/io/BufferedReader;

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v5, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v5, v4

    :goto_0
    move-object v3, v5

    .line 33
    .local v3, "xmlReader":Ljava/io/BufferedReader;
    move-object v4, v3

    check-cast v4, Ljava/io/Closeable;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x0

    :try_start_1
    move-object v6, v4

    check-cast v6, Ljava/io/BufferedReader;

    .local v6, "it":Ljava/io/BufferedReader;
    const/4 v7, 0x0

    .line 34
    .local v7, "$i$a$-use-IsoAdapter$unpackWith8583$1":I
    move-object v8, v6

    check-cast v8, Ljava/io/Reader;

    invoke-static {v2, v8}, Lcom/solab/iso8583/parse/ConfigParser;->configureFromReader(Lcom/solab/iso8583/MessageFactory;Ljava/io/Reader;)V

    .line 35
    const/4 v8, 0x0

    invoke-virtual {v2, v1, v8}, Lcom/solab/iso8583/MessageFactory;->parseMessage([BI)Lcom/solab/iso8583/IsoMessage;

    move-result-object v8

    .line 36
    .local v8, "isoMessage":Lcom/solab/iso8583/IsoMessage;
    sget-object v9, Lcom/danbamitale/epmslib/utils/IsoAdapter;->INSTANCE:Lcom/danbamitale/epmslib/utils/IsoAdapter;

    const-string v10, "isoMessage"

    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Lcom/danbamitale/epmslib/utils/IsoAdapter;->logIsoMessage(Lcom/solab/iso8583/IsoMessage;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    nop

    .end local v6    # "it":Ljava/io/BufferedReader;
    .end local v7    # "$i$a$-use-IsoAdapter$unpackWith8583$1":I
    .end local v8    # "isoMessage":Lcom/solab/iso8583/IsoMessage;
    :try_start_2
    invoke-static {v4, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v8

    :catchall_0
    move-exception v5

    .end local v1    # "dataByteArray":[B
    .end local v2    # "msgFactory":Lcom/solab/iso8583/MessageFactory;
    .end local v3    # "xmlReader":Ljava/io/BufferedReader;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "data":Ljava/lang/String;
    :try_start_3
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .restart local v1    # "dataByteArray":[B
    .restart local v2    # "msgFactory":Lcom/solab/iso8583/MessageFactory;
    .restart local v3    # "xmlReader":Ljava/io/BufferedReader;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "data":Ljava/lang/String;
    :catchall_1
    move-exception v6

    :try_start_4
    invoke-static {v4, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .end local v1    # "dataByteArray":[B
    .end local v2    # "msgFactory":Lcom/solab/iso8583/MessageFactory;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "data":Ljava/lang/String;
    throw v6
    :try_end_4
    .catch Ljava/text/ParseException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 45
    .end local v3    # "xmlReader":Ljava/io/BufferedReader;
    .restart local v1    # "dataByteArray":[B
    .restart local v2    # "msgFactory":Lcom/solab/iso8583/MessageFactory;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "data":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 47
    new-instance v3, Ljava/lang/RuntimeException;

    move-object v4, v0

    check-cast v4, Ljava/lang/Throwable;

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 42
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 43
    .local v3, "e":Ljava/lang/StringIndexOutOfBoundsException;
    invoke-virtual {v3}, Ljava/lang/StringIndexOutOfBoundsException;->printStackTrace()V

    .line 44
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 39
    .end local v3    # "e":Ljava/lang/StringIndexOutOfBoundsException;
    :catch_2
    move-exception v3

    .line 40
    .local v3, "e":Ljava/text/ParseException;
    invoke-virtual {v3}, Ljava/text/ParseException;->printStackTrace()V

    .line 41
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method


# virtual methods
.method public final getResponseDataFromIndex(Lcom/solab/iso8583/IsoMessage;I)Ljava/lang/String;
    .locals 2
    .param p1, "isoMsg"    # Lcom/solab/iso8583/IsoMessage;
    .param p2, "index"    # I

    const-string v0, "isoMsg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    invoke-virtual {p1, p2}, Lcom/solab/iso8583/IsoMessage;->getField(I)Lcom/solab/iso8583/IsoValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/solab/iso8583/IsoValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "isoMsg.getField<String>(index).value"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final logIsoMessage(Lcom/solab/iso8583/IsoMessage;)V
    .locals 1
    .param p1, "msg"    # Lcom/solab/iso8583/IsoMessage;

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    nop

    .line 89
    return-void
.end method

.method public final prepareByteStream(Lcom/solab/iso8583/IsoMessage;)[B
    .locals 2
    .param p1, "isoMessage"    # Lcom/solab/iso8583/IsoMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const-string v0, "isoMessage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p1}, Lcom/solab/iso8583/IsoMessage;->writeData()[B

    move-result-object v0

    .line 55
    .local v0, "isoStream":[B
    const-string v1, "isoStream"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/danbamitale/epmslib/utils/IsoAdapter;->prepareByteStream([B)[B

    move-result-object v1

    return-object v1
.end method

.method public final prepareByteStream([B)[B
    .locals 6
    .param p1, "isoBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "isoBytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 61
    .local v0, "len":I
    const/4 v1, 0x2

    new-array v1, v1, [B

    shr-int/lit8 v2, v0, 0x8

    int-to-byte v2, v2

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    rem-int/lit16 v2, v0, 0x100

    int-to-byte v2, v2

    const/4 v3, 0x1

    aput-byte v2, v1, v3

    move-object v2, v1

    .local v2, "it":[B
    const/4 v3, 0x0

    .line 62
    .local v3, "$i$a$-also-IsoAdapter$prepareByteStream$headerBytes$1":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Header bytes: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Lcom/danbamitale/epmslib/utils/TripleDES;->Hex2String([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v5, v4}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 63
    nop

    .line 61
    .end local v2    # "it":[B
    .end local v3    # "$i$a$-also-IsoAdapter$prepareByteStream$headerBytes$1":I
    nop

    .line 65
    .local v1, "headerBytes":[B
    invoke-static {v1, p1}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object v2

    .line 66
    .local v2, "request":[B
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    sget-object v5, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v2, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n Hex: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Lcom/danbamitale/epmslib/utils/TripleDES;->Hex2String([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 67
    return-object v2
.end method

.method public final processISOBitStreamWithJ8583(Landroid/content/Context;Ljava/lang/String;)Lcom/solab/iso8583/IsoMessage;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Ljava/lang/String;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    move-object v1, p2

    check-cast v1, Ljava/lang/CharSequence;

    const-string v2, "0"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "this as java.lang.String).substring(startIndex)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .local v0, "outputData":Ljava/lang/String;
    invoke-direct {p0, p1, v0}, Lcom/danbamitale/epmslib/utils/IsoAdapter;->unpackWith8583(Landroid/content/Context;Ljava/lang/String;)Lcom/solab/iso8583/IsoMessage;

    move-result-object v1

    return-object v1
.end method
