.class Lcom/sleepycat/persist/impl/ComplexFormat$EvolveReader;
.super Ljava/lang/Object;
.source "ComplexFormat.java"

# interfaces
.implements Lcom/sleepycat/persist/impl/Reader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/persist/impl/ComplexFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EvolveReader"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final DO_NOT_READ_ACCESSOR:I = 0x7fffffff

.field private static final serialVersionUID:J = -0xe1a0ecf098fe803L


# instance fields
.field private transient newFormat:Lcom/sleepycat/persist/impl/ComplexFormat;

.field private newHierarchyLevels:[I

.field private transient oldHierarchy:[Lcom/sleepycat/persist/impl/ComplexFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2099
    const-class v0, Lcom/sleepycat/persist/impl/ComplexFormat;

    return-void
.end method

.method constructor <init>(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 2120
    .local p1, "newHierarchyLevelsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2121
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 2122
    .local v0, "oldDepth":I
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/sleepycat/persist/impl/ComplexFormat$EvolveReader;->newHierarchyLevels:[I

    .line 2123
    invoke-interface {p1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    .line 2124
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2125
    iget-object v2, p0, Lcom/sleepycat/persist/impl/ComplexFormat$EvolveReader;->newHierarchyLevels:[I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v1

    .line 2124
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2127
    .end local v1    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public getAccessor(Z)Lcom/sleepycat/persist/impl/Accessor;
    .locals 1
    .param p1, "rawAccess"    # Z

    .line 2231
    iget-object v0, p0, Lcom/sleepycat/persist/impl/ComplexFormat$EvolveReader;->newFormat:Lcom/sleepycat/persist/impl/ComplexFormat;

    invoke-virtual {v0, p1}, Lcom/sleepycat/persist/impl/ComplexFormat;->getAccessor(Z)Lcom/sleepycat/persist/impl/Accessor;

    move-result-object v0

    return-object v0
.end method

.method public initializeReader(Lcom/sleepycat/persist/impl/Catalog;Lcom/sleepycat/persist/model/EntityModel;ILcom/sleepycat/persist/impl/Format;)V
    .locals 18
    .param p1, "catalog"    # Lcom/sleepycat/persist/impl/Catalog;
    .param p2, "model"    # Lcom/sleepycat/persist/model/EntityModel;
    .param p3, "initVersion"    # I
    .param p4, "oldFormatParam"    # Lcom/sleepycat/persist/impl/Format;

    .line 2134
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    check-cast v1, Lcom/sleepycat/persist/impl/ComplexFormat;

    .line 2135
    .local v1, "oldFormat":Lcom/sleepycat/persist/impl/ComplexFormat;
    invoke-static {v1}, Lcom/sleepycat/persist/impl/ComplexFormat;->access$200(Lcom/sleepycat/persist/impl/ComplexFormat;)Lcom/sleepycat/persist/impl/ComplexFormat;

    move-result-object v2

    iput-object v2, v0, Lcom/sleepycat/persist/impl/ComplexFormat$EvolveReader;->newFormat:Lcom/sleepycat/persist/impl/ComplexFormat;

    .line 2136
    move-object/from16 v14, p1

    move-object/from16 v15, p2

    invoke-virtual {v2, v14, v15}, Lcom/sleepycat/persist/impl/ComplexFormat;->initializeIfNeeded(Lcom/sleepycat/persist/impl/Catalog;Lcom/sleepycat/persist/model/EntityModel;)V

    .line 2139
    const/4 v2, 0x0

    .line 2140
    .local v2, "newDepth":I
    iget-object v3, v0, Lcom/sleepycat/persist/impl/ComplexFormat$EvolveReader;->newFormat:Lcom/sleepycat/persist/impl/ComplexFormat;

    .line 2141
    .local v3, "format":Lcom/sleepycat/persist/impl/Format;
    :goto_0
    if-eqz v3, :cond_0

    .line 2143
    add-int/lit8 v2, v2, 0x1

    .line 2142
    invoke-virtual {v3}, Lcom/sleepycat/persist/impl/Format;->getSuperFormat()Lcom/sleepycat/persist/impl/Format;

    move-result-object v3

    goto :goto_0

    .line 2145
    .end local v3    # "format":Lcom/sleepycat/persist/impl/Format;
    :cond_0
    new-array v13, v2, [Lcom/sleepycat/persist/impl/ComplexFormat;

    .line 2146
    .local v13, "newHierarchy":[Lcom/sleepycat/persist/impl/ComplexFormat;
    const/4 v3, 0x0

    .line 2147
    .local v3, "level":I
    iget-object v4, v0, Lcom/sleepycat/persist/impl/ComplexFormat$EvolveReader;->newFormat:Lcom/sleepycat/persist/impl/ComplexFormat;

    .line 2148
    .local v4, "format":Lcom/sleepycat/persist/impl/ComplexFormat;
    :goto_1
    if-eqz v4, :cond_1

    .line 2150
    aput-object v4, v13, v3

    .line 2151
    add-int/lit8 v3, v3, 0x1

    .line 2149
    invoke-virtual {v4}, Lcom/sleepycat/persist/impl/ComplexFormat;->getComplexSuper()Lcom/sleepycat/persist/impl/ComplexFormat;

    move-result-object v4

    goto :goto_1

    .line 2153
    .end local v4    # "format":Lcom/sleepycat/persist/impl/ComplexFormat;
    :cond_1
    if-ne v3, v2, :cond_7

    .line 2156
    iget-object v4, v0, Lcom/sleepycat/persist/impl/ComplexFormat$EvolveReader;->newHierarchyLevels:[I

    array-length v12, v4

    .line 2157
    .local v12, "oldDepth":I
    new-array v4, v12, [Lcom/sleepycat/persist/impl/ComplexFormat;

    iput-object v4, v0, Lcom/sleepycat/persist/impl/ComplexFormat$EvolveReader;->oldHierarchy:[Lcom/sleepycat/persist/impl/ComplexFormat;

    .line 2158
    const/4 v3, 0x0

    .line 2159
    move-object v4, v1

    move-object/from16 v16, v4

    .line 2160
    .local v16, "oldFormat2":Lcom/sleepycat/persist/impl/ComplexFormat;
    :goto_2
    if-eqz v16, :cond_5

    .line 2162
    iget-object v4, v0, Lcom/sleepycat/persist/impl/ComplexFormat$EvolveReader;->oldHierarchy:[Lcom/sleepycat/persist/impl/ComplexFormat;

    aput-object v16, v4, v3

    .line 2163
    iget-object v4, v0, Lcom/sleepycat/persist/impl/ComplexFormat$EvolveReader;->newHierarchyLevels:[I

    aget v11, v4, v3

    .line 2164
    .local v11, "level2":I
    const v4, 0x7fffffff

    if-eq v11, v4, :cond_2

    aget-object v4, v13, v11

    goto :goto_3

    :cond_2
    const/4 v4, 0x0

    :goto_3
    move-object v7, v4

    .line 2166
    .local v7, "newFormat2":Lcom/sleepycat/persist/impl/ComplexFormat;
    add-int/lit8 v17, v3, 0x1

    .line 2167
    .end local v3    # "level":I
    .local v17, "level":I
    invoke-static/range {v16 .. v16}, Lcom/sleepycat/persist/impl/ComplexFormat;->access$300(Lcom/sleepycat/persist/impl/ComplexFormat;)Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 2168
    invoke-static/range {v16 .. v16}, Lcom/sleepycat/persist/impl/ComplexFormat;->access$300(Lcom/sleepycat/persist/impl/ComplexFormat;)Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;

    move-result-object v3

    const/4 v8, 0x1

    .line 2169
    move-object/from16 v4, p1

    move/from16 v5, p3

    move-object/from16 v6, v16

    invoke-virtual/range {v3 .. v8}, Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;->initialize(Lcom/sleepycat/persist/impl/Catalog;ILcom/sleepycat/persist/impl/ComplexFormat;Lcom/sleepycat/persist/impl/ComplexFormat;Z)V

    .line 2171
    :cond_3
    invoke-static/range {v16 .. v16}, Lcom/sleepycat/persist/impl/ComplexFormat;->access$400(Lcom/sleepycat/persist/impl/ComplexFormat;)Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 2172
    invoke-static/range {v16 .. v16}, Lcom/sleepycat/persist/impl/ComplexFormat;->access$400(Lcom/sleepycat/persist/impl/ComplexFormat;)Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;

    move-result-object v8

    const/4 v3, 0x0

    .line 2173
    move-object/from16 v9, p1

    move/from16 v10, p3

    move v4, v11

    .end local v11    # "level2":I
    .local v4, "level2":I
    move-object/from16 v11, v16

    move v5, v12

    .end local v12    # "oldDepth":I
    .local v5, "oldDepth":I
    move-object v12, v7

    move-object v6, v13

    .end local v13    # "newHierarchy":[Lcom/sleepycat/persist/impl/ComplexFormat;
    .local v6, "newHierarchy":[Lcom/sleepycat/persist/impl/ComplexFormat;
    move v13, v3

    invoke-virtual/range {v8 .. v13}, Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;->initialize(Lcom/sleepycat/persist/impl/Catalog;ILcom/sleepycat/persist/impl/ComplexFormat;Lcom/sleepycat/persist/impl/ComplexFormat;Z)V

    goto :goto_4

    .line 2171
    .end local v4    # "level2":I
    .end local v5    # "oldDepth":I
    .end local v6    # "newHierarchy":[Lcom/sleepycat/persist/impl/ComplexFormat;
    .restart local v11    # "level2":I
    .restart local v12    # "oldDepth":I
    .restart local v13    # "newHierarchy":[Lcom/sleepycat/persist/impl/ComplexFormat;
    :cond_4
    move v4, v11

    move v5, v12

    move-object v6, v13

    .line 2161
    .end local v7    # "newFormat2":Lcom/sleepycat/persist/impl/ComplexFormat;
    .end local v11    # "level2":I
    .end local v12    # "oldDepth":I
    .end local v13    # "newHierarchy":[Lcom/sleepycat/persist/impl/ComplexFormat;
    .restart local v5    # "oldDepth":I
    .restart local v6    # "newHierarchy":[Lcom/sleepycat/persist/impl/ComplexFormat;
    :goto_4
    invoke-virtual/range {v16 .. v16}, Lcom/sleepycat/persist/impl/ComplexFormat;->getComplexSuper()Lcom/sleepycat/persist/impl/ComplexFormat;

    move-result-object v16

    move v12, v5

    move-object v13, v6

    move/from16 v3, v17

    goto :goto_2

    .line 2160
    .end local v5    # "oldDepth":I
    .end local v6    # "newHierarchy":[Lcom/sleepycat/persist/impl/ComplexFormat;
    .end local v17    # "level":I
    .restart local v3    # "level":I
    .restart local v12    # "oldDepth":I
    .restart local v13    # "newHierarchy":[Lcom/sleepycat/persist/impl/ComplexFormat;
    :cond_5
    move v5, v12

    move-object v6, v13

    .line 2176
    .end local v12    # "oldDepth":I
    .end local v13    # "newHierarchy":[Lcom/sleepycat/persist/impl/ComplexFormat;
    .end local v16    # "oldFormat2":Lcom/sleepycat/persist/impl/ComplexFormat;
    .restart local v5    # "oldDepth":I
    .restart local v6    # "newHierarchy":[Lcom/sleepycat/persist/impl/ComplexFormat;
    if-ne v3, v5, :cond_6

    .line 2177
    return-void

    .line 2176
    :cond_6
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 2153
    .end local v5    # "oldDepth":I
    .end local v6    # "newHierarchy":[Lcom/sleepycat/persist/impl/ComplexFormat;
    .restart local v13    # "newHierarchy":[Lcom/sleepycat/persist/impl/ComplexFormat;
    :cond_7
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4
.end method

.method public newInstance(Lcom/sleepycat/persist/impl/EntityInput;Z)Ljava/lang/Object;
    .locals 1
    .param p1, "input"    # Lcom/sleepycat/persist/impl/EntityInput;
    .param p2, "rawAccess"    # Z

    .line 2180
    iget-object v0, p0, Lcom/sleepycat/persist/impl/ComplexFormat$EvolveReader;->newFormat:Lcom/sleepycat/persist/impl/ComplexFormat;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/persist/impl/ComplexFormat;->newInstance(Lcom/sleepycat/persist/impl/EntityInput;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readObject(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityInput;Z)Ljava/lang/Object;
    .locals 12
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "input"    # Lcom/sleepycat/persist/impl/EntityInput;
    .param p3, "rawAccess"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 2198
    iget-object v0, p0, Lcom/sleepycat/persist/impl/ComplexFormat$EvolveReader;->newFormat:Lcom/sleepycat/persist/impl/ComplexFormat;

    if-eqz p3, :cond_0

    invoke-static {v0}, Lcom/sleepycat/persist/impl/ComplexFormat;->access$500(Lcom/sleepycat/persist/impl/ComplexFormat;)Lcom/sleepycat/persist/impl/Accessor;

    move-result-object v0

    goto :goto_0

    .line 2199
    :cond_0
    invoke-static {v0}, Lcom/sleepycat/persist/impl/ComplexFormat;->access$600(Lcom/sleepycat/persist/impl/ComplexFormat;)Lcom/sleepycat/persist/impl/Accessor;

    move-result-object v0

    :goto_0
    nop

    .line 2202
    .local v0, "accessor":Lcom/sleepycat/persist/impl/Accessor;
    iget-object v1, p0, Lcom/sleepycat/persist/impl/ComplexFormat$EvolveReader;->oldHierarchy:[Lcom/sleepycat/persist/impl/ComplexFormat;

    array-length v1, v1

    add-int/lit8 v7, v1, -0x1

    .line 2205
    .local v7, "maxMinusOne":I
    move v1, v7

    move v8, v1

    .local v8, "i":I
    :goto_1
    const v9, 0x7fffffff

    if-ltz v8, :cond_3

    .line 2206
    iget-object v1, p0, Lcom/sleepycat/persist/impl/ComplexFormat$EvolveReader;->oldHierarchy:[Lcom/sleepycat/persist/impl/ComplexFormat;

    aget-object v1, v1, v8

    invoke-static {v1}, Lcom/sleepycat/persist/impl/ComplexFormat;->access$300(Lcom/sleepycat/persist/impl/ComplexFormat;)Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;

    move-result-object v10

    .line 2207
    .local v10, "reader":Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;
    iget-object v1, p0, Lcom/sleepycat/persist/impl/ComplexFormat$EvolveReader;->newHierarchyLevels:[I

    aget v11, v1, v8

    .line 2208
    .local v11, "newLevel":I
    if-eqz v10, :cond_1

    .line 2209
    invoke-virtual {v10, p1, p2, v0, v11}, Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;->readFields(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityInput;Lcom/sleepycat/persist/impl/Accessor;I)V

    goto :goto_2

    .line 2210
    :cond_1
    if-eq v11, v9, :cond_2

    .line 2211
    const/4 v4, 0x0

    const v5, 0x7ffffffe

    .line 2212
    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move v6, v11

    invoke-interface/range {v1 .. v6}, Lcom/sleepycat/persist/impl/Accessor;->readSecKeyFields(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityInput;III)V

    .line 2205
    .end local v10    # "reader":Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;
    .end local v11    # "newLevel":I
    :cond_2
    :goto_2
    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    .line 2217
    .end local v8    # "i":I
    :cond_3
    move v1, v7

    move v8, v1

    .restart local v8    # "i":I
    :goto_3
    if-ltz v8, :cond_6

    .line 2218
    iget-object v1, p0, Lcom/sleepycat/persist/impl/ComplexFormat$EvolveReader;->oldHierarchy:[Lcom/sleepycat/persist/impl/ComplexFormat;

    aget-object v1, v1, v8

    invoke-static {v1}, Lcom/sleepycat/persist/impl/ComplexFormat;->access$400(Lcom/sleepycat/persist/impl/ComplexFormat;)Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;

    move-result-object v10

    .line 2219
    .restart local v10    # "reader":Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;
    iget-object v1, p0, Lcom/sleepycat/persist/impl/ComplexFormat$EvolveReader;->newHierarchyLevels:[I

    aget v11, v1, v8

    .line 2220
    .restart local v11    # "newLevel":I
    if-eqz v10, :cond_4

    .line 2221
    invoke-virtual {v10, p1, p2, v0, v11}, Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;->readFields(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityInput;Lcom/sleepycat/persist/impl/Accessor;I)V

    goto :goto_4

    .line 2222
    :cond_4
    if-eq v11, v9, :cond_5

    .line 2223
    const/4 v4, 0x0

    const v5, 0x7ffffffe

    .line 2224
    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move v6, v11

    invoke-interface/range {v1 .. v6}, Lcom/sleepycat/persist/impl/Accessor;->readNonKeyFields(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityInput;III)V

    .line 2217
    .end local v10    # "reader":Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;
    .end local v11    # "newLevel":I
    :cond_5
    :goto_4
    add-int/lit8 v8, v8, -0x1

    goto :goto_3

    .line 2227
    .end local v8    # "i":I
    :cond_6
    return-object p1
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

    .line 2189
    iget-object v0, p0, Lcom/sleepycat/persist/impl/ComplexFormat$EvolveReader;->newFormat:Lcom/sleepycat/persist/impl/ComplexFormat;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sleepycat/persist/impl/ComplexFormat;->readPriKey(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityInput;Z)V

    .line 2190
    return-void
.end method
