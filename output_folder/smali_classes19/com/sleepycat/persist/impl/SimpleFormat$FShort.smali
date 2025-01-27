.class public Lcom/sleepycat/persist/impl/SimpleFormat$FShort;
.super Lcom/sleepycat/persist/impl/SimpleFormat;
.source "SimpleFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/persist/impl/SimpleFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FShort"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x4420c32e8a676998L


# direct methods
.method constructor <init>(Lcom/sleepycat/persist/impl/Catalog;Z)V
    .locals 1
    .param p1, "catalog"    # Lcom/sleepycat/persist/impl/Catalog;
    .param p2, "primitive"    # Z

    .line 301
    if-eqz p2, :cond_0

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    const-class v0, Ljava/lang/Short;

    :goto_0
    invoke-direct {p0, p1, v0, p2}, Lcom/sleepycat/persist/impl/SimpleFormat;-><init>(Lcom/sleepycat/persist/impl/Catalog;Ljava/lang/Class;Z)V

    .line 302
    return-void
.end method


# virtual methods
.method copySecKey(Lcom/sleepycat/persist/impl/RecordInput;Lcom/sleepycat/persist/impl/RecordOutput;)V
    .locals 1
    .param p1, "input"    # Lcom/sleepycat/persist/impl/RecordInput;
    .param p2, "output"    # Lcom/sleepycat/persist/impl/RecordOutput;

    .line 328
    invoke-virtual {p1}, Lcom/sleepycat/persist/impl/RecordInput;->readFast()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/sleepycat/persist/impl/RecordOutput;->writeFast(I)V

    .line 329
    invoke-virtual {p1}, Lcom/sleepycat/persist/impl/RecordInput;->readFast()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/sleepycat/persist/impl/RecordOutput;->writeFast(I)V

    .line 330
    return-void
.end method

.method getPrimitiveLength()I
    .locals 1

    .line 355
    const/4 v0, 0x2

    return v0
.end method

.method getSequenceKeyFormat()Lcom/sleepycat/persist/impl/Format;
    .locals 0

    .line 374
    return-object p0
.end method

.method newArray(I)Ljava/lang/Object;
    .locals 1
    .param p1, "len"    # I

    .line 306
    new-array v0, p1, [Ljava/lang/Short;

    return-object v0
.end method

.method public newInstance(Lcom/sleepycat/persist/impl/EntityInput;Z)Ljava/lang/Object;
    .locals 1
    .param p1, "input"    # Lcom/sleepycat/persist/impl/EntityInput;
    .param p2, "rawAccess"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 313
    invoke-interface {p1}, Lcom/sleepycat/persist/impl/EntityInput;->readShort()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method

.method newPrimitiveArray(ILcom/sleepycat/persist/impl/EntityInput;)Ljava/lang/Object;
    .locals 3
    .param p1, "len"    # I
    .param p2, "input"    # Lcom/sleepycat/persist/impl/EntityInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 336
    new-array v0, p1, [S

    .line 337
    .local v0, "a":[S
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 338
    invoke-interface {p2}, Lcom/sleepycat/persist/impl/EntityInput;->readShort()S

    move-result v2

    aput-short v2, v0, v1

    .line 337
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 340
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method readPrimitiveField(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityInput;Ljava/lang/reflect/Field;)V
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "input"    # Lcom/sleepycat/persist/impl/EntityInput;
    .param p3, "field"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 362
    invoke-interface {p2}, Lcom/sleepycat/persist/impl/EntityInput;->readShort()S

    move-result v0

    invoke-virtual {p3, p1, v0}, Ljava/lang/reflect/Field;->setShort(Ljava/lang/Object;S)V

    .line 363
    return-void
.end method

.method skipContents(Lcom/sleepycat/persist/impl/RecordInput;)V
    .locals 1
    .param p1, "input"    # Lcom/sleepycat/persist/impl/RecordInput;

    .line 323
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/sleepycat/persist/impl/RecordInput;->skipFast(I)V

    .line 324
    return-void
.end method

.method writeObject(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityOutput;Z)V
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "output"    # Lcom/sleepycat/persist/impl/EntityOutput;
    .param p3, "rawAccess"    # Z

    .line 318
    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    move-result v0

    invoke-interface {p2, v0}, Lcom/sleepycat/persist/impl/EntityOutput;->writeShort(I)Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 319
    return-void
.end method

.method writePrimitiveArray(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityOutput;)V
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "output"    # Lcom/sleepycat/persist/impl/EntityOutput;

    .line 345
    move-object v0, p1

    check-cast v0, [S

    check-cast v0, [S

    .line 346
    .local v0, "a":[S
    array-length v1, v0

    .line 347
    .local v1, "len":I
    invoke-interface {p2, v1}, Lcom/sleepycat/persist/impl/EntityOutput;->writeArrayLength(I)V

    .line 348
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 349
    aget-short v3, v0, v2

    invoke-interface {p2, v3}, Lcom/sleepycat/persist/impl/EntityOutput;->writeShort(I)Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 348
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 351
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method writePrimitiveField(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityOutput;Ljava/lang/reflect/Field;)V
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "output"    # Lcom/sleepycat/persist/impl/EntityOutput;
    .param p3, "field"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 369
    invoke-virtual {p3, p1}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v0

    invoke-interface {p2, v0}, Lcom/sleepycat/persist/impl/EntityOutput;->writeShort(I)Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 370
    return-void
.end method
