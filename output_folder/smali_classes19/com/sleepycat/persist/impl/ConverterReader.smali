.class public Lcom/sleepycat/persist/impl/ConverterReader;
.super Ljava/lang/Object;
.source "ConverterReader.java"

# interfaces
.implements Lcom/sleepycat/persist/impl/Reader;


# static fields
.field private static final serialVersionUID:J = -0x43e60db9d8a9f1cL


# instance fields
.field private converter:Lcom/sleepycat/persist/evolve/Converter;

.field private transient oldFormat:Lcom/sleepycat/persist/impl/Format;


# direct methods
.method constructor <init>(Lcom/sleepycat/persist/evolve/Converter;)V
    .locals 0
    .param p1, "converter"    # Lcom/sleepycat/persist/evolve/Converter;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/sleepycat/persist/impl/ConverterReader;->converter:Lcom/sleepycat/persist/evolve/Converter;

    .line 34
    return-void
.end method


# virtual methods
.method public getAccessor(Z)Lcom/sleepycat/persist/impl/Accessor;
    .locals 1
    .param p1, "rawAccess"    # Z

    .line 79
    iget-object v0, p0, Lcom/sleepycat/persist/impl/ConverterReader;->oldFormat:Lcom/sleepycat/persist/impl/Format;

    invoke-virtual {v0, p1}, Lcom/sleepycat/persist/impl/Format;->getAccessor(Z)Lcom/sleepycat/persist/impl/Accessor;

    move-result-object v0

    return-object v0
.end method

.method public initializeReader(Lcom/sleepycat/persist/impl/Catalog;Lcom/sleepycat/persist/model/EntityModel;ILcom/sleepycat/persist/impl/Format;)V
    .locals 0
    .param p1, "catalog"    # Lcom/sleepycat/persist/impl/Catalog;
    .param p2, "model"    # Lcom/sleepycat/persist/model/EntityModel;
    .param p3, "initVersion"    # I
    .param p4, "oldFormat"    # Lcom/sleepycat/persist/impl/Format;

    .line 40
    iput-object p4, p0, Lcom/sleepycat/persist/impl/ConverterReader;->oldFormat:Lcom/sleepycat/persist/impl/Format;

    .line 41
    return-void
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

    .line 47
    iget-object v0, p0, Lcom/sleepycat/persist/impl/ConverterReader;->oldFormat:Lcom/sleepycat/persist/impl/Format;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/sleepycat/persist/impl/Format;->newInstance(Lcom/sleepycat/persist/impl/EntityInput;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readObject(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityInput;Z)Ljava/lang/Object;
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "input"    # Lcom/sleepycat/persist/impl/EntityInput;
    .param p3, "rawAccess"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 60
    invoke-interface {p2}, Lcom/sleepycat/persist/impl/EntityInput;->getCatalog()Lcom/sleepycat/persist/impl/Catalog;

    move-result-object v0

    .line 63
    .local v0, "catalog":Lcom/sleepycat/persist/impl/Catalog;
    const/4 v1, 0x1

    invoke-interface {p2, v1}, Lcom/sleepycat/persist/impl/EntityInput;->setRawAccess(Z)Z

    move-result v2

    .line 65
    .local v2, "currentRawMode":Z
    :try_start_0
    iget-object v3, p0, Lcom/sleepycat/persist/impl/ConverterReader;->oldFormat:Lcom/sleepycat/persist/impl/Format;

    invoke-virtual {v3, p1, p2, v1}, Lcom/sleepycat/persist/impl/Format;->readObject(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityInput;Z)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p1, v1

    .line 67
    invoke-interface {p2, v2}, Lcom/sleepycat/persist/impl/EntityInput;->setRawAccess(Z)Z

    .line 68
    nop

    .line 69
    iget-object v1, p0, Lcom/sleepycat/persist/impl/ConverterReader;->converter:Lcom/sleepycat/persist/evolve/Converter;

    invoke-virtual {v1}, Lcom/sleepycat/persist/evolve/Converter;->getConversion()Lcom/sleepycat/persist/evolve/Conversion;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/sleepycat/persist/evolve/Conversion;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 72
    if-nez p3, :cond_0

    instance-of v1, p1, Lcom/sleepycat/persist/raw/RawObject;

    if-eqz v1, :cond_0

    .line 73
    move-object v1, p1

    check-cast v1, Lcom/sleepycat/persist/raw/RawObject;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Lcom/sleepycat/persist/impl/Catalog;->convertRawObject(Lcom/sleepycat/persist/raw/RawObject;Ljava/util/IdentityHashMap;)Ljava/lang/Object;

    move-result-object p1

    .line 75
    :cond_0
    return-object p1

    .line 67
    :catchall_0
    move-exception v1

    invoke-interface {p2, v2}, Lcom/sleepycat/persist/impl/EntityInput;->setRawAccess(Z)Z

    throw v1
.end method

.method public readPriKey(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityInput;Z)V
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "input"    # Lcom/sleepycat/persist/impl/EntityInput;
    .param p3, "rawAccess"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/sleepycat/persist/impl/ConverterReader;->oldFormat:Lcom/sleepycat/persist/impl/Format;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/sleepycat/persist/impl/Format;->readPriKey(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityInput;Z)V

    .line 55
    return-void
.end method
