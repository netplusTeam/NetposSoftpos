.class public Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;
.super Ljava/lang/Object;
.source "BerTlvBuilder.java"


# static fields
.field private static final ASCII:Ljava/nio/charset/Charset;

.field private static DEFAULT_SIZE:I

.field private static final HUNDRED:Ljava/math/BigDecimal;


# instance fields
.field private final theBuffer:[B

.field private final theBufferOffset:I

.field private theLengthPosition:I

.field private thePos:I

.field private final theTemplate:Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 12
    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;->ASCII:Ljava/nio/charset/Charset;

    .line 13
    new-instance v0, Ljava/math/BigDecimal;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(I)V

    sput-object v0, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;->HUNDRED:Ljava/math/BigDecimal;

    .line 14
    const/16 v0, 0x7800

    sput v0, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;->DEFAULT_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 17
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;

    invoke-direct {p0, v0}, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;-><init>(Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;)V

    .line 18
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .line 21
    new-array v0, p1, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2, p1}, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;-><init>(Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;[BII)V

    .line 22
    return-void
.end method

.method public constructor <init>(Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;)V
    .locals 3
    .param p1, "aTemplate"    # Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "aTemplate"
        }
    .end annotation

    .line 25
    sget v0, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;->DEFAULT_SIZE:I

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;-><init>(Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;[BII)V

    .line 26
    return-void
.end method

.method public constructor <init>(Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;[BII)V
    .locals 0
    .param p1, "aTemplate"    # Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;
    .param p2, "aBuffer"    # [B
    .param p3, "aOffset"    # I
    .param p4, "aLength"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "aTemplate",
            "aBuffer",
            "aOffset",
            "aLength"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;->theTemplate:Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;

    .line 38
    iput-object p2, p0, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;->theBuffer:[B

    .line 39
    iput p3, p0, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;->thePos:I

    .line 40
    iput p3, p0, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;->theBufferOffset:I

    .line 41
    return-void
.end method

.method public constructor <init>(Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvs;)V
    .locals 2
    .param p1, "tlvs"    # Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvs;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tlvs"
        }
    .end annotation

    .line 29
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;

    invoke-direct {p0, v0}, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;-><init>(Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;)V

    .line 30
    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvs;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;

    .line 31
    .local v1, "tlv":Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;
    invoke-virtual {p0, v1}, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;->addBerTlv(Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;)Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;

    .line 32
    .end local v1    # "tlv":Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;
    goto :goto_0

    .line 33
    :cond_0
    return-void
.end method

.method private calculateBytesCountForLength(I)I
    .locals 3
    .param p1, "aLength"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "aLength"
        }
    .end annotation

    .line 147
    const/16 v0, 0x80

    if-ge p1, v0, :cond_0

    .line 148
    const/4 v0, 0x1

    .local v0, "ret":I
    goto :goto_0

    .line 149
    .end local v0    # "ret":I
    :cond_0
    const/16 v0, 0x100

    if-ge p1, v0, :cond_1

    .line 150
    const/4 v0, 0x2

    .restart local v0    # "ret":I
    goto :goto_0

    .line 151
    .end local v0    # "ret":I
    :cond_1
    const/high16 v0, 0x10000

    if-ge p1, v0, :cond_2

    .line 152
    const/4 v0, 0x3

    .restart local v0    # "ret":I
    goto :goto_0

    .line 153
    .end local v0    # "ret":I
    :cond_2
    const/high16 v0, 0x1000000

    if-ge p1, v0, :cond_3

    .line 154
    const/4 v0, 0x4

    .line 159
    .restart local v0    # "ret":I
    :goto_0
    return v0

    .line 156
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
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "aBuffer",
            "aOffset",
            "aLength"
        }
    .end annotation

    .line 121
    const/16 v0, 0x80

    if-ge p3, v0, :cond_0

    .line 122
    int-to-byte v0, p3

    aput-byte v0, p1, p2

    goto :goto_0

    .line 124
    :cond_0
    const/16 v0, 0x100

    if-ge p3, v0, :cond_1

    .line 125
    const/16 v0, -0x7f

    aput-byte v0, p1, p2

    .line 126
    add-int/lit8 v0, p2, 0x1

    int-to-byte v1, p3

    aput-byte v1, p1, v0

    goto :goto_0

    .line 128
    :cond_1
    const/high16 v0, 0x10000

    if-ge p3, v0, :cond_2

    .line 130
    const/16 v0, -0x7e

    aput-byte v0, p1, p2

    .line 131
    add-int/lit8 v0, p2, 0x1

    div-int/lit16 v1, p3, 0x100

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 132
    add-int/lit8 v0, p2, 0x2

    rem-int/lit16 v1, p3, 0x100

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    goto :goto_0

    .line 134
    :cond_2
    const/high16 v1, 0x1000000

    if-ge p3, v1, :cond_3

    .line 135
    const/16 v1, -0x7d

    aput-byte v1, p1, p2

    .line 136
    add-int/lit8 v1, p2, 0x1

    div-int v0, p3, v0

    int-to-byte v0, v0

    aput-byte v0, p1, v1

    .line 137
    add-int/lit8 v0, p2, 0x2

    div-int/lit16 v1, p3, 0x100

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 138
    add-int/lit8 v0, p2, 0x3

    rem-int/lit16 v1, p3, 0x100

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 143
    :goto_0
    return-void

    .line 140
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

