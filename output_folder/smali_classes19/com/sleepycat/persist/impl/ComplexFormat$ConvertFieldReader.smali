.class Lcom/sleepycat/persist/impl/ComplexFormat$ConvertFieldReader;
.super Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;
.source "ComplexFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/persist/impl/ComplexFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConvertFieldReader"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x793df70ba9cb3776L


# instance fields
.field private converter:Lcom/sleepycat/persist/evolve/Converter;

.field private fieldNum:I

.field private transient newFormat:Lcom/sleepycat/persist/impl/Format;

.field private oldFieldNum:I

.field private transient oldFormat:Lcom/sleepycat/persist/impl/Format;

.field private secKeyField:Z


# direct methods
.method constructor <init>(Lcom/sleepycat/persist/evolve/Converter;IIZ)V
    .locals 0
    .param p1, "converter"    # Lcom/sleepycat/persist/evolve/Converter;
    .param p2, "oldFieldIndex"    # I
    .param p3, "newFieldIndex"    # I
    .param p4, "isNewSecKeyField"    # Z

    .line 1927
    invoke-direct {p0}, Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;-><init>()V

    .line 1928
    iput-object p1, p0, Lcom/sleepycat/persist/impl/ComplexFormat$ConvertFieldReader;->converter:Lcom/sleepycat/persist/evolve/Converter;

    .line 1929
    iput p2, p0, Lcom/sleepycat/persist/impl/ComplexFormat$ConvertFieldReader;->oldFieldNum:I

    .line 1930
    iput p3, p0, Lcom/sleepycat/persist/impl/ComplexFormat$ConvertFieldReader;->fieldNum:I

    .line 1931
    iput-boolean p4, p0, Lcom/sleepycat/persist/impl/ComplexFormat$ConvertFieldReader;->secKeyField:Z

    .line 1932
    return-void
.end method


