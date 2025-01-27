.class public Lcom/itextpdf/io/font/woff2/Woff2Converter;
.super Ljava/lang/Object;
.source "Woff2Converter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convert([B)[B
    .locals 3
    .param p0, "woff2Bytes"    # [B

    .line 60
    array-length v0, p0

    invoke-static {p0, v0}, Lcom/itextpdf/io/font/woff2/Woff2Dec;->computeWoff2FinalSize([BI)I

    move-result v0

    new-array v0, v0, [B

    .line 61
    .local v0, "inner_byte_buffer":[B
    new-instance v1, Lcom/itextpdf/io/font/woff2/Woff2MemoryOut;

    array-length v2, v0

    invoke-direct {v1, v0, v2}, Lcom/itextpdf/io/font/woff2/Woff2MemoryOut;-><init>([BI)V

    .line 62
    .local v1, "out":Lcom/itextpdf/io/font/woff2/Woff2Out;
    array-length v2, p0

    invoke-static {p0, v2, v1}, Lcom/itextpdf/io/font/woff2/Woff2Dec;->convertWoff2ToTtf([BILcom/itextpdf/io/font/woff2/Woff2Out;)V

    .line 63
    return-object v0
.end method

.method public static isWoff2Font([B)Z
    .locals 4
    .param p0, "woff2Bytes"    # [B

    .line 48
    array-length v0, p0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 49
    return v2

    .line 51
    :cond_0
    new-instance v0, Lcom/itextpdf/io/font/woff2/Buffer;

    invoke-direct {v0, p0, v2, v1}, Lcom/itextpdf/io/font/woff2/Buffer;-><init>([BII)V

    .line 53
    .local v0, "file":Lcom/itextpdf/io/font/woff2/Buffer;
    :try_start_0
    invoke-virtual {v0}, Lcom/itextpdf/io/font/woff2/Buffer;->readInt()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const v3, 0x774f4632

    if-ne v1, v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2

    .line 54
    :catch_0
    move-exception v1

    .line 55
    .local v1, "any":Ljava/lang/Exception;
    return v2
.end method
