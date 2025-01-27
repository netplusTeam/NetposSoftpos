.class public Lcom/alcineo/utils/tlv/TlvParser;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Softpos"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode([BI)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Ljava/util/List<",
            "Lcom/alcineo/utils/tlv/TlvItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alcineo/utils/tlv/TlvException;
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    :goto_0
    array-length v1, p0

    if-ge p1, v1, :cond_1

    invoke-static {p0, p1}, Lcom/alcineo/utils/tlv/TlvTag;->fromBytes([BI)Lcom/alcineo/utils/tlv/TlvTag;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/alcineo/utils/tlv/TlvTag;->isNull()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/alcineo/utils/tlv/TlvTag;->getSize()I

    move-result v2

    add-int/2addr p1, v2

    invoke-static {p0, p1}, Lcom/alcineo/utils/tlv/TlvLength;->fromBytes([BI)Lcom/alcineo/utils/tlv/TlvLength;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alcineo/utils/tlv/TlvLength;->getSize()I

    move-result v3

    add-int/2addr p1, v3

    invoke-virtual {v2}, Lcom/alcineo/utils/tlv/TlvLength;->getValue()I

    move-result v3

    add-int/2addr v3, p1

    invoke-static {p0, p1, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    invoke-virtual {v2}, Lcom/alcineo/utils/tlv/TlvLength;->getValue()I

    move-result v4

    add-int/2addr p1, v4

    invoke-virtual {v1}, Lcom/alcineo/utils/tlv/TlvTag;->isConstructed()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Lcom/alcineo/utils/tlv/TlvItem;

    const/4 v5, 0x0

    invoke-static {v3, v5}, Lcom/alcineo/utils/tlv/TlvParser;->decode([BI)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v1, v2, v3, v5}, Lcom/alcineo/utils/tlv/TlvItem;-><init>(Lcom/alcineo/utils/tlv/TlvTag;Lcom/alcineo/utils/tlv/TlvLength;[BLjava/util/List;)V

    goto :goto_1

    :cond_0
    new-instance v4, Lcom/alcineo/utils/tlv/TlvItem;

    invoke-direct {v4, v1, v2, v3}, Lcom/alcineo/utils/tlv/TlvItem;-><init>(Lcom/alcineo/utils/tlv/TlvTag;Lcom/alcineo/utils/tlv/TlvLength;[B)V

    :goto_1
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static native decodeMulti([BII)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII)",
            "Ljava/util/List<",
            "Lcom/alcineo/utils/tlv/TlvItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alcineo/utils/tlv/TlvException;
        }
    .end annotation
.end method