# virtual methods
.method initialize(Lcom/sleepycat/persist/impl/Catalog;ILcom/sleepycat/persist/impl/ComplexFormat;Lcom/sleepycat/persist/impl/ComplexFormat;Z)V
    .locals 2
    .param p1, "catalog"    # Lcom/sleepycat/persist/impl/Catalog;
    .param p2, "initVersion"    # I
    .param p3, "oldParentFormat"    # Lcom/sleepycat/persist/impl/ComplexFormat;
    .param p4, "newParentFormat"    # Lcom/sleepycat/persist/impl/ComplexFormat;
    .param p5, "isOldSecKey"    # Z

    .line 1947
    const/4 v0, 0x1

    if-ge p2, v0, :cond_0

    .line 1948
    iget v0, p0, Lcom/sleepycat/persist/impl/ComplexFormat$ConvertFieldReader;->fieldNum:I

    iput v0, p0, Lcom/sleepycat/persist/impl/ComplexFormat$ConvertFieldReader;->oldFieldNum:I

    .line 1951
    :cond_0
    if-eqz p5, :cond_1

    .line 1952
    nop

    .line 1953
    invoke-static {p3}, Lcom/sleepycat/persist/impl/ComplexFormat;->access$000(Lcom/sleepycat/persist/impl/ComplexFormat;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/sleepycat/persist/impl/ComplexFormat$ConvertFieldReader;->oldFieldNum:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/persist/impl/FieldInfo;

    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/FieldInfo;->getType()Lcom/sleepycat/persist/impl/Format;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/persist/impl/ComplexFormat$ConvertFieldReader;->oldFormat:Lcom/sleepycat/persist/impl/Format;

    goto :goto_0

    .line 1955
    :cond_1
    nop

    .line 1956
    invoke-static {p3}, Lcom/sleepycat/persist/impl/ComplexFormat;->access$100(Lcom/sleepycat/persist/impl/ComplexFormat;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/sleepycat/persist/impl/ComplexFormat$ConvertFieldReader;->oldFieldNum:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/persist/impl/FieldInfo;

    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/FieldInfo;->getType()Lcom/sleepycat/persist/impl/Format;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/persist/impl/ComplexFormat$ConvertFieldReader;->oldFormat:Lcom/sleepycat/persist/impl/Format;

    .line 1958
    :goto_0
    iget-boolean v0, p0, Lcom/sleepycat/persist/impl/ComplexFormat$ConvertFieldReader;->secKeyField:Z

    if-eqz v0, :cond_2

    .line 1959
    nop

    .line 1960
    invoke-static {p4}, Lcom/sleepycat/persist/impl/ComplexFormat;->access$000(Lcom/sleepycat/persist/impl/ComplexFormat;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/sleepycat/persist/impl/ComplexFormat$ConvertFieldReader;->fieldNum:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/persist/impl/FieldInfo;

    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/FieldInfo;->getType()Lcom/sleepycat/persist/impl/Format;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/persist/impl/ComplexFormat$ConvertFieldReader;->newFormat:Lcom/sleepycat/persist/impl/Format;

    goto :goto_1

    .line 1962
    :cond_2
    nop

    .line 1963
    invoke-static {p4}, Lcom/sleepycat/persist/impl/ComplexFormat;->access$100(Lcom/sleepycat/persist/impl/ComplexFormat;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/sleepycat/persist/impl/ComplexFormat$ConvertFieldReader;->fieldNum:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/persist/impl/FieldInfo;

    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/FieldInfo;->getType()Lcom/sleepycat/persist/impl/Format;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/persist/impl/ComplexFormat$ConvertFieldReader;->newFormat:Lcom/sleepycat/persist/impl/Format;

    .line 1965
    :goto_1
    return-void
.end method

.method final readFields(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityInput;Lcom/sleepycat/persist/impl/Accessor;I)V
    .locals 17
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "input"    # Lcom/sleepycat/persist/impl/EntityInput;
    .param p3, "accessor"    # Lcom/sleepycat/persist/impl/Accessor;
    .param p4, "superLevel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 1975
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const/4 v0, 0x1

    invoke-interface {v2, v0}, Lcom/sleepycat/persist/impl/EntityInput;->setRawAccess(Z)Z

    move-result v9

    .line 1978
    .local v9, "currentRawMode":Z
    :try_start_0
    iget-object v0, v1, Lcom/sleepycat/persist/impl/ComplexFormat$ConvertFieldReader;->oldFormat:Lcom/sleepycat/persist/impl/Format;

    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/Format;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1979
    iget-object v0, v1, Lcom/sleepycat/persist/impl/ComplexFormat$ConvertFieldReader;->oldFormat:Lcom/sleepycat/persist/impl/Format;

    invoke-interface {v2, v0}, Lcom/sleepycat/persist/impl/EntityInput;->readKeyObject(Lcom/sleepycat/persist/impl/Format;)Ljava/lang/Object;

    move-result-object v0

    .local v0, "value":Ljava/lang/Object;
    goto :goto_0

    .line 1980
    .end local v0    # "value":Ljava/lang/Object;
    :cond_0
    iget-object v0, v1, Lcom/sleepycat/persist/impl/ComplexFormat$ConvertFieldReader;->oldFormat:Lcom/sleepycat/persist/impl/Format;

    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/Format;->getId()I

    move-result v0

    const/16 v3, 0x12

    if-ne v0, v3, :cond_1

    .line 1981
    invoke-interface/range {p2 .. p2}, Lcom/sleepycat/persist/impl/EntityInput;->readStringObject()Ljava/lang/Object;

    move-result-object v0

    .restart local v0    # "value":Ljava/lang/Object;
    goto :goto_0

    .line 1983
    .end local v0    # "value":Ljava/lang/Object;
    :cond_1
    invoke-interface/range {p2 .. p2}, Lcom/sleepycat/persist/impl/EntityInput;->readObject()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1986
    .restart local v0    # "value":Ljava/lang/Object;
    :goto_0
    invoke-interface {v2, v9}, Lcom/sleepycat/persist/impl/EntityInput;->setRawAccess(Z)Z

    .line 1987
    nop

    .line 1990
    invoke-interface/range {p2 .. p2}, Lcom/sleepycat/persist/impl/EntityInput;->getCatalog()Lcom/sleepycat/persist/impl/Catalog;

    move-result-object v10

    .line 1991
    .local v10, "catalog":Lcom/sleepycat/persist/impl/Catalog;
    iget-object v3, v1, Lcom/sleepycat/persist/impl/ComplexFormat$ConvertFieldReader;->converter:Lcom/sleepycat/persist/evolve/Converter;

    invoke-virtual {v3}, Lcom/sleepycat/persist/evolve/Converter;->getConversion()Lcom/sleepycat/persist/evolve/Conversion;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/sleepycat/persist/evolve/Conversion;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1994
    new-instance v11, Lcom/sleepycat/persist/impl/RawSingleInput;

    const/4 v6, 0x0

    iget-object v8, v1, Lcom/sleepycat/persist/impl/ComplexFormat$ConvertFieldReader;->newFormat:Lcom/sleepycat/persist/impl/Format;

    move-object v3, v11

    move-object v4, v10

    move v5, v9

    move-object v7, v0

    invoke-direct/range {v3 .. v8}, Lcom/sleepycat/persist/impl/RawSingleInput;-><init>(Lcom/sleepycat/persist/impl/Catalog;ZLjava/util/IdentityHashMap;Ljava/lang/Object;Lcom/sleepycat/persist/impl/Format;)V

    move-object v5, v11

    .line 1997
    .local v5, "rawInput":Lcom/sleepycat/persist/impl/EntityInput;
    iget-boolean v3, v1, Lcom/sleepycat/persist/impl/ComplexFormat$ConvertFieldReader;->secKeyField:Z

    if-eqz v3, :cond_2

    .line 1998
    iget v7, v1, Lcom/sleepycat/persist/impl/ComplexFormat$ConvertFieldReader;->fieldNum:I

    .line 1999
    move-object/from16 v3, p3

    move-object/from16 v4, p1

    move v6, v7

    move/from16 v8, p4

    invoke-interface/range {v3 .. v8}, Lcom/sleepycat/persist/impl/Accessor;->readSecKeyFields(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityInput;III)V

    goto :goto_1

    .line 2001
    :cond_2
    iget v15, v1, Lcom/sleepycat/persist/impl/ComplexFormat$ConvertFieldReader;->fieldNum:I

    .line 2002
    move-object/from16 v11, p3

    move-object/from16 v12, p1

    move-object v13, v5

    move v14, v15

    move/from16 v16, p4

    invoke-interface/range {v11 .. v16}, Lcom/sleepycat/persist/impl/Accessor;->readNonKeyFields(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityInput;III)V

    .line 2004
    :goto_1
    return-void

    .line 1986
    .end local v0    # "value":Ljava/lang/Object;
    .end local v5    # "rawInput":Lcom/sleepycat/persist/impl/EntityInput;
    .end local v10    # "catalog":Lcom/sleepycat/persist/impl/Catalog;
    :catchall_0
    move-exception v0

    invoke-interface {v2, v9}, Lcom/sleepycat/persist/impl/EntityInput;->setRawAccess(Z)Z

    throw v0
.end method
