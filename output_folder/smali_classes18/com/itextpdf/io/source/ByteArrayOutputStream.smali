.class public Lcom/itextpdf/io/source/ByteArrayOutputStream;
.super Ljava/io/ByteArrayOutputStream;
.source "ByteArrayOutputStream.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 50
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "size"    # I

    .line 53
    invoke-direct {p0, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 54
    return-void
.end method


# virtual methods
.method public assignBytes([B)Lcom/itextpdf/io/source/ByteArrayOutputStream;
    .locals 1
    .param p1, "bytes"    # [B

    .line 63
    iput-object p1, p0, Lcom/itextpdf/io/source/ByteArrayOutputStream;->buf:[B

    .line 64
    array-length v0, p1

    iput v0, p0, Lcom/itextpdf/io/source/ByteArrayOutputStream;->count:I

    .line 65
    return-object p0
.end method

.method public assignBytes([BI)Lcom/itextpdf/io/source/ByteArrayOutputStream;
    .locals 0
    .param p1, "bytes"    # [B
    .param p2, "count"    # I

    .line 57
    iput-object p1, p0, Lcom/itextpdf/io/source/ByteArrayOutputStream;->buf:[B

    .line 58
    iput p2, p0, Lcom/itextpdf/io/source/ByteArrayOutputStream;->count:I

    .line 59
    return-object p0
.end method
