.class public Lcom/github/devnied/emvnfccard/utils/CommandApdu;
.super Ljava/lang/Object;
.source "CommandApdu.java"


# instance fields
.field protected mCla:I

.field protected mData:[B

.field protected mIns:I

.field protected mLc:I

.field protected mLe:I

.field protected mLeUsed:Z

.field protected mP1:I

.field protected mP2:I


# direct methods
.method public constructor <init>(Lcom/github/devnied/emvnfccard/enums/CommandEnum;II)V
    .locals 2
    .param p1, "pEnum"    # Lcom/github/devnied/emvnfccard/enums/CommandEnum;
    .param p2, "p1"    # I
    .param p3, "p2"    # I

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/github/devnied/emvnfccard/utils/CommandApdu;->mCla:I

    .line 25
    iput v0, p0, Lcom/github/devnied/emvnfccard/utils/CommandApdu;->mIns:I

    .line 27
    iput v0, p0, Lcom/github/devnied/emvnfccard/utils/CommandApdu;->mP1:I

    .line 29
    iput v0, p0, Lcom/github/devnied/emvnfccard/utils/CommandApdu;->mP2:I

    .line 31
    iput v0, p0, Lcom/github/devnied/emvnfccard/utils/CommandApdu;->mLc:I

    .line 33
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/github/devnied/emvnfccard/utils/CommandApdu;->mData:[B

    .line 35
    iput v0, p0, Lcom/github/devnied/emvnfccard/utils/CommandApdu;->mLe:I

    .line 37
    iput-boolean v0, p0, Lcom/github/devnied/emvnfccard/utils/CommandApdu;->mLeUsed:Z

    .line 60
    invoke-virtual {p1}, Lcom/github/devnied/emvnfccard/enums/CommandEnum;->getCla()I

    move-result v1

    iput v1, p0, Lcom/github/devnied/emvnfccard/utils/CommandApdu;->mCla:I

    .line 61
    invoke-virtual {p1}, Lcom/github/devnied/emvnfccard/enums/CommandEnum;->getIns()I

    move-result v1

    iput v1, p0, Lcom/github/devnied/emvnfccard/utils/CommandApdu;->mIns:I

    .line 62
    iput p2, p0, Lcom/github/devnied/emvnfccard/utils/CommandApdu;->mP1:I

    .line 63
    iput p3, p0, Lcom/github/devnied/emvnfccard/utils/CommandApdu;->mP2:I

    .line 64
    iput-boolean v0, p0, Lcom/github/devnied/emvnfccard/utils/CommandApdu;->mLeUsed:Z

    .line 65
    return-void
.end method

.method public constructor <init>(Lcom/github/devnied/emvnfccard/enums/CommandEnum;III)V
    .locals 2
    .param p1, "pEnum"    # Lcom/github/devnied/emvnfccard/enums/CommandEnum;
    .param p2, "p1"    # I
    .param p3, "p2"    # I
    .param p4, "le"    # I

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/github/devnied/emvnfccard/utils/CommandApdu;->mCla:I

    .line 25
    iput v0, p0, Lcom/github/devnied/emvnfccard/utils/CommandApdu;->mIns:I

    .line 27
    iput v0, p0, Lcom/github/devnied/emvnfccard/utils/CommandApdu;->mP1:I

    .line 29
    iput v0, p0, Lcom/github/devnied/emvnfccard/utils/CommandApdu;->mP2:I

    .line 31
    iput v0, p0, Lcom/github/devnied/emvnfccard/utils/CommandApdu;->mLc:I

    .line 33
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/github/devnied/emvnfccard/utils/CommandApdu;->mData:[B

    .line 35
    iput v0, p0, Lcom/github/devnied/emvnfccard/utils/CommandApdu;->mLe:I

    .line 37
    iput-boolean v0, p0, Lcom/github/devnied/emvnfccard/utils/CommandApdu;->mLeUsed:Z

    .line 51
    invoke-virtual {p1}, Lcom/github/devnied/emvnfccard/enums/CommandEnum;->getCla()I

    move-result v0

    iput v0, p0, Lcom/github/devnied/emvnfccard/utils/CommandApdu;->mCla:I

    .line 52
    invoke-virtual {p1}, Lcom/github/devnied/emvnfccard/enums/CommandEnum;->getIns()I

    move-result v0

    iput v0, p0, Lcom/github/devnied/emvnfccard/utils/CommandApdu;->mIns:I

    .line 53
    iput p2, p0, Lcom/github/devnied/emvnfccard/utils/CommandApdu;->mP1:I

    .line 54
    iput p3, p0, Lcom/github/devnied/emvnfccard/utils/CommandApdu;->mP2:I

    .line 55
    iput p4, p0, Lcom/github/devnied/emvnfccard/utils/CommandApdu;->mLe:I

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/devnied/emvnfccard/utils/CommandApdu;->mLeUsed:Z

    .line 57
    return-void
.end method

.method public constructor <init>(Lcom/github/devnied/emvnfccard/enums/CommandEnum;II[BI)V
    .locals 2
    .param p1, "pEnum"    # Lcom/github/devnied/emvnfccard/enums/CommandEnum;
    .param p2, "p1"    # I
    .param p3, "p2"    # I
    .param p4, "data"    # [B
    .param p5, "le"    # I

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/github/devnied/emvnfccard/utils/CommandApdu;->mCla:I

    .line 25
    iput v0, p0, Lcom/github/devnied/emvnfccard/utils/CommandApdu;->mIns:I

    .line 27
    iput v0, p0, Lcom/github/devnied/emvnfccard/utils/CommandApdu;->mP1:I

    .line 29
    iput v0, p0, Lcom/github/devnied/emvnfccard/utils/CommandApdu;->mP2:I

    .line 31
    iput v0, p0, Lcom/github/devnied/emvnfccard/utils/CommandApdu;->mLc:I

    .line 33
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/github/devnied/emvnfccard/utils/CommandApdu;->mData:[B

    .line 35
    iput v0, p0, Lcom/github/devnied/emvnfccard/utils/CommandApdu;->mLe:I

    .line 37
    iput-boolean v0, p0, Lcom/github/devnied/emvnfccard/utils/CommandApdu;->mLeUsed:Z

    .line 68
    invoke-virtual {p1}, Lcom/github/devnied/emvnfccard/enums/CommandEnum;->getCla()I

    move-result v1

    iput v1, p0, Lcom/github/devnied/emvnfccard/utils/CommandApdu;->mCla:I

    .line 69
    invoke-virtual {p1}, Lcom/github/devnied/emvnfccard/enums/CommandEnum;->getIns()I

    move-result v1

    iput v1, p0, Lcom/github/devnied/emvnfccard/utils/CommandApdu;->mIns:I

    .line 70
    iput p2, p0, Lcom/github/devnied/emvnfccard/utils/CommandApdu;->mP1:I

    .line 71
    iput p3, p0, Lcom/github/devnied/emvnfccard/utils/CommandApdu;->mP2:I

    .line 72
    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    array-length v0, p4

    :goto_0
    iput v0, p0, Lcom/github/devnied/emvnfccard/utils/CommandApdu;->mLc:I

    .line 73
    iput-object p4, p0, Lcom/github/devnied/emvnfccard/utils/CommandApdu;->mData:[B

    .line 74
    iput p5, p0, Lcom/github/devnied/emvnfccard/utils/CommandApdu;->mLe:I

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/devnied/emvnfccard/utils/CommandApdu;->mLeUsed:Z

    .line 76
    return-void
.end method

.method public constructor <init>(Lcom/github/devnied/emvnfccard/enums/CommandEnum;[BI)V
    .locals 2
    .param p1, "pEnum"    # Lcom/github/devnied/emvnfccard/enums/CommandEnum;
    .param p2, "data"    # [B
    .param p3, "le"    # I

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/github/devnied/emvnfccard/utils/CommandApdu;->mCla:I

    .line 25
    iput v0, p0, Lcom/github/devnied/emvnfccard/utils/CommandApdu;->mIns:I

    .line 27
    iput v0, p0, Lcom/github/devnied/emvnfccard/utils/CommandApdu;->mP1:I

    .line 29
    iput v0, p0, Lcom/github/devnied/emvnfccard/utils/CommandApdu;->mP2:I

    .line 31
    iput v0, p0, Lcom/github/devnied/emvnfccard/utils/CommandApdu;->mLc:I

    .line 33
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/github/devnied/emvnfccard/utils/CommandApdu;->mData:[B

    .line 35
    iput v0, p0, Lcom/github/devnied/emvnfccard/utils/CommandApdu;->mLe:I

    .line 37
    iput-boolean v0, p0, Lcom/github/devnied/emvnfccard/utils/CommandApdu;->mLeUsed:Z

    .line 40
    invoke-virtual {p1}, Lcom/github/devnied/emvnfccard/enums/CommandEnum;->getCla()I

    move-result v1

    iput v1, p0, Lcom/github/devnied/emvnfccard/utils/CommandApdu;->mCla:I

    .line 41
    invoke-virtual {p1}, Lcom/github/devnied/emvnfccard/enums/CommandEnum;->getIns()I

    move-result v1

    iput v1, p0, Lcom/github/devnied/emvnfccard/utils/CommandApdu;->mIns:I

    .line 42
    invoke-virtual {p1}, Lcom/github/devnied/emvnfccard/enums/CommandEnum;->getP1()I

    move-result v1

    iput v1, p0, Lcom/github/devnied/emvnfccard/utils/CommandApdu;->mP1:I

    .line 43
    invoke-virtual {p1}, Lcom/github/devnied/emvnfccard/enums/CommandEnum;->getP2()I

    move-result v1

    iput v1, p0, Lcom/github/devnied/emvnfccard/utils/CommandApdu;->mP2:I

    .line 44
    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    array-length v0, p2

    :goto_0
    iput v0, p0, Lcom/github/devnied/emvnfccard/utils/CommandApdu;->mLc:I

    .line 45
    iput-object p2, p0, Lcom/github/devnied/emvnfccard/utils/CommandApdu;->mData:[B

    .line 46
    iput p3, p0, Lcom/github/devnied/emvnfccard/utils/CommandApdu;->mLe:I

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/devnied/emvnfccard/utils/CommandApdu;->mLeUsed:Z

    .line 48
    return-void
.end method


# virtual methods
.method public toBytes()[B
    .locals 6

    .line 79
    const/4 v0, 0x4

    .line 80
    .local v0, "length":I
    iget-object v1, p0, Lcom/github/devnied/emvnfccard/utils/CommandApdu;->mData:[B

    if-eqz v1, :cond_0

    array-length v2, v1

    if-eqz v2, :cond_0

    .line 81
    add-int/lit8 v0, v0, 0x1

    .line 82
    array-length v2, v1

    add-int/2addr v0, v2

    .line 84
    :cond_0
    iget-boolean v2, p0, Lcom/github/devnied/emvnfccard/utils/CommandApdu;->mLeUsed:Z

    if-eqz v2, :cond_1

    .line 85
    add-int/lit8 v0, v0, 0x1

    .line 88
    :cond_1
    new-array v2, v0, [B

    .line 90
    .local v2, "apdu":[B
    const/4 v3, 0x0

    .line 91
    .local v3, "index":I
    iget v4, p0, Lcom/github/devnied/emvnfccard/utils/CommandApdu;->mCla:I

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 92
    add-int/lit8 v3, v3, 0x1

    .line 93
    iget v4, p0, Lcom/github/devnied/emvnfccard/utils/CommandApdu;->mIns:I

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 94
    add-int/lit8 v3, v3, 0x1

    .line 95
    iget v4, p0, Lcom/github/devnied/emvnfccard/utils/CommandApdu;->mP1:I

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 96
    add-int/lit8 v3, v3, 0x1

    .line 97
    iget v4, p0, Lcom/github/devnied/emvnfccard/utils/CommandApdu;->mP2:I

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 98
    add-int/lit8 v3, v3, 0x1

    .line 99
    if-eqz v1, :cond_2

    array-length v4, v1

    if-eqz v4, :cond_2

    .line 100
    iget v4, p0, Lcom/github/devnied/emvnfccard/utils/CommandApdu;->mLc:I

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 101
    add-int/lit8 v3, v3, 0x1

    .line 102
    const/4 v4, 0x0

    array-length v5, v1

    invoke-static {v1, v4, v2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 103
    iget-object v1, p0, Lcom/github/devnied/emvnfccard/utils/CommandApdu;->mData:[B

    array-length v1, v1

    add-int/2addr v3, v1

    .line 105
    :cond_2
    iget-boolean v1, p0, Lcom/github/devnied/emvnfccard/utils/CommandApdu;->mLeUsed:Z

    if-eqz v1, :cond_3

    .line 106
    aget-byte v1, v2, v3

    iget v4, p0, Lcom/github/devnied/emvnfccard/utils/CommandApdu;->mLe:I

    int-to-byte v4, v4

    add-int/2addr v1, v4

    int-to-byte v1, v1

    aput-byte v1, v2, v3

    .line 109
    :cond_3
    return-object v2
.end method
