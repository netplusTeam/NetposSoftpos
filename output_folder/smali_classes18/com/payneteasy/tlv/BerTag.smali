.class public Lcom/payneteasy/tlv/BerTag;
.super Ljava/lang/Object;
.source "BerTag.java"


# instance fields
.field public final bytes:[B


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .param p1, "aFirstByte"    # I

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x1

    new-array v0, v0, [B

    int-to-byte v1, p1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    iput-object v0, p0, Lcom/payneteasy/tlv/BerTag;->bytes:[B

    .line 34
    return-void
.end method

.method public constructor <init>(II)V
    .locals 3
    .param p1, "aFirstByte"    # I
    .param p2, "aSecondByte"    # I

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x2

    new-array v0, v0, [B

    int-to-byte v1, p1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    int-to-byte v1, p2

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    iput-object v0, p0, Lcom/payneteasy/tlv/BerTag;->bytes:[B

    .line 26
    return-void
.end method

.method public constructor <init>(III)V
    .locals 3
    .param p1, "aFirstByte"    # I
    .param p2, "aSecondByte"    # I
    .param p3, "aFirth"    # I

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x3

    new-array v0, v0, [B

    int-to-byte v1, p1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    int-to-byte v1, p2

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    int-to-byte v1, p3

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    iput-object v0, p0, Lcom/payneteasy/tlv/BerTag;->bytes:[B

    .line 30
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .param p1, "aBuf"    # [B

    .line 15
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/payneteasy/tlv/BerTag;-><init>([BII)V

    .line 16
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 2
    .param p1, "aBuf"    # [B
    .param p2, "aOffset"    # I
    .param p3, "aLength"    # I

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-array v0, p3, [B

    .line 20
    .local v0, "temp":[B
    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 21
    iput-object v0, p0, Lcom/payneteasy/tlv/BerTag;->bytes:[B

    .line 22
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 42
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 43
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 45
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/payneteasy/tlv/BerTag;

    .line 47
    .local v0, "berTag":Lcom/payneteasy/tlv/BerTag;
    iget-object v1, p0, Lcom/payneteasy/tlv/BerTag;->bytes:[B

    iget-object v2, v0, Lcom/payneteasy/tlv/BerTag;->bytes:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    return v1

    .line 43
    .end local v0    # "berTag":Lcom/payneteasy/tlv/BerTag;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/payneteasy/tlv/BerTag;->bytes:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public isConstructed()Z
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/payneteasy/tlv/BerTag;->bytes:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/payneteasy/tlv/BerTag;->isConstructed()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "+ "

    goto :goto_0

    :cond_0
    const-string v1, "- "

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/payneteasy/tlv/BerTag;->bytes:[B

    const/4 v2, 0x0

    array-length v3, v1

    invoke-static {v1, v2, v3}, Lcom/payneteasy/tlv/HexUtil;->toHexString([BII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
