.class public Lcom/sleepycat/je/log/LogUtils$XidImpl;
.super Ljava/lang/Object;
.source "LogUtils.java"

# interfaces
.implements Ljavax/transaction/xa/Xid;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/log/LogUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "XidImpl"
.end annotation


# instance fields
.field private bqual:[B

.field private formatId:I

.field private gid:[B


# direct methods
.method public constructor <init>(I[B[B)V
    .locals 0
    .param p1, "formatId"    # I
    .param p2, "gid"    # [B
    .param p3, "bqual"    # [B

    .line 550
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 551
    iput p1, p0, Lcom/sleepycat/je/log/LogUtils$XidImpl;->formatId:I

    .line 552
    iput-object p2, p0, Lcom/sleepycat/je/log/LogUtils$XidImpl;->gid:[B

    .line 553
    iput-object p3, p0, Lcom/sleepycat/je/log/LogUtils$XidImpl;->bqual:[B

    .line 554
    return-void
.end method

.method private compareByteArrays([B[B)Z
    .locals 5
    .param p1, "b1"    # [B
    .param p2, "b2"    # [B

    .line 603
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_1

    .line 608
    :cond_0
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_1

    .line 609
    return v1

    .line 612
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_3

    .line 613
    aget-byte v3, p1, v2

    aget-byte v4, p2, v2

    if-eq v3, v4, :cond_2

    .line 614
    return v1

    .line 612
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 618
    .end local v2    # "i":I
    :cond_3
    return v0

    .line 605
    :cond_4
    :goto_1
    if-ne p1, p2, :cond_5

    goto :goto_2

    :cond_5
    move v0, v1

    :goto_2
    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 570
    instance-of v0, p1, Lcom/sleepycat/je/log/LogUtils$XidImpl;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 571
    return v1

    .line 574
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/sleepycat/je/log/LogUtils$XidImpl;

    .line 575
    .local v0, "xid":Lcom/sleepycat/je/log/LogUtils$XidImpl;
    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogUtils$XidImpl;->getFormatId()I

    move-result v2

    iget v3, p0, Lcom/sleepycat/je/log/LogUtils$XidImpl;->formatId:I

    if-eq v2, v3, :cond_1

    .line 576
    return v1

    .line 578
    :cond_1
    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogUtils$XidImpl;->getGlobalTransactionId()[B

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/log/LogUtils$XidImpl;->gid:[B

    invoke-direct {p0, v2, v3}, Lcom/sleepycat/je/log/LogUtils$XidImpl;->compareByteArrays([B[B)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 579
    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogUtils$XidImpl;->getBranchQualifier()[B

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/log/LogUtils$XidImpl;->bqual:[B

    invoke-direct {p0, v2, v3}, Lcom/sleepycat/je/log/LogUtils$XidImpl;->compareByteArrays([B[B)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 580
    const/4 v1, 0x1

    return v1

    .line 583
    :cond_2
    return v1
.end method

.method public getBranchQualifier()[B
    .locals 1

    .line 565
    iget-object v0, p0, Lcom/sleepycat/je/log/LogUtils$XidImpl;->bqual:[B

    return-object v0
.end method

.method public getFormatId()I
    .locals 1

    .line 557
    iget v0, p0, Lcom/sleepycat/je/log/LogUtils$XidImpl;->formatId:I

    return v0
.end method

.method public getGlobalTransactionId()[B
    .locals 1

    .line 561
    iget-object v0, p0, Lcom/sleepycat/je/log/LogUtils$XidImpl;->gid:[B

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 588
    iget v0, p0, Lcom/sleepycat/je/log/LogUtils$XidImpl;->formatId:I

    .line 589
    .local v0, "code":I
    iget-object v1, p0, Lcom/sleepycat/je/log/LogUtils$XidImpl;->gid:[B

    if-eqz v1, :cond_0

    .line 590
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sleepycat/je/log/LogUtils$XidImpl;->gid:[B

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 591
    aget-byte v2, v2, v1

    add-int/2addr v0, v2

    .line 590
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 594
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/je/log/LogUtils$XidImpl;->bqual:[B

    if-eqz v1, :cond_1

    .line 595
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/sleepycat/je/log/LogUtils$XidImpl;->bqual:[B

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 596
    aget-byte v2, v2, v1

    add-int/2addr v0, v2

    .line 595
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 599
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 623
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 624
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "<Xid formatId=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sleepycat/je/log/LogUtils$XidImpl;->formatId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 625
    const-string v1, "\" gTxnId=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    iget-object v1, p0, Lcom/sleepycat/je/log/LogUtils$XidImpl;->gid:[B

    const-string v2, "null"

    if-nez v1, :cond_0

    .line 627
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 629
    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    :goto_0
    const-string v1, "\" bqual=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    iget-object v1, p0, Lcom/sleepycat/je/log/LogUtils$XidImpl;->bqual:[B

    if-nez v1, :cond_1

    .line 633
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 635
    :cond_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    :goto_1
    const-string v1, "\"/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
