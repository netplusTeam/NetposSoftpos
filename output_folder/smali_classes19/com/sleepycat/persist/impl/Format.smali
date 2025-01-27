.class public abstract Lcom/sleepycat/persist/impl/Format;
.super Ljava/lang/Object;
.source "Format.java"

# interfaces
.implements Lcom/sleepycat/persist/impl/Reader;
.implements Lcom/sleepycat/persist/raw/RawType;
.implements Ljava/io/Serializable;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final ID_BIGDEC:I = 0x14

.field static final ID_BIGINT:I = 0x13

.field static final ID_BOOL:I = 0x2

.field static final ID_BOOL_W:I = 0x3

.field static final ID_BYTE:I = 0x4

.field static final ID_BYTE_W:I = 0x5

.field static final ID_CHAR:I = 0x10

.field static final ID_CHAR_W:I = 0x11

.field static final ID_DATE:I = 0x15

.field static final ID_DOUBLE:I = 0xe

.field static final ID_DOUBLE_W:I = 0xf

.field static final ID_FLOAT:I = 0xc

.field static final ID_FLOAT_W:I = 0xd

.field static final ID_INT:I = 0x8

.field static final ID_INT_W:I = 0x9

.field static final ID_LONG:I = 0xa

.field static final ID_LONG_W:I = 0xb

.field static final ID_NULL:I = 0x0

.field static final ID_NUMBER:I = 0x16

.field static final ID_OBJECT:I = 0x1

.field static final ID_PREDEFINED:I = 0x1e

.field static final ID_SHORT:I = 0x6

.field static final ID_SHORT_W:I = 0x7

.field static final ID_SIMPLE_MAX:I = 0x15

.field static final ID_SIMPLE_MIN:I = 0x2

.field static final ID_STRING:I = 0x12

.field private static final serialVersionUID:J = 0x7927ae8aa01af7aL


# instance fields
.field private transient catalog:Lcom/sleepycat/persist/impl/Catalog;

.field private className:Ljava/lang/String;

.field private deleted:Z

.field private id:I

.field private transient initialized:Z

.field private latestFormat:Lcom/sleepycat/persist/impl/Format;

.field private previousFormat:Lcom/sleepycat/persist/impl/Format;

.field private transient proxiedFormat:Lcom/sleepycat/persist/impl/Format;

.field private reader:Lcom/sleepycat/persist/impl/Reader;

.field private superFormat:Lcom/sleepycat/persist/impl/Format;

.field private supertypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private transient type:Ljava/lang/Class;

.field private unused:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 246
    return-void
.end method

.method constructor <init>(Lcom/sleepycat/persist/impl/Catalog;Ljava/lang/Class;)V
    .locals 1
    .param p1, "catalog"    # Lcom/sleepycat/persist/impl/Catalog;
    .param p2, "type"    # Ljava/lang/Class;

    .line 318
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sleepycat/persist/impl/Format;-><init>(Lcom/sleepycat/persist/impl/Catalog;Ljava/lang/String;)V

    .line 319
    iput-object p2, p0, Lcom/sleepycat/persist/impl/Format;->type:Ljava/lang/Class;

    .line 320
    invoke-direct {p0}, Lcom/sleepycat/persist/impl/Format;->addSupertypes()V

    .line 321
    return-void
.end method

