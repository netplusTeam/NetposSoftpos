.class public final Lcom/itextpdf/styledxmlparser/jsoup/helper/DataUtil;
.super Ljava/lang/Object;
.source "DataUtil.java"


# static fields
.field private static final UNICODE_BOM:I = 0xfeff

.field static final boundaryLength:I = 0x20

.field private static final bufferSize:I = 0x20000

.field private static final charsetPattern:Ljava/util/regex/Pattern;

.field static final defaultCharset:Ljava/lang/String; = "UTF-8"

.field private static final mimeBoundaryChars:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 69
    const-string v0, "(?i)\\bcharset=\\s*(?:\"|\')?([^\\s,;\"\']*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/helper/DataUtil;->charsetPattern:Ljava/util/regex/Pattern;

    .line 73
    nop

    .line 74
    const-string v0, "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/helper/DataUtil;->mimeBoundaryChars:[C

    .line 73
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static crossStreams(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 4
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    const/high16 v0, 0x20000

    new-array v0, v0, [B

    .line 128
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    move v2, v1

    .local v2, "len":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 129
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 131
    :cond_0
    return-void
.end method

.method private static detectCharsetFromBom(Ljava/nio/ByteBuffer;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "byteData"    # Ljava/nio/ByteBuffer;
    .param p1, "charsetName"    # Ljava/lang/String;

    .line 279
    invoke-virtual {p0}, Ljava/nio/Buffer;->mark()Ljava/nio/Buffer;

    .line 280
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 281
    .local v0, "bom":[B
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    array-length v2, v0

    if-lt v1, v2, :cond_0

    .line 282
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 283
    invoke-virtual {p0}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    .line 285
    :cond_0
    const/4 v1, 0x0

    aget-byte v2, v0, v1

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, -0x2

    const/4 v6, -0x1

    const/4 v7, 0x1

    if-nez v2, :cond_1

    aget-byte v2, v0, v7

    if-nez v2, :cond_1

    aget-byte v2, v0, v4

    if-ne v2, v5, :cond_1

    aget-byte v2, v0, v3

    if-eq v2, v6, :cond_2

    :cond_1
    aget-byte v2, v0, v1

    if-ne v2, v6, :cond_3

    aget-byte v2, v0, v7

    if-ne v2, v5, :cond_3

    aget-byte v2, v0, v4

    if-nez v2, :cond_3

    aget-byte v2, v0, v3

    if-nez v2, :cond_3

    .line 287
    :cond_2
    const-string p1, "UTF-32"

    goto :goto_0

    .line 288
    :cond_3
    aget-byte v2, v0, v1

    if-ne v2, v5, :cond_4

    aget-byte v2, v0, v7

    if-eq v2, v6, :cond_5

    :cond_4
    aget-byte v2, v0, v1

    if-ne v2, v6, :cond_6

    aget-byte v2, v0, v7

    if-ne v2, v5, :cond_6

    .line 290
    :cond_5
    const-string p1, "UTF-16"

    goto :goto_0

    .line 291
    :cond_6
    aget-byte v1, v0, v1

    const/16 v2, -0x11

    if-ne v1, v2, :cond_7

    aget-byte v1, v0, v7

    const/16 v2, -0x45

    if-ne v1, v2, :cond_7

    aget-byte v1, v0, v4

    const/16 v2, -0x41

    if-ne v1, v2, :cond_7

    .line 292
    const-string p1, "UTF-8"

    .line 293
    invoke-virtual {p0, v3}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 295
    :cond_7
    :goto_0
    return-object p1
.end method

.method static emptyByteBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 232
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method static getCharsetFromContentType(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "contentType"    # Ljava/lang/String;

    .line 242
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 243
    :cond_0
    sget-object v1, Lcom/itextpdf/styledxmlparser/jsoup/helper/DataUtil;->charsetPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 244
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 245
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 246
    .local v0, "charset":Ljava/lang/String;
    const-string v2, "charset="

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 247
    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/jsoup/helper/DataUtil;->validateCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 249
    .end local v0    # "charset":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method public static load(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;
    .locals 2
    .param p0, "in"    # Ljava/io/File;
    .param p1, "charsetName"    # Ljava/lang/String;
    .param p2, "baseUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/jsoup/helper/DataUtil;->readFileToByteBuffer(Ljava/io/File;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 89
    .local v0, "byteData":Ljava/nio/ByteBuffer;
    invoke-static {}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;->htmlParser()Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;

    move-result-object v1

    invoke-static {v0, p1, p2, v1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/DataUtil;->parseByteData(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    move-result-object v1

    return-object v1
.end method

.method public static load(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;
    .locals 2
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "charsetName"    # Ljava/lang/String;
    .param p2, "baseUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/jsoup/helper/DataUtil;->readToByteBuffer(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 102
    .local v0, "byteData":Ljava/nio/ByteBuffer;
    invoke-static {}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;->htmlParser()Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;

    move-result-object v1

    invoke-static {v0, p1, p2, v1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/DataUtil;->parseByteData(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    move-result-object v1

    return-object v1
.end method

.method public static load(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;
    .locals 2
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "charsetName"    # Ljava/lang/String;
    .param p2, "baseUri"    # Ljava/lang/String;
    .param p3, "parser"    # Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/jsoup/helper/DataUtil;->readToByteBuffer(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 116
    .local v0, "byteData":Ljava/nio/ByteBuffer;
    invoke-static {v0, p1, p2, p3}, Lcom/itextpdf/styledxmlparser/jsoup/helper/DataUtil;->parseByteData(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    move-result-object v1

    return-object v1
.end method

.method static mimeBoundary()Ljava/lang/String;
    .locals 6

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 271
    .local v0, "mime":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 272
    .local v2, "rand":Ljava/util/Random;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 273
    sget-object v4, Lcom/itextpdf/styledxmlparser/jsoup/helper/DataUtil;->mimeBoundaryChars:[C

    array-length v5, v4

    invoke-virtual {v2, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    aget-char v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 272
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 275
    .end local v3    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static parseByteData(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;
    .locals 8
    .param p0, "byteData"    # Ljava/nio/ByteBuffer;
    .param p1, "charsetName"    # Ljava/lang/String;
    .param p2, "baseUri"    # Ljava/lang/String;
    .param p3, "parser"    # Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;

    .line 138
    const/4 v0, 0x0

    .line 141
    .local v0, "doc":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;
    invoke-static {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/DataUtil;->detectCharsetFromBom(Ljava/nio/ByteBuffer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 143
    if-nez p1, :cond_4

    .line 145
    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 146
    .local v2, "docData":Ljava/lang/String;
    invoke-virtual {p3, v2, p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;->parseInput(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    move-result-object v0

    .line 147
    const-string v3, "meta[http-equiv=content-type], meta[charset]"

    invoke-virtual {v0, v3}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->select(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->first()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v3

    .line 148
    .local v3, "meta":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    const/4 v4, 0x0

    .line 149
    .local v4, "foundCharset":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 150
    const-string v5, "http-equiv"

    invoke-virtual {v3, v5}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->hasAttr(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 151
    const-string v5, "content"

    invoke-virtual {v3, v5}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/itextpdf/styledxmlparser/jsoup/helper/DataUtil;->getCharsetFromContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 153
    :cond_0
    if-nez v4, :cond_1

    const-string v5, "charset"

    invoke-virtual {v3, v5}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->hasAttr(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 154
    invoke-virtual {v3, v5}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 158
    :cond_1
    if-nez v4, :cond_2

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->childNode(I)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object v6

    instance-of v6, v6, Lcom/itextpdf/styledxmlparser/jsoup/nodes/XmlDeclaration;

    if-eqz v6, :cond_2

    .line 159
    invoke-virtual {v0, v5}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->childNode(I)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/styledxmlparser/jsoup/nodes/XmlDeclaration;

    .line 160
    .local v5, "prolog":Lcom/itextpdf/styledxmlparser/jsoup/nodes/XmlDeclaration;
    invoke-virtual {v5}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/XmlDeclaration;->name()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "xml"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 161
    const-string v6, "encoding"

    invoke-virtual {v5, v6}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/XmlDeclaration;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 164
    .end local v5    # "prolog":Lcom/itextpdf/styledxmlparser/jsoup/nodes/XmlDeclaration;
    :cond_2
    invoke-static {v4}, Lcom/itextpdf/styledxmlparser/jsoup/helper/DataUtil;->validateCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 166
    if-eqz v4, :cond_3

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 167
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v5, "[\"\']"

    const-string v6, ""

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 168
    .end local v4    # "foundCharset":Ljava/lang/String;
    .local v1, "foundCharset":Ljava/lang/String;
    move-object p1, v1

    .line 169
    invoke-virtual {p0}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    .line 170
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 171
    const/4 v0, 0x0

    .line 173
    .end local v1    # "foundCharset":Ljava/lang/String;
    .end local v3    # "meta":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    :cond_3
    goto :goto_0

    .line 174
    .end local v2    # "docData":Ljava/lang/String;
    :cond_4
    const-string v1, "Must set charset arg to character set of file to parse. Set to null to attempt to detect from HTML"

    invoke-static {p1, v1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 177
    .restart local v2    # "docData":Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_5

    .line 178
    invoke-virtual {p3, v2, p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;->parseInput(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    move-result-object v0

    .line 179
    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->outputSettings()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;->charset(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;

    .line 181
    :cond_5
    return-object v0
.end method

.method static readFileToByteBuffer(Ljava/io/File;)Ljava/nio/ByteBuffer;
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 219
    const/4 v0, 0x0

    .line 221
    .local v0, "randomAccessFile":Ljava/io/RandomAccessFile;
    :try_start_0
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/jsoup/PortUtil;->getReadOnlyRandomAccesFile(Ljava/io/File;)Ljava/io/RandomAccessFile;

    move-result-object v1

    move-object v0, v1

    .line 222
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    long-to-int v1, v1

    new-array v1, v1, [B

    .line 223
    .local v1, "bytes":[B
    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 224
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 224
    :cond_0
    return-object v2

    .line 226
    .end local v1    # "bytes":[B
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 227
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 228
    :cond_1
    throw v1
.end method

.method static readToByteBuffer(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;
    .locals 1
    .param p0, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 215
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/helper/DataUtil;->readToByteBuffer(Ljava/io/InputStream;I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method static readToByteBuffer(Ljava/io/InputStream;I)Ljava/nio/ByteBuffer;
    .locals 7
    .param p0, "inStream"    # Ljava/io/InputStream;
    .param p1, "maxSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 192
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "maxSize must be 0 (unlimited) or larger"

    invoke-static {v2, v3}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->isTrue(ZLjava/lang/String;)V

    .line 193
    if-lez p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 194
    .local v0, "capped":Z
    :goto_1
    const/high16 v2, 0x20000

    new-array v3, v2, [B

    .line 195
    .local v3, "buffer":[B
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    move-object v2, v4

    .line 197
    .local v2, "outStream":Ljava/io/ByteArrayOutputStream;
    move v4, p1

    .line 200
    .local v4, "remaining":I
    :goto_2
    invoke-virtual {p0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .line 201
    .local v5, "read":I
    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    goto :goto_3

    .line 202
    :cond_2
    if-eqz v0, :cond_4

    .line 203
    if-le v5, v4, :cond_3

    .line 204
    invoke-virtual {v2, v3, v1, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 205
    nop

    .line 211
    :goto_3
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    return-object v1

    .line 207
    :cond_3
    sub-int/2addr v4, v5

    .line 209
    :cond_4
    invoke-virtual {v2, v3, v1, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_2
.end method

.method private static validateCharset(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "cs"    # Ljava/lang/String;

    .line 253
    const/4 v0, 0x0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 254
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[\"\']"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 255
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/jsoup/PortUtil;->charsetIsSupported(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p0

    .line 256
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 257
    .local v1, "upperCase":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 258
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 257
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 260
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 261
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/jsoup/PortUtil;->charsetIsSupported(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    return-object p0

    .line 263
    :cond_3
    return-object v0

    .line 253
    .end local v1    # "upperCase":Ljava/lang/StringBuilder;
    :cond_4
    :goto_1
    return-object v0
.end method
