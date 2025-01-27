.class public Lcom/sleepycat/je/DatabaseEntry;
.super Ljava/lang/Object;
.source "DatabaseEntry.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static MAX_DUMP_BYTES:I = 0x0

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private data:[B

.field private dlen:I

.field private doff:I

.field private offset:I

.field private partial:Z

.field private size:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 143
    const/16 v0, 0x64

    sput v0, Lcom/sleepycat/je/DatabaseEntry;->MAX_DUMP_BYTES:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/je/DatabaseEntry;->dlen:I

    .line 134
    iput v0, p0, Lcom/sleepycat/je/DatabaseEntry;->doff:I

    .line 135
    iput v0, p0, Lcom/sleepycat/je/DatabaseEntry;->offset:I

    .line 136
    iput v0, p0, Lcom/sleepycat/je/DatabaseEntry;->size:I

    .line 137
    iput-boolean v0, p0, Lcom/sleepycat/je/DatabaseEntry;->partial:Z

    .line 181
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "data"    # [B

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/je/DatabaseEntry;->dlen:I

    .line 134
    iput v0, p0, Lcom/sleepycat/je/DatabaseEntry;->doff:I

    .line 135
    iput v0, p0, Lcom/sleepycat/je/DatabaseEntry;->offset:I

    .line 136
    iput v0, p0, Lcom/sleepycat/je/DatabaseEntry;->size:I

    .line 137
    iput-boolean v0, p0, Lcom/sleepycat/je/DatabaseEntry;->partial:Z

    .line 191
    iput-object p1, p0, Lcom/sleepycat/je/DatabaseEntry;->data:[B

    .line 192
    if-eqz p1, :cond_0

    .line 193
    array-length v0, p1

    iput v0, p0, Lcom/sleepycat/je/DatabaseEntry;->size:I

    .line 195
    :cond_0
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "size"    # I

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/je/DatabaseEntry;->dlen:I

    .line 134
    iput v0, p0, Lcom/sleepycat/je/DatabaseEntry;->doff:I

    .line 135
    iput v0, p0, Lcom/sleepycat/je/DatabaseEntry;->offset:I

    .line 136
    iput v0, p0, Lcom/sleepycat/je/DatabaseEntry;->size:I

    .line 137
    iput-boolean v0, p0, Lcom/sleepycat/je/DatabaseEntry;->partial:Z

    .line 207
    iput-object p1, p0, Lcom/sleepycat/je/DatabaseEntry;->data:[B

    .line 208
    iput p2, p0, Lcom/sleepycat/je/DatabaseEntry;->offset:I

    .line 209
    iput p3, p0, Lcom/sleepycat/je/DatabaseEntry;->size:I

    .line 210
    return-void
.end method


# virtual methods
.method dumpData()Ljava/lang/String;
    .locals 2

    .line 471
    sget-object v0, Lcom/sleepycat/je/tree/Key;->DUMP_TYPE:Lcom/sleepycat/je/tree/Key$DumpType;

    sget v1, Lcom/sleepycat/je/DatabaseEntry;->MAX_DUMP_BYTES:I

    .line 472
    invoke-static {p0, v1}, Lcom/sleepycat/util/keyrange/KeyRange;->getByteArray(Lcom/sleepycat/je/DatabaseEntry;I)[B

    move-result-object v1

    .line 471
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/tree/Key$DumpType;->dumpByteArray([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 492
    instance-of v0, p1, Lcom/sleepycat/je/DatabaseEntry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 493
    return v1

    .line 495
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/sleepycat/je/DatabaseEntry;

    .line 496
    .local v0, "e":Lcom/sleepycat/je/DatabaseEntry;
    iget-boolean v2, p0, Lcom/sleepycat/je/DatabaseEntry;->partial:Z

    if-nez v2, :cond_1

    iget-boolean v3, v0, Lcom/sleepycat/je/DatabaseEntry;->partial:Z

    if-eqz v3, :cond_2

    .line 497
    :cond_1
    iget-boolean v3, v0, Lcom/sleepycat/je/DatabaseEntry;->partial:Z

    if-ne v2, v3, :cond_9

    iget v2, p0, Lcom/sleepycat/je/DatabaseEntry;->dlen:I

    iget v3, v0, Lcom/sleepycat/je/DatabaseEntry;->dlen:I

    if-ne v2, v3, :cond_9

    iget v2, p0, Lcom/sleepycat/je/DatabaseEntry;->doff:I

    iget v3, v0, Lcom/sleepycat/je/DatabaseEntry;->doff:I

    if-eq v2, v3, :cond_2

    goto :goto_2

    .line 503
    :cond_2
    iget-object v2, p0, Lcom/sleepycat/je/DatabaseEntry;->data:[B

    const/4 v3, 0x1

    if-nez v2, :cond_3

    iget-object v4, v0, Lcom/sleepycat/je/DatabaseEntry;->data:[B

    if-nez v4, :cond_3

    .line 504
    return v3

    .line 506
    :cond_3
    if-eqz v2, :cond_8

    iget-object v2, v0, Lcom/sleepycat/je/DatabaseEntry;->data:[B

    if-nez v2, :cond_4

    goto :goto_1

    .line 509
    :cond_4
    iget v2, p0, Lcom/sleepycat/je/DatabaseEntry;->size:I

    iget v4, v0, Lcom/sleepycat/je/DatabaseEntry;->size:I

    if-eq v2, v4, :cond_5

    .line 510
    return v1

    .line 512
    :cond_5
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v4, p0, Lcom/sleepycat/je/DatabaseEntry;->size:I

    if-ge v2, v4, :cond_7

    .line 513
    iget-object v4, p0, Lcom/sleepycat/je/DatabaseEntry;->data:[B

    iget v5, p0, Lcom/sleepycat/je/DatabaseEntry;->offset:I

    add-int/2addr v5, v2

    aget-byte v4, v4, v5

    iget-object v5, v0, Lcom/sleepycat/je/DatabaseEntry;->data:[B

    iget v6, v0, Lcom/sleepycat/je/DatabaseEntry;->offset:I

    add-int/2addr v6, v2

    aget-byte v5, v5, v6

    if-eq v4, v5, :cond_6

    .line 514
    return v1

    .line 512
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 517
    .end local v2    # "i":I
    :cond_7
    return v3

    .line 507
    :cond_8
    :goto_1
    return v1

    .line 500
    :cond_9
    :goto_2
    return v1
.end method

.method public getData()[B
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/sleepycat/je/DatabaseEntry;->data:[B

    return-object v0
.end method

.method public getOffset()I
    .locals 1

    .line 420
    iget v0, p0, Lcom/sleepycat/je/DatabaseEntry;->offset:I

    return v0
.end method

.method public getPartial()Z
    .locals 1

    .line 393
    iget-boolean v0, p0, Lcom/sleepycat/je/DatabaseEntry;->partial:Z

    return v0
.end method

.method public getPartialLength()I
    .locals 1

    .line 329
    iget v0, p0, Lcom/sleepycat/je/DatabaseEntry;->dlen:I

    return v0
.end method

.method public getPartialOffset()I
    .locals 1

    .line 361
    iget v0, p0, Lcom/sleepycat/je/DatabaseEntry;->doff:I

    return v0
.end method

.method public getSize()I
    .locals 1

    .line 448
    iget v0, p0, Lcom/sleepycat/je/DatabaseEntry;->size:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 525
    const/4 v0, 0x0

    .line 526
    .local v0, "hash":I
    iget-object v1, p0, Lcom/sleepycat/je/DatabaseEntry;->data:[B

    if-eqz v1, :cond_0

    .line 527
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/sleepycat/je/DatabaseEntry;->size:I

    if-ge v1, v2, :cond_0

    .line 528
    iget-object v2, p0, Lcom/sleepycat/je/DatabaseEntry;->data:[B

    iget v3, p0, Lcom/sleepycat/je/DatabaseEntry;->offset:I

    add-int/2addr v3, v1

    aget-byte v2, v2, v3

    add-int/2addr v0, v2

    .line 527
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 531
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

.method public setData([B)V
    .locals 1
    .param p1, "data"    # [B

    .line 236
    iput-object p1, p0, Lcom/sleepycat/je/DatabaseEntry;->data:[B

    .line 237
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/je/DatabaseEntry;->offset:I

    .line 238
    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    array-length v0, p1

    :goto_0
    iput v0, p0, Lcom/sleepycat/je/DatabaseEntry;->size:I

    .line 239
    return-void
.end method

.method public setData([BII)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "size"    # I

    .line 251
    iput-object p1, p0, Lcom/sleepycat/je/DatabaseEntry;->data:[B

    .line 252
    iput p2, p0, Lcom/sleepycat/je/DatabaseEntry;->offset:I

    .line 253
    iput p3, p0, Lcom/sleepycat/je/DatabaseEntry;->size:I

    .line 254
    return-void
.end method

.method public setOffset(I)V
    .locals 0
    .param p1, "offset"    # I

    .line 436
    iput p1, p0, Lcom/sleepycat/je/DatabaseEntry;->offset:I

    .line 437
    return-void
.end method

.method public setPartial(IIZ)V
    .locals 0
    .param p1, "doff"    # I
    .param p2, "dlen"    # I
    .param p3, "partial"    # Z

    .line 311
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/DatabaseEntry;->setPartialOffset(I)V

    .line 312
    invoke-virtual {p0, p2}, Lcom/sleepycat/je/DatabaseEntry;->setPartialLength(I)V

    .line 313
    invoke-virtual {p0, p3}, Lcom/sleepycat/je/DatabaseEntry;->setPartial(Z)V

    .line 314
    return-void
.end method

.method public setPartial(Z)V
    .locals 0
    .param p1, "partial"    # Z

    .line 408
    iput-boolean p1, p0, Lcom/sleepycat/je/DatabaseEntry;->partial:Z

    .line 409
    return-void
.end method

.method public setPartialLength(I)V
    .locals 0
    .param p1, "dlen"    # I

    .line 345
    iput p1, p0, Lcom/sleepycat/je/DatabaseEntry;->dlen:I

    .line 346
    return-void
.end method

.method public setPartialOffset(I)V
    .locals 0
    .param p1, "doff"    # I

    .line 377
    iput p1, p0, Lcom/sleepycat/je/DatabaseEntry;->doff:I

    .line 378
    return-void
.end method

.method public setSize(I)V
    .locals 0
    .param p1, "size"    # I

    .line 464
    iput p1, p0, Lcom/sleepycat/je/DatabaseEntry;->size:I

    .line 465
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<DatabaseEntry"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 155
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-boolean v1, p0, Lcom/sleepycat/je/DatabaseEntry;->partial:Z

    if-eqz v1, :cond_0

    .line 156
    const-string v1, " partial=\"true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    const-string v1, "\" doff=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sleepycat/je/DatabaseEntry;->doff:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 158
    const-string v1, "\" dlen=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sleepycat/je/DatabaseEntry;->dlen:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 159
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    :cond_0
    const-string v1, " offset=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sleepycat/je/DatabaseEntry;->offset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 162
    const-string v1, "\" size=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sleepycat/je/DatabaseEntry;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 163
    const-string v1, "\" data=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sleepycat/je/DatabaseEntry;->dumpData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    iget v1, p0, Lcom/sleepycat/je/DatabaseEntry;->size:I

    add-int/lit8 v1, v1, -0x1

    sget v2, Lcom/sleepycat/je/DatabaseEntry;->MAX_DUMP_BYTES:I

    if-le v1, v2, :cond_1

    .line 165
    const-string v1, " ... "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/sleepycat/je/DatabaseEntry;->size:I

    sget v4, Lcom/sleepycat/je/DatabaseEntry;->MAX_DUMP_BYTES:I

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes not shown "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    :cond_1
    const-string v1, "\"/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
