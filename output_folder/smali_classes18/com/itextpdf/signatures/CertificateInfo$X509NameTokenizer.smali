.class public Lcom/itextpdf/signatures/CertificateInfo$X509NameTokenizer;
.super Ljava/lang/Object;
.source "CertificateInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/signatures/CertificateInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "X509NameTokenizer"
.end annotation


# instance fields
.field private buf:Ljava/lang/StringBuffer;

.field private index:I

.field private oid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "oid"    # Ljava/lang/String;

    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 289
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/signatures/CertificateInfo$X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    .line 297
    iput-object p1, p0, Lcom/itextpdf/signatures/CertificateInfo$X509NameTokenizer;->oid:Ljava/lang/String;

    .line 298
    const/4 v0, -0x1

    iput v0, p0, Lcom/itextpdf/signatures/CertificateInfo$X509NameTokenizer;->index:I

    .line 299
    return-void
.end method


# virtual methods
.method public hasMoreTokens()Z
    .locals 2

    .line 307
    iget v0, p0, Lcom/itextpdf/signatures/CertificateInfo$X509NameTokenizer;->index:I

    iget-object v1, p0, Lcom/itextpdf/signatures/CertificateInfo$X509NameTokenizer;->oid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public nextToken()Ljava/lang/String;
    .locals 7

    .line 316
    iget v0, p0, Lcom/itextpdf/signatures/CertificateInfo$X509NameTokenizer;->index:I

    iget-object v1, p0, Lcom/itextpdf/signatures/CertificateInfo$X509NameTokenizer;->oid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 317
    const/4 v0, 0x0

    return-object v0

    .line 320
    :cond_0
    iget v0, p0, Lcom/itextpdf/signatures/CertificateInfo$X509NameTokenizer;->index:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 321
    .local v0, "end":I
    const/4 v2, 0x0

    .line 322
    .local v2, "quoted":Z
    const/4 v3, 0x0

    .line 324
    .local v3, "escaped":Z
    iget-object v4, p0, Lcom/itextpdf/signatures/CertificateInfo$X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 326
    :goto_0
    iget-object v4, p0, Lcom/itextpdf/signatures/CertificateInfo$X509NameTokenizer;->oid:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v0, v4, :cond_8

    .line 327
    iget-object v4, p0, Lcom/itextpdf/signatures/CertificateInfo$X509NameTokenizer;->oid:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 329
    .local v4, "c":C
    const/16 v6, 0x22

    if-ne v4, v6, :cond_3

    .line 330
    if-nez v3, :cond_2

    .line 331
    if-nez v2, :cond_1

    move v6, v1

    goto :goto_1

    :cond_1
    move v6, v5

    :goto_1
    move v2, v6

    goto :goto_2

    .line 334
    :cond_2
    iget-object v6, p0, Lcom/itextpdf/signatures/CertificateInfo$X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 336
    :goto_2
    const/4 v3, 0x0

    goto :goto_4

    .line 339
    :cond_3
    if-nez v3, :cond_7

    if-eqz v2, :cond_4

    goto :goto_3

    .line 343
    :cond_4
    const/16 v6, 0x5c

    if-ne v4, v6, :cond_5

    .line 344
    const/4 v3, 0x1

    goto :goto_4

    .line 346
    :cond_5
    const/16 v6, 0x2c

    if-ne v4, v6, :cond_6

    .line 347
    goto :goto_5

    .line 350
    :cond_6
    iget-object v6, p0, Lcom/itextpdf/signatures/CertificateInfo$X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 340
    :cond_7
    :goto_3
    iget-object v6, p0, Lcom/itextpdf/signatures/CertificateInfo$X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 341
    const/4 v3, 0x0

    .line 353
    :goto_4
    nop

    .end local v4    # "c":C
    add-int/lit8 v0, v0, 0x1

    .line 354
    goto :goto_0

    .line 356
    :cond_8
    :goto_5
    iput v0, p0, Lcom/itextpdf/signatures/CertificateInfo$X509NameTokenizer;->index:I

    .line 357
    iget-object v1, p0, Lcom/itextpdf/signatures/CertificateInfo$X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
