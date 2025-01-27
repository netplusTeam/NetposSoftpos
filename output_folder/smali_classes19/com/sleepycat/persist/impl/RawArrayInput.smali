.class Lcom/sleepycat/persist/impl/RawArrayInput;
.super Lcom/sleepycat/persist/impl/RawAbstractInput;
.source "RawArrayInput.java"


# instance fields
.field private array:[Ljava/lang/Object;

.field private componentFormat:Lcom/sleepycat/persist/impl/Format;

.field private index:I


# direct methods
.method constructor <init>(Lcom/sleepycat/persist/impl/Catalog;ZLjava/util/IdentityHashMap;Lcom/sleepycat/persist/raw/RawObject;Lcom/sleepycat/persist/impl/Format;)V
    .locals 1
    .param p1, "catalog"    # Lcom/sleepycat/persist/impl/Catalog;
    .param p2, "rawAccess"    # Z
    .param p3, "converted"    # Ljava/util/IdentityHashMap;
    .param p4, "raw"    # Lcom/sleepycat/persist/raw/RawObject;
    .param p5, "componentFormat"    # Lcom/sleepycat/persist/impl/Format;

    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/persist/impl/RawAbstractInput;-><init>(Lcom/sleepycat/persist/impl/Catalog;ZLjava/util/IdentityHashMap;)V

    .line 38
    invoke-virtual {p4}, Lcom/sleepycat/persist/raw/RawObject;->getElements()[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/persist/impl/RawArrayInput;->array:[Ljava/lang/Object;

    .line 39
    iput-object p5, p0, Lcom/sleepycat/persist/impl/RawArrayInput;->componentFormat:Lcom/sleepycat/persist/impl/Format;

    .line 40
    return-void
.end method


# virtual methods
.method public readArrayLength()I
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/sleepycat/persist/impl/RawArrayInput;->array:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method readNext()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/sleepycat/persist/impl/RawArrayInput;->array:[Ljava/lang/Object;

    iget v1, p0, Lcom/sleepycat/persist/impl/RawArrayInput;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sleepycat/persist/impl/RawArrayInput;->index:I

    aget-object v0, v0, v1

    .line 52
    .local v0, "o":Ljava/lang/Object;
    iget-object v1, p0, Lcom/sleepycat/persist/impl/RawArrayInput;->componentFormat:Lcom/sleepycat/persist/impl/Format;

    invoke-virtual {p0, v0, v1}, Lcom/sleepycat/persist/impl/RawArrayInput;->checkAndConvert(Ljava/lang/Object;Lcom/sleepycat/persist/impl/Format;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method