.method constructor <init>(Lcom/sleepycat/persist/impl/Catalog;Ljava/lang/String;)V
    .locals 1
    .param p1, "catalog"    # Lcom/sleepycat/persist/impl/Catalog;
    .param p2, "className"    # Ljava/lang/String;

    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 327
    if-eqz p1, :cond_1

    .line 328
    if-eqz p2, :cond_0

    .line 329
    iput-object p1, p0, Lcom/sleepycat/persist/impl/Format;->catalog:Lcom/sleepycat/persist/impl/Catalog;

    .line 330
    iput-object p2, p0, Lcom/sleepycat/persist/impl/Format;->className:Ljava/lang/String;

    .line 331
    iput-object p0, p0, Lcom/sleepycat/persist/impl/Format;->latestFormat:Lcom/sleepycat/persist/impl/Format;

    .line 332
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/persist/impl/Format;->supertypes:Ljava/util/Set;

    .line 333
    return-void

    .line 328
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 327
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private addInterfaces(Ljava/lang/Class;)V
    .locals 6
    .param p1, "cls"    # Ljava/lang/Class;

    .line 610
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    .line 611
    .local v0, "interfaces":[Ljava/lang/Class;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 612
    .local v3, "iface":Ljava/lang/Class;
    const-class v4, Lcom/sleepycat/persist/impl/Enhanced;

    if-eq v3, v4, :cond_0

    .line 613
    iget-object v4, p0, Lcom/sleepycat/persist/impl/Format;->supertypes:Ljava/util/Set;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 614
    invoke-direct {p0, v3}, Lcom/sleepycat/persist/impl/Format;->addInterfaces(Ljava/lang/Class;)V

    .line 611
    .end local v3    # "iface":Ljava/lang/Class;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 617
    :cond_1
    return-void
.end method

.method private addSupertypes()V
    .locals 3

    .line 597
    iget-object v0, p0, Lcom/sleepycat/persist/impl/Format;->type:Ljava/lang/Class;

    invoke-direct {p0, v0}, Lcom/sleepycat/persist/impl/Format;->addInterfaces(Ljava/lang/Class;)V

    .line 598
    iget-object v0, p0, Lcom/sleepycat/persist/impl/Format;->type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 599
    .local v0, "stype":Ljava/lang/Class;
    :goto_0
    if-eqz v0, :cond_0

    const-class v1, Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    .line 600
    iget-object v1, p0, Lcom/sleepycat/persist/impl/Format;->supertypes:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 601
    invoke-direct {p0, v0}, Lcom/sleepycat/persist/impl/Format;->addInterfaces(Ljava/lang/Class;)V

    .line 602
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 604
    :cond_0
    return-void
.end method

.method private addTypeHeader(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 4
    .param p1, "buf"    # Ljava/lang/StringBuilder;
    .param p2, "elemName"    # Ljava/lang/String;

    .line 1150
    const/16 v0, 0x3c

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1151
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1152
    const-string v0, " id=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1153
    invoke-virtual {p0}, Lcom/sleepycat/persist/impl/Format;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1154
    const-string v0, "\" class=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1155
    invoke-virtual {p0}, Lcom/sleepycat/persist/impl/Format;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1156
    const-string v0, "\" version=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1157
    invoke-virtual {p0}, Lcom/sleepycat/persist/impl/Format;->getVersion()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1158
    const/16 v0, 0x22

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1159
    invoke-virtual {p0}, Lcom/sleepycat/persist/impl/Format;->getLatestVersion()Lcom/sleepycat/persist/impl/Format;

    move-result-object v1

    .line 1160
    .local v1, "currVersion":Lcom/sleepycat/persist/impl/Format;
    if-eqz v1, :cond_0

    .line 1161
    const-string v2, " currentVersionId=\""

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1162
    invoke-virtual {v1}, Lcom/sleepycat/persist/impl/Format;->getId()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1163
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1165
    :cond_0
    invoke-virtual {p0}, Lcom/sleepycat/persist/impl/Format;->getPreviousVersion()Lcom/sleepycat/persist/impl/Format;

    move-result-object v2

    .line 1166
    .local v2, "prevVersion":Lcom/sleepycat/persist/impl/Format;
    if-eqz v2, :cond_1

    .line 1167
    const-string v3, " previousVersionId=\""

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1168
    invoke-virtual {v2}, Lcom/sleepycat/persist/impl/Format;->getId()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1169
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1171
    :cond_1
    return-void
.end method

.method static isPredefined(Lcom/sleepycat/persist/impl/Format;)Z
    .locals 2
    .param p0, "format"    # Lcom/sleepycat/persist/impl/Format;

    .line 297
    invoke-virtual {p0}, Lcom/sleepycat/persist/impl/Format;->getId()I

    move-result v0

    const/16 v1, 0x1e

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public allowEvolveFromProxy()Z
    .locals 1

    .line 992
    const/4 v0, 0x0

    return v0
.end method

.method areNestedRefsProhibited()Z
    .locals 1

    .line 624
    const/4 v0, 0x0

    return v0
.end method

.method abstract collectRelatedFormats(Lcom/sleepycat/persist/impl/Catalog;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/persist/impl/Catalog;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/persist/impl/Format;",
            ">;)V"
        }
    .end annotation
.end method

.method convertRawObject(Lcom/sleepycat/persist/impl/Catalog;ZLcom/sleepycat/persist/raw/RawObject;Ljava/util/IdentityHashMap;)Ljava/lang/Object;
    .locals 1
    .param p1, "catalog"    # Lcom/sleepycat/persist/impl/Catalog;
    .param p2, "rawAccess"    # Z
    .param p3, "rawObject"    # Lcom/sleepycat/persist/raw/RawObject;
    .param p4, "converted"    # Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 984
    invoke-virtual {p0}, Lcom/sleepycat/persist/impl/Format;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->unexpectedState(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method copySecKey(Lcom/sleepycat/persist/impl/RecordInput;Lcom/sleepycat/persist/impl/RecordOutput;)V
    .locals 1
    .param p1, "input"    # Lcom/sleepycat/persist/impl/RecordInput;
    .param p2, "output"    # Lcom/sleepycat/persist/impl/RecordOutput;

    .line 892
    invoke-virtual {p0}, Lcom/sleepycat/persist/impl/Format;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->unexpectedState(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method copySecMultiKey(Lcom/sleepycat/persist/impl/RecordInput;Lcom/sleepycat/persist/impl/Format;Ljava/util/Set;)V
    .locals 1
    .param p1, "input"    # Lcom/sleepycat/persist/impl/RecordInput;
    .param p2, "keyFormat"    # Lcom/sleepycat/persist/impl/Format;
    .param p3, "results"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 902
    invoke-virtual {p0}, Lcom/sleepycat/persist/impl/Format;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->unexpectedState(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method abstract evolve(Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/impl/Evolver;)Z
.end method

.method evolveMetadata(Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/evolve/Converter;Lcom/sleepycat/persist/impl/Evolver;)Z
    .locals 1
    .param p1, "newFormat"    # Lcom/sleepycat/persist/impl/Format;
    .param p2, "converter"    # Lcom/sleepycat/persist/evolve/Converter;
    .param p3, "evolver"    # Lcom/sleepycat/persist/impl/Evolver;

    .line 761
    const/4 v0, 0x1

    return v0
.end method

.method public getAccessor(Z)Lcom/sleepycat/persist/impl/Accessor;
    .locals 1
    .param p1, "rawAccess"    # Z

    .line 996
    const/4 v0, 0x0

    return-object v0
.end method

.method final getCatalog()Lcom/sleepycat/persist/impl/Catalog;
    .locals 1

    .line 358
    iget-object v0, p0, Lcom/sleepycat/persist/impl/Format;->catalog:Lcom/sleepycat/persist/impl/Catalog;

    return-object v0
.end method

.method public getClassMetadata()Lcom/sleepycat/persist/model/ClassMetadata;
    .locals 1

    .line 681
    const/4 v0, 0x0

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .line 630
    iget-object v0, p0, Lcom/sleepycat/persist/impl/Format;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getComponentType()Lcom/sleepycat/persist/impl/Format;
    .locals 1

    .line 673
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getComponentType()Lcom/sleepycat/persist/raw/RawType;
    .locals 1

    .line 246
    invoke-virtual {p0}, Lcom/sleepycat/persist/impl/Format;->getComponentType()Lcom/sleepycat/persist/impl/Format;

    move-result-object v0

    return-object v0
.end method

.method public getDimensions()I
    .locals 1

    .line 669
    const/4 v0, 0x0

    return v0
.end method

.method getEntityFormat()Lcom/sleepycat/persist/impl/ComplexFormat;
    .locals 1

    .line 733
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEntityMetadata()Lcom/sleepycat/persist/model/EntityMetadata;
    .locals 1

    .line 685
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEnumConstants()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 661
    const/4 v0, 0x0

    return-object v0
.end method

.method getEvolveNeeded()Z
    .locals 1

    .line 523
    invoke-static {}, Lcom/sleepycat/compat/DbCompat;->unexpectedState()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method final getExistingType()Ljava/lang/Class;
    .locals 2

    .line 389
    iget-object v0, p0, Lcom/sleepycat/persist/impl/Format;->catalog:Lcom/sleepycat/persist/impl/Catalog;

    if-eqz v0, :cond_1

    .line 390
    iget-object v1, p0, Lcom/sleepycat/persist/impl/Format;->type:Ljava/lang/Class;

    if-nez v1, :cond_0

    .line 392
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/persist/impl/Format;->className:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/sleepycat/persist/impl/Catalog;->resolveClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/persist/impl/Format;->type:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    goto :goto_0

    .line 393
    :catch_0
    move-exception v0

    .line 394
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->unexpectedException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 397
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sleepycat/persist/impl/Format;->type:Ljava/lang/Class;

    return-object v0

    .line 389
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public getFields()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/persist/raw/RawField;",
            ">;"
        }
    .end annotation

    .line 677
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getId()I
    .locals 1

    .line 365
    iget v0, p0, Lcom/sleepycat/persist/impl/Format;->id:I

    return v0
.end method

.method final getLatestVersion()Lcom/sleepycat/persist/impl/Format;
    .locals 1

    .line 460
    iget-object v0, p0, Lcom/sleepycat/persist/impl/Format;->latestFormat:Lcom/sleepycat/persist/impl/Format;

    return-object v0
.end method

.method getNewStringFormat()Z
    .locals 1

    .line 534
    invoke-static {}, Lcom/sleepycat/compat/DbCompat;->unexpectedState()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getOldKeyName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "keyName"    # Ljava/lang/String;

    .line 957
    invoke-virtual {p0}, Lcom/sleepycat/persist/impl/Format;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->unexpectedState(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public final getPreviousVersion()Lcom/sleepycat/persist/impl/Format;
    .locals 1

    .line 468
    iget-object v0, p0, Lcom/sleepycat/persist/impl/Format;->previousFormat:Lcom/sleepycat/persist/impl/Format;

    return-object v0
.end method

.method final getProxiedFormat()Lcom/sleepycat/persist/impl/Format;
    .locals 1

    .line 444
    iget-object v0, p0, Lcom/sleepycat/persist/impl/Format;->proxiedFormat:Lcom/sleepycat/persist/impl/Format;

    return-object v0
.end method

.method final getReader()Lcom/sleepycat/persist/impl/Reader;
    .locals 1

    .line 411
    iget-object v0, p0, Lcom/sleepycat/persist/impl/Format;->reader:Lcom/sleepycat/persist/impl/Reader;

    if-eq p0, v0, :cond_0

    .line 412
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sleepycat/persist/impl/PersistCatalog;->unevolvedFormatsEncountered:Z

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/persist/impl/Format;->reader:Lcom/sleepycat/persist/impl/Reader;

    return-object v0
.end method

.method getSequenceKeyFormat()Lcom/sleepycat/persist/impl/Format;
    .locals 3

    .line 970
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Type not allowed for sequence: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 971
    invoke-virtual {p0}, Lcom/sleepycat/persist/impl/Format;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final getSuperFormat()Lcom/sleepycat/persist/impl/Format;
    .locals 1

    .line 429
    iget-object v0, p0, Lcom/sleepycat/persist/impl/Format;->superFormat:Lcom/sleepycat/persist/impl/Format;

    return-object v0
.end method

.method public getSuperType()Lcom/sleepycat/persist/impl/Format;
    .locals 1

    .line 643
    iget-object v0, p0, Lcom/sleepycat/persist/impl/Format;->superFormat:Lcom/sleepycat/persist/impl/Format;

    return-object v0
.end method

.method public bridge synthetic getSuperType()Lcom/sleepycat/persist/raw/RawType;
    .locals 1

    .line 246
    invoke-virtual {p0}, Lcom/sleepycat/persist/impl/Format;->getSuperType()Lcom/sleepycat/persist/impl/Format;

    move-result-object v0

    return-object v0
.end method

.method final getType()Ljava/lang/Class;
    .locals 1

    .line 381
    iget-object v0, p0, Lcom/sleepycat/persist/impl/Format;->type:Ljava/lang/Class;

    return-object v0
.end method

.method public getVersion()I
    .locals 2

    .line 634
    invoke-virtual {p0}, Lcom/sleepycat/persist/impl/Format;->getClassMetadata()Lcom/sleepycat/persist/model/ClassMetadata;

    move-result-object v0

    .line 635
    .local v0, "meta":Lcom/sleepycat/persist/model/ClassMetadata;
    if-eqz v0, :cond_0

    .line 636
    invoke-virtual {v0}, Lcom/sleepycat/persist/model/ClassMetadata;->getVersion()I

    move-result v1

    return v1

    .line 638
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method getWrapperFormat()Lcom/sleepycat/persist/impl/Format;
    .locals 1

    .line 710
    const/4 v0, 0x0

    return-object v0
.end method

.method initCatalog(Lcom/sleepycat/persist/impl/Catalog;)V
    .locals 1
    .param p1, "catalog"    # Lcom/sleepycat/persist/impl/Catalog;

    .line 349
    if-eqz p1, :cond_0

    .line 350
    iput-object p1, p0, Lcom/sleepycat/persist/impl/Format;->catalog:Lcom/sleepycat/persist/impl/Catalog;

    .line 351
    return-void

    .line 349
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method abstract initialize(Lcom/sleepycat/persist/impl/Catalog;Lcom/sleepycat/persist/model/EntityModel;I)V
.end method

.method final initializeIfNeeded(Lcom/sleepycat/persist/impl/Catalog;Lcom/sleepycat/persist/model/EntityModel;)V
    .locals 2
    .param p1, "catalog"    # Lcom/sleepycat/persist/impl/Catalog;
    .param p2, "model"    # Lcom/sleepycat/persist/model/EntityModel;

    .line 549
    if-eqz p1, :cond_5

    .line 551
    iget-boolean v0, p0, Lcom/sleepycat/persist/impl/Format;->initialized:Z

    if-nez v0, :cond_4

    .line 552
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/persist/impl/Format;->initialized:Z

    .line 553
    iput-object p1, p0, Lcom/sleepycat/persist/impl/Format;->catalog:Lcom/sleepycat/persist/impl/Catalog;

    .line 556
    iget-object v1, p0, Lcom/sleepycat/persist/impl/Format;->latestFormat:Lcom/sleepycat/persist/impl/Format;

    if-nez v1, :cond_0

    .line 557
    iput-object p0, p0, Lcom/sleepycat/persist/impl/Format;->latestFormat:Lcom/sleepycat/persist/impl/Format;

    .line 559
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/persist/impl/Format;->reader:Lcom/sleepycat/persist/impl/Reader;

    if-nez v1, :cond_1

    .line 560
    iput-object p0, p0, Lcom/sleepycat/persist/impl/Format;->reader:Lcom/sleepycat/persist/impl/Reader;

    .line 567
    :cond_1
    iget-object v1, p0, Lcom/sleepycat/persist/impl/Format;->type:Ljava/lang/Class;

    if-nez v1, :cond_3

    .line 568
    invoke-virtual {p0}, Lcom/sleepycat/persist/impl/Format;->isCurrentVersion()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 569
    invoke-virtual {p0}, Lcom/sleepycat/persist/impl/Format;->isSimple()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {p1}, Lcom/sleepycat/persist/impl/Catalog;->isRawAccess()Z

    move-result v1

    if-nez v1, :cond_3

    .line 570
    :cond_2
    invoke-virtual {p0}, Lcom/sleepycat/persist/impl/Format;->getExistingType()Ljava/lang/Class;

    .line 574
    :cond_3
    const/4 v1, 0x0

    .line 575
    invoke-interface {p1, p0, v1}, Lcom/sleepycat/persist/impl/Catalog;->getInitVersion(Lcom/sleepycat/persist/impl/Format;Z)I

    move-result v1

    .line 574
    invoke-virtual {p0, p1, p2, v1}, Lcom/sleepycat/persist/impl/Format;->initialize(Lcom/sleepycat/persist/impl/Catalog;Lcom/sleepycat/persist/model/EntityModel;I)V

    .line 576
    iget-object v1, p0, Lcom/sleepycat/persist/impl/Format;->reader:Lcom/sleepycat/persist/impl/Reader;

    .line 578
    invoke-interface {p1, p0, v0}, Lcom/sleepycat/persist/impl/Catalog;->getInitVersion(Lcom/sleepycat/persist/impl/Format;Z)I

    move-result v0

    .line 577
    invoke-interface {v1, p1, p2, v0, p0}, Lcom/sleepycat/persist/impl/Reader;->initializeReader(Lcom/sleepycat/persist/impl/Catalog;Lcom/sleepycat/persist/model/EntityModel;ILcom/sleepycat/persist/impl/Format;)V

    .line 581
    :cond_4
    return-void

    .line 549
    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public initializeReader(Lcom/sleepycat/persist/impl/Catalog;Lcom/sleepycat/persist/model/EntityModel;ILcom/sleepycat/persist/impl/Format;)V
    .locals 0
    .param p1, "catalog"    # Lcom/sleepycat/persist/impl/Catalog;
    .param p2, "model"    # Lcom/sleepycat/persist/model/EntityModel;
    .param p3, "initVersion"    # I
    .param p4, "oldFormat"    # Lcom/sleepycat/persist/impl/Format;

    .line 591
    return-void
.end method

.method public isArray()Z
    .locals 1

    .line 665
    const/4 v0, 0x0

    return v0
.end method

.method isAssignableTo(Lcom/sleepycat/persist/impl/Format;)Z
    .locals 3
    .param p1, "format"    # Lcom/sleepycat/persist/impl/Format;

    .line 697
    iget-object v0, p0, Lcom/sleepycat/persist/impl/Format;->proxiedFormat:Lcom/sleepycat/persist/impl/Format;

    if-eqz v0, :cond_0

    .line 698
    invoke-virtual {v0, p1}, Lcom/sleepycat/persist/impl/Format;->isAssignableTo(Lcom/sleepycat/persist/impl/Format;)Z

    move-result v0

    return v0

    .line 700
    :cond_0
    const/4 v0, 0x1

    if-eq p1, p0, :cond_2

    iget v1, p1, Lcom/sleepycat/persist/impl/Format;->id:I

    if-eq v1, v0, :cond_2

    iget-object v1, p0, Lcom/sleepycat/persist/impl/Format;->supertypes:Ljava/util/Set;

    iget-object v2, p1, Lcom/sleepycat/persist/impl/Format;->className:Ljava/lang/String;

    .line 702
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    nop

    .line 700
    :goto_1
    return v0
.end method

.method final isCurrentVersion()Z
    .locals 1

    .line 769
    iget-object v0, p0, Lcom/sleepycat/persist/impl/Format;->latestFormat:Lcom/sleepycat/persist/impl/Format;

    if-ne v0, p0, :cond_0

    iget-boolean v0, p0, Lcom/sleepycat/persist/impl/Format;->deleted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isDeleted()Z
    .locals 1

    .line 493
    iget-boolean v0, p0, Lcom/sleepycat/persist/impl/Format;->deleted:Z

    return v0
.end method

.method isEntity()Z
    .locals 1

    .line 717
    const/4 v0, 0x0

    return v0
.end method

.method public isEnum()Z
    .locals 1

    .line 657
    const/4 v0, 0x0

    return v0
.end method

.method final isInitialized()Z
    .locals 1

    .line 538
    iget-boolean v0, p0, Lcom/sleepycat/persist/impl/Format;->initialized:Z

    return v0
.end method

.method isModelClass()Z
    .locals 1

    .line 725
    const/4 v0, 0x0

    return v0
.end method

.method final isNew()Z
    .locals 1

    .line 354
    iget v0, p0, Lcom/sleepycat/persist/impl/Format;->id:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isPriKeyNullOrZero(Ljava/lang/Object;Z)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "rawAccess"    # Z

    .line 921
    invoke-virtual {p0}, Lcom/sleepycat/persist/impl/Format;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->unexpectedState(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public isPrimitive()Z
    .locals 1

    .line 653
    const/4 v0, 0x0

    return v0
.end method

.method final isSameClass(Lcom/sleepycat/persist/impl/Format;)Z
    .locals 2
    .param p1, "other"    # Lcom/sleepycat/persist/impl/Format;

    .line 777
    iget-object v0, p0, Lcom/sleepycat/persist/impl/Format;->latestFormat:Lcom/sleepycat/persist/impl/Format;

    iget-object v1, p1, Lcom/sleepycat/persist/impl/Format;->latestFormat:Lcom/sleepycat/persist/impl/Format;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSimple()Z
    .locals 1

    .line 649
    const/4 v0, 0x0

    return v0
.end method

.method migrateFromBeta(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/persist/impl/Format;",
            ">;)V"
        }
    .end annotation

    .line 339
    .local p1, "formatMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sleepycat/persist/impl/Format;>;"
    iget-object v0, p0, Lcom/sleepycat/persist/impl/Format;->latestFormat:Lcom/sleepycat/persist/impl/Format;

    if-nez v0, :cond_0

    .line 340
    iput-object p0, p0, Lcom/sleepycat/persist/impl/Format;->latestFormat:Lcom/sleepycat/persist/impl/Format;

    .line 342
    :cond_0
    return-void
.end method

.method abstract newArray(I)Ljava/lang/Object;
.end method

.method public abstract newInstance(Lcom/sleepycat/persist/impl/EntityInput;Z)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation
.end method

.method nullifySecKey(Lcom/sleepycat/persist/impl/Catalog;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "catalog"    # Lcom/sleepycat/persist/impl/Catalog;
    .param p2, "entity"    # Ljava/lang/Object;
    .param p3, "keyName"    # Ljava/lang/String;
    .param p4, "keyElement"    # Ljava/lang/Object;

    .line 913
    invoke-virtual {p0}, Lcom/sleepycat/persist/impl/Format;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->unexpectedState(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public abstract readObject(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityInput;Z)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation
.end method

.method public readPriKey(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityInput;Z)V
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "input"    # Lcom/sleepycat/persist/impl/EntityInput;
    .param p3, "rawAccess"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 948
    invoke-virtual {p0}, Lcom/sleepycat/persist/impl/Format;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->unexpectedState(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method final setDeleted(Z)V
    .locals 0
    .param p1, "deleted"    # Z

    .line 500
    iput-boolean p1, p0, Lcom/sleepycat/persist/impl/Format;->deleted:Z

    .line 501
    return-void
.end method

.method setEvolveNeeded(Z)V
    .locals 1
    .param p1, "needed"    # Z

    .line 516
    invoke-static {}, Lcom/sleepycat/compat/DbCompat;->unexpectedState()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method final setId(I)V
    .locals 0
    .param p1, "id"    # I

    .line 373
    iput p1, p0, Lcom/sleepycat/persist/impl/Format;->id:I

    .line 374
    return-void
.end method

.method final setLatestVersion(Lcom/sleepycat/persist/impl/Format;)V
    .locals 1
    .param p1, "newFormat"    # Lcom/sleepycat/persist/impl/Format;

    .line 482
    iget-object v0, p0, Lcom/sleepycat/persist/impl/Format;->latestFormat:Lcom/sleepycat/persist/impl/Format;

    if-ne v0, p0, :cond_0

    .line 483
    iput-object p0, p1, Lcom/sleepycat/persist/impl/Format;->previousFormat:Lcom/sleepycat/persist/impl/Format;

    .line 486
    :cond_0
    iput-object p1, p0, Lcom/sleepycat/persist/impl/Format;->latestFormat:Lcom/sleepycat/persist/impl/Format;

    .line 487
    return-void
.end method

.method final setProxiedFormat(Lcom/sleepycat/persist/impl/Format;)V
    .locals 0
    .param p1, "proxiedFormat"    # Lcom/sleepycat/persist/impl/Format;

    .line 451
    iput-object p1, p0, Lcom/sleepycat/persist/impl/Format;->proxiedFormat:Lcom/sleepycat/persist/impl/Format;

    .line 452
    return-void
.end method

.method final setReader(Lcom/sleepycat/persist/impl/Reader;)V
    .locals 0
    .param p1, "reader"    # Lcom/sleepycat/persist/impl/Reader;

    .line 422
    iput-object p1, p0, Lcom/sleepycat/persist/impl/Format;->reader:Lcom/sleepycat/persist/impl/Reader;

    .line 423
    return-void
.end method

.method final setSuperFormat(Lcom/sleepycat/persist/impl/Format;)V
    .locals 0
    .param p1, "superFormat"    # Lcom/sleepycat/persist/impl/Format;

    .line 436
    iput-object p1, p0, Lcom/sleepycat/persist/impl/Format;->superFormat:Lcom/sleepycat/persist/impl/Format;

    .line 437
    return-void
.end method

.method final setUnused(Z)V
    .locals 0
    .param p1, "unused"    # Z

    .line 507
    iput-boolean p1, p0, Lcom/sleepycat/persist/impl/Format;->unused:Z

    .line 508
    return-void
.end method

.method abstract skipContents(Lcom/sleepycat/persist/impl/RecordInput;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation
.end method

.method skipToSecKey(Lcom/sleepycat/persist/impl/RecordInput;Ljava/lang/String;)Lcom/sleepycat/persist/impl/Format;
    .locals 1
    .param p1, "input"    # Lcom/sleepycat/persist/impl/RecordInput;
    .param p2, "keyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 884
    invoke-virtual {p0}, Lcom/sleepycat/persist/impl/Format;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->unexpectedState(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 20

    .line 1001
    move-object/from16 v0, p0

    const-string v1, "  "

    .line 1002
    .local v1, "INDENT":Ljava/lang/String;
    const-string v2, "    "

    .line 1003
    .local v2, "INDENT2":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x1f4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1004
    .local v3, "buf":Ljava/lang/StringBuilder;
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/persist/impl/Format;->isSimple()Z

    move-result v4

    const-string v5, "\"/>\n"

    if-eqz v4, :cond_0

    .line 1005
    const-string v4, "SimpleType"

    invoke-direct {v0, v3, v4}, Lcom/sleepycat/persist/impl/Format;->addTypeHeader(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1006
    const-string v4, " primitive=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1007
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/persist/impl/Format;->isPrimitive()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1008
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v17, v1

    move-object/from16 v18, v2

    goto/16 :goto_9

    .line 1009
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/persist/impl/Format;->isEnum()Z

    move-result v4

    const-string v6, "  "

    if-eqz v4, :cond_2

    .line 1010
    const-string v4, "EnumType"

    invoke-direct {v0, v3, v4}, Lcom/sleepycat/persist/impl/Format;->addTypeHeader(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1011
    const-string v4, ">\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1012
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/persist/impl/Format;->getEnumConstants()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1013
    .local v5, "constant":Ljava/lang/String;
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1014
    const-string v7, "<Constant>"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1015
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1016
    const-string v7, "</Constant>\n"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1017
    .end local v5    # "constant":Ljava/lang/String;
    goto :goto_0

    .line 1018
    :cond_1
    const-string v4, "</EnumType>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v17, v1

    move-object/from16 v18, v2

    goto/16 :goto_9

    .line 1019
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/persist/impl/Format;->isArray()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1020
    const-string v4, "ArrayType"

    invoke-direct {v0, v3, v4}, Lcom/sleepycat/persist/impl/Format;->addTypeHeader(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1021
    const-string v4, " componentId=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1022
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/persist/impl/Format;->getComponentType()Lcom/sleepycat/persist/impl/Format;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sleepycat/persist/impl/Format;->getVersion()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1023
    const-string v4, "\" componentClass=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1024
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/persist/impl/Format;->getComponentType()Lcom/sleepycat/persist/impl/Format;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sleepycat/persist/impl/Format;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1025
    const-string v4, "\" dimensions=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1026
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/persist/impl/Format;->getDimensions()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1027
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v17, v1

    move-object/from16 v18, v2

    goto/16 :goto_9

    .line 1029
    :cond_3
    const-string v4, "ComplexType"

    invoke-direct {v0, v3, v4}, Lcom/sleepycat/persist/impl/Format;->addTypeHeader(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1030
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/persist/impl/Format;->getSuperType()Lcom/sleepycat/persist/impl/Format;

    move-result-object v4

    .line 1031
    .local v4, "superType":Lcom/sleepycat/persist/impl/Format;
    const/16 v7, 0x22

    if-eqz v4, :cond_4

    .line 1032
    const-string v8, " superTypeId=\""

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1033
    invoke-virtual {v4}, Lcom/sleepycat/persist/impl/Format;->getId()I

    move-result v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1034
    const-string v8, "\" superTypeClass=\""

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1035
    invoke-virtual {v4}, Lcom/sleepycat/persist/impl/Format;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1036
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1038
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/persist/impl/Format;->getProxiedFormat()Lcom/sleepycat/persist/impl/Format;

    move-result-object v8

    .line 1039
    .local v8, "proxiedFormat":Lcom/sleepycat/persist/impl/Format;
    if-eqz v8, :cond_5

    .line 1040
    const-string v9, " proxiedTypeId=\""

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1041
    invoke-virtual {v8}, Lcom/sleepycat/persist/impl/Format;->getId()I

    move-result v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1042
    const-string v9, "\" proxiedTypeClass=\""

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1043
    invoke-virtual {v8}, Lcom/sleepycat/persist/impl/Format;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1044
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1046
    :cond_5
    const/4 v9, 0x0

    .line 1047
    .local v9, "priMeta":Lcom/sleepycat/persist/model/PrimaryKeyMetadata;
    const/4 v10, 0x0

    .line 1048
    .local v10, "secondaryKeys":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sleepycat/persist/model/SecondaryKeyMetadata;>;"
    const/4 v11, 0x0

    .line 1049
    .local v11, "compositeKeyFields":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/persist/model/FieldMetadata;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/persist/impl/Format;->getClassMetadata()Lcom/sleepycat/persist/model/ClassMetadata;

    move-result-object v12

    .line 1050
    .local v12, "clsMeta":Lcom/sleepycat/persist/model/ClassMetadata;
    if-eqz v12, :cond_6

    .line 1051
    invoke-virtual {v12}, Lcom/sleepycat/persist/model/ClassMetadata;->getCompositeKeyFields()Ljava/util/List;

    move-result-object v11

    .line 1052
    invoke-virtual {v12}, Lcom/sleepycat/persist/model/ClassMetadata;->getPrimaryKey()Lcom/sleepycat/persist/model/PrimaryKeyMetadata;

    move-result-object v9

    .line 1053
    invoke-virtual {v12}, Lcom/sleepycat/persist/model/ClassMetadata;->getSecondaryKeys()Ljava/util/Map;

    move-result-object v10

    .line 1055
    :cond_6
    const-string v13, " kind=\""

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1056
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/persist/impl/Format;->isEntity()Z

    move-result v13

    if-eqz v13, :cond_7

    const-string v13, "entity"

    goto :goto_1

    :cond_7
    if-eqz v11, :cond_8

    const-string v13, "compositeKey"

    goto :goto_1

    :cond_8
    const-string v13, "persistent"

    :goto_1
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1059
    const-string v13, "\">\n"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1060
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/persist/impl/Format;->getFields()Ljava/util/Map;

    move-result-object v13

    .line 1061
    .local v13, "fields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sleepycat/persist/raw/RawField;>;"
    if-eqz v13, :cond_13

    .line 1062
    invoke-interface {v13}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_10

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sleepycat/persist/raw/RawField;

    .line 1063
    .local v15, "field":Lcom/sleepycat/persist/raw/RawField;
    invoke-interface {v15}, Lcom/sleepycat/persist/raw/RawField;->getName()Ljava/lang/String;

    move-result-object v7

    .line 1064
    .local v7, "name":Ljava/lang/String;
    invoke-interface {v15}, Lcom/sleepycat/persist/raw/RawField;->getType()Lcom/sleepycat/persist/raw/RawType;

    move-result-object v16

    .line 1065
    .local v16, "type":Lcom/sleepycat/persist/raw/RawType;
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1066
    const-string v0, "<Field"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1067
    const-string v0, " name=\""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1068
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1069
    const-string v0, "\" typeId=\""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1070
    invoke-interface/range {v16 .. v16}, Lcom/sleepycat/persist/raw/RawType;->getId()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1071
    const-string v0, "\" typeClass=\""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1072
    invoke-interface/range {v16 .. v16}, Lcom/sleepycat/persist/raw/RawType;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1073
    const/16 v0, 0x22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1074
    if-eqz v9, :cond_9

    .line 1075
    invoke-virtual {v9}, Lcom/sleepycat/persist/model/PrimaryKeyMetadata;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1076
    const-string v0, " primaryKey=\"true\""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1077
    invoke-virtual {v9}, Lcom/sleepycat/persist/model/PrimaryKeyMetadata;->getSequenceName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 1078
    const-string v0, " sequence=\""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1079
    invoke-virtual {v9}, Lcom/sleepycat/persist/model/PrimaryKeyMetadata;->getSequenceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1080
    const/16 v0, 0x22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1083
    :cond_9
    if-eqz v10, :cond_c

    .line 1084
    nop

    .line 1086
    invoke-static {v10, v7}, Lcom/sleepycat/persist/impl/ComplexFormat;->getSecondaryKeyMetadataByFieldName(Ljava/util/Map;Ljava/lang/String;)Lcom/sleepycat/persist/model/SecondaryKeyMetadata;

    move-result-object v0

    .line 1087
    .local v0, "secMeta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    if-eqz v0, :cond_b

    .line 1088
    move-object/from16 v17, v1

    .end local v1    # "INDENT":Ljava/lang/String;
    .local v17, "INDENT":Ljava/lang/String;
    const-string v1, " secondaryKey=\"true\" keyName=\""

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1089
    invoke-virtual {v0}, Lcom/sleepycat/persist/model/SecondaryKeyMetadata;->getKeyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1090
    const-string v1, "\" relate=\""

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1091
    invoke-virtual {v0}, Lcom/sleepycat/persist/model/SecondaryKeyMetadata;->getRelationship()Lcom/sleepycat/persist/model/Relationship;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1092
    const/16 v1, 0x22

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1093
    invoke-virtual {v0}, Lcom/sleepycat/persist/model/SecondaryKeyMetadata;->getRelatedEntity()Ljava/lang/String;

    move-result-object v1

    .line 1094
    .local v1, "related":Ljava/lang/String;
    if-eqz v1, :cond_a

    .line 1095
    move-object/from16 v18, v2

    .end local v2    # "INDENT2":Ljava/lang/String;
    .local v18, "INDENT2":Ljava/lang/String;
    const-string v2, "\" relatedEntity=\""

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1096
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1097
    const-string v2, "\" onRelatedEntityDelete=\""

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1098
    invoke-virtual {v0}, Lcom/sleepycat/persist/model/SecondaryKeyMetadata;->getDeleteAction()Lcom/sleepycat/persist/model/DeleteAction;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1099
    const/16 v2, 0x22

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1094
    .end local v18    # "INDENT2":Ljava/lang/String;
    .restart local v2    # "INDENT2":Ljava/lang/String;
    :cond_a
    move-object/from16 v18, v2

    .end local v2    # "INDENT2":Ljava/lang/String;
    .restart local v18    # "INDENT2":Ljava/lang/String;
    goto :goto_3

    .line 1087
    .end local v17    # "INDENT":Ljava/lang/String;
    .end local v18    # "INDENT2":Ljava/lang/String;
    .local v1, "INDENT":Ljava/lang/String;
    .restart local v2    # "INDENT2":Ljava/lang/String;
    :cond_b
    move-object/from16 v17, v1

    move-object/from16 v18, v2

    .end local v1    # "INDENT":Ljava/lang/String;
    .end local v2    # "INDENT2":Ljava/lang/String;
    .restart local v17    # "INDENT":Ljava/lang/String;
    .restart local v18    # "INDENT2":Ljava/lang/String;
    goto :goto_3

    .line 1083
    .end local v0    # "secMeta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    .end local v17    # "INDENT":Ljava/lang/String;
    .end local v18    # "INDENT2":Ljava/lang/String;
    .restart local v1    # "INDENT":Ljava/lang/String;
    .restart local v2    # "INDENT2":Ljava/lang/String;
    :cond_c
    move-object/from16 v17, v1

    move-object/from16 v18, v2

    .line 1103
    .end local v1    # "INDENT":Ljava/lang/String;
    .end local v2    # "INDENT2":Ljava/lang/String;
    .restart local v17    # "INDENT":Ljava/lang/String;
    .restart local v18    # "INDENT2":Ljava/lang/String;
    :goto_3
    if-eqz v11, :cond_f

    .line 1104
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    .line 1105
    .local v0, "nFields":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    if-ge v1, v0, :cond_e

    .line 1106
    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/persist/model/FieldMetadata;

    .line 1107
    .local v2, "fldMeta":Lcom/sleepycat/persist/model/FieldMetadata;
    move/from16 v19, v0

    .end local v0    # "nFields":I
    .local v19, "nFields":I
    invoke-virtual {v2}, Lcom/sleepycat/persist/model/FieldMetadata;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1108
    const-string v0, " compositeKeyField=\""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1109
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1110
    const/16 v0, 0x22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 1107
    :cond_d
    const/16 v0, 0x22

    .line 1105
    .end local v2    # "fldMeta":Lcom/sleepycat/persist/model/FieldMetadata;
    :goto_5
    add-int/lit8 v1, v1, 0x1

    move/from16 v0, v19

    goto :goto_4

    .end local v19    # "nFields":I
    .restart local v0    # "nFields":I
    :cond_e
    move/from16 v19, v0

    const/16 v0, 0x22

    .end local v0    # "nFields":I
    .restart local v19    # "nFields":I
    goto :goto_6

    .line 1103
    .end local v1    # "i":I
    .end local v19    # "nFields":I
    :cond_f
    const/16 v0, 0x22

    .line 1114
    :goto_6
    const-string v1, "/>\n"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1115
    .end local v7    # "name":Ljava/lang/String;
    .end local v15    # "field":Lcom/sleepycat/persist/raw/RawField;
    .end local v16    # "type":Lcom/sleepycat/persist/raw/RawType;
    move v7, v0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v0, p0

    goto/16 :goto_2

    .line 1116
    .end local v17    # "INDENT":Ljava/lang/String;
    .end local v18    # "INDENT2":Ljava/lang/String;
    .local v1, "INDENT":Ljava/lang/String;
    .local v2, "INDENT2":Ljava/lang/String;
    :cond_10
    move-object/from16 v17, v1

    move-object/from16 v18, v2

    .end local v1    # "INDENT":Ljava/lang/String;
    .end local v2    # "INDENT2":Ljava/lang/String;
    .restart local v17    # "INDENT":Ljava/lang/String;
    .restart local v18    # "INDENT2":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/persist/impl/Format;->getEntityMetadata()Lcom/sleepycat/persist/model/EntityMetadata;

    move-result-object v0

    .line 1117
    .local v0, "entMeta":Lcom/sleepycat/persist/model/EntityMetadata;
    if-eqz v0, :cond_14

    .line 1118
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1119
    const-string v1, "<EntityKeys>\n"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1120
    invoke-virtual {v0}, Lcom/sleepycat/persist/model/EntityMetadata;->getPrimaryKey()Lcom/sleepycat/persist/model/PrimaryKeyMetadata;

    move-result-object v9

    .line 1121
    const-string v1, "\" field=\""

    const-string v2, "    "

    if-eqz v9, :cond_11

    .line 1122
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1123
    const-string v6, "<Primary class=\""

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1124
    invoke-virtual {v9}, Lcom/sleepycat/persist/model/PrimaryKeyMetadata;->getDeclaringClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1125
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1126
    invoke-virtual {v9}, Lcom/sleepycat/persist/model/PrimaryKeyMetadata;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1127
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1129
    :cond_11
    invoke-virtual {v0}, Lcom/sleepycat/persist/model/EntityMetadata;->getSecondaryKeys()Ljava/util/Map;

    move-result-object v10

    .line 1130
    if-eqz v10, :cond_12

    .line 1132
    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_12

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sleepycat/persist/model/SecondaryKeyMetadata;

    .line 1133
    .local v7, "secMeta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1134
    const-string v14, "<Secondary class=\""

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1135
    invoke-virtual {v7}, Lcom/sleepycat/persist/model/SecondaryKeyMetadata;->getDeclaringClassName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1136
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1137
    invoke-virtual {v7}, Lcom/sleepycat/persist/model/SecondaryKeyMetadata;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1138
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1139
    .end local v7    # "secMeta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    goto :goto_7

    .line 1141
    :cond_12
    const-string v1, "</EntityKeys>\n"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 1061
    .end local v0    # "entMeta":Lcom/sleepycat/persist/model/EntityMetadata;
    .end local v17    # "INDENT":Ljava/lang/String;
    .end local v18    # "INDENT2":Ljava/lang/String;
    .restart local v1    # "INDENT":Ljava/lang/String;
    .restart local v2    # "INDENT2":Ljava/lang/String;
    :cond_13
    move-object/from16 v17, v1

    move-object/from16 v18, v2

    .line 1144
    .end local v1    # "INDENT":Ljava/lang/String;
    .end local v2    # "INDENT2":Ljava/lang/String;
    .restart local v17    # "INDENT":Ljava/lang/String;
    .restart local v18    # "INDENT2":Ljava/lang/String;
    :cond_14
    :goto_8
    const-string v0, "</ComplexType>\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1146
    .end local v4    # "superType":Lcom/sleepycat/persist/impl/Format;
    .end local v8    # "proxiedFormat":Lcom/sleepycat/persist/impl/Format;
    .end local v9    # "priMeta":Lcom/sleepycat/persist/model/PrimaryKeyMetadata;
    .end local v10    # "secondaryKeys":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sleepycat/persist/model/SecondaryKeyMetadata;>;"
    .end local v11    # "compositeKeyFields":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/persist/model/FieldMetadata;>;"
    .end local v12    # "clsMeta":Lcom/sleepycat/persist/model/ClassMetadata;
    .end local v13    # "fields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sleepycat/persist/raw/RawField;>;"
    :goto_9
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method abstract writeObject(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityOutput;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation
.end method

.method writePriKey(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityOutput;Z)V
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "output"    # Lcom/sleepycat/persist/impl/EntityOutput;
    .param p3, "rawAccess"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 933
    invoke-virtual {p0}, Lcom/sleepycat/persist/impl/Format;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->unexpectedState(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method
