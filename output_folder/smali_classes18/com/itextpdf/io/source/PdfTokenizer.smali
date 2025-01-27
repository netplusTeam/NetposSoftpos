.class public Lcom/itextpdf/io/source/PdfTokenizer;
.super Ljava/lang/Object;
.source "PdfTokenizer.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/io/source/PdfTokenizer$ReusableRandomAccessSource;,
        Lcom/itextpdf/io/source/PdfTokenizer$TokenType;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final F:[B

.field public static final False:[B

.field public static final N:[B

.field public static final Null:[B

.field public static final Obj:[B

.field public static final R:[B

.field public static final Startxref:[B

.field public static final Stream:[B

.field public static final Trailer:[B

.field public static final True:[B

.field public static final Xref:[B

.field public static final delims:[Z

.field private static final serialVersionUID:J = -0x28f005e4286e3d39L


# instance fields
.field private closeStream:Z

.field private final file:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

.field protected generation:I

.field protected hexString:Z

.field protected outBuf:Lcom/itextpdf/io/source/ByteBuffer;

.field protected reference:I

.field protected type:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    nop

    .line 76
    const/16 v0, 0x101

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    sput-object v0, Lcom/itextpdf/io/source/PdfTokenizer;->delims:[Z

    .line 105
    const-string v0, "obj"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/io/source/PdfTokenizer;->Obj:[B

    .line 106
    const-string v0, "R"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/io/source/PdfTokenizer;->R:[B

    .line 107
    const-string/jumbo v0, "xref"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/io/source/PdfTokenizer;->Xref:[B

    .line 108
    const-string/jumbo v0, "startxref"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/io/source/PdfTokenizer;->Startxref:[B

    .line 109
    const-string/jumbo v0, "stream"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/io/source/PdfTokenizer;->Stream:[B

    .line 110
    const-string/jumbo v0, "trailer"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/io/source/PdfTokenizer;->Trailer:[B

    .line 111
    const-string v0, "n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/io/source/PdfTokenizer;->N:[B

    .line 112
    const-string v0, "f"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/io/source/PdfTokenizer;->F:[B

    .line 113
    const-string v0, "null"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/io/source/PdfTokenizer;->Null:[B

    .line 114
    const-string/jumbo v0, "true"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/io/source/PdfTokenizer;->True:[B

    .line 115
    const-string v0, "false"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/io/source/PdfTokenizer;->False:[B

    return-void

    :array_0
    .array-data 1
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/itextpdf/io/source/RandomAccessFileOrArray;)V
    .locals 1
    .param p1, "file"    # Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/io/source/PdfTokenizer;->closeStream:Z

    .line 137
    iput-object p1, p0, Lcom/itextpdf/io/source/PdfTokenizer;->file:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    .line 138
    new-instance v0, Lcom/itextpdf/io/source/ByteBuffer;

    invoke-direct {v0}, Lcom/itextpdf/io/source/ByteBuffer;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/io/source/PdfTokenizer;->outBuf:Lcom/itextpdf/io/source/ByteBuffer;

    .line 139
    return-void
.end method

.method public static checkObjectStart(Lcom/itextpdf/io/source/PdfTokenizer;)[I
    .locals 5
    .param p0, "lineTokenizer"    # Lcom/itextpdf/io/source/PdfTokenizer;

    .line 807
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/io/source/PdfTokenizer;->seek(J)V

    .line 808
    invoke-virtual {p0}, Lcom/itextpdf/io/source/PdfTokenizer;->nextToken()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/itextpdf/io/source/PdfTokenizer;->getTokenType()Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->Number:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 810
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/io/source/PdfTokenizer;->getIntValue()I

    move-result v0

    .line 811
    .local v0, "num":I
    invoke-virtual {p0}, Lcom/itextpdf/io/source/PdfTokenizer;->nextToken()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/itextpdf/io/source/PdfTokenizer;->getTokenType()Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    move-result-object v1

    sget-object v3, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->Number:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    if-eq v1, v3, :cond_1

    goto :goto_0

    .line 813
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/io/source/PdfTokenizer;->getIntValue()I

    move-result v1

    .line 814
    .local v1, "gen":I
    invoke-virtual {p0}, Lcom/itextpdf/io/source/PdfTokenizer;->nextToken()Z

    move-result v3

    if-nez v3, :cond_2

    .line 815
    return-object v2

    .line 816
    :cond_2
    sget-object v3, Lcom/itextpdf/io/source/PdfTokenizer;->Obj:[B

    invoke-virtual {p0}, Lcom/itextpdf/io/source/PdfTokenizer;->getByteContent()[B

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_3

    .line 817
    return-object v2

    .line 818
    :cond_3
    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v0, v3, v4

    const/4 v4, 0x1

    aput v1, v3, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 812
    .end local v1    # "gen":I
    :cond_4
    :goto_0
    return-object v2

    .line 809
    .end local v0    # "num":I
    :cond_5
    :goto_1
    return-object v2

    .line 819
    :catch_0
    move-exception v0

    .line 822
    return-object v2
.end method

.method public static checkTrailer(Lcom/itextpdf/io/source/ByteBuffer;)Z
    .locals 4
    .param p0, "line"    # Lcom/itextpdf/io/source/ByteBuffer;

    .line 702
    sget-object v0, Lcom/itextpdf/io/source/PdfTokenizer;->Trailer:[B

    array-length v0, v0

    invoke-virtual {p0}, Lcom/itextpdf/io/source/ByteBuffer;->size()I

    move-result v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    .line 703
    return v2

    .line 704
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/itextpdf/io/source/PdfTokenizer;->Trailer:[B

    array-length v3, v1

    if-ge v0, v3, :cond_2

    .line 705
    aget-byte v1, v1, v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/io/source/ByteBuffer;->get(I)B

    move-result v3

    if-eq v1, v3, :cond_1

    .line 706
    return v2

    .line 704
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 708
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method protected static decodeStringContent([BIIZ)[B
    .locals 8
    .param p0, "content"    # [B
    .param p1, "from"    # I
    .param p2, "to"    # I
    .param p3, "hexWriting"    # Z

    .line 545
    new-instance v0, Lcom/itextpdf/io/source/ByteBuffer;

    sub-int v1, p2, p1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Lcom/itextpdf/io/source/ByteBuffer;-><init>(I)V

    .line 548
    .local v0, "buffer":Lcom/itextpdf/io/source/ByteBuffer;
    if-eqz p3, :cond_2

    .line 549
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-gt v1, p2, :cond_1

    .line 550
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    aget-byte v1, p0, v1

    invoke-static {v1}, Lcom/itextpdf/io/source/ByteBuffer;->getHex(I)I

    move-result v1

    .line 551
    .local v1, "v1":I
    if-le v2, p2, :cond_0

    .line 552
    shl-int/lit8 v3, v1, 0x4

    invoke-virtual {v0, v3}, Lcom/itextpdf/io/source/ByteBuffer;->append(I)Lcom/itextpdf/io/source/ByteBuffer;

    .line 553
    goto :goto_1

    .line 555
    :cond_0
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    aget-byte v2, p0, v2

    .line 556
    .local v2, "v2":I
    invoke-static {v2}, Lcom/itextpdf/io/source/ByteBuffer;->getHex(I)I

    move-result v2

    .line 557
    shl-int/lit8 v4, v1, 0x4

    add-int/2addr v4, v2

    invoke-virtual {v0, v4}, Lcom/itextpdf/io/source/ByteBuffer;->append(I)Lcom/itextpdf/io/source/ByteBuffer;

    .line 558
    .end local v1    # "v1":I
    .end local v2    # "v2":I
    move v1, v3

    goto :goto_0

    .end local v3    # "i":I
    :cond_1
    :goto_1
    goto/16 :goto_7

    .line 562
    :cond_2
    move v1, p1

    .local v1, "i":I
    :goto_2
    if-gt v1, p2, :cond_e

    .line 563
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    aget-byte v1, p0, v1

    .line 564
    .local v1, "ch":I
    const/16 v3, 0x5c

    const/16 v4, 0xa

    if-ne v1, v3, :cond_b

    .line 565
    const/4 v3, 0x0

    .line 566
    .local v3, "lineBreak":Z
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "i":I
    .local v5, "i":I
    aget-byte v1, p0, v2

    .line 567
    sparse-switch v1, :sswitch_data_0

    .line 597
    const/16 v2, 0x30

    if-lt v1, v2, :cond_9

    const/16 v4, 0x37

    if-le v1, v4, :cond_4

    .line 598
    goto :goto_5

    .line 575
    :sswitch_0
    const/16 v1, 0x9

    .line 576
    goto :goto_5

    .line 572
    :sswitch_1
    const/16 v1, 0xd

    .line 573
    goto :goto_5

    .line 569
    :sswitch_2
    const/16 v1, 0xa

    .line 570
    goto :goto_5

    .line 581
    :sswitch_3
    const/16 v1, 0xc

    .line 582
    goto :goto_5

    .line 578
    :sswitch_4
    const/16 v1, 0x8

    .line 579
    goto :goto_5

    .line 586
    :sswitch_5
    goto :goto_5

    .line 588
    :sswitch_6
    const/4 v3, 0x1

    .line 589
    if-gt v5, p2, :cond_9

    add-int/lit8 v2, v5, 0x1

    .end local v5    # "i":I
    .restart local v2    # "i":I
    aget-byte v5, p0, v5

    if-eq v5, v4, :cond_3

    .line 590
    add-int/lit8 v2, v2, -0x1

    move v5, v2

    goto :goto_5

    .line 589
    :cond_3
    move v5, v2

    goto :goto_5

    .line 594
    .end local v2    # "i":I
    .restart local v5    # "i":I
    :sswitch_7
    const/4 v3, 0x1

    .line 595
    goto :goto_5

    .line 600
    :cond_4
    add-int/lit8 v6, v1, -0x30

    .line 601
    .local v6, "octal":I
    add-int/lit8 v7, v5, 0x1

    .end local v5    # "i":I
    .local v7, "i":I
    aget-byte v1, p0, v5

    .line 602
    if-lt v1, v2, :cond_8

    if-le v1, v4, :cond_5

    goto :goto_4

    .line 607
    :cond_5
    shl-int/lit8 v5, v6, 0x3

    add-int/2addr v5, v1

    sub-int/2addr v5, v2

    .line 608
    .end local v6    # "octal":I
    .local v5, "octal":I
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "i":I
    .local v6, "i":I
    aget-byte v1, p0, v7

    .line 609
    if-lt v1, v2, :cond_7

    if-le v1, v4, :cond_6

    goto :goto_3

    .line 614
    :cond_6
    shl-int/lit8 v4, v5, 0x3

    add-int/2addr v4, v1

    sub-int/2addr v4, v2

    .line 615
    .end local v5    # "octal":I
    .local v4, "octal":I
    and-int/lit16 v1, v4, 0xff

    .line 616
    move v5, v6

    goto :goto_5

    .line 610
    .end local v4    # "octal":I
    .restart local v5    # "octal":I
    :cond_7
    :goto_3
    add-int/lit8 v6, v6, -0x1

    .line 611
    move v1, v5

    .line 612
    move v5, v6

    goto :goto_5

    .line 603
    .end local v5    # "octal":I
    .local v6, "octal":I
    .restart local v7    # "i":I
    :cond_8
    :goto_4
    add-int/lit8 v7, v7, -0x1

    .line 604
    move v1, v6

    .line 605
    move v5, v7

    .line 619
    .end local v6    # "octal":I
    .end local v7    # "i":I
    .local v5, "i":I
    :cond_9
    :goto_5
    if-eqz v3, :cond_a

    .line 620
    move v1, v5

    goto :goto_2

    .line 621
    .end local v3    # "lineBreak":Z
    :cond_a
    move v2, v5

    goto :goto_6

    .end local v5    # "i":I
    .restart local v2    # "i":I
    :cond_b
    const/16 v3, 0xd

    if-ne v1, v3, :cond_d

    .line 623
    const/16 v1, 0xa

    .line 624
    if-gt v2, p2, :cond_d

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    aget-byte v2, p0, v2

    if-eq v2, v4, :cond_c

    .line 625
    add-int/lit8 v3, v3, -0x1

    move v2, v3

    goto :goto_6

    .line 624
    :cond_c
    move v2, v3

    .line 628
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :cond_d
    :goto_6
    invoke-virtual {v0, v1}, Lcom/itextpdf/io/source/ByteBuffer;->append(I)Lcom/itextpdf/io/source/ByteBuffer;

    .line 629
    .end local v1    # "ch":I
    move v1, v2

    goto/16 :goto_2

    .line 631
    .end local v2    # "i":I
    :cond_e
    :goto_7
    invoke-virtual {v0}, Lcom/itextpdf/io/source/ByteBuffer;->toByteArray()[B

    move-result-object v1

    return-object v1

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_7
        0xd -> :sswitch_6
        0x28 -> :sswitch_5
        0x29 -> :sswitch_5
        0x5c -> :sswitch_5
        0x62 -> :sswitch_4
        0x66 -> :sswitch_3
        0x6e -> :sswitch_2
        0x72 -> :sswitch_1
        0x74 -> :sswitch_0
    .end sparse-switch
.end method

.method public static decodeStringContent([BZ)[B
    .locals 2
    .param p0, "content"    # [B
    .param p1, "hexWriting"    # Z

    .line 646
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lcom/itextpdf/io/source/PdfTokenizer;->decodeStringContent([BIIZ)[B

    move-result-object v0

    return-object v0
.end method

.method protected static isDelimiter(I)Z
    .locals 1
    .param p0, "ch"    # I

    .line 673
    const/16 v0, 0x28

    if-eq p0, v0, :cond_1

    const/16 v0, 0x29

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3c

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x5b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x5d

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2f

    if-eq p0, v0, :cond_1

    const/16 v0, 0x25

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected static isDelimiterWhitespace(I)Z
    .locals 2
    .param p0, "ch"    # I

    .line 677
    sget-object v0, Lcom/itextpdf/io/source/PdfTokenizer;->delims:[Z

    add-int/lit8 v1, p0, 0x1

    aget-boolean v0, v0, v1

    return v0
.end method

.method public static isWhitespace(I)Z
    .locals 1
    .param p0, "ch"    # I

    .line 658
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/itextpdf/io/source/PdfTokenizer;->isWhitespace(IZ)Z

    move-result v0

    return v0
.end method

.method protected static isWhitespace(IZ)Z
    .locals 1
    .param p0, "ch"    # I
    .param p1, "isWhitespace"    # Z

    .line 669
    if-eqz p1, :cond_0

    if-eqz p0, :cond_2

    :cond_0
    const/16 v0, 0x9

    if-eq p0, v0, :cond_2

    const/16 v0, 0xa

    if-eq p0, v0, :cond_2

    const/16 v0, 0xc

    if-eq p0, v0, :cond_2

    const/16 v0, 0xd

    if-eq p0, v0, :cond_2

    const/16 v0, 0x20

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public backOnePosition(I)V
    .locals 2
    .param p1, "ch"    # I

    .line 217
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/itextpdf/io/source/PdfTokenizer;->file:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->pushBack(B)V

    .line 219
    :cond_0
    return-void
.end method

.method public checkFdfHeader()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 243
    iget-object v0, p0, Lcom/itextpdf/io/source/PdfTokenizer;->file:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 244
    const/16 v0, 0x400

    invoke-virtual {p0, v0}, Lcom/itextpdf/io/source/PdfTokenizer;->readString(I)Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, "str":Ljava/lang/String;
    const-string v1, "%FDF-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 246
    .local v1, "idx":I
    if-nez v1, :cond_0

    .line 248
    return-void

    .line 247
    :cond_0
    new-instance v2, Lcom/itextpdf/io/IOException;

    const-string v3, "FDF startxref not found."

    invoke-direct {v2, v3, p0}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    throw v2
.end method

.method public checkPdfHeader()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 234
    iget-object v0, p0, Lcom/itextpdf/io/source/PdfTokenizer;->file:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 235
    const/16 v0, 0x400

    invoke-virtual {p0, v0}, Lcom/itextpdf/io/source/PdfTokenizer;->readString(I)Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, "str":Ljava/lang/String;
    const-string v1, "%PDF-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 237
    .local v1, "idx":I
    if-nez v1, :cond_0

    .line 239
    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v3, v1, 0x8

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 238
    :cond_0
    new-instance v2, Lcom/itextpdf/io/IOException;

    const-string v3, "PDF header not found."

    invoke-direct {v2, v3, p0}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    throw v2
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    iget-boolean v0, p0, Lcom/itextpdf/io/source/PdfTokenizer;->closeStream:Z

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/itextpdf/io/source/PdfTokenizer;->file:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->close()V

    .line 156
    :cond_0
    return-void
.end method

.method public getByteContent()[B
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/itextpdf/io/source/PdfTokenizer;->outBuf:Lcom/itextpdf/io/source/ByteBuffer;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/ByteBuffer;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public getDecodedStringContent()[B
    .locals 4

    .line 191
    iget-object v0, p0, Lcom/itextpdf/io/source/PdfTokenizer;->outBuf:Lcom/itextpdf/io/source/ByteBuffer;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/ByteBuffer;->getInternalBuffer()[B

    move-result-object v0

    iget-object v1, p0, Lcom/itextpdf/io/source/PdfTokenizer;->outBuf:Lcom/itextpdf/io/source/ByteBuffer;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/ByteBuffer;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0}, Lcom/itextpdf/io/source/PdfTokenizer;->isHexString()Z

    move-result v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lcom/itextpdf/io/source/PdfTokenizer;->decodeStringContent([BIIZ)[B

    move-result-object v0

    return-object v0
.end method

.method public getGenNr()I
    .locals 1

    .line 213
    iget v0, p0, Lcom/itextpdf/io/source/PdfTokenizer;->generation:I

    return v0
.end method

.method public getHeaderOffset()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 222
    const/16 v0, 0x400

    invoke-virtual {p0, v0}, Lcom/itextpdf/io/source/PdfTokenizer;->readString(I)Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, "str":Ljava/lang/String;
    const-string v1, "%PDF-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 224
    .local v1, "idx":I
    if-gez v1, :cond_1

    .line 225
    const-string v2, "%FDF-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 226
    if-ltz v1, :cond_0

    goto :goto_0

    .line 227
    :cond_0
    new-instance v2, Lcom/itextpdf/io/IOException;

    const-string v3, "PDF header not found."

    invoke-direct {v2, v3, p0}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    throw v2

    .line 230
    :cond_1
    :goto_0
    return v1
.end method

.method public getIntValue()I
    .locals 1

    .line 512
    invoke-virtual {p0}, Lcom/itextpdf/io/source/PdfTokenizer;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getLongValue()J
    .locals 2

    .line 508
    invoke-virtual {p0}, Lcom/itextpdf/io/source/PdfTokenizer;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getObjNr()I
    .locals 1

    .line 209
    iget v0, p0, Lcom/itextpdf/io/source/PdfTokenizer;->reference:I

    return v0
.end method

.method public getPosition()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/itextpdf/io/source/PdfTokenizer;->file:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->getPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSafeFile()Lcom/itextpdf/io/source/RandomAccessFileOrArray;
    .locals 1

    .line 528
    iget-object v0, p0, Lcom/itextpdf/io/source/PdfTokenizer;->file:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->createView()Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    move-result-object v0

    return-object v0
.end method

.method public getStartxref()J
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 251
    const/16 v0, 0x400

    .line 252
    .local v0, "arrLength":I
    iget-object v1, p0, Lcom/itextpdf/io/source/PdfTokenizer;->file:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->length()J

    move-result-wide v1

    .line 253
    .local v1, "fileLength":J
    int-to-long v3, v0

    sub-long v3, v1, v3

    .line 254
    .local v3, "pos":J
    const-wide/16 v5, 0x1

    cmp-long v5, v3, v5

    if-gez v5, :cond_0

    const-wide/16 v3, 0x1

    .line 255
    :cond_0
    :goto_0
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_2

    .line 256
    iget-object v5, p0, Lcom/itextpdf/io/source/PdfTokenizer;->file:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v5, v3, v4}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 257
    invoke-virtual {p0, v0}, Lcom/itextpdf/io/source/PdfTokenizer;->readString(I)Ljava/lang/String;

    move-result-object v5

    .line 258
    .local v5, "str":Ljava/lang/String;
    const-string/jumbo v6, "startxref"

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    .line 259
    .local v6, "idx":I
    if-ltz v6, :cond_1

    int-to-long v7, v6

    add-long/2addr v7, v3

    return-wide v7

    .line 261
    :cond_1
    int-to-long v7, v0

    sub-long v7, v3, v7

    const-wide/16 v9, 0x9

    add-long v3, v7, v9

    .line 262
    .end local v5    # "str":Ljava/lang/String;
    .end local v6    # "idx":I
    goto :goto_0

    .line 263
    :cond_2
    new-instance v5, Lcom/itextpdf/io/IOException;

    const-string v6, "PDF startxref not found."

    invoke-direct {v5, v6, p0}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    throw v5
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 4

    .line 187
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/itextpdf/io/source/PdfTokenizer;->outBuf:Lcom/itextpdf/io/source/ByteBuffer;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/ByteBuffer;->getInternalBuffer()[B

    move-result-object v1

    iget-object v2, p0, Lcom/itextpdf/io/source/PdfTokenizer;->outBuf:Lcom/itextpdf/io/source/ByteBuffer;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/ByteBuffer;->size()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([BII)V

    return-object v0
.end method

.method public getTokenType()Lcom/itextpdf/io/source/PdfTokenizer$TokenType;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/itextpdf/io/source/PdfTokenizer;->type:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    return-object v0
.end method

.method public isCloseStream()Z
    .locals 1

    .line 520
    iget-boolean v0, p0, Lcom/itextpdf/io/source/PdfTokenizer;->closeStream:Z

    return v0
.end method

.method public isHexString()Z
    .locals 1

    .line 516
    iget-boolean v0, p0, Lcom/itextpdf/io/source/PdfTokenizer;->hexString:Z

    return v0
.end method

.method public length()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lcom/itextpdf/io/source/PdfTokenizer;->file:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public nextToken()Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 341
    iget-object v0, p0, Lcom/itextpdf/io/source/PdfTokenizer;->outBuf:Lcom/itextpdf/io/source/ByteBuffer;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/ByteBuffer;->reset()Lcom/itextpdf/io/source/ByteBuffer;

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/io/source/PdfTokenizer;->file:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v0

    .line 344
    .local v0, "ch":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-static {v0}, Lcom/itextpdf/io/source/PdfTokenizer;->isWhitespace(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 345
    :cond_1
    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 346
    sget-object v1, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->EndOfFile:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    iput-object v1, p0, Lcom/itextpdf/io/source/PdfTokenizer;->type:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    .line 347
    return v2

    .line 349
    :cond_2
    const-string v3, "Error reading string."

    const/16 v4, 0x3e

    const/4 v5, 0x1

    sparse-switch v0, :sswitch_data_0

    .line 444
    const/16 v2, 0x2e

    const/16 v3, 0x39

    const/16 v4, 0x30

    const/16 v6, 0x2d

    if-eq v0, v6, :cond_14

    const/16 v7, 0x2b

    if-eq v0, v7, :cond_14

    if-eq v0, v2, :cond_14

    if-lt v0, v4, :cond_12

    if-gt v0, v3, :cond_12

    goto/16 :goto_7

    .line 355
    :sswitch_0
    sget-object v1, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->EndArray:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    iput-object v1, p0, Lcom/itextpdf/io/source/PdfTokenizer;->type:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    .line 356
    goto/16 :goto_b

    .line 351
    :sswitch_1
    sget-object v1, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->StartArray:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    iput-object v1, p0, Lcom/itextpdf/io/source/PdfTokenizer;->type:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    .line 352
    goto/16 :goto_b

    .line 370
    :sswitch_2
    iget-object v1, p0, Lcom/itextpdf/io/source/PdfTokenizer;->file:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v0

    .line 371
    if-eq v0, v4, :cond_3

    .line 372
    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "\'>\' not expected."

    invoke-virtual {p0, v2, v1}, Lcom/itextpdf/io/source/PdfTokenizer;->throwError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 373
    :cond_3
    sget-object v1, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->EndDic:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    iput-object v1, p0, Lcom/itextpdf/io/source/PdfTokenizer;->type:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    .line 374
    goto/16 :goto_b

    .line 377
    :sswitch_3
    iget-object v1, p0, Lcom/itextpdf/io/source/PdfTokenizer;->file:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v1

    .line 378
    .local v1, "v1":I
    const/16 v6, 0x3c

    if-ne v1, v6, :cond_4

    .line 379
    sget-object v2, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->StartDic:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    iput-object v2, p0, Lcom/itextpdf/io/source/PdfTokenizer;->type:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    .line 380
    goto/16 :goto_b

    .line 382
    :cond_4
    sget-object v6, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->String:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    iput-object v6, p0, Lcom/itextpdf/io/source/PdfTokenizer;->type:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    .line 383
    iput-boolean v5, p0, Lcom/itextpdf/io/source/PdfTokenizer;->hexString:Z

    .line 384
    const/4 v6, 0x0

    .line 386
    .local v6, "v2":I
    :goto_0
    invoke-static {v1}, Lcom/itextpdf/io/source/PdfTokenizer;->isWhitespace(I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 387
    iget-object v7, p0, Lcom/itextpdf/io/source/PdfTokenizer;->file:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v7}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v1

    goto :goto_0

    .line 388
    :cond_5
    if-ne v1, v4, :cond_6

    .line 389
    goto :goto_2

    .line 390
    :cond_6
    iget-object v7, p0, Lcom/itextpdf/io/source/PdfTokenizer;->outBuf:Lcom/itextpdf/io/source/ByteBuffer;

    invoke-virtual {v7, v1}, Lcom/itextpdf/io/source/ByteBuffer;->append(I)Lcom/itextpdf/io/source/ByteBuffer;

    .line 391
    invoke-static {v1}, Lcom/itextpdf/io/source/ByteBuffer;->getHex(I)I

    move-result v1

    .line 392
    if-gez v1, :cond_7

    .line 393
    goto :goto_2

    .line 394
    :cond_7
    iget-object v7, p0, Lcom/itextpdf/io/source/PdfTokenizer;->file:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v7}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v6

    .line 395
    :goto_1
    invoke-static {v6}, Lcom/itextpdf/io/source/PdfTokenizer;->isWhitespace(I)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 396
    iget-object v7, p0, Lcom/itextpdf/io/source/PdfTokenizer;->file:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v7}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v6

    goto :goto_1

    .line 397
    :cond_8
    if-ne v6, v4, :cond_9

    .line 398
    goto :goto_2

    .line 400
    :cond_9
    iget-object v7, p0, Lcom/itextpdf/io/source/PdfTokenizer;->outBuf:Lcom/itextpdf/io/source/ByteBuffer;

    invoke-virtual {v7, v6}, Lcom/itextpdf/io/source/ByteBuffer;->append(I)Lcom/itextpdf/io/source/ByteBuffer;

    .line 401
    invoke-static {v6}, Lcom/itextpdf/io/source/ByteBuffer;->getHex(I)I

    move-result v6

    .line 402
    if-gez v6, :cond_b

    .line 403
    nop

    .line 406
    :goto_2
    if-ltz v1, :cond_a

    if-gez v6, :cond_1c

    .line 407
    :cond_a
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v3, v2}, Lcom/itextpdf/io/source/PdfTokenizer;->throwError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_b

    .line 404
    :cond_b
    iget-object v7, p0, Lcom/itextpdf/io/source/PdfTokenizer;->file:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v7}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v1

    goto :goto_0

    .line 359
    .end local v1    # "v1":I
    .end local v6    # "v2":I
    :sswitch_4
    sget-object v1, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->Name:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    iput-object v1, p0, Lcom/itextpdf/io/source/PdfTokenizer;->type:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    .line 361
    :goto_3
    iget-object v1, p0, Lcom/itextpdf/io/source/PdfTokenizer;->file:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v0

    .line 362
    sget-object v1, Lcom/itextpdf/io/source/PdfTokenizer;->delims:[Z

    add-int/lit8 v2, v0, 0x1

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_c

    .line 363
    nop

    .line 366
    invoke-virtual {p0, v0}, Lcom/itextpdf/io/source/PdfTokenizer;->backOnePosition(I)V

    .line 367
    goto/16 :goto_b

    .line 364
    :cond_c
    iget-object v1, p0, Lcom/itextpdf/io/source/PdfTokenizer;->outBuf:Lcom/itextpdf/io/source/ByteBuffer;

    invoke-virtual {v1, v0}, Lcom/itextpdf/io/source/ByteBuffer;->append(I)Lcom/itextpdf/io/source/ByteBuffer;

    goto :goto_3

    .line 418
    :sswitch_5
    sget-object v4, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->String:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    iput-object v4, p0, Lcom/itextpdf/io/source/PdfTokenizer;->type:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    .line 419
    iput-boolean v2, p0, Lcom/itextpdf/io/source/PdfTokenizer;->hexString:Z

    .line 420
    const/4 v4, 0x0

    .line 422
    .local v4, "nesting":I
    :goto_4
    iget-object v6, p0, Lcom/itextpdf/io/source/PdfTokenizer;->file:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v6}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v0

    .line 423
    if-ne v0, v1, :cond_d

    .line 424
    goto :goto_5

    .line 425
    :cond_d
    const/16 v6, 0x28

    if-ne v0, v6, :cond_e

    .line 426
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 427
    :cond_e
    const/16 v6, 0x29

    if-ne v0, v6, :cond_f

    .line 428
    add-int/lit8 v4, v4, -0x1

    .line 429
    if-ne v4, v1, :cond_10

    .line 430
    goto :goto_5

    .line 431
    :cond_f
    const/16 v6, 0x5c

    if-ne v0, v6, :cond_10

    .line 432
    iget-object v7, p0, Lcom/itextpdf/io/source/PdfTokenizer;->outBuf:Lcom/itextpdf/io/source/ByteBuffer;

    invoke-virtual {v7, v6}, Lcom/itextpdf/io/source/ByteBuffer;->append(I)Lcom/itextpdf/io/source/ByteBuffer;

    .line 433
    iget-object v6, p0, Lcom/itextpdf/io/source/PdfTokenizer;->file:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v6}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v0

    .line 434
    if-gez v0, :cond_10

    .line 435
    nop

    .line 439
    :goto_5
    if-ne v0, v1, :cond_1c

    .line 440
    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v3, v1}, Lcom/itextpdf/io/source/PdfTokenizer;->throwError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_b

    .line 437
    :cond_10
    :goto_6
    iget-object v6, p0, Lcom/itextpdf/io/source/PdfTokenizer;->outBuf:Lcom/itextpdf/io/source/ByteBuffer;

    invoke-virtual {v6, v0}, Lcom/itextpdf/io/source/ByteBuffer;->append(I)Lcom/itextpdf/io/source/ByteBuffer;

    goto :goto_4

    .line 411
    .end local v4    # "nesting":I
    :sswitch_6
    sget-object v2, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->Comment:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    iput-object v2, p0, Lcom/itextpdf/io/source/PdfTokenizer;->type:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    .line 413
    :cond_11
    iget-object v2, p0, Lcom/itextpdf/io/source/PdfTokenizer;->file:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v0

    .line 414
    if-eq v0, v1, :cond_1c

    const/16 v2, 0xd

    if-eq v0, v2, :cond_1c

    const/16 v2, 0xa

    if-ne v0, v2, :cond_11

    .line 415
    goto/16 :goto_b

    .line 493
    :cond_12
    sget-object v2, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->Other:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    iput-object v2, p0, Lcom/itextpdf/io/source/PdfTokenizer;->type:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    .line 495
    :cond_13
    iget-object v2, p0, Lcom/itextpdf/io/source/PdfTokenizer;->outBuf:Lcom/itextpdf/io/source/ByteBuffer;

    invoke-virtual {v2, v0}, Lcom/itextpdf/io/source/ByteBuffer;->append(I)Lcom/itextpdf/io/source/ByteBuffer;

    .line 496
    iget-object v2, p0, Lcom/itextpdf/io/source/PdfTokenizer;->file:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v0

    .line 497
    sget-object v2, Lcom/itextpdf/io/source/PdfTokenizer;->delims:[Z

    add-int/lit8 v3, v0, 0x1

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_13

    goto/16 :goto_a

    .line 445
    :cond_14
    :goto_7
    sget-object v7, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->Number:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    iput-object v7, p0, Lcom/itextpdf/io/source/PdfTokenizer;->type:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    .line 446
    const/4 v7, 0x0

    .line 447
    .local v7, "isReal":Z
    const/4 v8, 0x0

    .line 448
    .local v8, "numberOfMinuses":I
    if-ne v0, v6, :cond_16

    .line 451
    :cond_15
    add-int/2addr v8, v5

    .line 452
    iget-object v9, p0, Lcom/itextpdf/io/source/PdfTokenizer;->file:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v9}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v0

    .line 453
    if-eq v0, v6, :cond_15

    .line 454
    iget-object v9, p0, Lcom/itextpdf/io/source/PdfTokenizer;->outBuf:Lcom/itextpdf/io/source/ByteBuffer;

    invoke-virtual {v9, v6}, Lcom/itextpdf/io/source/ByteBuffer;->append(I)Lcom/itextpdf/io/source/ByteBuffer;

    goto :goto_8

    .line 456
    :cond_16
    iget-object v9, p0, Lcom/itextpdf/io/source/PdfTokenizer;->outBuf:Lcom/itextpdf/io/source/ByteBuffer;

    invoke-virtual {v9, v0}, Lcom/itextpdf/io/source/ByteBuffer;->append(I)Lcom/itextpdf/io/source/ByteBuffer;

    .line 459
    iget-object v9, p0, Lcom/itextpdf/io/source/PdfTokenizer;->file:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v9}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v0

    .line 461
    :goto_8
    if-lt v0, v4, :cond_17

    if-gt v0, v3, :cond_17

    .line 462
    iget-object v9, p0, Lcom/itextpdf/io/source/PdfTokenizer;->outBuf:Lcom/itextpdf/io/source/ByteBuffer;

    invoke-virtual {v9, v0}, Lcom/itextpdf/io/source/ByteBuffer;->append(I)Lcom/itextpdf/io/source/ByteBuffer;

    .line 463
    iget-object v9, p0, Lcom/itextpdf/io/source/PdfTokenizer;->file:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v9}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v0

    goto :goto_8

    .line 466
    :cond_17
    if-ne v0, v2, :cond_1a

    .line 467
    const/4 v7, 0x1

    .line 468
    iget-object v2, p0, Lcom/itextpdf/io/source/PdfTokenizer;->outBuf:Lcom/itextpdf/io/source/ByteBuffer;

    invoke-virtual {v2, v0}, Lcom/itextpdf/io/source/ByteBuffer;->append(I)Lcom/itextpdf/io/source/ByteBuffer;

    .line 469
    iget-object v2, p0, Lcom/itextpdf/io/source/PdfTokenizer;->file:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v0

    .line 473
    const/4 v2, 0x0

    .line 474
    .local v2, "numberOfMinusesAfterDot":I
    if-ne v0, v6, :cond_18

    .line 475
    add-int/lit8 v2, v2, 0x1

    .line 476
    iget-object v6, p0, Lcom/itextpdf/io/source/PdfTokenizer;->file:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v6}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v0

    .line 478
    :cond_18
    :goto_9
    if-lt v0, v4, :cond_1a

    if-gt v0, v3, :cond_1a

    .line 479
    if-nez v2, :cond_19

    .line 480
    iget-object v6, p0, Lcom/itextpdf/io/source/PdfTokenizer;->outBuf:Lcom/itextpdf/io/source/ByteBuffer;

    invoke-virtual {v6, v0}, Lcom/itextpdf/io/source/ByteBuffer;->append(I)Lcom/itextpdf/io/source/ByteBuffer;

    .line 482
    :cond_19
    iget-object v6, p0, Lcom/itextpdf/io/source/PdfTokenizer;->file:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v6}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v0

    goto :goto_9

    .line 486
    .end local v2    # "numberOfMinusesAfterDot":I
    :cond_1a
    if-le v8, v5, :cond_1b

    if-nez v7, :cond_1b

    .line 489
    iget-object v2, p0, Lcom/itextpdf/io/source/PdfTokenizer;->outBuf:Lcom/itextpdf/io/source/ByteBuffer;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/ByteBuffer;->reset()Lcom/itextpdf/io/source/ByteBuffer;

    .line 490
    iget-object v2, p0, Lcom/itextpdf/io/source/PdfTokenizer;->outBuf:Lcom/itextpdf/io/source/ByteBuffer;

    invoke-virtual {v2, v4}, Lcom/itextpdf/io/source/ByteBuffer;->append(I)Lcom/itextpdf/io/source/ByteBuffer;

    .line 492
    .end local v7    # "isReal":Z
    .end local v8    # "numberOfMinuses":I
    :cond_1b
    nop

    .line 499
    :goto_a
    if-eq v0, v1, :cond_1c

    .line 500
    invoke-virtual {p0, v0}, Lcom/itextpdf/io/source/PdfTokenizer;->backOnePosition(I)V

    .line 504
    :cond_1c
    :goto_b
    return v5

    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_6
        0x28 -> :sswitch_5
        0x2f -> :sswitch_4
        0x3c -> :sswitch_3
        0x3e -> :sswitch_2
        0x5b -> :sswitch_1
        0x5d -> :sswitch_0
    .end sparse-switch
.end method

.method public nextValidToken()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 267
    const/4 v0, 0x0

    .line 268
    .local v0, "level":I
    const/4 v1, 0x0

    .line 269
    .local v1, "n1":[B
    const/4 v2, 0x0

    .line 270
    .local v2, "n2":[B
    const-wide/16 v3, 0x0

    .line 271
    .local v3, "ptr":J
    :goto_0
    invoke-virtual {p0}, Lcom/itextpdf/io/source/PdfTokenizer;->nextToken()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_7

    .line 272
    iget-object v5, p0, Lcom/itextpdf/io/source/PdfTokenizer;->type:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    sget-object v7, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->Comment:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    if-ne v5, v7, :cond_0

    .line 273
    goto :goto_0

    .line 274
    :cond_0
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 295
    :pswitch_0
    iget-object v5, p0, Lcom/itextpdf/io/source/PdfTokenizer;->type:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    sget-object v7, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->Other:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    if-ne v5, v7, :cond_4

    .line 296
    sget-object v5, Lcom/itextpdf/io/source/PdfTokenizer;->R:[B

    invoke-virtual {p0, v5}, Lcom/itextpdf/io/source/PdfTokenizer;->tokenValueEqualsTo([B)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 297
    if-eqz v2, :cond_1

    .line 298
    sget-object v5, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->Ref:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    iput-object v5, p0, Lcom/itextpdf/io/source/PdfTokenizer;->type:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    .line 300
    :try_start_0
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/itextpdf/io/source/PdfTokenizer;->reference:I

    .line 301
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2}, Ljava/lang/String;-><init>([B)V

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/itextpdf/io/source/PdfTokenizer;->generation:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    goto :goto_1

    .line 302
    :catch_0
    move-exception v5

    .line 305
    .local v5, "ex":Ljava/lang/Exception;
    const-class v7, Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-static {v7}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v7

    .line 306
    .local v7, "logger":Lorg/slf4j/Logger;
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v1}, Ljava/lang/String;-><init>([B)V

    const/4 v10, 0x0

    aput-object v9, v8, v10

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v2}, Ljava/lang/String;-><init>([B)V

    aput-object v9, v8, v6

    const-string v6, "Invalid indirect reference {0} {1} R"

    invoke-static {v6, v8}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v6}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 307
    const/4 v6, -0x1

    iput v6, p0, Lcom/itextpdf/io/source/PdfTokenizer;->reference:I

    .line 308
    iput v10, p0, Lcom/itextpdf/io/source/PdfTokenizer;->generation:I

    .line 310
    .end local v5    # "ex":Ljava/lang/Exception;
    .end local v7    # "logger":Lorg/slf4j/Logger;
    :goto_1
    return-void

    .line 297
    :cond_1
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 311
    :cond_2
    sget-object v5, Lcom/itextpdf/io/source/PdfTokenizer;->Obj:[B

    invoke-virtual {p0, v5}, Lcom/itextpdf/io/source/PdfTokenizer;->tokenValueEqualsTo([B)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 312
    if-eqz v2, :cond_3

    .line 313
    sget-object v5, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->Obj:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    iput-object v5, p0, Lcom/itextpdf/io/source/PdfTokenizer;->type:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    .line 314
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/itextpdf/io/source/PdfTokenizer;->reference:I

    .line 315
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2}, Ljava/lang/String;-><init>([B)V

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/itextpdf/io/source/PdfTokenizer;->generation:I

    .line 316
    return-void

    .line 312
    :cond_3
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 319
    :cond_4
    iget-object v5, p0, Lcom/itextpdf/io/source/PdfTokenizer;->file:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v5, v3, v4}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 320
    sget-object v5, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->Number:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    iput-object v5, p0, Lcom/itextpdf/io/source/PdfTokenizer;->type:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    .line 321
    iget-object v5, p0, Lcom/itextpdf/io/source/PdfTokenizer;->outBuf:Lcom/itextpdf/io/source/ByteBuffer;

    invoke-virtual {v5}, Lcom/itextpdf/io/source/ByteBuffer;->reset()Lcom/itextpdf/io/source/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/itextpdf/io/source/ByteBuffer;->append([B)Lcom/itextpdf/io/source/ByteBuffer;

    .line 322
    return-void

    .line 284
    :pswitch_1
    iget-object v5, p0, Lcom/itextpdf/io/source/PdfTokenizer;->type:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    sget-object v6, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->Number:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    if-eq v5, v6, :cond_5

    .line 285
    iget-object v5, p0, Lcom/itextpdf/io/source/PdfTokenizer;->file:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v5, v3, v4}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 286
    sget-object v5, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->Number:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    iput-object v5, p0, Lcom/itextpdf/io/source/PdfTokenizer;->type:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    .line 287
    iget-object v5, p0, Lcom/itextpdf/io/source/PdfTokenizer;->outBuf:Lcom/itextpdf/io/source/ByteBuffer;

    invoke-virtual {v5}, Lcom/itextpdf/io/source/ByteBuffer;->reset()Lcom/itextpdf/io/source/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/itextpdf/io/source/ByteBuffer;->append([B)Lcom/itextpdf/io/source/ByteBuffer;

    .line 288
    return-void

    .line 290
    :cond_5
    invoke-virtual {p0}, Lcom/itextpdf/io/source/PdfTokenizer;->getByteContent()[B

    move-result-object v2

    .line 291
    add-int/lit8 v0, v0, 0x1

    .line 292
    goto :goto_2

    .line 276
    :pswitch_2
    iget-object v5, p0, Lcom/itextpdf/io/source/PdfTokenizer;->type:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    sget-object v6, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->Number:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    if-eq v5, v6, :cond_6

    .line 277
    return-void

    .line 278
    :cond_6
    iget-object v5, p0, Lcom/itextpdf/io/source/PdfTokenizer;->file:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v5}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->getPosition()J

    move-result-wide v3

    .line 279
    invoke-virtual {p0}, Lcom/itextpdf/io/source/PdfTokenizer;->getByteContent()[B

    move-result-object v1

    .line 280
    add-int/lit8 v0, v0, 0x1

    .line 281
    nop

    .line 322
    :goto_2
    goto/16 :goto_0

    .line 329
    :cond_7
    if-ne v0, v6, :cond_8

    .line 330
    sget-object v5, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->Number:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    iput-object v5, p0, Lcom/itextpdf/io/source/PdfTokenizer;->type:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    .line 331
    iget-object v5, p0, Lcom/itextpdf/io/source/PdfTokenizer;->outBuf:Lcom/itextpdf/io/source/ByteBuffer;

    invoke-virtual {v5}, Lcom/itextpdf/io/source/ByteBuffer;->reset()Lcom/itextpdf/io/source/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/itextpdf/io/source/ByteBuffer;->append([B)Lcom/itextpdf/io/source/ByteBuffer;

    .line 337
    :cond_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lcom/itextpdf/io/source/PdfTokenizer;->file:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v0

    return v0
.end method

.method public readFully([B)V
    .locals 1
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/itextpdf/io/source/PdfTokenizer;->file:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readFully([B)V

    .line 147
    return-void
.end method

.method public readLineSegment(Lcom/itextpdf/io/source/ByteBuffer;)Z
    .locals 1
    .param p1, "buffer"    # Lcom/itextpdf/io/source/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 723
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/io/source/PdfTokenizer;->readLineSegment(Lcom/itextpdf/io/source/ByteBuffer;Z)Z

    move-result v0

    return v0
.end method

.method public readLineSegment(Lcom/itextpdf/io/source/ByteBuffer;Z)Z
    .locals 7
    .param p1, "buffer"    # Lcom/itextpdf/io/source/ByteBuffer;
    .param p2, "isNullWhitespace"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 739
    const/4 v0, 0x0

    .line 743
    .local v0, "eol":Z
    :goto_0
    invoke-virtual {p0}, Lcom/itextpdf/io/source/PdfTokenizer;->read()I

    move-result v1

    move v2, v1

    .local v2, "c":I
    invoke-static {v1, p2}, Lcom/itextpdf/io/source/PdfTokenizer;->isWhitespace(IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 745
    :cond_0
    const/4 v1, 0x0

    .line 746
    .local v1, "prevWasWhitespace":Z
    :goto_1
    const/16 v3, 0xa

    if-nez v0, :cond_5

    .line 747
    sparse-switch v2, :sswitch_data_0

    .line 768
    const/4 v1, 0x0

    .line 769
    int-to-byte v3, v2

    invoke-virtual {p1, v3}, Lcom/itextpdf/io/source/ByteBuffer;->append(B)Lcom/itextpdf/io/source/ByteBuffer;

    goto :goto_2

    .line 753
    :sswitch_0
    const/4 v0, 0x1

    .line 754
    invoke-virtual {p0}, Lcom/itextpdf/io/source/PdfTokenizer;->getPosition()J

    move-result-wide v4

    .line 755
    .local v4, "cur":J
    invoke-virtual {p0}, Lcom/itextpdf/io/source/PdfTokenizer;->read()I

    move-result v6

    if-eq v6, v3, :cond_2

    .line 756
    invoke-virtual {p0, v4, v5}, Lcom/itextpdf/io/source/PdfTokenizer;->seek(J)V

    goto :goto_2

    .line 762
    .end local v4    # "cur":J
    :sswitch_1
    if-eqz v1, :cond_1

    .line 763
    goto :goto_2

    .line 764
    :cond_1
    const/4 v1, 0x1

    .line 765
    int-to-byte v3, v2

    invoke-virtual {p1, v3}, Lcom/itextpdf/io/source/ByteBuffer;->append(B)Lcom/itextpdf/io/source/ByteBuffer;

    .line 766
    goto :goto_2

    .line 750
    :sswitch_2
    const/4 v0, 0x1

    .line 751
    nop

    .line 773
    :cond_2
    :goto_2
    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/itextpdf/io/source/ByteBuffer;->size()I

    move-result v3

    invoke-virtual {p1}, Lcom/itextpdf/io/source/ByteBuffer;->capacity()I

    move-result v4

    if-ne v3, v4, :cond_3

    goto :goto_3

    .line 776
    :cond_3
    invoke-virtual {p0}, Lcom/itextpdf/io/source/PdfTokenizer;->read()I

    move-result v2

    goto :goto_1

    .line 774
    :cond_4
    :goto_3
    const/4 v0, 0x1

    goto :goto_1

    .line 779
    :cond_5
    invoke-virtual {p1}, Lcom/itextpdf/io/source/ByteBuffer;->size()I

    move-result v4

    invoke-virtual {p1}, Lcom/itextpdf/io/source/ByteBuffer;->capacity()I

    move-result v5

    if-ne v4, v5, :cond_7

    .line 780
    const/4 v0, 0x0

    .line 781
    :goto_4
    if-nez v0, :cond_7

    .line 782
    invoke-virtual {p0}, Lcom/itextpdf/io/source/PdfTokenizer;->read()I

    move-result v4

    move v2, v4

    sparse-switch v4, :sswitch_data_1

    goto :goto_5

    .line 788
    :sswitch_3
    const/4 v0, 0x1

    .line 789
    invoke-virtual {p0}, Lcom/itextpdf/io/source/PdfTokenizer;->getPosition()J

    move-result-wide v4

    .line 790
    .restart local v4    # "cur":J
    invoke-virtual {p0}, Lcom/itextpdf/io/source/PdfTokenizer;->read()I

    move-result v6

    if-eq v6, v3, :cond_6

    .line 791
    invoke-virtual {p0, v4, v5}, Lcom/itextpdf/io/source/PdfTokenizer;->seek(J)V

    goto :goto_5

    .line 785
    .end local v4    # "cur":J
    :sswitch_4
    const/4 v0, 0x1

    .line 786
    nop

    .line 793
    :cond_6
    :goto_5
    goto :goto_4

    .line 797
    :cond_7
    const/4 v3, -0x1

    if-ne v2, v3, :cond_9

    invoke-virtual {p1}, Lcom/itextpdf/io/source/ByteBuffer;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_6

    :cond_8
    const/4 v3, 0x0

    goto :goto_7

    :cond_9
    :goto_6
    const/4 v3, 0x1

    :goto_7
    return v3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_2
        0x9 -> :sswitch_1
        0xa -> :sswitch_2
        0xc -> :sswitch_1
        0xd -> :sswitch_0
        0x20 -> :sswitch_1
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x1 -> :sswitch_4
        0xa -> :sswitch_4
        0xd -> :sswitch_3
    .end sparse-switch
.end method

.method public readString(I)Ljava/lang/String;
    .locals 3
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    .local v0, "buf":Ljava/lang/StringBuilder;
    :goto_0
    add-int/lit8 v1, p1, -0x1

    .end local p1    # "size":I
    .local v1, "size":I
    if-lez p1, :cond_1

    .line 170
    invoke-virtual {p0}, Lcom/itextpdf/io/source/PdfTokenizer;->read()I

    move-result p1

    .line 171
    .local p1, "ch":I
    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    .line 172
    goto :goto_1

    .line 173
    :cond_0
    int-to-char v2, p1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move p1, v1

    goto :goto_0

    .line 175
    .end local p1    # "ch":I
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public seek(J)V
    .locals 1
    .param p1, "pos"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/itextpdf/io/source/PdfTokenizer;->file:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 143
    return-void
.end method

.method public setCloseStream(Z)V
    .locals 0
    .param p1, "closeStream"    # Z

    .line 524
    iput-boolean p1, p0, Lcom/itextpdf/io/source/PdfTokenizer;->closeStream:Z

    .line 525
    return-void
.end method

.method public varargs throwError(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7
    .param p1, "error"    # Ljava/lang/String;
    .param p2, "messageParams"    # [Ljava/lang/Object;

    .line 688
    const-string v0, "Error at file pointer {0}."

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Lcom/itextpdf/io/IOException;

    new-instance v4, Lcom/itextpdf/io/IOException;

    invoke-direct {v4, p1}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Lcom/itextpdf/io/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/IOException;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/itextpdf/io/source/PdfTokenizer;->file:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    .line 689
    invoke-virtual {v5}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->getPosition()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v3, v4}, Lcom/itextpdf/io/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/IOException;

    move-result-object v3

    .end local p1    # "error":Ljava/lang/String;
    .end local p2    # "messageParams":[Ljava/lang/Object;
    throw v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 690
    .restart local p1    # "error":Ljava/lang/String;
    .restart local p2    # "messageParams":[Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 691
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Lcom/itextpdf/io/IOException;

    new-instance v5, Lcom/itextpdf/io/IOException;

    invoke-direct {v5, p1}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Lcom/itextpdf/io/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/IOException;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string v2, "no position"

    aput-object v2, v0, v1

    .line 692
    invoke-virtual {v4, v0}, Lcom/itextpdf/io/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public tokenValueEqualsTo([B)Z
    .locals 5
    .param p1, "cmp"    # [B

    .line 195
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 196
    return v0

    .line 198
    :cond_0
    array-length v1, p1

    .line 199
    .local v1, "size":I
    iget-object v2, p0, Lcom/itextpdf/io/source/PdfTokenizer;->outBuf:Lcom/itextpdf/io/source/ByteBuffer;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/ByteBuffer;->size()I

    move-result v2

    if-eq v2, v1, :cond_1

    .line 200
    return v0

    .line 202
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 203
    aget-byte v3, p1, v2

    iget-object v4, p0, Lcom/itextpdf/io/source/PdfTokenizer;->outBuf:Lcom/itextpdf/io/source/ByteBuffer;

    invoke-virtual {v4}, Lcom/itextpdf/io/source/ByteBuffer;->getInternalBuffer()[B

    move-result-object v4

    aget-byte v4, v4, v2

    if-eq v3, v4, :cond_2

    .line 204
    return v0

    .line 202
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 205
    .end local v2    # "i":I
    :cond_3
    const/4 v0, 0x1

    return v0
.end method
