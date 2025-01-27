.class Lcom/sleepycat/persist/impl/RawComplexInput;
.super Lcom/sleepycat/persist/impl/RawAbstractInput;
.source "RawComplexInput.java"


# instance fields
.field private fields:[Lcom/sleepycat/persist/impl/FieldInfo;

.field private index:I

.field private objects:[Lcom/sleepycat/persist/raw/RawObject;


# direct methods
.method constructor <init>(Lcom/sleepycat/persist/impl/Catalog;ZLjava/util/IdentityHashMap;[Lcom/sleepycat/persist/impl/FieldInfo;[Lcom/sleepycat/persist/raw/RawObject;)V
    .locals 0
    .param p1, "catalog"    # Lcom/sleepycat/persist/impl/Catalog;
    .param p2, "rawAccess"    # Z
    .param p3, "converted"    # Ljava/util/IdentityHashMap;
    .param p4, "fields"    # [Lcom/sleepycat/persist/impl/FieldInfo;
    .param p5, "objects"    # [Lcom/sleepycat/persist/raw/RawObject;

    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/persist/impl/RawAbstractInput;-><init>(Lcom/sleepycat/persist/impl/Catalog;ZLjava/util/IdentityHashMap;)V

    .line 38
    iput-object p4, p0, Lcom/sleepycat/persist/impl/RawComplexInput;->fields:[Lcom/sleepycat/persist/impl/FieldInfo;

    .line 39
    iput-object p5, p0, Lcom/sleepycat/persist/impl/RawComplexInput;->objects:[Lcom/sleepycat/persist/raw/RawObject;

    .line 40
    return-void
.end method


# virtual methods
.method readNext()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/sleepycat/persist/impl/RawComplexInput;->objects:[Lcom/sleepycat/persist/raw/RawObject;

    iget v1, p0, Lcom/sleepycat/persist/impl/RawComplexInput;->index:I

    aget-object v0, v0, v1

    .line 47
    .local v0, "raw":Lcom/sleepycat/persist/raw/RawObject;
    iget-object v2, p0, Lcom/sleepycat/persist/impl/RawComplexInput;->fields:[Lcom/sleepycat/persist/impl/FieldInfo;

    aget-object v2, v2, v1

    .line 48
    .local v2, "field":Lcom/sleepycat/persist/impl/FieldInfo;
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sleepycat/persist/impl/RawComplexInput;->index:I

    .line 49
    invoke-virtual {v2}, Lcom/sleepycat/persist/impl/FieldInfo;->getType()Lcom/sleepycat/persist/impl/Format;

    move-result-object v1

    .line 50
    .local v1, "format":Lcom/sleepycat/persist/impl/Format;
    invoke-virtual {v0}, Lcom/sleepycat/persist/raw/RawObject;->getValues()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2}, Lcom/sleepycat/persist/impl/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 51
    .local v3, "o":Ljava/lang/Object;
    invoke-virtual {p0, v3, v1}, Lcom/sleepycat/persist/impl/RawComplexInput;->checkAndConvert(Ljava/lang/Object;Lcom/sleepycat/persist/impl/Format;)Ljava/lang/Object;

    move-result-object v4

    return-object v4
.end method