.method public static from(Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;)Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;
    .locals 3
    .param p0, "aTlv"    # Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "aTlv"
        }
    .end annotation

    .line 44
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;->isConstructed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;->getTag()Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;

    move-result-object v0

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;->template(Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;)Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;

    move-result-object v0

    .line 46
    .local v0, "builder":Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;->theList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;

    .line 47
    .local v2, "tlv":Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;
    invoke-virtual {v0, v2}, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;->addBerTlv(Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;)Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;

    .line 48
    .end local v2    # "tlv":Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;
    goto :goto_0

    .line 49
    :cond_0
    return-object v0

    .line 51
    .end local v0    # "builder":Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;
    :cond_1
    new-instance v0, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;

    invoke-direct {v0}, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;-><init>()V

    invoke-virtual {v0, p0}, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;->addBerTlv(Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;)Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static template(Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;)Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;
    .locals 1
    .param p0, "aTemplate"    # Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "aTemplate"
        }
    .end annotation

    .line 56
    new-instance v0, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;

    invoke-direct {v0, p0}, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;-><init>(Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;)V

    return-object v0
.end method


# virtual methods
.method public add(Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;)Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;
    .locals 5
    .param p1, "aBuilder"    # Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "aBuilder"
        }
    .end annotation

    .line 192
    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;->buildArray()[B

    move-result-object v0

    .line 193
    .local v0, "array":[B
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;->theBuffer:[B

    iget v2, p0, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;->thePos:I

    array-length v3, v0

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 194
    iget v1, p0, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;->thePos:I

    array-length v2, v0

    add-int/2addr v1, v2

    iput v1, p0, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;->thePos:I

    .line 195
    return-object p0
.end method

.method public addAmount(Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;Ljava/math/BigDecimal;)Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;
    .locals 5
    .param p1, "aObject"    # Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;
    .param p2, "aAmount"    # Ljava/math/BigDecimal;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "aObject",
            "aAmount"
        }
    .end annotation

    .line 78
    sget-object v0, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;->HUNDRED:Ljava/math/BigDecimal;

    invoke-virtual {p2, v0}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 79
    .local v0, "numeric":Ljava/math/BigDecimal;
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 80
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 81
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-ge v3, v2, :cond_0

    .line 82
    const/4 v3, 0x0

    const/16 v4, 0x30

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 84
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;->addHex(Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;Ljava/lang/String;)Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;

    move-result-object v2

    return-object v2
.end method

.method public addBerTlv(Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;)Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;
    .locals 2
    .param p1, "aTlv"    # Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "aTlv"
        }
    .end annotation

    .line 199
    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;->isConstructed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    invoke-static {p1}, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;->from(Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;)Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;->add(Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;)Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;

    move-result-object v0

    return-object v0

    .line 202
    :cond_0
    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;->getTag()Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;

    move-result-object v0

    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;->getBytesValue()[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;->addBytes(Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;[B)Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;

    move-result-object v0

    return-object v0
.end method

.method public addByte(Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;B)Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;
    .locals 5
    .param p1, "aObject"    # Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;
    .param p2, "aByte"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "aObject",
            "aByte"
        }
    .end annotation

    .line 65
    iget-object v0, p1, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;->bytes:[B

    array-length v0, v0

    .line 66
    .local v0, "len":I
    iget-object v1, p1, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;->bytes:[B

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;->theBuffer:[B

    iget v3, p0, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;->thePos:I

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 67
    iget v1, p0, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;->thePos:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;->thePos:I

    .line 70
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;->theBuffer:[B

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;->thePos:I

    const/4 v4, 0x1

    aput-byte v4, v2, v1

    .line 73
    add-int/lit8 v1, v3, 0x1

    iput v1, p0, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;->thePos:I

    aput-byte p2, v2, v3

    .line 74
    return-object p0
.end method

.method public addBytes(Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;[B)Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;
    .locals 2
    .param p1, "aObject"    # Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;
    .param p2, "aBytes"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "aObject",
            "aBytes"
        }
    .end annotation

    .line 168
    array-length v0, p2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;->addBytes(Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;[BII)Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;

    move-result-object v0

    return-object v0
.end method

.method public addBytes(Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;[BII)Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;
    .locals 6
    .param p1, "aTag"    # Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;
    .param p2, "aBytes"    # [B
    .param p3, "aFrom"    # I
    .param p4, "aLength"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "aTag",
            "aBytes",
            "aFrom",
            "aLength"
        }
    .end annotation

    .line 173
    iget-object v0, p1, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;->bytes:[B

    array-length v0, v0

    .line 174
    .local v0, "tagLength":I
    invoke-direct {p0, p4}, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;->calculateBytesCountForLength(I)I

    move-result v1

    .line 177
    .local v1, "lengthBytesCount":I
    iget-object v2, p1, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;->bytes:[B

    iget-object v3, p0, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;->theBuffer:[B

    iget v4, p0, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;->thePos:I

    const/4 v5, 0x0

    invoke-static {v2, v5, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 178
    iget v2, p0, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;->thePos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;->thePos:I

    .line 181
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;->theBuffer:[B

    invoke-direct {p0, v3, v2, p4}, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;->fillLength([BII)V

    .line 182
    iget v2, p0, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;->thePos:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;->thePos:I

    .line 185
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;->theBuffer:[B

    invoke-static {p2, p3, v3, v2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 186
    iget v2, p0, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;->thePos:I

    add-int/2addr v2, p4

    iput v2, p0, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;->thePos:I

    .line 188
    return-object p0
.end method

.method public addDate(Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;Ljava/util/Date;)Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;
    .locals 2
    .param p1, "aObject"    # Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;
    .param p2, "aDate"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "aObject",
            "aDate"
        }
    .end annotation

    .line 88
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyMMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 89
    .local v0, "format":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;->addHex(Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;Ljava/lang/String;)Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;

    move-result-object v1

    return-object v1
.end method

.method public addEmpty(Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;)Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;
    .locals 2
    .param p1, "aObject"    # Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "aObject"
        }
    .end annotation

    .line 60
    const/4 v0, 0x0

    new-array v1, v0, [B

    invoke-virtual {p0, p1, v1, v0, v0}, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;->addBytes(Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;[BII)Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;

    move-result-object v0

    return-object v0
.end method

.method public addHex(Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;Ljava/lang/String;)Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;
    .locals 3
    .param p1, "aObject"    # Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;
    .param p2, "aHex"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "aObject",
            "aHex"
        }
    .end annotation

    .line 163
    invoke-static {p2}, Lcom/woleapp/netpos/contactless/taponphone/tlv/HexUtil;->parseHex(Ljava/lang/String;)[B

    move-result-object v0

    .line 164
    .local v0, "buffer":[B
    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v2, v1}, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;->addBytes(Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;[BII)Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;

    move-result-object v1

    return-object v1
.end method

.method public addIntAsHex(Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;I)Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;
    .locals 3
    .param p1, "aObject"    # Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;
    .param p2, "aCode"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "aObject",
            "aCode"
        }
    .end annotation

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 221
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;->addHex(Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;Ljava/lang/String;)Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;

    move-result-object v1

    return-object v1
.end method

.method public addText(Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;Ljava/lang/String;)Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;
    .locals 1
    .param p1, "aTag"    # Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;
    .param p2, "aText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "aTag",
            "aText"
        }
    .end annotation

    .line 207
    sget-object v0, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;->ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, p2, v0}, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;->addText(Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;

    move-result-object v0

    return-object v0
.end method

.method public addText(Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;
    .locals 3
    .param p1, "aTag"    # Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;
    .param p2, "aText"    # Ljava/lang/String;
    .param p3, "aCharset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "aTag",
            "aText",
            "aCharset"
        }
    .end annotation

    .line 212
    invoke-virtual {p2, p3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 213
    .local v0, "buffer":[B
    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v2, v1}, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;->addBytes(Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;[BII)Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;

    move-result-object v1

    return-object v1
.end method

.method public addTime(Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;Ljava/util/Date;)Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;
    .locals 2
    .param p1, "aObject"    # Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;
    .param p2, "aDate"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "aObject",
            "aDate"
        }
    .end annotation

    .line 93
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 94
    .local v0, "format":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;->addHex(Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;Ljava/lang/String;)Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;

    move-result-object v1

    return-object v1
.end method

.method public build()I
    .locals 7

    .line 99
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;->theTemplate:Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, v0, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;->bytes:[B

    array-length v0, v0

    .line 102
    .local v0, "tagLen":I
    iget v1, p0, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;->thePos:I

    invoke-direct {p0, v1}, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;->calculateBytesCountForLength(I)I

    move-result v1

    .line 105
    .local v1, "lengthBytesCount":I
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;->theBuffer:[B

    iget v3, p0, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;->theBufferOffset:I

    add-int v4, v0, v1

    iget v5, p0, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;->thePos:I

    invoke-static {v2, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 109
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;->theTemplate:Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;

    iget-object v2, v2, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;->bytes:[B

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;->theBuffer:[B

    iget v5, p0, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;->theBufferOffset:I

    iget-object v6, p0, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;->theTemplate:Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;

    iget-object v6, v6, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;->bytes:[B

    array-length v6, v6

    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 112
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;->theBuffer:[B

    iget v3, p0, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;->thePos:I

    invoke-direct {p0, v2, v0, v3}, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;->fillLength([BII)V

    .line 114
    iget v2, p0, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;->thePos:I

    add-int v3, v0, v1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;->thePos:I

    .line 116
    .end local v0    # "tagLen":I
    .end local v1    # "lengthBytesCount":I
    :cond_0
    iget v0, p0, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;->thePos:I

    return v0
.end method

.method public buildArray()[B
    .locals 4

    .line 225
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;->build()I

    move-result v0

    .line 226
    .local v0, "count":I
    new-array v1, v0, [B

    .line 227
    .local v1, "buf":[B
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;->theBuffer:[B

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 228
    return-object v1
.end method

.method public buildTlv()Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;
    .locals 4

    .line 232
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;->build()I

    move-result v0

    .line 233
    .local v0, "count":I
    new-instance v1, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvParser;

    invoke-direct {v1}, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvParser;-><init>()V

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;->theBuffer:[B

    iget v3, p0, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;->theBufferOffset:I

    invoke-virtual {v1, v2, v3, v0}, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvParser;->parseConstructed([BII)Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;

    move-result-object v1

    return-object v1
.end method

.method public buildTlvs()Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvs;
    .locals 4

    .line 238
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;->build()I

    move-result v0

    .line 239
    .local v0, "count":I
    new-instance v1, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvParser;

    invoke-direct {v1}, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvParser;-><init>()V

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;->theBuffer:[B

    iget v3, p0, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvBuilder;->theBufferOffset:I

    invoke-virtual {v1, v2, v3, v0}, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvParser;->parse([BII)Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvs;

    move-result-object v1

    return-object v1
.end method
