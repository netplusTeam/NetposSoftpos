.class public Lorg/jpos/tlv/TLVList;
.super Ljava/lang/Object;
.source "TLVList.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/jpos/util/Loggeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jpos/tlv/TLVList$TLVListBuilder;
    }
.end annotation


# static fields
.field private static final EXT_LEN_MASK:I = 0x80

.field private static final EXT_TAG_MASK:I = 0x1f

.field private static final LEN_SIZE_MASK:I = 0x7f

.field private static final SKIP_BYTE1:I = 0x0

.field private static final SKIP_BYTE2:I = 0xff

.field private static final serialVersionUID:J = 0x609f195649abdad9L


# instance fields
.field private indexLastOccurrence:I

.field private lengthSize:I

.field private tagSize:I

.field private tagToFind:I

.field private final tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jpos/tlv/TLVMsg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jpos/tlv/TLVList;->tags:Ljava/util/List;

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lorg/jpos/tlv/TLVList;->tagSize:I

    .line 73
    iput v0, p0, Lorg/jpos/tlv/TLVList;->lengthSize:I

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Lorg/jpos/tlv/TLVList;->tagToFind:I

    .line 76
    iput v0, p0, Lorg/jpos/tlv/TLVList;->indexLastOccurrence:I

    .line 154
    return-void
.end method

.method static synthetic access$002(Lorg/jpos/tlv/TLVList;I)I
    .locals 0
    .param p0, "x0"    # Lorg/jpos/tlv/TLVList;
    .param p1, "x1"    # I

    .line 38
    iput p1, p0, Lorg/jpos/tlv/TLVList;->tagSize:I

    return p1
.end method

.method static synthetic access$102(Lorg/jpos/tlv/TLVList;I)I
    .locals 0
    .param p0, "x0"    # Lorg/jpos/tlv/TLVList;
    .param p1, "x1"    # I

    .line 38
    iput p1, p0, Lorg/jpos/tlv/TLVList;->lengthSize:I

    return p1
.end method

