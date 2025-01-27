.class public Lcom/itextpdf/io/font/woff2/FontCompressionException;
.super Ljava/lang/RuntimeException;
.source "FontCompressionException.java"


# static fields
.field public static final BROTLI_DECODING_FAILED:Ljava/lang/String; = "Woff2 brotli decoding exception"

.field public static final BUFFER_READ_FAILED:Ljava/lang/String; = "Reading woff2 exception"

.field public static final INCORRECT_SIGNATURE:Ljava/lang/String; = "Incorrect woff2 signature"

.field public static final LOCA_SIZE_OVERFLOW:Ljava/lang/String; = "woff2 loca table content size overflow exception"

.field public static final PADDING_OVERFLOW:Ljava/lang/String; = "woff2 padding overflow exception"

.field public static final READ_BASE_128_FAILED:Ljava/lang/String; = "Reading woff2 base 128 number exception"

.field public static final READ_COLLECTION_HEADER_FAILED:Ljava/lang/String; = "Reading collection woff2 header exception"

.field public static final READ_HEADER_FAILED:Ljava/lang/String; = "Reading woff2 header exception"

.field public static final READ_TABLE_DIRECTORY_FAILED:Ljava/lang/String; = "Reading woff2 tables directory exception"

.field public static final RECONSTRUCT_GLYF_TABLE_FAILED:Ljava/lang/String; = "Reconstructing woff2 glyf table exception"

.field public static final RECONSTRUCT_GLYPH_FAILED:Ljava/lang/String; = "Reconstructing woff2 glyph exception"

.field public static final RECONSTRUCT_HMTX_TABLE_FAILED:Ljava/lang/String; = "Reconstructing woff2 hmtx table exception"

.field public static final RECONSTRUCT_POINT_FAILED:Ljava/lang/String; = "Reconstructing woff2 glyph\'s point exception"

.field public static final RECONSTRUCT_TABLE_DIRECTORY_FAILED:Ljava/lang/String; = "Reconstructing woff2 table directory exception"

.field public static final WRITE_FAILED:Ljava/lang/String; = "Writing woff2 exception"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 66
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 71
    return-void
.end method
