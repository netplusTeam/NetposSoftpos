.class public Lcom/sleepycat/persist/impl/SimpleFormat$FLong;
.super Lcom/sleepycat/persist/impl/SimpleFormat;
.source "SimpleFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/persist/impl/SimpleFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FLong"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x19fd075ac7b1fec8L


# direct methods
.method constructor <init>(Lcom/sleepycat/persist/impl/Catalog;Z)V
    .locals 1
    .param p1, "catalog"    # Lcom/sleepycat/persist/impl/Catalog;
    .param p2, "primitive"    # Z

    .line 468
    if-eqz p2, :cond_0

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    const-class v0, Ljava/lang/Long;

    :goto_0
    invoke-direct {p0, p1, v0, p2}, Lcom/sleepycat/persist/impl/SimpleFormat;-><init>(Lcom/sleepycat/persist/impl/Catalog;Ljava/lang/Class;Z)V

    .line 469
    return-void
.end method


# virtual methods
.method copySecKey(Lcom/sleepycat/persist/impl/RecordInput;Lcom/sleepycat/persist/impl/RecordOutput;)V
    .locals 3
    .param p1, "input"    # Lcom/sleepycat/persist/impl/RecordInput;
    .param p2, "output"    # Lcom/sleepycat/persist/impl/RecordOutput;

    .line 495
    nop

    .line 496
    invoke-virtual {p1}, Lcom/sleepycat/persist/impl/RecordInput;->getBufferBytes()[B

    move-result-object v0

    invoke-virtual {p1}, Lcom/sleepycat/persist/impl/RecordInput;->getBufferOffset()I

    move-result v1

    const/16 v2, 0x8

    invoke-virtual {p2, v0, v1, v2}, Lcom/sleepycat/persist/impl/RecordOutput;->writeFast([BII)V

    .line 497
    invoke-virtual {p1, v2}, Lcom/sleepycat/persist/impl/RecordInput;->skipFast(I)V

    .line 498
    return-void
.end method

.method getPrimitiveLength()I
    .locals 1

    .line 523
    const/16 v0, 0x8

    return v0
.end method

.method getSequenceKeyFormat()Lcom/sleepycat/persist/impl/Format;
    .locals 0

    .line 542
    return-object p0
.end method

.method newArray(I)Ljava/lang/Object;
    .locals 1
    .param p1, "len"    # I

    .line 473
    new-array v0, p1, [Ljava/lang/Long;

    return-object v0
.end method

.method public newInstance(Lcom/sleepycat/persist/impl/EntityInput;Z)Ljava/lang/Object;
    .locals 2
    .param p1, "input"    # Lcom/sleepycat/persist/impl/EntityInput;
    .param p2, "rawAccess"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 480
    invoke-interface {p1}, Lcom/sleepycat/persist/impl/EntityInput;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method newPrimitiveArray(ILcom/sleepycat/persist/impl/EntityInput;)Ljava/lang/Object;
    .locals 4
    .param p1, "len"    # I
    .param p2, "input"    # Lcom/sleepycat/persist/impl/EntityInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 504
    new-array v0, p1, [J

    .line 505
    .local v0, "a":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 506
    invoke-interface {p2}, Lcom/sleepycat/persist/impl/EntityInput;->readLong()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 505
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 508
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method readPrimitiveField(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityInput;Ljava/lang/reflect/Field;)V
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "input"    # Lcom/sleepycat/persist/impl/EntityInput;
    .param p3, "field"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 530
    invoke-interface {p2}, Lcom/sleepycat/persist/impl/EntityInput;->readLong()J

    move-result-wide v0

    invoke-virtual {p3, p1, v0, v1}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V

    .line 531
    return-void
.end method

.method skipContents(Lcom/sleepycat/persist/impl/RecordInput;)V
    .locals 1
    .param p1, "input"    # Lcom/sleepycat/persist/impl/RecordInput;

    .line 490
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/sleepycat/persist/impl/RecordInput;->skipFast(I)V

    .line 491
    return-void
.end method

.method writeObject(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityOutput;Z)V
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "output"    # Lcom/sleepycat/persist/impl/EntityOutput;
    .param p3, "rawAccess"    # Z

    .line 485
    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Lcom/sleepycat/persist/impl/EntityOutput;->writeLong(J)Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 486
    return-void
.end method

.method writePrimitiveArray(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityOutput;)V
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "output"    # Lcom/sleepycat/persist/impl/EntityOutput;

    .line 513
    move-object v0, p1

    check-cast v0, [J

    check-cast v0, [J

    .line 514
    .local v0, "a":[J
    array-length v1, v0

    .line 515
    .local v1, "len":I
    invoke-interface {p2, v1}, Lcom/sleepycat/persist/impl/EntityOutput;->writeArrayLength(I)V

    .line 516
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 517
    aget-wide v3, v0, v2

    invoke-interface {p2, v3, v4}, Lcom/sleepycat/persist/impl/EntityOutput;->writeLong(J)Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 516
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 519
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method writePrimitiveField(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityOutput;Ljava/lang/reflect/Field;)V
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "output"    # Lcom/sleepycat/persist/impl/EntityOutput;
    .param p3, "field"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 537
    invoke-virtual {p3, p1}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Lcom/sleepycat/persist/impl/EntityOutput;->writeLong(J)Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 538
    return-void
.end method
