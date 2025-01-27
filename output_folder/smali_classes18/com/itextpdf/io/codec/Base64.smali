.class public Lcom/itextpdf/io/codec/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/io/codec/Base64$OutputStream;,
        Lcom/itextpdf/io/codec/Base64$InputStream;
    }
.end annotation


# static fields
.field public static final DECODE:I = 0x0

.field public static final DONT_BREAK_LINES:I = 0x8

.field public static final ENCODE:I = 0x1

.field private static final EQUALS_SIGN:B = 0x3dt

.field private static final EQUALS_SIGN_ENC:B = -0x1t

.field public static final GZIP:I = 0x2

.field private static final MAX_LINE_LENGTH:I = 0x4c

.field private static final NEW_LINE:B = 0xat

.field public static final NO_OPTIONS:I = 0x0

.field public static final ORDERED:I = 0x20

.field private static final PREFERRED_ENCODING:Ljava/lang/String; = "UTF-8"

.field public static final URL_SAFE:I = 0x10

.field private static final WHITE_SPACE_ENC:B = -0x5t

.field private static final _ORDERED_ALPHABET:[B

.field private static final _ORDERED_DECODABET:[B

.field private static final _STANDARD_ALPHABET:[B

.field private static final _STANDARD_DECODABET:[B

.field private static final _URL_SAFE_ALPHABET:[B

.field private static final _URL_SAFE_DECODABET:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 158
    const/16 v0, 0x40

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lcom/itextpdf/io/codec/Base64;->_STANDARD_ALPHABET:[B

    .line 177
    const/16 v1, 0x7f

    new-array v2, v1, [B

    fill-array-data v2, :array_1

    sput-object v2, Lcom/itextpdf/io/codec/Base64;->_STANDARD_DECODABET:[B

    .line 220
    new-array v2, v0, [B

    fill-array-data v2, :array_2

    sput-object v2, Lcom/itextpdf/io/codec/Base64;->_URL_SAFE_ALPHABET:[B

    .line 237
    new-array v2, v1, [B

    fill-array-data v2, :array_3

    sput-object v2, Lcom/itextpdf/io/codec/Base64;->_URL_SAFE_DECODABET:[B

    .line 284
    new-array v0, v0, [B

    fill-array-data v0, :array_4

    sput-object v0, Lcom/itextpdf/io/codec/Base64;->_ORDERED_ALPHABET:[B

    .line 303
    new-array v0, v1, [B

    fill-array-data v0, :array_5

    sput-object v0, Lcom/itextpdf/io/codec/Base64;->_ORDERED_DECODABET:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    :array_1
    .array-data 1
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x5t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x3et
        -0x9t
        -0x9t
        -0x9t
        0x3ft
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        -0x9t
        -0x9t
        -0x9t
        -0x1t
        -0x9t
        -0x9t
        -0x9t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
    .end array-data

    :array_2
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2dt
        0x5ft
    .end array-data

    :array_3
    .array-data 1
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x5t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x3et
        -0x9t
        -0x9t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        -0x9t
        -0x9t
        -0x9t
        -0x1t
        -0x9t
        -0x9t
        -0x9t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x3ft
        -0x9t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
    .end array-data

    :array_4
    .array-data 1
        0x2dt
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x5ft
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
    .end array-data

    :array_5
    .array-data 1
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x5t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x0t
        -0x9t
        -0x9t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        -0x9t
        -0x9t
        -0x9t
        -0x1t
        -0x9t
        -0x9t
        -0x9t
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x25t
        -0x9t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        0x3et
        0x3ft
        -0x9t
        -0x9t
        -0x9t
        -0x9t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 380
    return-void
.end method

.method static synthetic access$000(I)[B
    .locals 1
    .param p0, "x0"    # I

    .line 67
    invoke-static {p0}, Lcom/itextpdf/io/codec/Base64;->getAlphabet(I)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(I)[B
    .locals 1
    .param p0, "x0"    # I

    .line 67
    invoke-static {p0}, Lcom/itextpdf/io/codec/Base64;->getDecodabet(I)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200([BII[BII)[B
    .locals 1
    .param p0, "x0"    # [B
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # [B
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .line 67
    invoke-static/range {p0 .. p5}, Lcom/itextpdf/io/codec/Base64;->encode3to4([BII[BII)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300([BI[BII)I
    .locals 1
    .param p0, "x0"    # [B
    .param p1, "x1"    # I
    .param p2, "x2"    # [B
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .line 67
    invoke-static {p0, p1, p2, p3, p4}, Lcom/itextpdf/io/codec/Base64;->decode4to3([BI[BII)I

    move-result v0

    return v0
.end method

.method static synthetic access$400([B[BII)[B
    .locals 1
    .param p0, "x0"    # [B
    .param p1, "x1"    # [B
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 67
    invoke-static {p0, p1, p2, p3}, Lcom/itextpdf/io/codec/Base64;->encode3to4([B[BII)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 938
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/itextpdf/io/codec/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode(Ljava/lang/String;I)[B
    .locals 9
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "options"    # I

    .line 954
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 958
    .local v0, "bytes":[B
    goto :goto_0

    .line 956
    .end local v0    # "bytes":[B
    :catch_0
    move-exception v0

    .line 957
    .local v0, "uee":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    move-object v0, v1

    .line 962
    .local v0, "bytes":[B
    :goto_0
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, p1}, Lcom/itextpdf/io/codec/Base64;->decode([BIII)[B

    move-result-object v0

    .line 967
    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v3, 0x4

    if-lt v1, v3, :cond_1

    .line 969
    aget-byte v1, v0, v2

    and-int/lit16 v1, v1, 0xff

    const/4 v3, 0x1

    aget-byte v3, v0, v3

    shl-int/lit8 v3, v3, 0x8

    const v4, 0xff00

    and-int/2addr v3, v4

    or-int/2addr v1, v3

    .line 970
    .local v1, "head":I
    const v3, 0x8b1f

    if-ne v3, v1, :cond_1

    .line 971
    const/4 v3, 0x0

    .line 972
    .local v3, "bais":Ljava/io/ByteArrayInputStream;
    const/4 v4, 0x0

    .line 973
    .local v4, "gzis":Ljava/util/zip/GZIPInputStream;
    const/4 v5, 0x0

    .line 974
    .local v5, "baos":Ljava/io/ByteArrayOutputStream;
    const/16 v6, 0x800

    new-array v6, v6, [B

    .line 975
    .local v6, "buffer":[B
    const/4 v7, 0x0

    .line 978
    .local v7, "length":I
    :try_start_1
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v5, v8

    .line 979
    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-direct {v8, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v3, v8

    .line 980
    new-instance v8, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v8, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v4, v8

    .line 982
    :goto_1
    invoke-virtual {v4, v6}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v8

    move v7, v8

    if-ltz v8, :cond_0

    .line 983
    invoke-virtual {v5, v6, v2, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 987
    :cond_0
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v2

    .line 995
    :try_start_2
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 997
    goto :goto_2

    .line 996
    :catch_1
    move-exception v2

    .line 999
    :goto_2
    :try_start_3
    invoke-virtual {v4}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 1001
    goto :goto_3

    .line 1000
    :catch_2
    move-exception v2

    .line 1003
    :goto_3
    :try_start_4
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 1005
    :goto_4
    goto :goto_a

    .line 1004
    :catch_3
    move-exception v2

    .line 1006
    goto :goto_a

    .line 994
    :catchall_0
    move-exception v2

    .line 995
    :try_start_5
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 997
    goto :goto_5

    .line 996
    :catch_4
    move-exception v8

    .line 999
    :goto_5
    :try_start_6
    invoke-virtual {v4}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 1001
    goto :goto_6

    .line 1000
    :catch_5
    move-exception v8

    .line 1003
    :goto_6
    :try_start_7
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 1005
    goto :goto_7

    .line 1004
    :catch_6
    move-exception v8

    .line 1006
    :goto_7
    throw v2

    .line 990
    :catch_7
    move-exception v2

    .line 995
    :try_start_8
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    .line 997
    goto :goto_8

    .line 996
    :catch_8
    move-exception v2

    .line 999
    :goto_8
    :try_start_9
    invoke-virtual {v4}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    .line 1001
    goto :goto_9

    .line 1000
    :catch_9
    move-exception v2

    .line 1003
    :goto_9
    :try_start_a
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_4

    .line 1011
    .end local v1    # "head":I
    .end local v3    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v4    # "gzis":Ljava/util/zip/GZIPInputStream;
    .end local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "buffer":[B
    .end local v7    # "length":I
    :cond_1
    :goto_a
    return-object v0
.end method

.method public static decode([BIII)[B
    .locals 12
    .param p0, "source"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I
    .param p3, "options"    # I

    .line 886
    invoke-static {p3}, Lcom/itextpdf/io/codec/Base64;->getDecodabet(I)[B

    move-result-object v0

    .line 888
    .local v0, "DECODABET":[B
    mul-int/lit8 v1, p2, 0x3

    const/4 v2, 0x4

    div-int/2addr v1, v2

    .line 889
    .local v1, "len34":I
    new-array v3, v1, [B

    .line 890
    .local v3, "outBuff":[B
    const/4 v4, 0x0

    .line 892
    .local v4, "outBuffPosn":I
    new-array v2, v2, [B

    .line 893
    .local v2, "b4":[B
    const/4 v5, 0x0

    .line 894
    .local v5, "b4Posn":I
    const/4 v6, 0x0

    .line 895
    .local v6, "i":I
    const/4 v7, 0x0

    .line 896
    .local v7, "sbiCrop":B
    const/4 v8, 0x0

    .line 897
    .local v8, "sbiDecode":B
    move v6, p1

    :goto_0
    add-int v9, p1, p2

    const/4 v10, 0x0

    if-ge v6, v9, :cond_3

    .line 898
    aget-byte v9, p0, v6

    and-int/lit8 v9, v9, 0x7f

    int-to-byte v7, v9

    .line 899
    aget-byte v8, v0, v7

    .line 901
    const/4 v9, -0x5

    if-lt v8, v9, :cond_2

    .line 903
    const/4 v9, -0x1

    if-lt v8, v9, :cond_1

    .line 904
    add-int/lit8 v9, v5, 0x1

    .end local v5    # "b4Posn":I
    .local v9, "b4Posn":I
    aput-byte v7, v2, v5

    .line 905
    const/4 v5, 0x3

    if-le v9, v5, :cond_0

    .line 906
    invoke-static {v2, v10, v3, v4, p3}, Lcom/itextpdf/io/codec/Base64;->decode4to3([BI[BII)I

    move-result v5

    add-int/2addr v4, v5

    .line 907
    const/4 v5, 0x0

    .line 910
    .end local v9    # "b4Posn":I
    .restart local v5    # "b4Posn":I
    const/16 v9, 0x3d

    if-ne v7, v9, :cond_1

    .line 911
    goto :goto_1

    .line 905
    .end local v5    # "b4Posn":I
    .restart local v9    # "b4Posn":I
    :cond_0
    move v5, v9

    .line 897
    .end local v9    # "b4Posn":I
    .restart local v5    # "b4Posn":I
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 918
    :cond_2
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Bad Base64 input character at "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-byte v11, p0, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "(decimal)"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 919
    const/4 v9, 0x0

    return-object v9

    .line 923
    :cond_3
    :goto_1
    new-array v9, v4, [B

    .line 924
    .local v9, "out":[B
    invoke-static {v3, v10, v9, v10, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 925
    return-object v9
.end method

.method private static decode4to3([BI[BII)I
    .locals 7
    .param p0, "source"    # [B
    .param p1, "srcOffset"    # I
    .param p2, "destination"    # [B
    .param p3, "destOffset"    # I
    .param p4, "options"    # I

    .line 814
    invoke-static {p4}, Lcom/itextpdf/io/codec/Base64;->getDecodabet(I)[B

    move-result-object v0

    .line 817
    .local v0, "DECODABET":[B
    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    const/16 v2, 0x3d

    if-ne v1, v2, :cond_0

    .line 821
    aget-byte v1, p0, p1

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x12

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0xc

    or-int/2addr v1, v2

    .line 824
    .local v1, "outBuff":I
    ushr-int/lit8 v2, v1, 0x10

    int-to-byte v2, v2

    aput-byte v2, p2, p3

    .line 825
    const/4 v2, 0x1

    return v2

    .line 829
    .end local v1    # "outBuff":I
    :cond_0
    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    if-ne v1, v2, :cond_1

    .line 834
    aget-byte v1, p0, p1

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x12

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0xc

    or-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x6

    or-int/2addr v1, v2

    .line 838
    .restart local v1    # "outBuff":I
    ushr-int/lit8 v2, v1, 0x10

    int-to-byte v2, v2

    aput-byte v2, p2, p3

    .line 839
    add-int/lit8 v2, p3, 0x1

    ushr-int/lit8 v3, v1, 0x8

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    .line 840
    const/4 v2, 0x2

    return v2

    .line 851
    .end local v1    # "outBuff":I
    :cond_1
    :try_start_0
    aget-byte v1, p0, p1

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x12

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0xc

    or-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x6

    or-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x3

    aget-byte v2, p0, v2

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    .line 857
    .restart local v1    # "outBuff":I
    shr-int/lit8 v2, v1, 0x10

    int-to-byte v2, v2

    aput-byte v2, p2, p3

    .line 858
    add-int/lit8 v2, p3, 0x1

    shr-int/lit8 v3, v1, 0x8

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    .line 859
    add-int/lit8 v2, p3, 0x2

    int-to-byte v3, v1

    aput-byte v3, p2, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 861
    const/4 v2, 0x3

    return v2

    .line 862
    .end local v1    # "outBuff":I
    :catch_0
    move-exception v1

    .line 863
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-byte v5, p0, p1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ": "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-byte v6, p0, p1

    aget-byte v6, v0, v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 864
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v6, p1, 0x1

    aget-byte v6, p0, v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v6, p1, 0x1

    aget-byte v6, p0, v6

    aget-byte v6, v0, v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 865
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v6, p1, 0x2

    aget-byte v6, p0, v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v6, p1, 0x2

    aget-byte v6, p0, v6

    aget-byte v6, v0, v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 866
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, p1, 0x3

    aget-byte v4, p0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, p1, 0x3

    aget-byte v4, p0, v4

    aget-byte v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 867
    const/4 v2, -0x1

    return v2
.end method

.method public static decodeFileToFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "infile"    # Ljava/lang/String;
    .param p1, "outfile"    # Ljava/lang/String;

    .line 1255
    invoke-static {p0}, Lcom/itextpdf/io/codec/Base64;->decodeFromFile(Ljava/lang/String;)[B

    move-result-object v0

    .line 1256
    .local v0, "decoded":[B
    const/4 v1, 0x0

    .line 1258
    .local v1, "out":Ljava/io/OutputStream;
    :try_start_0
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v1, v2

    .line 1260
    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1267
    :try_start_1
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1269
    :goto_0
    goto :goto_1

    .line 1268
    :catch_0
    move-exception v2

    .line 1270
    goto :goto_1

    .line 1266
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 1262
    :catch_1
    move-exception v2

    .line 1263
    .local v2, "ex":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1267
    .end local v2    # "ex":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 1271
    :goto_1
    return-void

    .line 1267
    :goto_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 1269
    goto :goto_3

    .line 1268
    :catch_2
    move-exception v3

    .line 1270
    :goto_3
    throw v2
.end method

.method public static decodeFromFile(Ljava/lang/String;)[B
    .locals 10
    .param p0, "filename"    # Ljava/lang/String;

    .line 1130
    const/4 v0, 0x0

    .line 1131
    .local v0, "decodedData":[B
    const/4 v1, 0x0

    .line 1134
    .local v1, "bis":Lcom/itextpdf/io/codec/Base64$InputStream;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1135
    .local v2, "file":Ljava/io/File;
    const/4 v3, 0x0

    .line 1136
    .local v3, "buffer":[B
    const/4 v4, 0x0

    .line 1137
    .local v4, "length":I
    const/4 v5, 0x0

    .line 1140
    .local v5, "numBytes":I
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/32 v8, 0x7fffffff

    cmp-long v6, v6, v8

    if-lez v6, :cond_1

    .line 1141
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "File is too big for this convenience method ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " bytes)."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1142
    const/4 v6, 0x0

    .line 1164
    if-eqz v1, :cond_0

    .line 1166
    :try_start_1
    invoke-virtual {v1}, Lcom/itextpdf/io/codec/Base64$InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1168
    goto :goto_0

    .line 1167
    :catch_0
    move-exception v7

    .line 1142
    :cond_0
    :goto_0
    return-object v6

    .line 1144
    :cond_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v6, v6

    new-array v6, v6, [B

    move-object v3, v6

    .line 1147
    new-instance v6, Lcom/itextpdf/io/codec/Base64$InputStream;

    new-instance v7, Ljava/io/BufferedInputStream;

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lcom/itextpdf/io/codec/Base64$InputStream;-><init>(Ljava/io/InputStream;I)V

    move-object v1, v6

    .line 1152
    :goto_1
    const/16 v6, 0x1000

    invoke-virtual {v1, v3, v4, v6}, Lcom/itextpdf/io/codec/Base64$InputStream;->read([BII)I

    move-result v6

    move v5, v6

    if-ltz v6, :cond_2

    .line 1153
    add-int/2addr v4, v5

    goto :goto_1

    .line 1156
    :cond_2
    new-array v6, v4, [B

    move-object v0, v6

    .line 1157
    invoke-static {v3, v8, v0, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1164
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "buffer":[B
    .end local v4    # "length":I
    .end local v5    # "numBytes":I
    nop

    .line 1166
    :try_start_3
    invoke-virtual {v1}, Lcom/itextpdf/io/codec/Base64$InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 1168
    :goto_2
    goto :goto_3

    .line 1167
    :catch_1
    move-exception v2

    goto :goto_2

    .line 1164
    :catchall_0
    move-exception v2

    goto :goto_4

    .line 1160
    :catch_2
    move-exception v2

    .line 1161
    .local v2, "e":Ljava/io/IOException;
    :try_start_4
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error decoding from file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1164
    .end local v2    # "e":Ljava/io/IOException;
    if-eqz v1, :cond_3

    .line 1166
    :try_start_5
    invoke-virtual {v1}, Lcom/itextpdf/io/codec/Base64$InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 1172
    :cond_3
    :goto_3
    return-object v0

    .line 1164
    :goto_4
    if-eqz v1, :cond_4

    .line 1166
    :try_start_6
    invoke-virtual {v1}, Lcom/itextpdf/io/codec/Base64$InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 1168
    goto :goto_5

    .line 1167
    :catch_3
    move-exception v3

    .line 1170
    :cond_4
    :goto_5
    throw v2
.end method

.method public static decodeToFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "dataToDecode"    # Ljava/lang/String;
    .param p1, "filename"    # Ljava/lang/String;

    .line 1099
    const/4 v0, 0x0

    .line 1100
    .local v0, "success":Z
    const/4 v1, 0x0

    .line 1102
    .local v1, "bos":Lcom/itextpdf/io/codec/Base64$OutputStream;
    :try_start_0
    new-instance v2, Lcom/itextpdf/io/codec/Base64$OutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/itextpdf/io/codec/Base64$OutputStream;-><init>(Ljava/io/OutputStream;I)V

    move-object v1, v2

    .line 1104
    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/io/codec/Base64$OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1105
    const/4 v0, 0x1

    .line 1112
    :try_start_1
    invoke-virtual {v1}, Lcom/itextpdf/io/codec/Base64$OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1114
    :goto_0
    goto :goto_2

    .line 1113
    :catch_0
    move-exception v2

    .line 1115
    goto :goto_2

    .line 1111
    :catchall_0
    move-exception v2

    .line 1112
    :try_start_2
    invoke-virtual {v1}, Lcom/itextpdf/io/codec/Base64$OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1114
    goto :goto_1

    .line 1113
    :catch_1
    move-exception v3

    .line 1115
    :goto_1
    throw v2

    .line 1107
    :catch_2
    move-exception v2

    .line 1108
    .local v2, "e":Ljava/io/IOException;
    const/4 v0, 0x0

    .line 1112
    .end local v2    # "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v1}, Lcom/itextpdf/io/codec/Base64$OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 1117
    :goto_2
    return v0
.end method

.method public static decodeToObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .param p0, "encodedObject"    # Ljava/lang/String;

    .line 1025
    invoke-static {p0}, Lcom/itextpdf/io/codec/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 1027
    .local v0, "objBytes":[B
    const/4 v1, 0x0

    .line 1028
    .local v1, "bais":Ljava/io/ByteArrayInputStream;
    const/4 v2, 0x0

    .line 1029
    .local v2, "ois":Ljava/io/ObjectInputStream;
    const/4 v3, 0x0

    .line 1032
    .local v3, "obj":Ljava/lang/Object;
    :try_start_0
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v1, v4

    .line 1033
    new-instance v4, Ljava/io/ObjectInputStream;

    invoke-direct {v4, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v2, v4

    .line 1035
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v4

    .line 1045
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1047
    goto :goto_0

    .line 1046
    :catch_0
    move-exception v4

    .line 1049
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1051
    :goto_1
    goto :goto_4

    .line 1050
    :catch_1
    move-exception v4

    .line 1052
    goto :goto_4

    .line 1044
    :catchall_0
    move-exception v4

    goto :goto_5

    .line 1040
    :catch_2
    move-exception v4

    .line 1041
    .local v4, "e":Ljava/lang/ClassNotFoundException;
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/ClassNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1045
    .end local v4    # "e":Ljava/lang/ClassNotFoundException;
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 1047
    goto :goto_2

    .line 1046
    :catch_3
    move-exception v4

    .line 1049
    :goto_2
    :try_start_5
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 1037
    :catch_4
    move-exception v4

    .line 1038
    .local v4, "e":Ljava/io/IOException;
    :try_start_6
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1045
    .end local v4    # "e":Ljava/io/IOException;
    :try_start_7
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 1047
    goto :goto_3

    .line 1046
    :catch_5
    move-exception v4

    .line 1049
    :goto_3
    :try_start_8
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_1

    .line 1054
    :goto_4
    return-object v3

    .line 1045
    :goto_5
    :try_start_9
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 1047
    goto :goto_6

    .line 1046
    :catch_6
    move-exception v5

    .line 1049
    :goto_6
    :try_start_a
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    .line 1051
    goto :goto_7

    .line 1050
    :catch_7
    move-exception v5

    .line 1052
    :goto_7
    throw v4
.end method

.method private static encode3to4([BII[BII)[B
    .locals 5
    .param p0, "source"    # [B
    .param p1, "srcOffset"    # I
    .param p2, "numSigBytes"    # I
    .param p3, "destination"    # [B
    .param p4, "destOffset"    # I
    .param p5, "options"    # I

    .line 470
    invoke-static {p5}, Lcom/itextpdf/io/codec/Base64;->getAlphabet(I)[B

    move-result-object v0

    .line 483
    .local v0, "ALPHABET":[B
    const/4 v1, 0x0

    if-lez p2, :cond_0

    aget-byte v2, p0, p1

    shl-int/lit8 v2, v2, 0x18

    ushr-int/lit8 v2, v2, 0x8

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-le p2, v3, :cond_1

    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    shl-int/lit8 v3, v3, 0x18

    ushr-int/lit8 v3, v3, 0x10

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    or-int/2addr v2, v3

    const/4 v3, 0x2

    if-le p2, v3, :cond_2

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0x18

    :cond_2
    or-int/2addr v1, v2

    .line 487
    .local v1, "inBuff":I
    const/16 v2, 0x3d

    packed-switch p2, :pswitch_data_0

    .line 510
    return-object p3

    .line 489
    :pswitch_0
    ushr-int/lit8 v2, v1, 0x12

    aget-byte v2, v0, v2

    aput-byte v2, p3, p4

    .line 490
    add-int/lit8 v2, p4, 0x1

    ushr-int/lit8 v3, v1, 0xc

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v0, v3

    aput-byte v3, p3, v2

    .line 491
    add-int/lit8 v2, p4, 0x2

    ushr-int/lit8 v3, v1, 0x6

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v0, v3

    aput-byte v3, p3, v2

    .line 492
    add-int/lit8 v2, p4, 0x3

    and-int/lit8 v3, v1, 0x3f

    aget-byte v3, v0, v3

    aput-byte v3, p3, v2

    .line 493
    return-object p3

    .line 496
    :pswitch_1
    ushr-int/lit8 v3, v1, 0x12

    aget-byte v3, v0, v3

    aput-byte v3, p3, p4

    .line 497
    add-int/lit8 v3, p4, 0x1

    ushr-int/lit8 v4, v1, 0xc

    and-int/lit8 v4, v4, 0x3f

    aget-byte v4, v0, v4

    aput-byte v4, p3, v3

    .line 498
    add-int/lit8 v3, p4, 0x2

    ushr-int/lit8 v4, v1, 0x6

    and-int/lit8 v4, v4, 0x3f

    aget-byte v4, v0, v4

    aput-byte v4, p3, v3

    .line 499
    add-int/lit8 v3, p4, 0x3

    aput-byte v2, p3, v3

    .line 500
    return-object p3

    .line 503
    :pswitch_2
    ushr-int/lit8 v3, v1, 0x12

    aget-byte v3, v0, v3

    aput-byte v3, p3, p4

    .line 504
    add-int/lit8 v3, p4, 0x1

    ushr-int/lit8 v4, v1, 0xc

    and-int/lit8 v4, v4, 0x3f

    aget-byte v4, v0, v4

    aput-byte v4, p3, v3

    .line 505
    add-int/lit8 v3, p4, 0x2

    aput-byte v2, p3, v3

    .line 506
    add-int/lit8 v3, p4, 0x3

    aput-byte v2, p3, v3

    .line 507
    return-object p3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static encode3to4([B[BII)[B
    .locals 6
    .param p0, "b4"    # [B
    .param p1, "threeBytes"    # [B
    .param p2, "numSigBytes"    # I
    .param p3, "options"    # I

    .line 438
    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v0, p1

    move v2, p2

    move-object v3, p0

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/itextpdf/io/codec/Base64;->encode3to4([BII[BII)[B

    .line 439
    return-object p0
.end method

.method public static encodeBytes([B)Ljava/lang/String;
    .locals 2
    .param p0, "source"    # [B

    .line 623
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1}, Lcom/itextpdf/io/codec/Base64;->encodeBytes([BIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeBytes([BI)Ljava/lang/String;
    .locals 2
    .param p0, "source"    # [B
    .param p1, "options"    # I

    .line 648
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lcom/itextpdf/io/codec/Base64;->encodeBytes([BIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeBytes([BII)Ljava/lang/String;
    .locals 1
    .param p0, "source"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I

    .line 663
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/itextpdf/io/codec/Base64;->encodeBytes([BIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeBytes([BIII)Ljava/lang/String;
    .locals 20
    .param p0, "source"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I
    .param p3, "options"    # I

    .line 692
    move/from16 v1, p1

    move/from16 v2, p2

    and-int/lit8 v9, p3, 0x8

    .line 693
    .local v9, "dontBreakLines":I
    and-int/lit8 v10, p3, 0x2

    .line 696
    .local v10, "gzip":I
    const-string v11, "UTF-8"

    const/4 v0, 0x2

    if-ne v10, v0, :cond_0

    .line 697
    const/4 v3, 0x0

    .line 698
    .local v3, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v4, 0x0

    .line 699
    .local v4, "gzos":Ljava/util/zip/GZIPOutputStream;
    const/4 v5, 0x0

    .line 704
    .local v5, "b64os":Lcom/itextpdf/io/codec/Base64$OutputStream;
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v3, v0

    .line 705
    new-instance v0, Lcom/itextpdf/io/codec/Base64$OutputStream;

    or-int/lit8 v6, p3, 0x1

    invoke-direct {v0, v3, v6}, Lcom/itextpdf/io/codec/Base64$OutputStream;-><init>(Ljava/io/OutputStream;I)V

    move-object v5, v0

    .line 706
    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v0, v5}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v0

    .line 708
    move-object/from16 v12, p0

    :try_start_1
    invoke-virtual {v4, v12, v1, v2}, Ljava/util/zip/GZIPOutputStream;->write([BII)V

    .line 709
    invoke-virtual {v4}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 717
    :try_start_2
    invoke-virtual {v4}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 719
    goto :goto_0

    .line 718
    :catch_0
    move-exception v0

    .line 721
    :goto_0
    :try_start_3
    invoke-virtual {v5}, Lcom/itextpdf/io/codec/Base64$OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 723
    goto :goto_1

    .line 722
    :catch_1
    move-exception v0

    .line 725
    :goto_1
    :try_start_4
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 727
    goto :goto_2

    .line 726
    :catch_2
    move-exception v0

    .line 728
    nop

    .line 732
    :goto_2
    :try_start_5
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-direct {v0, v6, v11}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_3

    return-object v0

    .line 734
    :catch_3
    move-exception v0

    .line 735
    .local v0, "uue":Ljava/io/UnsupportedEncodingException;
    new-instance v6, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    return-object v6

    .line 711
    .end local v0    # "uue":Ljava/io/UnsupportedEncodingException;
    :catch_4
    move-exception v0

    goto :goto_4

    .line 716
    :catchall_0
    move-exception v0

    move-object/from16 v12, p0

    :goto_3
    move-object v6, v0

    goto :goto_8

    .line 711
    :catch_5
    move-exception v0

    move-object/from16 v12, p0

    :goto_4
    move-object v6, v0

    .line 712
    .local v6, "e":Ljava/io/IOException;
    :try_start_6
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 713
    const/4 v7, 0x0

    .line 717
    :try_start_7
    invoke-virtual {v4}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 719
    goto :goto_5

    .line 718
    :catch_6
    move-exception v0

    .line 721
    :goto_5
    :try_start_8
    invoke-virtual {v5}, Lcom/itextpdf/io/codec/Base64$OutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    .line 723
    goto :goto_6

    .line 722
    :catch_7
    move-exception v0

    .line 725
    :goto_6
    :try_start_9
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    .line 727
    goto :goto_7

    .line 726
    :catch_8
    move-exception v0

    .line 713
    :goto_7
    return-object v7

    .line 716
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 717
    :goto_8
    :try_start_a
    invoke-virtual {v4}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9

    .line 719
    goto :goto_9

    .line 718
    :catch_9
    move-exception v0

    .line 721
    :goto_9
    :try_start_b
    invoke-virtual {v5}, Lcom/itextpdf/io/codec/Base64$OutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_a

    .line 723
    goto :goto_a

    .line 722
    :catch_a
    move-exception v0

    .line 725
    :goto_a
    :try_start_c
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_b

    .line 727
    goto :goto_b

    .line 726
    :catch_b
    move-exception v0

    .line 728
    :goto_b
    throw v6

    .line 742
    .end local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .end local v5    # "b64os":Lcom/itextpdf/io/codec/Base64$OutputStream;
    :cond_0
    move-object/from16 v12, p0

    if-nez v9, :cond_1

    const/4 v0, 0x1

    goto :goto_c

    :cond_1
    const/4 v0, 0x0

    :goto_c
    move v14, v0

    .line 744
    .local v14, "breakLines":Z
    mul-int/lit8 v0, v2, 0x4

    div-int/lit8 v15, v0, 0x3

    .line 745
    .local v15, "len43":I
    rem-int/lit8 v0, v2, 0x3

    const/16 v16, 0x4

    if-lez v0, :cond_2

    move/from16 v0, v16

    goto :goto_d

    :cond_2
    const/4 v0, 0x0

    :goto_d
    add-int/2addr v0, v15

    if-eqz v14, :cond_3

    div-int/lit8 v3, v15, 0x4c

    goto :goto_e

    :cond_3
    const/4 v3, 0x0

    :goto_e
    add-int/2addr v0, v3

    new-array v8, v0, [B

    .line 748
    .local v8, "outBuff":[B
    const/4 v0, 0x0

    .line 749
    .local v0, "d":I
    const/4 v3, 0x0

    .line 750
    .local v3, "e":I
    add-int/lit8 v7, v2, -0x2

    .line 751
    .local v7, "len2":I
    const/4 v4, 0x0

    move v6, v0

    move v0, v3

    move/from16 v17, v4

    .line 752
    .end local v3    # "e":I
    .local v0, "e":I
    .local v6, "d":I
    .local v17, "lineLength":I
    :goto_f
    if-ge v6, v7, :cond_5

    .line 753
    add-int v4, v6, v1

    const/4 v5, 0x3

    move-object/from16 v3, p0

    move v13, v6

    .end local v6    # "d":I
    .local v13, "d":I
    move-object v6, v8

    move/from16 v18, v7

    .end local v7    # "len2":I
    .local v18, "len2":I
    move v7, v0

    move/from16 v19, v9

    move-object v9, v8

    .end local v8    # "outBuff":[B
    .local v9, "outBuff":[B
    .local v19, "dontBreakLines":I
    move/from16 v8, p3

    invoke-static/range {v3 .. v8}, Lcom/itextpdf/io/codec/Base64;->encode3to4([BII[BII)[B

    .line 755
    add-int/lit8 v3, v17, 0x4

    .line 756
    .end local v17    # "lineLength":I
    .local v3, "lineLength":I
    if-eqz v14, :cond_4

    const/16 v4, 0x4c

    if-ne v3, v4, :cond_4

    .line 757
    add-int/lit8 v4, v0, 0x4

    const/16 v5, 0xa

    aput-byte v5, v9, v4

    .line 758
    add-int/lit8 v0, v0, 0x1

    .line 759
    const/4 v3, 0x0

    move/from16 v17, v3

    goto :goto_10

    .line 752
    :cond_4
    move/from16 v17, v3

    .end local v3    # "lineLength":I
    .restart local v17    # "lineLength":I
    :goto_10
    add-int/lit8 v6, v13, 0x3

    .end local v13    # "d":I
    .restart local v6    # "d":I
    add-int/lit8 v0, v0, 0x4

    move-object v8, v9

    move/from16 v7, v18

    move/from16 v9, v19

    goto :goto_f

    .line 763
    .end local v18    # "len2":I
    .end local v19    # "dontBreakLines":I
    .restart local v7    # "len2":I
    .restart local v8    # "outBuff":[B
    .local v9, "dontBreakLines":I
    :cond_5
    move v13, v6

    move/from16 v18, v7

    move/from16 v19, v9

    move-object v9, v8

    .end local v6    # "d":I
    .end local v7    # "len2":I
    .end local v8    # "outBuff":[B
    .local v9, "outBuff":[B
    .restart local v13    # "d":I
    .restart local v18    # "len2":I
    .restart local v19    # "dontBreakLines":I
    if-ge v13, v2, :cond_6

    .line 764
    add-int v4, v13, v1

    sub-int v5, v2, v13

    move-object/from16 v3, p0

    move-object v6, v9

    move v7, v0

    move/from16 v8, p3

    invoke-static/range {v3 .. v8}, Lcom/itextpdf/io/codec/Base64;->encode3to4([BII[BII)[B

    .line 765
    add-int/lit8 v0, v0, 0x4

    move v3, v0

    goto :goto_11

    .line 763
    :cond_6
    move v3, v0

    .line 771
    .end local v0    # "e":I
    .local v3, "e":I
    :goto_11
    :try_start_d
    new-instance v0, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v0, v9, v4, v3, v11}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_d .. :try_end_d} :catch_c

    return-object v0

    .line 773
    :catch_c
    move-exception v0

    .line 774
    .local v0, "uue":Ljava/io/UnsupportedEncodingException;
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v4, v9, v5, v3}, Ljava/lang/String;-><init>([BII)V

    return-object v4
.end method

.method public static encodeFileToFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "infile"    # Ljava/lang/String;
    .param p1, "outfile"    # Ljava/lang/String;

    .line 1228
    invoke-static {p0}, Lcom/itextpdf/io/codec/Base64;->encodeFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1229
    .local v0, "encoded":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1231
    .local v1, "out":Ljava/io/OutputStream;
    :try_start_0
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v1, v2

    .line 1233
    const-string v2, "US-ASCII"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1240
    :try_start_1
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1242
    :goto_0
    goto :goto_1

    .line 1241
    :catch_0
    move-exception v2

    .line 1243
    goto :goto_1

    .line 1239
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 1235
    :catch_1
    move-exception v2

    .line 1236
    .local v2, "ex":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1240
    .end local v2    # "ex":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 1244
    :goto_1
    return-void

    .line 1240
    :goto_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 1242
    goto :goto_3

    .line 1241
    :catch_2
    move-exception v3

    .line 1243
    :goto_3
    throw v2
.end method

.method public static encodeFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "filename"    # Ljava/lang/String;

    .line 1185
    const/4 v0, 0x0

    .line 1186
    .local v0, "encodedData":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1189
    .local v1, "bis":Lcom/itextpdf/io/codec/Base64$InputStream;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1190
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    long-to-double v3, v3

    const-wide v5, 0x3ff6666666666666L    # 1.4

    mul-double/2addr v3, v5

    double-to-int v3, v3

    const/16 v4, 0x28

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    new-array v3, v3, [B

    .line 1191
    .local v3, "buffer":[B
    const/4 v4, 0x0

    .line 1192
    .local v4, "length":I
    const/4 v5, 0x0

    .line 1195
    .local v5, "numBytes":I
    new-instance v6, Lcom/itextpdf/io/codec/Base64$InputStream;

    new-instance v7, Ljava/io/BufferedInputStream;

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v8, 0x1

    invoke-direct {v6, v7, v8}, Lcom/itextpdf/io/codec/Base64$InputStream;-><init>(Ljava/io/InputStream;I)V

    move-object v1, v6

    .line 1200
    :goto_0
    const/16 v6, 0x1000

    invoke-virtual {v1, v3, v4, v6}, Lcom/itextpdf/io/codec/Base64$InputStream;->read([BII)I

    move-result v6

    move v5, v6

    if-ltz v6, :cond_0

    .line 1201
    add-int/2addr v4, v5

    goto :goto_0

    .line 1204
    :cond_0
    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "UTF-8"

    invoke-direct {v6, v3, v7, v4, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v6

    .line 1212
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "buffer":[B
    .end local v4    # "length":I
    .end local v5    # "numBytes":I
    :try_start_1
    invoke-virtual {v1}, Lcom/itextpdf/io/codec/Base64$InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1214
    :goto_1
    goto :goto_2

    .line 1213
    :catch_0
    move-exception v2

    .line 1215
    goto :goto_2

    .line 1211
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 1207
    :catch_1
    move-exception v2

    .line 1208
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error encoding from file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1212
    .end local v2    # "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v1}, Lcom/itextpdf/io/codec/Base64$InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 1217
    :goto_2
    return-object v0

    .line 1212
    :goto_3
    :try_start_4
    invoke-virtual {v1}, Lcom/itextpdf/io/codec/Base64$InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 1214
    goto :goto_4

    .line 1213
    :catch_2
    move-exception v3

    .line 1215
    :goto_4
    throw v2
.end method

.method public static encodeObject(Ljava/io/Serializable;)Ljava/lang/String;
    .locals 1
    .param p0, "serializableObject"    # Ljava/io/Serializable;

    .line 527
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/itextpdf/io/codec/Base64;->encodeObject(Ljava/io/Serializable;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeObject(Ljava/io/Serializable;I)Ljava/lang/String;
    .locals 9
    .param p0, "serializableObject"    # Ljava/io/Serializable;
    .param p1, "options"    # I

    .line 556
    const/4 v0, 0x0

    .line 557
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    .line 558
    .local v1, "b64os":Ljava/io/OutputStream;
    const/4 v2, 0x0

    .line 559
    .local v2, "oos":Ljava/io/ObjectOutputStream;
    const/4 v3, 0x0

    .line 562
    .local v3, "gzos":Ljava/util/zip/GZIPOutputStream;
    and-int/lit8 v4, p1, 0x2

    .line 563
    .local v4, "gzip":I
    and-int/lit8 v5, p1, 0x8

    .line 567
    .local v5, "dontBreakLines":I
    :try_start_0
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v0, v6

    .line 568
    new-instance v6, Lcom/itextpdf/io/codec/Base64$OutputStream;

    or-int/lit8 v7, p1, 0x1

    invoke-direct {v6, v0, v7}, Lcom/itextpdf/io/codec/Base64$OutputStream;-><init>(Ljava/io/OutputStream;I)V

    move-object v1, v6

    .line 571
    const/4 v6, 0x2

    if-ne v4, v6, :cond_0

    .line 572
    new-instance v6, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v6, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v3, v6

    .line 573
    new-instance v6, Ljava/io/ObjectOutputStream;

    invoke-direct {v6, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v2, v6

    goto :goto_0

    .line 576
    :cond_0
    new-instance v6, Ljava/io/ObjectOutputStream;

    invoke-direct {v6, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v2, v6

    .line 578
    :goto_0
    invoke-virtual {v2, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 586
    :try_start_1
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 588
    goto :goto_1

    .line 587
    :catch_0
    move-exception v6

    .line 590
    :goto_1
    :try_start_2
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 592
    goto :goto_2

    .line 591
    :catch_1
    move-exception v6

    .line 594
    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 596
    goto :goto_3

    .line 595
    :catch_2
    move-exception v6

    .line 598
    :goto_3
    :try_start_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 600
    goto :goto_4

    .line 599
    :catch_3
    move-exception v6

    .line 601
    nop

    .line 605
    :goto_4
    :try_start_5
    new-instance v6, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-direct {v6, v7, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_4

    return-object v6

    .line 607
    :catch_4
    move-exception v6

    .line 608
    .local v6, "uue":Ljava/io/UnsupportedEncodingException;
    new-instance v7, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>([B)V

    return-object v7

    .line 585
    .end local v6    # "uue":Ljava/io/UnsupportedEncodingException;
    :catchall_0
    move-exception v6

    goto :goto_9

    .line 580
    :catch_5
    move-exception v6

    .line 581
    .local v6, "e":Ljava/io/IOException;
    :try_start_6
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 582
    const/4 v7, 0x0

    .line 586
    :try_start_7
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 588
    goto :goto_5

    .line 587
    :catch_6
    move-exception v8

    .line 590
    :goto_5
    :try_start_8
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    .line 592
    goto :goto_6

    .line 591
    :catch_7
    move-exception v8

    .line 594
    :goto_6
    :try_start_9
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    .line 596
    goto :goto_7

    .line 595
    :catch_8
    move-exception v8

    .line 598
    :goto_7
    :try_start_a
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9

    .line 600
    goto :goto_8

    .line 599
    :catch_9
    move-exception v8

    .line 582
    :goto_8
    return-object v7

    .line 586
    .end local v6    # "e":Ljava/io/IOException;
    :goto_9
    :try_start_b
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_a

    .line 588
    goto :goto_a

    .line 587
    :catch_a
    move-exception v7

    .line 590
    :goto_a
    :try_start_c
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_b

    .line 592
    goto :goto_b

    .line 591
    :catch_b
    move-exception v7

    .line 594
    :goto_b
    :try_start_d
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_c

    .line 596
    goto :goto_c

    .line 595
    :catch_c
    move-exception v7

    .line 598
    :goto_c
    :try_start_e
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_d

    .line 600
    goto :goto_d

    .line 599
    :catch_d
    move-exception v7

    .line 601
    :goto_d
    throw v6
.end method

.method public static encodeToFile([BLjava/lang/String;)Z
    .locals 5
    .param p0, "dataToEncode"    # [B
    .param p1, "filename"    # Ljava/lang/String;

    .line 1067
    const/4 v0, 0x0

    .line 1068
    .local v0, "success":Z
    const/4 v1, 0x0

    .line 1070
    .local v1, "bos":Lcom/itextpdf/io/codec/Base64$OutputStream;
    :try_start_0
    new-instance v2, Lcom/itextpdf/io/codec/Base64$OutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/itextpdf/io/codec/Base64$OutputStream;-><init>(Ljava/io/OutputStream;I)V

    move-object v1, v2

    .line 1072
    invoke-virtual {v1, p0}, Lcom/itextpdf/io/codec/Base64$OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1073
    const/4 v0, 0x1

    .line 1081
    :try_start_1
    invoke-virtual {v1}, Lcom/itextpdf/io/codec/Base64$OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1083
    :goto_0
    goto :goto_2

    .line 1082
    :catch_0
    move-exception v2

    .line 1084
    goto :goto_2

    .line 1080
    :catchall_0
    move-exception v2

    .line 1081
    :try_start_2
    invoke-virtual {v1}, Lcom/itextpdf/io/codec/Base64$OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1083
    goto :goto_1

    .line 1082
    :catch_1
    move-exception v3

    .line 1084
    :goto_1
    throw v2

    .line 1075
    :catch_2
    move-exception v2

    .line 1077
    .local v2, "e":Ljava/io/IOException;
    const/4 v0, 0x0

    .line 1081
    .end local v2    # "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v1}, Lcom/itextpdf/io/codec/Base64$OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 1086
    :goto_2
    return v0
.end method

.method private static getAlphabet(I)[B
    .locals 2
    .param p0, "options"    # I

    .line 354
    and-int/lit8 v0, p0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/itextpdf/io/codec/Base64;->_URL_SAFE_ALPHABET:[B

    return-object v0

    .line 355
    :cond_0
    and-int/lit8 v0, p0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/itextpdf/io/codec/Base64;->_ORDERED_ALPHABET:[B

    return-object v0

    .line 356
    :cond_1
    sget-object v0, Lcom/itextpdf/io/codec/Base64;->_STANDARD_ALPHABET:[B

    return-object v0
.end method

.method private static getDecodabet(I)[B
    .locals 2
    .param p0, "options"    # I

    .line 369
    and-int/lit8 v0, p0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/itextpdf/io/codec/Base64;->_URL_SAFE_DECODABET:[B

    return-object v0

    .line 370
    :cond_0
    and-int/lit8 v0, p0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/itextpdf/io/codec/Base64;->_ORDERED_DECODABET:[B

    return-object v0

    .line 371
    :cond_1
    sget-object v0, Lcom/itextpdf/io/codec/Base64;->_STANDARD_DECODABET:[B

    return-object v0
.end method

.method private static usage(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 414
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 415
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Usage: java Base64 -e|-d inputfile outputfile"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 416
    return-void
.end method