.method private bytesToInt([B)I
    .locals 1
    .param p1, "bb"    # [B

    .line 469
    const/4 v0, 0x0

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0x80

    if-lez v0, :cond_0

    .line 470
    const/4 v0, 0x1

    new-array v0, v0, [B

    invoke-static {v0, p1}, Lorg/jpos/iso/ISOUtil;->concat([B[B)[B

    move-result-object p1

    .line 472
    :cond_0
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p1}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    return v0
.end method

.method private getTAG(Ljava/nio/ByteBuffer;)I
    .locals 1
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 436
    iget v0, p0, Lorg/jpos/tlv/TLVList;->tagSize:I

    if-lez v0, :cond_0

    .line 437
    invoke-direct {p0, p1, v0}, Lorg/jpos/tlv/TLVList;->readBytes(Ljava/nio/ByteBuffer;I)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jpos/tlv/TLVList;->bytesToInt([B)I

    move-result v0

    return v0

    .line 439
    :cond_0
    invoke-direct {p0, p1}, Lorg/jpos/tlv/TLVList;->skipBytes(Ljava/nio/ByteBuffer;)V

    .line 440
    invoke-direct {p0, p1}, Lorg/jpos/tlv/TLVList;->readTagID(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method private getTLVMsg(Ljava/nio/ByteBuffer;)Lorg/jpos/tlv/TLVMsg;
    .locals 7
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 355
    invoke-direct {p0, p1}, Lorg/jpos/tlv/TLVList;->getTAG(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 356
    .local v0, "tag":I
    iget v1, p0, Lorg/jpos/tlv/TLVList;->tagSize:I

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    .line 357
    const/4 v1, 0x0

    return-object v1

    .line 360
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 364
    invoke-virtual {p0, p1}, Lorg/jpos/tlv/TLVList;->getValueLength(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 365
    .local v1, "length":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    if-gt v1, v4, :cond_1

    .line 369
    new-array v2, v1, [B

    .line 370
    .local v2, "arrValue":[B
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 372
    invoke-virtual {p0, v0, v2}, Lorg/jpos/tlv/TLVList;->createTLVMsg(I[B)Lorg/jpos/tlv/TLVMsg;

    move-result-object v3

    return-object v3

    .line 366
    .end local v2    # "arrValue":[B
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 367
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v3

    .line 366
    const-string v2, "BAD TLV FORMAT: tag (%x) length (%d) exceeds available data"

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 361
    .end local v1    # "length":I
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-array v3, v3, [Ljava/lang/Object;

    .line 362
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    .line 361
    const-string v2, "BAD TLV FORMAT: tag (%x) without length or value"

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private isExtTagByte(I)Z
    .locals 2
    .param p1, "b"    # I

    .line 344
    and-int/lit8 v0, p1, 0x1f

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private readBytes(Ljava/nio/ByteBuffer;I)[B
    .locals 4
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 476
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-gt p2, v0, :cond_0

    .line 483
    new-array v0, p2, [B

    .line 484
    .local v0, "bb":[B
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 485
    return-object v0

    .line 477
    .end local v0    # "bb":[B
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 480
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 478
    const-string v2, "BAD TLV FORMAT: (%d) remaining bytes are not enough to get tag id of length (%d)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readTagID(Ljava/nio/ByteBuffer;)I
    .locals 4
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 412
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 413
    .local v0, "b":I
    move v1, v0

    .line 414
    .local v1, "tag":I
    invoke-direct {p0, v0}, Lorg/jpos/tlv/TLVList;->isExtTagByte(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 417
    :cond_0
    shl-int/lit8 v1, v1, 0x8

    .line 418
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_1

    .line 421
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit16 v0, v2, 0xff

    .line 422
    or-int/2addr v1, v0

    .line 423
    and-int/lit16 v2, v0, 0x80

    const/16 v3, 0x80

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 419
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "BAD TLV FORMAT: encoded tag id is too short"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 425
    :cond_2
    :goto_0
    return v1
.end method

.method private skipBytes(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 398
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 401
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    .line 402
    goto :goto_1

    .line 404
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 405
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    const/16 v1, 0xff

    and-int/2addr v0, v1

    .line 406
    .local v0, "b":I
    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_1

    .line 407
    .end local v0    # "b":I
    :goto_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 408
    return-void

    .line 406
    .restart local v0    # "b":I
    :cond_1
    goto :goto_0
.end method


# virtual methods
.method public append(ILjava/lang/String;)Lorg/jpos/tlv/TLVList;
    .locals 1
    .param p1, "tag"    # I
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 233
    invoke-static {p2}, Lorg/jpos/iso/ISOUtil;->hex2byte(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/jpos/tlv/TLVList;->createTLVMsg(I[B)Lorg/jpos/tlv/TLVMsg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jpos/tlv/TLVList;->append(Lorg/jpos/tlv/TLVMsg;)V

    .line 234
    return-object p0
.end method

.method public append(I[B)Lorg/jpos/tlv/TLVList;
    .locals 1
    .param p1, "tag"    # I
    .param p2, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 220
    invoke-virtual {p0, p1, p2}, Lorg/jpos/tlv/TLVList;->createTLVMsg(I[B)Lorg/jpos/tlv/TLVMsg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jpos/tlv/TLVList;->append(Lorg/jpos/tlv/TLVMsg;)V

    .line 221
    return-object p0
.end method

.method public append(Lorg/jpos/tlv/TLVMsg;)V
    .locals 1
    .param p1, "tlv"    # Lorg/jpos/tlv/TLVMsg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 206
    const-string v0, "TLV message cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 208
    iget-object v0, p0, Lorg/jpos/tlv/TLVList;->tags:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    return-void
.end method

.method protected createTLVMsg(I[B)Lorg/jpos/tlv/TLVMsg;
    .locals 3
    .param p1, "tag"    # I
    .param p2, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 387
    new-instance v0, Lorg/jpos/tlv/TLVMsg;

    iget v1, p0, Lorg/jpos/tlv/TLVList;->tagSize:I

    iget v2, p0, Lorg/jpos/tlv/TLVList;->lengthSize:I

    invoke-direct {v0, p1, p2, v1, v2}, Lorg/jpos/tlv/TLVMsg;-><init>(I[BII)V

    return-object v0
.end method

.method public deleteByIndex(I)V
    .locals 1
    .param p1, "index"    # I

    .line 242
    iget-object v0, p0, Lorg/jpos/tlv/TLVList;->tags:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 243
    return-void
.end method

.method public deleteByTag(I)V
    .locals 4
    .param p1, "tag"    # I

    .line 250
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 251
    .local v0, "t":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/tlv/TLVMsg;>;"
    iget-object v1, p0, Lorg/jpos/tlv/TLVList;->tags:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jpos/tlv/TLVMsg;

    .line 252
    .local v2, "tlv2":Lorg/jpos/tlv/TLVMsg;
    invoke-virtual {v2}, Lorg/jpos/tlv/TLVMsg;->getTag()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 253
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    .end local v2    # "tlv2":Lorg/jpos/tlv/TLVMsg;
    :cond_0
    goto :goto_0

    .line 255
    :cond_1
    iget-object v1, p0, Lorg/jpos/tlv/TLVList;->tags:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 256
    return-void
.end method

.method public dump(Ljava/io/PrintStream;Ljava/lang/String;)V
    .locals 3
    .param p1, "p"    # Ljava/io/PrintStream;
    .param p2, "indent"    # Ljava/lang/String;

    .line 526
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 527
    .local v0, "inner":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<tlvlist>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 528
    invoke-virtual {p0}, Lorg/jpos/tlv/TLVList;->getTags()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jpos/tlv/TLVMsg;

    .line 529
    .local v2, "msg":Lorg/jpos/tlv/TLVMsg;
    invoke-virtual {v2, p1, v0}, Lorg/jpos/tlv/TLVMsg;->dump(Ljava/io/PrintStream;Ljava/lang/String;)V

    .end local v2    # "msg":Lorg/jpos/tlv/TLVMsg;
    goto :goto_0

    .line 530
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</tlvlist>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 531
    return-void
.end method

.method public elements()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Lorg/jpos/tlv/TLVMsg;",
            ">;"
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lorg/jpos/tlv/TLVList;->tags:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public find(I)Lorg/jpos/tlv/TLVMsg;
    .locals 3
    .param p1, "tag"    # I

    .line 265
    iput p1, p0, Lorg/jpos/tlv/TLVList;->tagToFind:I

    .line 266
    iget-object v0, p0, Lorg/jpos/tlv/TLVList;->tags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jpos/tlv/TLVMsg;

    .line 267
    .local v1, "tlv":Lorg/jpos/tlv/TLVMsg;
    invoke-virtual {v1}, Lorg/jpos/tlv/TLVMsg;->getTag()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 268
    iget-object v0, p0, Lorg/jpos/tlv/TLVList;->tags:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lorg/jpos/tlv/TLVList;->indexLastOccurrence:I

    .line 269
    return-object v1

    .line 271
    .end local v1    # "tlv":Lorg/jpos/tlv/TLVMsg;
    :cond_0
    goto :goto_0

    .line 272
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lorg/jpos/tlv/TLVList;->indexLastOccurrence:I

    .line 273
    const/4 v0, 0x0

    return-object v0
.end method

.method public findIndex(I)I
    .locals 3
    .param p1, "tag"    # I

    .line 284
    iput p1, p0, Lorg/jpos/tlv/TLVList;->tagToFind:I

    .line 285
    iget-object v0, p0, Lorg/jpos/tlv/TLVList;->tags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jpos/tlv/TLVMsg;

    .line 286
    .local v1, "tlv":Lorg/jpos/tlv/TLVMsg;
    invoke-virtual {v1}, Lorg/jpos/tlv/TLVMsg;->getTag()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 287
    iget-object v0, p0, Lorg/jpos/tlv/TLVList;->tags:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lorg/jpos/tlv/TLVList;->indexLastOccurrence:I

    .line 288
    return v0

    .line 290
    .end local v1    # "tlv":Lorg/jpos/tlv/TLVMsg;
    :cond_0
    goto :goto_0

    .line 291
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lorg/jpos/tlv/TLVList;->indexLastOccurrence:I

    .line 292
    return v0
.end method

.method public findNextTLV()Lorg/jpos/tlv/TLVMsg;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 302
    iget v0, p0, Lorg/jpos/tlv/TLVList;->tagToFind:I

    if-ltz v0, :cond_2

    .line 306
    iget v0, p0, Lorg/jpos/tlv/TLVList;->indexLastOccurrence:I

    add-int/lit8 v0, v0, 0x1

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/jpos/tlv/TLVList;->tags:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 307
    iget-object v1, p0, Lorg/jpos/tlv/TLVList;->tags:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jpos/tlv/TLVMsg;

    invoke-virtual {v1}, Lorg/jpos/tlv/TLVMsg;->getTag()I

    move-result v1

    iget v2, p0, Lorg/jpos/tlv/TLVList;->tagToFind:I

    if-ne v1, v2, :cond_0

    .line 308
    iput v0, p0, Lorg/jpos/tlv/TLVList;->indexLastOccurrence:I

    .line 309
    iget-object v1, p0, Lorg/jpos/tlv/TLVList;->tags:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jpos/tlv/TLVMsg;

    return-object v1

    .line 306
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 312
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0

    .line 303
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The initialization of the searched tag is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2
    .param p1, "tag"    # I

    .line 494
    invoke-virtual {p0, p1}, Lorg/jpos/tlv/TLVList;->find(I)Lorg/jpos/tlv/TLVMsg;

    move-result-object v0

    .line 495
    .local v0, "msg":Lorg/jpos/tlv/TLVMsg;
    if-nez v0, :cond_0

    .line 496
    const/4 v1, 0x0

    return-object v1

    .line 498
    :cond_0
    invoke-virtual {v0}, Lorg/jpos/tlv/TLVMsg;->getStringValue()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jpos/tlv/TLVMsg;",
            ">;"
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lorg/jpos/tlv/TLVList;->tags:Ljava/util/List;

    return-object v0
.end method

.method public getValue(I)[B
    .locals 2
    .param p1, "tag"    # I

    .line 507
    invoke-virtual {p0, p1}, Lorg/jpos/tlv/TLVList;->find(I)Lorg/jpos/tlv/TLVMsg;

    move-result-object v0

    .line 508
    .local v0, "msg":Lorg/jpos/tlv/TLVMsg;
    if-nez v0, :cond_0

    .line 509
    const/4 v1, 0x0

    return-object v1

    .line 511
    :cond_0
    invoke-virtual {v0}, Lorg/jpos/tlv/TLVMsg;->getValue()[B

    move-result-object v1

    return-object v1
.end method

.method protected getValueLength(Ljava/nio/ByteBuffer;)I
    .locals 4
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 450
    iget v0, p0, Lorg/jpos/tlv/TLVList;->lengthSize:I

    if-lez v0, :cond_0

    .line 451
    invoke-direct {p0, p1, v0}, Lorg/jpos/tlv/TLVList;->readBytes(Ljava/nio/ByteBuffer;I)[B

    move-result-object v0

    .line 452
    .local v0, "bb":[B
    invoke-direct {p0, v0}, Lorg/jpos/tlv/TLVList;->bytesToInt([B)I

    move-result v1

    return v1

    .line 455
    .end local v0    # "bb":[B
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 456
    .local v0, "b":B
    and-int/lit8 v1, v0, 0x7f

    .line 458
    .local v1, "count":I
    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_2

    if-nez v1, :cond_1

    goto :goto_0

    .line 462
    :cond_1
    invoke-direct {p0, p1, v1}, Lorg/jpos/tlv/TLVList;->readBytes(Ljava/nio/ByteBuffer;I)[B

    move-result-object v2

    .line 463
    .local v2, "bb":[B
    invoke-direct {p0, v2}, Lorg/jpos/tlv/TLVList;->bytesToInt([B)I

    move-result v3

    return v3

    .line 459
    .end local v2    # "bb":[B
    :cond_2
    :goto_0
    return v1
.end method

.method public hasTag(I)Z
    .locals 2
    .param p1, "tag"    # I

    .line 521
    invoke-virtual {p0, p1}, Lorg/jpos/tlv/TLVList;->findIndex(I)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public index(I)Lorg/jpos/tlv/TLVMsg;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 325
    iget-object v0, p0, Lorg/jpos/tlv/TLVList;->tags:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jpos/tlv/TLVMsg;

    return-object v0
.end method

.method public pack()[B
    .locals 4

    .line 334
    const/16 v0, 0x204

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 335
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    iget-object v1, p0, Lorg/jpos/tlv/TLVList;->tags:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jpos/tlv/TLVMsg;

    .line 336
    .local v2, "tlv":Lorg/jpos/tlv/TLVMsg;
    invoke-virtual {v2}, Lorg/jpos/tlv/TLVMsg;->getTLV()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 337
    .end local v2    # "tlv":Lorg/jpos/tlv/TLVMsg;
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    new-array v1, v1, [B

    .line 338
    .local v1, "b":[B
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 339
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 340
    return-object v1
.end method

.method public unpack([B)V
    .locals 1
    .param p1, "buf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 163
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/jpos/tlv/TLVList;->unpack([BI)V

    .line 164
    return-void
.end method

.method public unpack([BI)V
    .locals 2
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 190
    array-length v0, p1

    sub-int/2addr v0, p2

    invoke-static {p1, p2, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 192
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 193
    invoke-direct {p0, v0}, Lorg/jpos/tlv/TLVList;->getTLVMsg(Ljava/nio/ByteBuffer;)Lorg/jpos/tlv/TLVMsg;

    move-result-object v1

    .line 194
    .local v1, "currentNode":Lorg/jpos/tlv/TLVMsg;
    if-eqz v1, :cond_0

    .line 195
    invoke-virtual {p0, v1}, Lorg/jpos/tlv/TLVList;->append(Lorg/jpos/tlv/TLVMsg;)V

    goto :goto_0

    .line 197
    .end local v1    # "currentNode":Lorg/jpos/tlv/TLVMsg;
    :cond_1
    return-void
.end method
