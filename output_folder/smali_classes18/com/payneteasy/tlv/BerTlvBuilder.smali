.class public Lcom/payneteasy/tlv/BerTlvBuilder;
.super Ljava/lang/Object;
.source "BerTlvBuilder.java"


# static fields
.field private static final ASCII:Ljava/nio/charset/Charset;

.field private static final DEFAULT_SIZE:I = 0x1400

.field private static final HUNDRED:Ljava/math/BigDecimal;


# instance fields
.field private final theBuffer:[B

.field private final theBufferOffset:I

.field private theLengthPosition:I

.field private thePos:I

.field private final theTemplate:Lcom/payneteasy/tlv/BerTag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/payneteasy/tlv/BerTlvBuilder;->ASCII:Ljava/nio/charset/Charset;

    .line 15
    new-instance v0, Ljava/math/BigDecimal;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(I)V

    sput-object v0, Lcom/payneteasy/tlv/BerTlvBuilder;->HUNDRED:Ljava/math/BigDecimal;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 19
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lcom/payneteasy/tlv/BerTag;

    invoke-direct {p0, v0}, Lcom/payneteasy/tlv/BerTlvBuilder;-><init>(Lcom/payneteasy/tlv/BerTag;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Lcom/payneteasy/tlv/BerTag;)V
    .locals 3
    .param p1, "aTemplate"    # Lcom/payneteasy/tlv/BerTag;

    .line 23
    const/16 v0, 0x1400

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/payneteasy/tlv/BerTlvBuilder;-><init>(Lcom/payneteasy/tlv/BerTag;[BII)V

    .line 24
    return-void
.end method

.method public constructor <init>(Lcom/payneteasy/tlv/BerTag;[BII)V
    .locals 0
    .param p1, "aTemplate"    # Lcom/payneteasy/tlv/BerTag;
    .param p2, "aBuffer"    # [B
    .param p3, "aOffset"    # I
    .param p4, "aLength"    # I

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/payneteasy/tlv/BerTlvBuilder;->theTemplate:Lcom/payneteasy/tlv/BerTag;

    .line 36
    iput-object p2, p0, Lcom/payneteasy/tlv/BerTlvBuilder;->theBuffer:[B

    .line 37
    iput p3, p0, Lcom/payneteasy/tlv/BerTlvBuilder;->thePos:I

    .line 38
    iput p3, p0, Lcom/payneteasy/tlv/BerTlvBuilder;->theBufferOffset:I

    .line 39
    return-void
.end method

.method public constructor <init>(Lcom/payneteasy/tlv/BerTlvs;)V
    .locals 2
    .param p1, "tlvs"    # Lcom/payneteasy/tlv/BerTlvs;

    .line 28
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lcom/payneteasy/tlv/BerTag;

    invoke-direct {p0, v0}, Lcom/payneteasy/tlv/BerTlvBuilder;-><init>(Lcom/payneteasy/tlv/BerTag;)V

    .line 29
    invoke-virtual {p1}, Lcom/payneteasy/tlv/BerTlvs;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/payneteasy/tlv/BerTlv;

    .line 30
    .local v1, "tlv":Lcom/payneteasy/tlv/BerTlv;
    invoke-virtual {p0, v1}, Lcom/payneteasy/tlv/BerTlvBuilder;->addBerTlv(Lcom/payneteasy/tlv/BerTlv;)Lcom/payneteasy/tlv/BerTlvBuilder;

    .line 31
    .end local v1    # "tlv":Lcom/payneteasy/tlv/BerTlv;
    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method

.method private calculateBytesCountForLength(I)I
    .locals 3
    .param p1, "aLength"    # I

    .line 150
    const/16 v0, 0x80

    if-ge p1, v0, :cond_0

    .line 151
    const/4 v0, 0x1

    .local v0, "ret":I
    goto :goto_0

    .line 152
    .end local v0    # "ret":I
    :cond_0
    const/16 v0, 0x100

    if-ge p1, v0, :cond_1

    .line 153
    const/4 v0, 0x2

    .restart local v0    # "ret":I
    goto :goto_0

    .line 154
    .end local v0    # "ret":I
    :cond_1
    const/high16 v0, 0x10000

    if-ge p1, v0, :cond_2

    .line 155
    const/4 v0, 0x3

    .restart local v0    # "ret":I
    goto :goto_0

    .line 156
    .end local v0    # "ret":I
    :cond_2
    const/high16 v0, 0x1000000

    if-ge p1, v0, :cond_3

    .line 157
    const/4 v0, 0x4

    .line 161
    .restart local v0    # "ret":I
    :goto_0
    return v0

    .line 159
    .end local v0    # "ret":I
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "length ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] out of range (0x1000000)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private fillLength([BII)V
    .locals 3
    .param p1, "aBuffer"    # [B
    .param p2, "aOffset"    # I
    .param p3, "aLength"    # I

    .line 125
    const/16 v0, 0x80

    if-ge p3, v0, :cond_0

    .line 126
    int-to-byte v0, p3

    aput-byte v0, p1, p2

    goto :goto_0

    .line 128
    :cond_0
    const/16 v0, 0x100

    if-ge p3, v0, :cond_1

    .line 129
    const/16 v0, -0x7f

    aput-byte v0, p1, p2

    .line 130
    add-int/lit8 v0, p2, 0x1

    int-to-byte v1, p3

    aput-byte v1, p1, v0

    goto :goto_0

    .line 132
    :cond_1
    const/high16 v0, 0x10000

    if-ge p3, v0, :cond_2

    .line 134
    const/16 v0, -0x7e

    aput-byte v0, p1, p2

    .line 135
    add-int/lit8 v0, p2, 0x1

    div-int/lit16 v1, p3, 0x100

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 136
    add-int/lit8 v0, p2, 0x2

    rem-int/lit16 v1, p3, 0x100

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    goto :goto_0

    .line 138
    :cond_2
    const/high16 v1, 0x1000000

    if-ge p3, v1, :cond_3

    .line 139
    const/16 v1, -0x7d

    aput-byte v1, p1, p2

    .line 140
    add-int/lit8 v1, p2, 0x1

    div-int v0, p3, v0

    int-to-byte v0, v0

    aput-byte v0, p1, v1

    .line 141
    add-int/lit8 v0, p2, 0x2

    div-int/lit16 v1, p3, 0x100

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 142
    add-int/lit8 v0, p2, 0x3

    rem-int/lit16 v1, p3, 0x100

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 146
    :goto_0
    return-void

    .line 144
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "length ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] out of range (0x1000000)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static from(Lcom/payneteasy/tlv/BerTlv;)Lcom/payneteasy/tlv/BerTlvBuilder;
    .locals 1
    .param p0, "aTlv"    # Lcom/payneteasy/tlv/BerTlv;

    .line 42
    const/16 v0, 0x1400

    invoke-static {p0, v0}, Lcom/payneteasy/tlv/BerTlvBuilder;->from(Lcom/payneteasy/tlv/BerTlv;I)Lcom/payneteasy/tlv/BerTlvBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static from(Lcom/payneteasy/tlv/BerTlv;I)Lcom/payneteasy/tlv/BerTlvBuilder;
    .locals 4
    .param p0, "aTlv"    # Lcom/payneteasy/tlv/BerTlv;
    .param p1, "bufferSize"    # I

    .line 46
    invoke-virtual {p0}, Lcom/payneteasy/tlv/BerTlv;->isConstructed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    invoke-virtual {p0}, Lcom/payneteasy/tlv/BerTlv;->getTag()Lcom/payneteasy/tlv/BerTag;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/payneteasy/tlv/BerTlvBuilder;->template(Lcom/payneteasy/tlv/BerTag;I)Lcom/payneteasy/tlv/BerTlvBuilder;

    move-result-object v0

    .line 48
    .local v0, "builder":Lcom/payneteasy/tlv/BerTlvBuilder;
    iget-object v1, p0, Lcom/payneteasy/tlv/BerTlv;->theList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/payneteasy/tlv/BerTlv;

    .line 49
    .local v2, "tlv":Lcom/payneteasy/tlv/BerTlv;
    invoke-virtual {v0, v2}, Lcom/payneteasy/tlv/BerTlvBuilder;->addBerTlv(Lcom/payneteasy/tlv/BerTlv;)Lcom/payneteasy/tlv/BerTlvBuilder;

    .line 50
    .end local v2    # "tlv":Lcom/payneteasy/tlv/BerTlv;
    goto :goto_0

    .line 51
    :cond_0
    return-object v0

    .line 53
    .end local v0    # "builder":Lcom/payneteasy/tlv/BerTlvBuilder;
    :cond_1
    new-instance v0, Lcom/payneteasy/tlv/BerTlvBuilder;

    const/4 v1, 0x0

    new-array v2, p1, [B

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/payneteasy/tlv/BerTlvBuilder;-><init>(Lcom/payneteasy/tlv/BerTag;[BII)V

    invoke-virtual {v0, p0}, Lcom/payneteasy/tlv/BerTlvBuilder;->addBerTlv(Lcom/payneteasy/tlv/BerTlv;)Lcom/payneteasy/tlv/BerTlvBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static template(Lcom/payneteasy/tlv/BerTag;)Lcom/payneteasy/tlv/BerTlvBuilder;
    .locals 1
    .param p0, "aTemplate"    # Lcom/payneteasy/tlv/BerTag;

    .line 58
    const/16 v0, 0x1400

    invoke-static {p0, v0}, Lcom/payneteasy/tlv/BerTlvBuilder;->template(Lcom/payneteasy/tlv/BerTag;I)Lcom/payneteasy/tlv/BerTlvBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static template(Lcom/payneteasy/tlv/BerTag;I)Lcom/payneteasy/tlv/BerTlvBuilder;
    .locals 3
    .param p0, "aTemplate"    # Lcom/payneteasy/tlv/BerTag;
    .param p1, "bufferSize"    # I

    .line 62
    new-instance v0, Lcom/payneteasy/tlv/BerTlvBuilder;

    new-array v1, p1, [B

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/payneteasy/tlv/BerTlvBuilder;-><init>(Lcom/payneteasy/tlv/BerTag;[BII)V

    return-object v0
.end method


# virtual methods
.method public add(Lcom/payneteasy/tlv/BerTlvBuilder;)Lcom/payneteasy/tlv/BerTlvBuilder;
    .locals 5
    .param p1, "aBuilder"    # Lcom/payneteasy/tlv/BerTlvBuilder;

    .line 193
    invoke-virtual {p1}, Lcom/payneteasy/tlv/BerTlvBuilder;->buildArray()[B

    move-result-object v0

    .line 194
    .local v0, "array":[B
    iget-object v1, p0, Lcom/payneteasy/tlv/BerTlvBuilder;->theBuffer:[B

    iget v2, p0, Lcom/payneteasy/tlv/BerTlvBuilder;->thePos:I

    array-length v3, v0

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 195
    iget v1, p0, Lcom/payneteasy/tlv/BerTlvBuilder;->thePos:I

    array-length v2, v0

    add-int/2addr v1, v2

    iput v1, p0, Lcom/payneteasy/tlv/BerTlvBuilder;->thePos:I

    .line 196
    return-object p0
.end method

.method public addAmount(Lcom/payneteasy/tlv/BerTag;Ljava/math/BigDecimal;)Lcom/payneteasy/tlv/BerTlvBuilder;
    .locals 5
    .param p1, "aObject"    # Lcom/payneteasy/tlv/BerTag;
    .param p2, "aAmount"    # Ljava/math/BigDecimal;

    .line 84
    sget-object v0, Lcom/payneteasy/tlv/BerTlvBuilder;->HUNDRED:Ljava/math/BigDecimal;

    invoke-virtual {p2, v0}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 85
    .local v0, "numeric":Ljava/math/BigDecimal;
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 86
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 87
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-ge v3, v2, :cond_0

    .line 88
    const/4 v3, 0x0

    const/16 v4, 0x30

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 90
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/payneteasy/tlv/BerTlvBuilder;->addHex(Lcom/payneteasy/tlv/BerTag;Ljava/lang/String;)Lcom/payneteasy/tlv/BerTlvBuilder;

    move-result-object v2

    return-object v2
.end method

.method public addBerTlv(Lcom/payneteasy/tlv/BerTlv;)Lcom/payneteasy/tlv/BerTlvBuilder;
    .locals 2
    .param p1, "aTlv"    # Lcom/payneteasy/tlv/BerTlv;

    .line 201
    invoke-virtual {p1}, Lcom/payneteasy/tlv/BerTlv;->isConstructed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/payneteasy/tlv/BerTlvBuilder;->theBuffer:[B

    array-length v0, v0

    invoke-static {p1, v0}, Lcom/payneteasy/tlv/BerTlvBuilder;->from(Lcom/payneteasy/tlv/BerTlv;I)Lcom/payneteasy/tlv/BerTlvBuilder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/payneteasy/tlv/BerTlvBuilder;->add(Lcom/payneteasy/tlv/BerTlvBuilder;)Lcom/payneteasy/tlv/BerTlvBuilder;

    move-result-object v0

    return-object v0

    .line 204
    :cond_0
    invoke-virtual {p1}, Lcom/payneteasy/tlv/BerTlv;->getTag()Lcom/payneteasy/tlv/BerTag;

    move-result-object v0

    invoke-virtual {p1}, Lcom/payneteasy/tlv/BerTlv;->getBytesValue()[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/payneteasy/tlv/BerTlvBuilder;->addBytes(Lcom/payneteasy/tlv/BerTag;[B)Lcom/payneteasy/tlv/BerTlvBuilder;

    move-result-object v0

    return-object v0
.end method

.method public addByte(Lcom/payneteasy/tlv/BerTag;B)Lcom/payneteasy/tlv/BerTlvBuilder;
    .locals 5
    .param p1, "aObject"    # Lcom/payneteasy/tlv/BerTag;
    .param p2, "aByte"    # B

    .line 71
    iget-object v0, p1, Lcom/payneteasy/tlv/BerTag;->bytes:[B

    array-length v0, v0

    .line 72
    .local v0, "len":I
    iget-object v1, p1, Lcom/payneteasy/tlv/BerTag;->bytes:[B

    iget-object v2, p0, Lcom/payneteasy/tlv/BerTlvBuilder;->theBuffer:[B

    iget v3, p0, Lcom/payneteasy/tlv/BerTlvBuilder;->thePos:I

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 73
    iget v1, p0, Lcom/payneteasy/tlv/BerTlvBuilder;->thePos:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/payneteasy/tlv/BerTlvBuilder;->thePos:I

    .line 76
    iget-object v2, p0, Lcom/payneteasy/tlv/BerTlvBuilder;->theBuffer:[B

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/payneteasy/tlv/BerTlvBuilder;->thePos:I

    const/4 v4, 0x1

    aput-byte v4, v2, v1

    .line 79
    add-int/lit8 v1, v3, 0x1

    iput v1, p0, Lcom/payneteasy/tlv/BerTlvBuilder;->thePos:I

    aput-byte p2, v2, v3

    .line 80
    return-object p0
.end method

.method public addBytes(Lcom/payneteasy/tlv/BerTag;[B)Lcom/payneteasy/tlv/BerTlvBuilder;
    .locals 2
    .param p1, "aObject"    # Lcom/payneteasy/tlv/BerTag;
    .param p2, "aBytes"    # [B

    .line 170
    array-length v0, p2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/payneteasy/tlv/BerTlvBuilder;->addBytes(Lcom/payneteasy/tlv/BerTag;[BII)Lcom/payneteasy/tlv/BerTlvBuilder;

    move-result-object v0

    return-object v0
.end method

.method public addBytes(Lcom/payneteasy/tlv/BerTag;[BII)Lcom/payneteasy/tlv/BerTlvBuilder;
    .locals 6
    .param p1, "aTag"    # Lcom/payneteasy/tlv/BerTag;
    .param p2, "aBytes"    # [B
    .param p3, "aFrom"    # I
    .param p4, "aLength"    # I

    .line 174
    iget-object v0, p1, Lcom/payneteasy/tlv/BerTag;->bytes:[B

    array-length v0, v0

    .line 175
    .local v0, "tagLength":I
    invoke-direct {p0, p4}, Lcom/payneteasy/tlv/BerTlvBuilder;->calculateBytesCountForLength(I)I

    move-result v1

    .line 178
    .local v1, "lengthBytesCount":I
    iget-object v2, p1, Lcom/payneteasy/tlv/BerTag;->bytes:[B

    iget-object v3, p0, Lcom/payneteasy/tlv/BerTlvBuilder;->theBuffer:[B

    iget v4, p0, Lcom/payneteasy/tlv/BerTlvBuilder;->thePos:I

    const/4 v5, 0x0

    invoke-static {v2, v5, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 179
    iget v2, p0, Lcom/payneteasy/tlv/BerTlvBuilder;->thePos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/payneteasy/tlv/BerTlvBuilder;->thePos:I

    .line 182
    iget-object v3, p0, Lcom/payneteasy/tlv/BerTlvBuilder;->theBuffer:[B

    invoke-direct {p0, v3, v2, p4}, Lcom/payneteasy/tlv/BerTlvBuilder;->fillLength([BII)V

    .line 183
    iget v2, p0, Lcom/payneteasy/tlv/BerTlvBuilder;->thePos:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/payneteasy/tlv/BerTlvBuilder;->thePos:I

    .line 186
    iget-object v3, p0, Lcom/payneteasy/tlv/BerTlvBuilder;->theBuffer:[B

    invoke-static {p2, p3, v3, v2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 187
    iget v2, p0, Lcom/payneteasy/tlv/BerTlvBuilder;->thePos:I

    add-int/2addr v2, p4

    iput v2, p0, Lcom/payneteasy/tlv/BerTlvBuilder;->thePos:I

    .line 189
    return-object p0
.end method

.method public addDate(Lcom/payneteasy/tlv/BerTag;Ljava/util/Date;)Lcom/payneteasy/tlv/BerTlvBuilder;
    .locals 2
    .param p1, "aObject"    # Lcom/payneteasy/tlv/BerTag;
    .param p2, "aDate"    # Ljava/util/Date;

    .line 94
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyMMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 95
    .local v0, "format":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/payneteasy/tlv/BerTlvBuilder;->addHex(Lcom/payneteasy/tlv/BerTag;Ljava/lang/String;)Lcom/payneteasy/tlv/BerTlvBuilder;

    move-result-object v1

    return-object v1
.end method

.method public addEmpty(Lcom/payneteasy/tlv/BerTag;)Lcom/payneteasy/tlv/BerTlvBuilder;
    .locals 2
    .param p1, "aObject"    # Lcom/payneteasy/tlv/BerTag;

    .line 66
    const/4 v0, 0x0

    new-array v1, v0, [B

    invoke-virtual {p0, p1, v1, v0, v0}, Lcom/payneteasy/tlv/BerTlvBuilder;->addBytes(Lcom/payneteasy/tlv/BerTag;[BII)Lcom/payneteasy/tlv/BerTlvBuilder;

    move-result-object v0

    return-object v0
.end method

.method public addHex(Lcom/payneteasy/tlv/BerTag;Ljava/lang/String;)Lcom/payneteasy/tlv/BerTlvBuilder;
    .locals 3
    .param p1, "aObject"    # Lcom/payneteasy/tlv/BerTag;
    .param p2, "aHex"    # Ljava/lang/String;

    .line 165
    invoke-static {p2}, Lcom/payneteasy/tlv/HexUtil;->parseHex(Ljava/lang/String;)[B

    move-result-object v0

    .line 166
    .local v0, "buffer":[B
    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v2, v1}, Lcom/payneteasy/tlv/BerTlvBuilder;->addBytes(Lcom/payneteasy/tlv/BerTag;[BII)Lcom/payneteasy/tlv/BerTlvBuilder;

    move-result-object v1

    return-object v1
.end method

.method public addIntAsHex(Lcom/payneteasy/tlv/BerTag;II)Lcom/payneteasy/tlv/BerTlvBuilder;
    .locals 3
    .param p1, "aObject"    # Lcom/payneteasy/tlv/BerTag;
    .param p2, "aCode"    # I
    .param p3, "aLength"    # I

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v1, p3, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 233
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 234
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    mul-int/lit8 v2, p3, 0x2

    if-ge v1, v2, :cond_0

    .line 235
    const/4 v1, 0x0

    const/16 v2, 0x30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 237
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/payneteasy/tlv/BerTlvBuilder;->addHex(Lcom/payneteasy/tlv/BerTag;Ljava/lang/String;)Lcom/payneteasy/tlv/BerTlvBuilder;

    move-result-object v1

    return-object v1
.end method

.method public addText(Lcom/payneteasy/tlv/BerTag;Ljava/lang/String;)Lcom/payneteasy/tlv/BerTlvBuilder;
    .locals 1
    .param p1, "aTag"    # Lcom/payneteasy/tlv/BerTag;
    .param p2, "aText"    # Ljava/lang/String;

    .line 216
    sget-object v0, Lcom/payneteasy/tlv/BerTlvBuilder;->ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, p2, v0}, Lcom/payneteasy/tlv/BerTlvBuilder;->addText(Lcom/payneteasy/tlv/BerTag;Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/payneteasy/tlv/BerTlvBuilder;

    move-result-object v0

    return-object v0
.end method

.method public addText(Lcom/payneteasy/tlv/BerTag;Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/payneteasy/tlv/BerTlvBuilder;
    .locals 3
    .param p1, "aTag"    # Lcom/payneteasy/tlv/BerTag;
    .param p2, "aText"    # Ljava/lang/String;
    .param p3, "aCharset"    # Ljava/nio/charset/Charset;

    .line 227
    invoke-virtual {p2, p3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 228
    .local v0, "buffer":[B
    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v2, v1}, Lcom/payneteasy/tlv/BerTlvBuilder;->addBytes(Lcom/payneteasy/tlv/BerTag;[BII)Lcom/payneteasy/tlv/BerTlvBuilder;

    move-result-object v1

    return-object v1
.end method

.method public addTime(Lcom/payneteasy/tlv/BerTag;Ljava/util/Date;)Lcom/payneteasy/tlv/BerTlvBuilder;
    .locals 2
    .param p1, "aObject"    # Lcom/payneteasy/tlv/BerTag;
    .param p2, "aDate"    # Ljava/util/Date;

    .line 99
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 100
    .local v0, "format":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/payneteasy/tlv/BerTlvBuilder;->addHex(Lcom/payneteasy/tlv/BerTag;Ljava/lang/String;)Lcom/payneteasy/tlv/BerTlvBuilder;

    move-result-object v1

    return-object v1
.end method

.method public build()I
    .locals 7

    .line 105
    iget-object v0, p0, Lcom/payneteasy/tlv/BerTlvBuilder;->theTemplate:Lcom/payneteasy/tlv/BerTag;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, v0, Lcom/payneteasy/tlv/BerTag;->bytes:[B

    array-length v0, v0

    .line 108
    .local v0, "tagLen":I
    iget v1, p0, Lcom/payneteasy/tlv/BerTlvBuilder;->thePos:I

    invoke-direct {p0, v1}, Lcom/payneteasy/tlv/BerTlvBuilder;->calculateBytesCountForLength(I)I

    move-result v1

    .line 111
    .local v1, "lengthBytesCount":I
    iget-object v2, p0, Lcom/payneteasy/tlv/BerTlvBuilder;->theBuffer:[B

    iget v3, p0, Lcom/payneteasy/tlv/BerTlvBuilder;->theBufferOffset:I

    add-int v4, v0, v1

    iget v5, p0, Lcom/payneteasy/tlv/BerTlvBuilder;->thePos:I

    invoke-static {v2, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    iget-object v2, p0, Lcom/payneteasy/tlv/BerTlvBuilder;->theTemplate:Lcom/payneteasy/tlv/BerTag;

    iget-object v2, v2, Lcom/payneteasy/tlv/BerTag;->bytes:[B

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/payneteasy/tlv/BerTlvBuilder;->theBuffer:[B

    iget v5, p0, Lcom/payneteasy/tlv/BerTlvBuilder;->theBufferOffset:I

    iget-object v6, p0, Lcom/payneteasy/tlv/BerTlvBuilder;->theTemplate:Lcom/payneteasy/tlv/BerTag;

    iget-object v6, v6, Lcom/payneteasy/tlv/BerTag;->bytes:[B

    array-length v6, v6

    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 116
    iget-object v2, p0, Lcom/payneteasy/tlv/BerTlvBuilder;->theBuffer:[B

    iget v3, p0, Lcom/payneteasy/tlv/BerTlvBuilder;->thePos:I

    invoke-direct {p0, v2, v0, v3}, Lcom/payneteasy/tlv/BerTlvBuilder;->fillLength([BII)V

    .line 118
    iget v2, p0, Lcom/payneteasy/tlv/BerTlvBuilder;->thePos:I

    add-int v3, v0, v1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/payneteasy/tlv/BerTlvBuilder;->thePos:I

    .line 120
    .end local v0    # "tagLen":I
    .end local v1    # "lengthBytesCount":I
    :cond_0
    iget v0, p0, Lcom/payneteasy/tlv/BerTlvBuilder;->thePos:I

    return v0
.end method

.method public buildArray()[B
    .locals 4

    .line 241
    invoke-virtual {p0}, Lcom/payneteasy/tlv/BerTlvBuilder;->build()I

    move-result v0

    .line 242
    .local v0, "count":I
    new-array v1, v0, [B

    .line 243
    .local v1, "buf":[B
    iget-object v2, p0, Lcom/payneteasy/tlv/BerTlvBuilder;->theBuffer:[B

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 244
    return-object v1
.end method

.method public buildTlv()Lcom/payneteasy/tlv/BerTlv;
    .locals 4

    .line 248
    invoke-virtual {p0}, Lcom/payneteasy/tlv/BerTlvBuilder;->build()I

    move-result v0

    .line 249
    .local v0, "count":I
    new-instance v1, Lcom/payneteasy/tlv/BerTlvParser;

    invoke-direct {v1}, Lcom/payneteasy/tlv/BerTlvParser;-><init>()V

    iget-object v2, p0, Lcom/payneteasy/tlv/BerTlvBuilder;->theBuffer:[B

    iget v3, p0, Lcom/payneteasy/tlv/BerTlvBuilder;->theBufferOffset:I

    invoke-virtual {v1, v2, v3, v0}, Lcom/payneteasy/tlv/BerTlvParser;->parseConstructed([BII)Lcom/payneteasy/tlv/BerTlv;

    move-result-object v1

    return-object v1
.end method

.method public buildTlvs()Lcom/payneteasy/tlv/BerTlvs;
    .locals 4

    .line 253
    invoke-virtual {p0}, Lcom/payneteasy/tlv/BerTlvBuilder;->build()I

    move-result v0

    .line 254
    .local v0, "count":I
    new-instance v1, Lcom/payneteasy/tlv/BerTlvParser;

    invoke-direct {v1}, Lcom/payneteasy/tlv/BerTlvParser;-><init>()V

    iget-object v2, p0, Lcom/payneteasy/tlv/BerTlvBuilder;->theBuffer:[B

    iget v3, p0, Lcom/payneteasy/tlv/BerTlvBuilder;->theBufferOffset:I

    invoke-virtual {v1, v2, v3, v0}, Lcom/payneteasy/tlv/BerTlvParser;->parse([BII)Lcom/payneteasy/tlv/BerTlvs;

    move-result-object v1

    return-object v1
.end method
