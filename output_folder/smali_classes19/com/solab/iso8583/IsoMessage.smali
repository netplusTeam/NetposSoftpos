.class public Lcom/solab/iso8583/IsoMessage;
.super Ljava/lang/Object;
.source "IsoMessage.java"


# static fields
.field static final HEX:[B


# instance fields
.field private binBitmap:Z

.field private binIsoHeader:[B

.field private binaryFields:Z

.field private binaryHeader:Z

.field private encodeVariableLengthFieldsInHex:Z

.field private encoding:Ljava/lang/String;

.field private etx:I

.field private fields:[Lcom/solab/iso8583/IsoValue;

.field private forceStringEncoding:Z

.field private forceb2:Z

.field private isoHeader:Ljava/lang/String;

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/solab/iso8583/IsoMessage;->HEX:[B

    return-void

    :array_0
    .array-data 1
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
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/16 v0, 0x81

    new-array v0, v0, [Lcom/solab/iso8583/IsoValue;

    iput-object v0, p0, Lcom/solab/iso8583/IsoMessage;->fields:[Lcom/solab/iso8583/IsoValue;

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Lcom/solab/iso8583/IsoMessage;->etx:I

    .line 61
    const-string v0, "file.encoding"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/solab/iso8583/IsoMessage;->encoding:Ljava/lang/String;

    .line 65
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "header"    # Ljava/lang/String;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/16 v0, 0x81

    new-array v0, v0, [Lcom/solab/iso8583/IsoValue;

    iput-object v0, p0, Lcom/solab/iso8583/IsoMessage;->fields:[Lcom/solab/iso8583/IsoValue;

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Lcom/solab/iso8583/IsoMessage;->etx:I

    .line 61
    const-string v0, "file.encoding"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/solab/iso8583/IsoMessage;->encoding:Ljava/lang/String;

    .line 69
    iput-object p1, p0, Lcom/solab/iso8583/IsoMessage;->isoHeader:Ljava/lang/String;

    .line 70
    return-void
.end method

.method protected constructor <init>([B)V
    .locals 1
    .param p1, "binaryHeader"    # [B

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/16 v0, 0x81

    new-array v0, v0, [Lcom/solab/iso8583/IsoValue;

    iput-object v0, p0, Lcom/solab/iso8583/IsoMessage;->fields:[Lcom/solab/iso8583/IsoValue;

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Lcom/solab/iso8583/IsoMessage;->etx:I

    .line 61
    const-string v0, "file.encoding"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/solab/iso8583/IsoMessage;->encoding:Ljava/lang/String;

    .line 73
    iput-object p1, p0, Lcom/solab/iso8583/IsoMessage;->binIsoHeader:[B

    .line 74
    return-void
.end method


# virtual methods
.method public apply(I)Lcom/solab/iso8583/IsoValue;
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/solab/iso8583/IsoValue<",
            "TT;>;"
        }
    .end annotation

    .line 554
    invoke-virtual {p0, p1}, Lcom/solab/iso8583/IsoMessage;->getField(I)Lcom/solab/iso8583/IsoValue;

    move-result-object v0

    return-object v0
.end method

.method public varargs copyFieldsFrom(Lcom/solab/iso8583/IsoMessage;[I)V
    .locals 10
    .param p1, "src"    # Lcom/solab/iso8583/IsoMessage;
    .param p2, "idx"    # [I

    .line 560
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget v8, p2, v1

    .line 561
    .local v8, "i":I
    invoke-virtual {p1, v8}, Lcom/solab/iso8583/IsoMessage;->getField(I)Lcom/solab/iso8583/IsoValue;

    move-result-object v9

    .line 562
    .local v9, "v":Lcom/solab/iso8583/IsoValue;, "Lcom/solab/iso8583/IsoValue<Ljava/lang/Object;>;"
    if-eqz v9, :cond_0

    .line 563
    invoke-virtual {v9}, Lcom/solab/iso8583/IsoValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v9}, Lcom/solab/iso8583/IsoValue;->getEncoder()Lcom/solab/iso8583/CustomFieldEncoder;

    move-result-object v5

    invoke-virtual {v9}, Lcom/solab/iso8583/IsoValue;->getType()Lcom/solab/iso8583/IsoType;

    move-result-object v6

    invoke-virtual {v9}, Lcom/solab/iso8583/IsoValue;->getLength()I

    move-result v7

    move-object v2, p0

    move v3, v8

    invoke-virtual/range {v2 .. v7}, Lcom/solab/iso8583/IsoMessage;->setValue(ILjava/lang/Object;Lcom/solab/iso8583/CustomFieldEncoder;Lcom/solab/iso8583/IsoType;I)Lcom/solab/iso8583/IsoMessage;

    .line 560
    .end local v8    # "i":I
    .end local v9    # "v":Lcom/solab/iso8583/IsoValue;, "Lcom/solab/iso8583/IsoValue<Ljava/lang/Object;>;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 566
    :cond_1
    return-void
.end method

.method protected createBitmapBitSet()Ljava/util/BitSet;
    .locals 5

    .line 383
    new-instance v0, Ljava/util/BitSet;

    iget-boolean v1, p0, Lcom/solab/iso8583/IsoMessage;->forceb2:Z

    const/16 v2, 0x80

    const/16 v3, 0x40

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    .line 384
    .local v0, "bs":Ljava/util/BitSet;
    const/4 v1, 0x2

    .local v1, "i":I
    :goto_1
    const/16 v4, 0x81

    if-ge v1, v4, :cond_2

    .line 385
    iget-object v4, p0, Lcom/solab/iso8583/IsoMessage;->fields:[Lcom/solab/iso8583/IsoValue;

    aget-object v4, v4, v1

    if-eqz v4, :cond_1

    .line 386
    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    .line 384
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 389
    .end local v1    # "i":I
    :cond_2
    iget-boolean v1, p0, Lcom/solab/iso8583/IsoMessage;->forceb2:Z

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    .line 390
    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    goto :goto_2

    .line 391
    :cond_3
    invoke-virtual {v0}, Ljava/util/BitSet;->length()I

    move-result v1

    if-le v1, v3, :cond_4

    .line 393
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v2}, Ljava/util/BitSet;-><init>(I)V

    .line 394
    .local v1, "b2":Ljava/util/BitSet;
    invoke-virtual {v1, v0}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 395
    move-object v0, v1

    .line 396
    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    .line 398
    .end local v1    # "b2":Ljava/util/BitSet;
    :cond_4
    :goto_2
    return-object v0
.end method

.method public debugString()Ljava/lang/String;
    .locals 11

    .line 494
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 495
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/solab/iso8583/IsoMessage;->isoHeader:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 496
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 497
    :cond_0
    iget-object v1, p0, Lcom/solab/iso8583/IsoMessage;->binIsoHeader:[B

    if-eqz v1, :cond_1

    .line 498
    const-string v1, "[0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/solab/iso8583/IsoMessage;->binIsoHeader:[B

    array-length v4, v3

    invoke-static {v3, v2, v4}, Lcom/solab/iso8583/util/HexCodec;->hexEncode([BII)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    :cond_1
    :goto_0
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Object;

    iget v4, p0, Lcom/solab/iso8583/IsoMessage;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    const-string v4, "%04x"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    invoke-virtual {p0}, Lcom/solab/iso8583/IsoMessage;->createBitmapBitSet()Ljava/util/BitSet;

    move-result-object v3

    .line 504
    .local v3, "bs":Ljava/util/BitSet;
    const/4 v4, 0x0

    .line 505
    .local v4, "pos":I
    invoke-virtual {v3}, Ljava/util/BitSet;->size()I

    move-result v5

    div-int/lit8 v5, v5, 0x4

    .line 506
    .local v5, "lim":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v5, :cond_6

    .line 507
    const/4 v7, 0x0

    .line 508
    .local v7, "nibble":I
    add-int/lit8 v8, v4, 0x1

    .end local v4    # "pos":I
    .local v8, "pos":I
    invoke-virtual {v3, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 509
    or-int/lit8 v7, v7, 0x8

    .line 510
    :cond_2
    add-int/lit8 v4, v8, 0x1

    .end local v8    # "pos":I
    .restart local v4    # "pos":I
    invoke-virtual {v3, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 511
    or-int/lit8 v7, v7, 0x4

    .line 512
    :cond_3
    add-int/lit8 v8, v4, 0x1

    .end local v4    # "pos":I
    .restart local v8    # "pos":I
    invoke-virtual {v3, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 513
    or-int/lit8 v7, v7, 0x2

    .line 514
    :cond_4
    add-int/lit8 v4, v8, 0x1

    .end local v8    # "pos":I
    .restart local v4    # "pos":I
    invoke-virtual {v3, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 515
    or-int/lit8 v7, v7, 0x1

    .line 516
    :cond_5
    new-instance v8, Ljava/lang/String;

    sget-object v9, Lcom/solab/iso8583/IsoMessage;->HEX:[B

    invoke-direct {v8, v9, v7, v1}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    .end local v7    # "nibble":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 520
    .end local v6    # "i":I
    :cond_6
    const/4 v6, 0x2

    .restart local v6    # "i":I
    :goto_2
    const/16 v7, 0x81

    if-ge v6, v7, :cond_e

    .line 521
    iget-object v7, p0, Lcom/solab/iso8583/IsoMessage;->fields:[Lcom/solab/iso8583/IsoValue;

    aget-object v7, v7, v6

    .line 522
    .local v7, "v":Lcom/solab/iso8583/IsoValue;, "Lcom/solab/iso8583/IsoValue<*>;"
    if-eqz v7, :cond_d

    .line 523
    invoke-virtual {v7}, Lcom/solab/iso8583/IsoValue;->toString()Ljava/lang/String;

    move-result-object v8

    .line 524
    .local v8, "desc":Ljava/lang/String;
    invoke-virtual {v7}, Lcom/solab/iso8583/IsoValue;->getType()Lcom/solab/iso8583/IsoType;

    move-result-object v9

    sget-object v10, Lcom/solab/iso8583/IsoType;->LLBIN:Lcom/solab/iso8583/IsoType;

    if-eq v9, v10, :cond_b

    invoke-virtual {v7}, Lcom/solab/iso8583/IsoValue;->getType()Lcom/solab/iso8583/IsoType;

    move-result-object v9

    sget-object v10, Lcom/solab/iso8583/IsoType;->LLBCDBIN:Lcom/solab/iso8583/IsoType;

    if-eq v9, v10, :cond_b

    invoke-virtual {v7}, Lcom/solab/iso8583/IsoValue;->getType()Lcom/solab/iso8583/IsoType;

    move-result-object v9

    sget-object v10, Lcom/solab/iso8583/IsoType;->LLVAR:Lcom/solab/iso8583/IsoType;

    if-ne v9, v10, :cond_7

    goto :goto_4

    .line 526
    :cond_7
    invoke-virtual {v7}, Lcom/solab/iso8583/IsoValue;->getType()Lcom/solab/iso8583/IsoType;

    move-result-object v9

    sget-object v10, Lcom/solab/iso8583/IsoType;->LLLBIN:Lcom/solab/iso8583/IsoType;

    if-eq v9, v10, :cond_a

    invoke-virtual {v7}, Lcom/solab/iso8583/IsoValue;->getType()Lcom/solab/iso8583/IsoType;

    move-result-object v9

    sget-object v10, Lcom/solab/iso8583/IsoType;->LLLBCDBIN:Lcom/solab/iso8583/IsoType;

    if-eq v9, v10, :cond_a

    invoke-virtual {v7}, Lcom/solab/iso8583/IsoValue;->getType()Lcom/solab/iso8583/IsoType;

    move-result-object v9

    sget-object v10, Lcom/solab/iso8583/IsoType;->LLLVAR:Lcom/solab/iso8583/IsoType;

    if-ne v9, v10, :cond_8

    goto :goto_3

    .line 528
    :cond_8
    invoke-virtual {v7}, Lcom/solab/iso8583/IsoValue;->getType()Lcom/solab/iso8583/IsoType;

    move-result-object v9

    sget-object v10, Lcom/solab/iso8583/IsoType;->LLLLBIN:Lcom/solab/iso8583/IsoType;

    if-eq v9, v10, :cond_9

    invoke-virtual {v7}, Lcom/solab/iso8583/IsoValue;->getType()Lcom/solab/iso8583/IsoType;

    move-result-object v9

    sget-object v10, Lcom/solab/iso8583/IsoType;->LLLLBCDBIN:Lcom/solab/iso8583/IsoType;

    if-eq v9, v10, :cond_9

    invoke-virtual {v7}, Lcom/solab/iso8583/IsoValue;->getType()Lcom/solab/iso8583/IsoType;

    move-result-object v9

    sget-object v10, Lcom/solab/iso8583/IsoType;->LLLLVAR:Lcom/solab/iso8583/IsoType;

    if-ne v9, v10, :cond_c

    .line 529
    :cond_9
    new-array v9, v1, [Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v2

    const-string v10, "%04d"

    invoke-static {v10, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 527
    :cond_a
    :goto_3
    new-array v9, v1, [Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v2

    const-string v10, "%03d"

    invoke-static {v10, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 525
    :cond_b
    :goto_4
    new-array v9, v1, [Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v2

    const-string v10, "%02d"

    invoke-static {v10, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    :cond_c
    :goto_5
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    .end local v7    # "v":Lcom/solab/iso8583/IsoValue;, "Lcom/solab/iso8583/IsoValue<*>;"
    .end local v8    # "desc":Ljava/lang/String;
    :cond_d
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 534
    .end local v6    # "i":I
    :cond_e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getAt(I)Lcom/solab/iso8583/IsoValue;
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/solab/iso8583/IsoValue<",
            "TT;>;"
        }
    .end annotation

    .line 544
    invoke-virtual {p0, p1}, Lcom/solab/iso8583/IsoMessage;->getField(I)Lcom/solab/iso8583/IsoValue;

    move-result-object v0

    return-object v0
.end method

.method public getBinaryIsoHeader()[B
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/solab/iso8583/IsoMessage;->binIsoHeader:[B

    return-object v0
.end method

.method public getCharacterEncoding()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/solab/iso8583/IsoMessage;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getField(I)Lcom/solab/iso8583/IsoValue;
    .locals 1
    .param p1, "field"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/solab/iso8583/IsoValue<",
            "TT;>;"
        }
    .end annotation

    .line 213
    iget-object v0, p0, Lcom/solab/iso8583/IsoMessage;->fields:[Lcom/solab/iso8583/IsoValue;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getForceSecondaryBitmap()Z
    .locals 1

    .line 95
    iget-boolean v0, p0, Lcom/solab/iso8583/IsoMessage;->forceb2:Z

    return v0
.end method

.method public getIsoHeader()Ljava/lang/String;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/solab/iso8583/IsoMessage;->isoHeader:Ljava/lang/String;

    return-object v0
.end method

.method public getObjectValue(I)Ljava/lang/Object;
    .locals 2
    .param p1, "field"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)TT;"
        }
    .end annotation

    .line 206
    iget-object v0, p0, Lcom/solab/iso8583/IsoMessage;->fields:[Lcom/solab/iso8583/IsoValue;

    aget-object v0, v0, p1

    .line 207
    .local v0, "v":Lcom/solab/iso8583/IsoValue;, "Lcom/solab/iso8583/IsoValue<TT;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/solab/iso8583/IsoValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public getType()I
    .locals 1

    .line 157
    iget v0, p0, Lcom/solab/iso8583/IsoMessage;->type:I

    return v0
.end method

.method public varargs hasAnyField([I)Z
    .locals 5
    .param p1, "idx"    # [I

    .line 588
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p1, v2

    .line 589
    .local v3, "i":I
    invoke-virtual {p0, v3}, Lcom/solab/iso8583/IsoMessage;->hasField(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 590
    const/4 v0, 0x1

    return v0

    .line 588
    .end local v3    # "i":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 593
    :cond_1
    return v1
.end method

.method public varargs hasEveryField([I)Z
    .locals 5
    .param p1, "idx"    # [I

    .line 578
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p1, v2

    .line 579
    .local v3, "i":I
    invoke-virtual {p0, v3}, Lcom/solab/iso8583/IsoMessage;->hasField(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 580
    return v1

    .line 578
    .end local v3    # "i":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 583
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public hasField(I)Z
    .locals 1
    .param p1, "idx"    # I

    .line 299
    iget-object v0, p0, Lcom/solab/iso8583/IsoMessage;->fields:[Lcom/solab/iso8583/IsoValue;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isBinary()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 172
    iget-boolean v0, p0, Lcom/solab/iso8583/IsoMessage;->binaryHeader:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/solab/iso8583/IsoMessage;->binaryFields:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isBinaryBitmap()Z
    .locals 1

    .line 85
    iget-boolean v0, p0, Lcom/solab/iso8583/IsoMessage;->binBitmap:Z

    return v0
.end method

.method public isBinaryFields()Z
    .locals 1

    .line 192
    iget-boolean v0, p0, Lcom/solab/iso8583/IsoMessage;->binaryFields:Z

    return v0
.end method

.method public isBinaryHeader()Z
    .locals 1

    .line 182
    iget-boolean v0, p0, Lcom/solab/iso8583/IsoMessage;->binaryHeader:Z

    return v0
.end method

.method public isEncodeVariableLengthFieldsInHex()Z
    .locals 1

    .line 126
    iget-boolean v0, p0, Lcom/solab/iso8583/IsoMessage;->encodeVariableLengthFieldsInHex:Z

    return v0
.end method

.method public putAt(ILcom/solab/iso8583/IsoValue;)V
    .locals 0
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/solab/iso8583/IsoValue<",
            "TT;>;)V"
        }
    .end annotation

    .line 540
    .local p2, "v":Lcom/solab/iso8583/IsoValue;, "Lcom/solab/iso8583/IsoValue<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/solab/iso8583/IsoMessage;->setField(ILcom/solab/iso8583/IsoValue;)Lcom/solab/iso8583/IsoMessage;

    .line 541
    return-void
.end method

.method public varargs removeFields([I)V
    .locals 4
    .param p1, "idx"    # [I

    .line 570
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    .line 571
    .local v2, "i":I
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/solab/iso8583/IsoMessage;->setField(ILcom/solab/iso8583/IsoValue;)Lcom/solab/iso8583/IsoMessage;

    .line 570
    .end local v2    # "i":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 573
    :cond_0
    return-void
.end method

.method public setBinary(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .line 164
    iput-boolean p1, p0, Lcom/solab/iso8583/IsoMessage;->binaryFields:Z

    iput-boolean p1, p0, Lcom/solab/iso8583/IsoMessage;->binaryHeader:Z

    .line 165
    return-void
.end method

.method public setBinaryBitmap(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .line 80
    iput-boolean p1, p0, Lcom/solab/iso8583/IsoMessage;->binBitmap:Z

    .line 81
    return-void
.end method

.method public setBinaryFields(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .line 187
    iput-boolean p1, p0, Lcom/solab/iso8583/IsoMessage;->binaryFields:Z

    .line 188
    return-void
.end method

.method public setBinaryHeader(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .line 177
    iput-boolean p1, p0, Lcom/solab/iso8583/IsoMessage;->binaryHeader:Z

    .line 178
    return-void
.end method

.method public setBinaryIsoHeader([B)V
    .locals 1
    .param p1, "binaryHeader"    # [B

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/solab/iso8583/IsoMessage;->isoHeader:Ljava/lang/String;

    .line 144
    iput-object p1, p0, Lcom/solab/iso8583/IsoMessage;->binIsoHeader:[B

    .line 145
    return-void
.end method

.method public setCharacterEncoding(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .line 100
    if-eqz p1, :cond_0

    .line 103
    iput-object p1, p0, Lcom/solab/iso8583/IsoMessage;->encoding:Ljava/lang/String;

    .line 104
    return-void

    .line 101
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set null encoding."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEncodeVariableLengthFieldsInHex(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .line 122
    iput-boolean p1, p0, Lcom/solab/iso8583/IsoMessage;->encodeVariableLengthFieldsInHex:Z

    .line 123
    return-void
.end method

.method public setEtx(I)V
    .locals 0
    .param p1, "value"    # I

    .line 198
    iput p1, p0, Lcom/solab/iso8583/IsoMessage;->etx:I

    .line 199
    return-void
.end method

.method public setField(ILcom/solab/iso8583/IsoValue;)Lcom/solab/iso8583/IsoMessage;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/solab/iso8583/IsoValue<",
            "*>;)",
            "Lcom/solab/iso8583/IsoMessage;"
        }
    .end annotation

    .line 220
    .local p2, "field":Lcom/solab/iso8583/IsoValue;, "Lcom/solab/iso8583/IsoValue<*>;"
    const/4 v0, 0x2

    if-lt p1, v0, :cond_1

    const/16 v0, 0x80

    if-gt p1, v0, :cond_1

    .line 223
    if-eqz p2, :cond_0

    .line 224
    iget-object v0, p0, Lcom/solab/iso8583/IsoMessage;->encoding:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/solab/iso8583/IsoValue;->setCharacterEncoding(Ljava/lang/String;)V

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/solab/iso8583/IsoMessage;->fields:[Lcom/solab/iso8583/IsoValue;

    aput-object p2, v0, p1

    .line 227
    return-object p0

    .line 221
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Field index must be between 2 and 128"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFields(Ljava/util/Map;)Lcom/solab/iso8583/IsoMessage;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/solab/iso8583/IsoValue<",
            "*>;>;)",
            "Lcom/solab/iso8583/IsoMessage;"
        }
    .end annotation

    .line 232
    .local p1, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/solab/iso8583/IsoValue<*>;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 233
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/solab/iso8583/IsoValue<*>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/solab/iso8583/IsoValue;

    invoke-virtual {p0, v2, v3}, Lcom/solab/iso8583/IsoMessage;->setField(ILcom/solab/iso8583/IsoValue;)Lcom/solab/iso8583/IsoMessage;

    .line 234
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/solab/iso8583/IsoValue<*>;>;"
    goto :goto_0

    .line 235
    :cond_0
    return-object p0
.end method

.method public setForceSecondaryBitmap(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .line 90
    iput-boolean p1, p0, Lcom/solab/iso8583/IsoMessage;->forceb2:Z

    .line 91
    return-void
.end method

.method public setForceStringEncoding(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .line 116
    iput-boolean p1, p0, Lcom/solab/iso8583/IsoMessage;->forceStringEncoding:Z

    .line 117
    return-void
.end method

.method public setIsoHeader(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 132
    iput-object p1, p0, Lcom/solab/iso8583/IsoMessage;->isoHeader:Ljava/lang/String;

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/solab/iso8583/IsoMessage;->binIsoHeader:[B

    .line 134
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "value"    # I

    .line 153
    iput p1, p0, Lcom/solab/iso8583/IsoMessage;->type:I

    .line 154
    return-void
.end method

.method public setValue(ILjava/lang/Object;Lcom/solab/iso8583/CustomFieldEncoder;Lcom/solab/iso8583/IsoType;I)Lcom/solab/iso8583/IsoMessage;
    .locals 2
    .param p1, "index"    # I
    .param p4, "t"    # Lcom/solab/iso8583/IsoType;
    .param p5, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ITT;",
            "Lcom/solab/iso8583/CustomFieldEncoder<",
            "TT;>;",
            "Lcom/solab/iso8583/IsoType;",
            "I)",
            "Lcom/solab/iso8583/IsoMessage;"
        }
    .end annotation

    .line 258
    .local p2, "value":Ljava/lang/Object;, "TT;"
    .local p3, "encoder":Lcom/solab/iso8583/CustomFieldEncoder;, "Lcom/solab/iso8583/CustomFieldEncoder<TT;>;"
    const/4 v0, 0x2

    if-lt p1, v0, :cond_2

    const/16 v0, 0x80

    if-gt p1, v0, :cond_2

    .line 261
    if-nez p2, :cond_0

    .line 262
    iget-object v0, p0, Lcom/solab/iso8583/IsoMessage;->fields:[Lcom/solab/iso8583/IsoValue;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    goto :goto_1

    .line 264
    :cond_0
    const/4 v0, 0x0

    .line 265
    .local v0, "v":Lcom/solab/iso8583/IsoValue;, "Lcom/solab/iso8583/IsoValue<TT;>;"
    invoke-virtual {p4}, Lcom/solab/iso8583/IsoType;->needsLength()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 266
    new-instance v1, Lcom/solab/iso8583/IsoValue;

    invoke-direct {v1, p4, p2, p5, p3}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;ILcom/solab/iso8583/CustomFieldEncoder;)V

    move-object v0, v1

    goto :goto_0

    .line 268
    :cond_1
    new-instance v1, Lcom/solab/iso8583/IsoValue;

    invoke-direct {v1, p4, p2, p3}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;Lcom/solab/iso8583/CustomFieldEncoder;)V

    move-object v0, v1

    .line 270
    :goto_0
    iget-object v1, p0, Lcom/solab/iso8583/IsoMessage;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/solab/iso8583/IsoValue;->setCharacterEncoding(Ljava/lang/String;)V

    .line 271
    iget-object v1, p0, Lcom/solab/iso8583/IsoMessage;->fields:[Lcom/solab/iso8583/IsoValue;

    aput-object v0, v1, p1

    .line 273
    .end local v0    # "v":Lcom/solab/iso8583/IsoValue;, "Lcom/solab/iso8583/IsoValue<TT;>;"
    :goto_1
    return-object p0

    .line 259
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Field index must be between 2 and 128"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setValue(ILjava/lang/Object;Lcom/solab/iso8583/IsoType;I)Lcom/solab/iso8583/IsoMessage;
    .locals 6
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "t"    # Lcom/solab/iso8583/IsoType;
    .param p4, "length"    # I

    .line 246
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/solab/iso8583/IsoMessage;->setValue(ILjava/lang/Object;Lcom/solab/iso8583/CustomFieldEncoder;Lcom/solab/iso8583/IsoType;I)Lcom/solab/iso8583/IsoMessage;

    move-result-object v0

    return-object v0
.end method

.method public update(ILcom/solab/iso8583/IsoValue;)V
    .locals 0
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/solab/iso8583/IsoValue<",
            "TT;>;)V"
        }
    .end annotation

    .line 550
    .local p2, "v":Lcom/solab/iso8583/IsoValue;, "Lcom/solab/iso8583/IsoValue<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/solab/iso8583/IsoMessage;->setField(ILcom/solab/iso8583/IsoValue;)Lcom/solab/iso8583/IsoMessage;

    .line 551
    return-void
.end method

.method public updateValue(ILjava/lang/Object;)Lcom/solab/iso8583/IsoMessage;
    .locals 7
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ITT;)",
            "Lcom/solab/iso8583/IsoMessage;"
        }
    .end annotation

    .line 285
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1}, Lcom/solab/iso8583/IsoMessage;->getField(I)Lcom/solab/iso8583/IsoValue;

    move-result-object v0

    .line 286
    .local v0, "current":Lcom/solab/iso8583/IsoValue;, "Lcom/solab/iso8583/IsoValue<TT;>;"
    if-eqz v0, :cond_0

    .line 289
    invoke-virtual {v0}, Lcom/solab/iso8583/IsoValue;->getEncoder()Lcom/solab/iso8583/CustomFieldEncoder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/solab/iso8583/IsoValue;->getType()Lcom/solab/iso8583/IsoType;

    move-result-object v5

    invoke-virtual {v0}, Lcom/solab/iso8583/IsoValue;->getLength()I

    move-result v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/solab/iso8583/IsoMessage;->setValue(ILjava/lang/Object;Lcom/solab/iso8583/CustomFieldEncoder;Lcom/solab/iso8583/IsoType;I)Lcom/solab/iso8583/IsoMessage;

    .line 290
    invoke-virtual {p0, p1}, Lcom/solab/iso8583/IsoMessage;->getField(I)Lcom/solab/iso8583/IsoValue;

    move-result-object v1

    invoke-virtual {v0}, Lcom/solab/iso8583/IsoValue;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/solab/iso8583/IsoValue;->setCharacterEncoding(Ljava/lang/String;)V

    .line 291
    invoke-virtual {p0, p1}, Lcom/solab/iso8583/IsoMessage;->getField(I)Lcom/solab/iso8583/IsoValue;

    move-result-object v1

    invoke-virtual {v0}, Lcom/solab/iso8583/IsoValue;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/solab/iso8583/IsoValue;->setTimeZone(Ljava/util/TimeZone;)V

    .line 293
    return-object p0

    .line 287
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Value-only field setter can only be used on existing fields"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public write(Ljava/io/OutputStream;I)V
    .locals 7
    .param p1, "outs"    # Ljava/io/OutputStream;
    .param p2, "lengthBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 312
    const/4 v0, 0x4

    if-gt p2, v0, :cond_6

    .line 315
    invoke-virtual {p0}, Lcom/solab/iso8583/IsoMessage;->writeData()[B

    move-result-object v1

    .line 317
    .local v1, "data":[B
    const/4 v2, -0x1

    if-lez p2, :cond_4

    .line 318
    array-length v3, v1

    .line 319
    .local v3, "l":I
    iget v4, p0, Lcom/solab/iso8583/IsoMessage;->etx:I

    if-le v4, v2, :cond_0

    .line 320
    add-int/lit8 v3, v3, 0x1

    .line 322
    :cond_0
    new-array v4, p2, [B

    .line 323
    .local v4, "buf":[B
    const/4 v5, 0x0

    .line 324
    .local v5, "pos":I
    if-ne p2, v0, :cond_1

    .line 325
    const/4 v0, 0x0

    const/high16 v6, -0x1000000

    and-int/2addr v6, v3

    shr-int/lit8 v6, v6, 0x18

    int-to-byte v6, v6

    aput-byte v6, v4, v0

    .line 326
    add-int/lit8 v5, v5, 0x1

    .line 328
    :cond_1
    const/4 v0, 0x2

    if-le p2, v0, :cond_2

    .line 329
    const/high16 v0, 0xff0000

    and-int/2addr v0, v3

    shr-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    aput-byte v0, v4, v5

    .line 330
    add-int/lit8 v5, v5, 0x1

    .line 332
    :cond_2
    const/4 v0, 0x1

    if-le p2, v0, :cond_3

    .line 333
    const v0, 0xff00

    and-int/2addr v0, v3

    shr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    aput-byte v0, v4, v5

    .line 334
    add-int/lit8 v5, v5, 0x1

    .line 336
    :cond_3
    and-int/lit16 v0, v3, 0xff

    int-to-byte v0, v0

    aput-byte v0, v4, v5

    .line 337
    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write([B)V

    .line 339
    .end local v3    # "l":I
    .end local v4    # "buf":[B
    .end local v5    # "pos":I
    :cond_4
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 341
    iget v0, p0, Lcom/solab/iso8583/IsoMessage;->etx:I

    if-le v0, v2, :cond_5

    .line 342
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 344
    :cond_5
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 345
    return-void

    .line 313
    .end local v1    # "data":[B
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The length header can have at most 4 bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeData()[B
    .locals 8

    .line 403
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 404
    .local v0, "bout":Ljava/io/ByteArrayOutputStream;
    iget-object v1, p0, Lcom/solab/iso8583/IsoMessage;->isoHeader:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 406
    :try_start_0
    iget-object v2, p0, Lcom/solab/iso8583/IsoMessage;->encoding:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 407
    :catch_0
    move-exception v1

    .line 409
    :goto_0
    goto :goto_1

    .line 410
    :cond_0
    iget-object v1, p0, Lcom/solab/iso8583/IsoMessage;->binIsoHeader:[B

    if-eqz v1, :cond_1

    .line 412
    :try_start_1
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 415
    goto :goto_1

    .line 413
    :catch_1
    move-exception v1

    .line 418
    :cond_1
    :goto_1
    iget-boolean v1, p0, Lcom/solab/iso8583/IsoMessage;->binaryHeader:Z

    if-eqz v1, :cond_2

    .line 419
    iget v1, p0, Lcom/solab/iso8583/IsoMessage;->type:I

    const v2, 0xff00

    and-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 420
    iget v1, p0, Lcom/solab/iso8583/IsoMessage;->type:I

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    .line 423
    :cond_2
    :try_start_2
    const-string v1, "%04x"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/solab/iso8583/IsoMessage;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/solab/iso8583/IsoMessage;->encoding:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 426
    goto :goto_2

    .line 424
    :catch_2
    move-exception v1

    .line 430
    :goto_2
    invoke-virtual {p0}, Lcom/solab/iso8583/IsoMessage;->createBitmapBitSet()Ljava/util/BitSet;

    move-result-object v1

    .line 432
    .local v1, "bs":Ljava/util/BitSet;
    iget-boolean v2, p0, Lcom/solab/iso8583/IsoMessage;->binaryHeader:Z

    if-nez v2, :cond_a

    iget-boolean v2, p0, Lcom/solab/iso8583/IsoMessage;->binBitmap:Z

    if-eqz v2, :cond_3

    goto :goto_4

    .line 447
    :cond_3
    const/4 v2, 0x0

    .line 448
    .local v2, "bout2":Ljava/io/ByteArrayOutputStream;
    iget-boolean v3, p0, Lcom/solab/iso8583/IsoMessage;->forceStringEncoding:Z

    if-eqz v3, :cond_4

    .line 449
    move-object v2, v0

    .line 450
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v0, v3

    .line 452
    :cond_4
    const/4 v3, 0x0

    .line 453
    .local v3, "pos":I
    invoke-virtual {v1}, Ljava/util/BitSet;->size()I

    move-result v4

    div-int/lit8 v4, v4, 0x4

    .line 454
    .local v4, "lim":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    if-ge v5, v4, :cond_9

    .line 455
    const/4 v6, 0x0

    .line 456
    .local v6, "nibble":I
    add-int/lit8 v7, v3, 0x1

    .end local v3    # "pos":I
    .local v7, "pos":I
    invoke-virtual {v1, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 457
    or-int/lit8 v6, v6, 0x8

    .line 458
    :cond_5
    add-int/lit8 v3, v7, 0x1

    .end local v7    # "pos":I
    .restart local v3    # "pos":I
    invoke-virtual {v1, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 459
    or-int/lit8 v6, v6, 0x4

    .line 460
    :cond_6
    add-int/lit8 v7, v3, 0x1

    .end local v3    # "pos":I
    .restart local v7    # "pos":I
    invoke-virtual {v1, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 461
    or-int/lit8 v6, v6, 0x2

    .line 462
    :cond_7
    add-int/lit8 v3, v7, 0x1

    .end local v7    # "pos":I
    .restart local v3    # "pos":I
    invoke-virtual {v1, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 463
    or-int/lit8 v6, v6, 0x1

    .line 464
    :cond_8
    sget-object v7, Lcom/solab/iso8583/IsoMessage;->HEX:[B

    aget-byte v7, v7, v6

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 454
    .end local v6    # "nibble":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 466
    .end local v5    # "i":I
    :cond_9
    iget-boolean v5, p0, Lcom/solab/iso8583/IsoMessage;->forceStringEncoding:Z

    if-eqz v5, :cond_e

    .line 467
    new-instance v5, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    .line 468
    .local v5, "_hb":Ljava/lang/String;
    move-object v0, v2

    .line 470
    :try_start_3
    iget-object v6, p0, Lcom/solab/iso8583/IsoMessage;->encoding:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 473
    goto :goto_6

    .line 471
    :catch_3
    move-exception v6

    goto :goto_6

    .line 433
    .end local v2    # "bout2":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "pos":I
    .end local v4    # "lim":I
    .end local v5    # "_hb":Ljava/lang/String;
    :cond_a
    :goto_4
    const/16 v2, 0x80

    .line 434
    .local v2, "pos":I
    const/4 v3, 0x0

    .line 435
    .local v3, "b":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_5
    invoke-virtual {v1}, Ljava/util/BitSet;->size()I

    move-result v5

    if-ge v4, v5, :cond_d

    .line 436
    invoke-virtual {v1, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 437
    or-int/2addr v3, v2

    .line 439
    :cond_b
    shr-int/lit8 v2, v2, 0x1

    .line 440
    if-nez v2, :cond_c

    .line 441
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 442
    const/16 v2, 0x80

    .line 443
    const/4 v3, 0x0

    .line 435
    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 446
    .end local v2    # "pos":I
    .end local v3    # "b":I
    .end local v4    # "i":I
    :cond_d
    nop

    .line 478
    :cond_e
    :goto_6
    const/4 v2, 0x2

    .local v2, "i":I
    :goto_7
    const/16 v3, 0x81

    if-ge v2, v3, :cond_10

    .line 479
    iget-object v3, p0, Lcom/solab/iso8583/IsoMessage;->fields:[Lcom/solab/iso8583/IsoValue;

    aget-object v3, v3, v2

    .line 480
    .local v3, "v":Lcom/solab/iso8583/IsoValue;, "Lcom/solab/iso8583/IsoValue<*>;"
    if-eqz v3, :cond_f

    .line 482
    :try_start_4
    iget-boolean v4, p0, Lcom/solab/iso8583/IsoMessage;->binaryFields:Z

    iget-boolean v5, p0, Lcom/solab/iso8583/IsoMessage;->forceStringEncoding:Z

    iget-boolean v6, p0, Lcom/solab/iso8583/IsoMessage;->encodeVariableLengthFieldsInHex:Z

    invoke-virtual {v3, v0, v4, v5, v6}, Lcom/solab/iso8583/IsoValue;->write(Ljava/io/OutputStream;ZZZ)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 485
    goto :goto_8

    .line 483
    :catch_4
    move-exception v4

    .line 478
    .end local v3    # "v":Lcom/solab/iso8583/IsoValue;, "Lcom/solab/iso8583/IsoValue<*>;"
    :cond_f
    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 488
    .end local v2    # "i":I
    :cond_10
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2
.end method

.method public writeToBuffer(I)Ljava/nio/ByteBuffer;
    .locals 7
    .param p1, "lengthBytes"    # I

    .line 350
    const/4 v0, 0x4

    if-gt p1, v0, :cond_7

    .line 354
    invoke-virtual {p0}, Lcom/solab/iso8583/IsoMessage;->writeData()[B

    move-result-object v1

    .line 355
    .local v1, "data":[B
    array-length v2, v1

    add-int/2addr v2, p1

    iget v3, p0, Lcom/solab/iso8583/IsoMessage;->etx:I

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-le v3, v5, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 356
    .local v2, "buf":Ljava/nio/ByteBuffer;
    if-lez p1, :cond_5

    .line 357
    array-length v3, v1

    .line 358
    .local v3, "l":I
    iget v6, p0, Lcom/solab/iso8583/IsoMessage;->etx:I

    if-le v6, v5, :cond_1

    .line 359
    add-int/lit8 v3, v3, 0x1

    .line 361
    :cond_1
    if-ne p1, v0, :cond_2

    .line 362
    const/high16 v0, -0x1000000

    and-int/2addr v0, v3

    shr-int/lit8 v0, v0, 0x18

    int-to-byte v0, v0

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 364
    :cond_2
    const/4 v0, 0x2

    if-le p1, v0, :cond_3

    .line 365
    const/high16 v0, 0xff0000

    and-int/2addr v0, v3

    shr-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 367
    :cond_3
    if-le p1, v4, :cond_4

    .line 368
    const v0, 0xff00

    and-int/2addr v0, v3

    shr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 370
    :cond_4
    and-int/lit16 v0, v3, 0xff

    int-to-byte v0, v0

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 372
    .end local v3    # "l":I
    :cond_5
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 374
    iget v0, p0, Lcom/solab/iso8583/IsoMessage;->etx:I

    if-le v0, v5, :cond_6

    .line 375
    int-to-byte v0, v0

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 377
    :cond_6
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 378
    return-object v2

    .line 351
    .end local v1    # "data":[B
    .end local v2    # "buf":Ljava/nio/ByteBuffer;
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The length header can have at most 4 bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
