.class public Lcom/sleepycat/je/rep/util/ldiff/Window;
.super Ljava/lang/Object;
.source "Window.java"


# instance fields
.field private beginData:[B

.field private beginKey:[B

.field private chksum:J

.field private final cursor:Lcom/sleepycat/je/Cursor;

.field private diffSize:J

.field private final md:Ljava/security/MessageDigest;

.field private window:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field private final windowSize:I


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/Cursor;I)V
    .locals 3
    .param p1, "cursor"    # Lcom/sleepycat/je/Cursor;
    .param p2, "windowSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/sleepycat/je/rep/util/ldiff/Window;->cursor:Lcom/sleepycat/je/Cursor;

    .line 55
    iput p2, p0, Lcom/sleepycat/je/rep/util/ldiff/Window;->windowSize:I

    .line 58
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/util/ldiff/Window;->md:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    nop

    .line 64
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/util/ldiff/Window;->nextWindow()V

    .line 65
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 61
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "MD5 hashes are required for ldiff."

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private rollChecksum(II)V
    .locals 8
    .param p1, "removeXi"    # I
    .param p2, "addXi"    # I

    .line 206
    iget-wide v0, p0, Lcom/sleepycat/je/rep/util/ldiff/Window;->chksum:J

    long-to-int v2, v0

    sub-int/2addr v2, p1

    add-int/2addr v2, p2

    .line 207
    .local v2, "a":I
    const/16 v3, 0x20

    shr-long/2addr v0, v3

    long-to-int v0, v0

    invoke-virtual {p0}, Lcom/sleepycat/je/rep/util/ldiff/Window;->size()I

    move-result v1

    mul-int/2addr v1, p1

    sub-int/2addr v0, v1

    add-int/2addr v0, v2

    .line 208
    .local v0, "b":I
    int-to-long v4, v2

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    int-to-long v6, v0

    shl-long/2addr v6, v3

    or-long v3, v4, v6

    iput-wide v3, p0, Lcom/sleepycat/je/rep/util/ldiff/Window;->chksum:J

    .line 209
    return-void
.end method

.method private setChecksum()V
    .locals 8

    .line 182
    new-instance v0, Lcom/sleepycat/je/utilint/Adler32;

    invoke-direct {v0}, Lcom/sleepycat/je/utilint/Adler32;-><init>()V

    .line 184
    .local v0, "adler32":Lcom/sleepycat/je/utilint/Adler32;
    const/4 v1, 0x0

    .local v1, "a":I
    const/4 v2, 0x0

    .line 185
    .local v2, "b":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/util/ldiff/Window;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 186
    iget-object v4, p0, Lcom/sleepycat/je/rep/util/ldiff/Window;->window:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 187
    .local v4, "element":[B
    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/Adler32;->reset()V

    .line 188
    const/4 v5, 0x0

    array-length v6, v4

    invoke-virtual {v0, v4, v5, v6}, Lcom/sleepycat/je/utilint/Adler32;->update([BII)V

    .line 189
    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/Adler32;->getValue()J

    move-result-wide v5

    long-to-int v5, v5

    .line 190
    .local v5, "xi":I
    add-int/2addr v1, v5

    .line 191
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/util/ldiff/Window;->size()I

    move-result v6

    sub-int/2addr v6, v3

    mul-int/2addr v6, v5

    add-int/2addr v2, v6

    .line 185
    .end local v4    # "element":[B
    .end local v5    # "xi":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 193
    .end local v3    # "i":I
    :cond_0
    int-to-long v3, v1

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    int-to-long v5, v2

    const/16 v7, 0x20

    shl-long/2addr v5, v7

    or-long/2addr v3, v5

    iput-wide v3, p0, Lcom/sleepycat/je/rep/util/ldiff/Window;->chksum:J

    .line 194
    return-void
.end method


# virtual methods
.method public getBeginData()[B
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/sleepycat/je/rep/util/ldiff/Window;->beginData:[B

    return-object v0
.end method

.method public getBeginKey()[B
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/sleepycat/je/rep/util/ldiff/Window;->beginKey:[B

    return-object v0
.end method

.method public getChecksum()J
    .locals 2

    .line 126
    iget-wide v0, p0, Lcom/sleepycat/je/rep/util/ldiff/Window;->chksum:J

    return-wide v0
.end method

.method public getDiffSize()J
    .locals 2

    .line 138
    iget-wide v0, p0, Lcom/sleepycat/je/rep/util/ldiff/Window;->diffSize:J

    return-wide v0
.end method

.method public getMd5Hash()[B
    .locals 3

    .line 149
    iget-object v0, p0, Lcom/sleepycat/je/rep/util/ldiff/Window;->md:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 151
    iget-object v0, p0, Lcom/sleepycat/je/rep/util/ldiff/Window;->window:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 152
    .local v1, "ba":[B
    iget-object v2, p0, Lcom/sleepycat/je/rep/util/ldiff/Window;->md:Ljava/security/MessageDigest;

    invoke-virtual {v2, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 153
    .end local v1    # "ba":[B
    goto :goto_0

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/util/ldiff/Window;->md:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    return-object v0
.end method

.method public nextWindow()V
    .locals 6

    .line 98
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 99
    .local v0, "key":Lcom/sleepycat/je/DatabaseEntry;
    new-instance v1, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v1}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 100
    .local v1, "data":Lcom/sleepycat/je/DatabaseEntry;
    const/4 v2, 0x0

    .line 101
    .local v2, "i":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/sleepycat/je/rep/util/ldiff/Window;->window:Ljava/util/List;

    .line 102
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/sleepycat/je/rep/util/ldiff/Window;->diffSize:J

    .line 105
    :goto_0
    iget v3, p0, Lcom/sleepycat/je/rep/util/ldiff/Window;->windowSize:I

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/sleepycat/je/rep/util/ldiff/Window;->cursor:Lcom/sleepycat/je/Cursor;

    sget-object v4, Lcom/sleepycat/je/LockMode;->DEFAULT:Lcom/sleepycat/je/LockMode;

    .line 106
    invoke-virtual {v3, v0, v1, v4}, Lcom/sleepycat/je/Cursor;->getNext(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;

    move-result-object v3

    sget-object v4, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    if-ne v3, v4, :cond_1

    .line 108
    if-nez v2, :cond_0

    .line 109
    invoke-virtual {v0}, Lcom/sleepycat/je/DatabaseEntry;->getData()[B

    move-result-object v3

    iput-object v3, p0, Lcom/sleepycat/je/rep/util/ldiff/Window;->beginKey:[B

    .line 110
    invoke-virtual {v1}, Lcom/sleepycat/je/DatabaseEntry;->getData()[B

    move-result-object v3

    iput-object v3, p0, Lcom/sleepycat/je/rep/util/ldiff/Window;->beginData:[B

    .line 112
    :cond_0
    iget-object v3, p0, Lcom/sleepycat/je/rep/util/ldiff/Window;->window:Ljava/util/List;

    invoke-virtual {v0}, Lcom/sleepycat/je/DatabaseEntry;->getData()[B

    move-result-object v4

    .line 113
    invoke-virtual {v1}, Lcom/sleepycat/je/DatabaseEntry;->getData()[B

    move-result-object v5

    .line 112
    invoke-static {v4, v5}, Lcom/sleepycat/je/rep/util/ldiff/LDiffUtil;->concatByteArray([B[B)[B

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 117
    :cond_1
    invoke-direct {p0}, Lcom/sleepycat/je/rep/util/ldiff/Window;->setChecksum()V

    .line 118
    return-void
.end method

.method public rollWindow()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 76
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 77
    .local v0, "key":Lcom/sleepycat/je/DatabaseEntry;
    new-instance v1, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v1}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 78
    .local v1, "data":Lcom/sleepycat/je/DatabaseEntry;
    iget-object v2, p0, Lcom/sleepycat/je/rep/util/ldiff/Window;->cursor:Lcom/sleepycat/je/Cursor;

    sget-object v3, Lcom/sleepycat/je/LockMode;->DEFAULT:Lcom/sleepycat/je/LockMode;

    invoke-virtual {v2, v0, v1, v3}, Lcom/sleepycat/je/Cursor;->getNext(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;

    move-result-object v2

    sget-object v3, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    if-ne v2, v3, :cond_0

    .line 80
    invoke-virtual {v0}, Lcom/sleepycat/je/DatabaseEntry;->getData()[B

    move-result-object v2

    .line 81
    invoke-virtual {v1}, Lcom/sleepycat/je/DatabaseEntry;->getData()[B

    move-result-object v3

    .line 80
    invoke-static {v2, v3}, Lcom/sleepycat/je/rep/util/ldiff/LDiffUtil;->concatByteArray([B[B)[B

    move-result-object v2

    .line 82
    .local v2, "keyValue":[B
    iget-object v3, p0, Lcom/sleepycat/je/rep/util/ldiff/Window;->window:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v3}, Lcom/sleepycat/je/rep/util/ldiff/LDiffUtil;->getXi([B)I

    move-result v3

    .line 83
    .local v3, "removeXi":I
    iget-object v4, p0, Lcom/sleepycat/je/rep/util/ldiff/Window;->window:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    invoke-static {v2}, Lcom/sleepycat/je/rep/util/ldiff/LDiffUtil;->getXi([B)I

    move-result v4

    .line 85
    .local v4, "addXi":I
    invoke-direct {p0, v3, v4}, Lcom/sleepycat/je/rep/util/ldiff/Window;->rollChecksum(II)V

    .line 86
    .end local v2    # "keyValue":[B
    .end local v3    # "removeXi":I
    .end local v4    # "addXi":I
    goto :goto_0

    .line 87
    :cond_0
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sleepycat/je/rep/util/ldiff/Window;->chksum:J

    .line 89
    :goto_0
    iget-wide v2, p0, Lcom/sleepycat/je/rep/util/ldiff/Window;->diffSize:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/sleepycat/je/rep/util/ldiff/Window;->diffSize:J

    .line 90
    return-void
.end method

.method public size()I
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/sleepycat/je/rep/util/ldiff/Window;->window:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
