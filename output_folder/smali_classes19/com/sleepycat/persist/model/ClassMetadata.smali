.class public Lcom/sleepycat/persist/model/ClassMetadata;
.super Ljava/lang/Object;
.source "ClassMetadata.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x22f9934c9a0bf927L


# instance fields
.field private className:Ljava/lang/String;

.field private compositeKeyFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sleepycat/persist/model/FieldMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private entityClass:Z

.field private persistentFields:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/sleepycat/persist/model/FieldMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private primaryKey:Lcom/sleepycat/persist/model/PrimaryKeyMetadata;

.field private proxiedClassName:Ljava/lang/String;

.field private secondaryKeys:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/persist/model/SecondaryKeyMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private version:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;ZLcom/sleepycat/persist/model/PrimaryKeyMetadata;Ljava/util/Map;Ljava/util/List;)V
    .locals 9
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "version"    # I
    .param p3, "proxiedClassName"    # Ljava/lang/String;
    .param p4, "entityClass"    # Z
    .param p5, "primaryKey"    # Lcom/sleepycat/persist/model/PrimaryKeyMetadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Z",
            "Lcom/sleepycat/persist/model/PrimaryKeyMetadata;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/persist/model/SecondaryKeyMetadata;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sleepycat/persist/model/FieldMetadata;",
            ">;)V"
        }
    .end annotation

    .line 68
    .local p6, "secondaryKeys":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sleepycat/persist/model/SecondaryKeyMetadata;>;"
    .local p7, "compositeKeyFields":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/persist/model/FieldMetadata;>;"
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/sleepycat/persist/model/ClassMetadata;-><init>(Ljava/lang/String;ILjava/lang/String;ZLcom/sleepycat/persist/model/PrimaryKeyMetadata;Ljava/util/Map;Ljava/util/List;Ljava/util/Collection;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;ZLcom/sleepycat/persist/model/PrimaryKeyMetadata;Ljava/util/Map;Ljava/util/List;Ljava/util/Collection;)V
    .locals 0
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "version"    # I
    .param p3, "proxiedClassName"    # Ljava/lang/String;
    .param p4, "entityClass"    # Z
    .param p5, "primaryKey"    # Lcom/sleepycat/persist/model/PrimaryKeyMetadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Z",
            "Lcom/sleepycat/persist/model/PrimaryKeyMetadata;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/persist/model/SecondaryKeyMetadata;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sleepycat/persist/model/FieldMetadata;",
            ">;",
            "Ljava/util/Collection<",
            "Lcom/sleepycat/persist/model/FieldMetadata;",
            ">;)V"
        }
    .end annotation

    .line 91
    .local p6, "secondaryKeys":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sleepycat/persist/model/SecondaryKeyMetadata;>;"
    .local p7, "compositeKeyFields":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/persist/model/FieldMetadata;>;"
    .local p8, "persistentFields":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sleepycat/persist/model/FieldMetadata;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/sleepycat/persist/model/ClassMetadata;->className:Ljava/lang/String;

    .line 93
    iput p2, p0, Lcom/sleepycat/persist/model/ClassMetadata;->version:I

    .line 94
    iput-object p3, p0, Lcom/sleepycat/persist/model/ClassMetadata;->proxiedClassName:Ljava/lang/String;

    .line 95
    iput-boolean p4, p0, Lcom/sleepycat/persist/model/ClassMetadata;->entityClass:Z

    .line 96
    iput-object p5, p0, Lcom/sleepycat/persist/model/ClassMetadata;->primaryKey:Lcom/sleepycat/persist/model/PrimaryKeyMetadata;

    .line 97
    iput-object p6, p0, Lcom/sleepycat/persist/model/ClassMetadata;->secondaryKeys:Ljava/util/Map;

    .line 98
    iput-object p7, p0, Lcom/sleepycat/persist/model/ClassMetadata;->compositeKeyFields:Ljava/util/List;

    .line 99
    iput-object p8, p0, Lcom/sleepycat/persist/model/ClassMetadata;->persistentFields:Ljava/util/Collection;

    .line 100
    return-void
.end method

.method static hashCode(Ljava/lang/Object;)I
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;

    .line 233
    if-eqz p0, :cond_0

    .line 234
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0

    .line 236
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static nullOrEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "o1"    # Ljava/lang/Object;
    .param p1, "o2"    # Ljava/lang/Object;

    .line 225
    if-nez p0, :cond_1

    .line 226
    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 228
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 199
    instance-of v0, p1, Lcom/sleepycat/persist/model/ClassMetadata;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 200
    move-object v0, p1

    check-cast v0, Lcom/sleepycat/persist/model/ClassMetadata;

    .line 201
    .local v0, "o":Lcom/sleepycat/persist/model/ClassMetadata;
    iget v2, p0, Lcom/sleepycat/persist/model/ClassMetadata;->version:I

    iget v3, v0, Lcom/sleepycat/persist/model/ClassMetadata;->version:I

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/sleepycat/persist/model/ClassMetadata;->entityClass:Z

    iget-boolean v3, v0, Lcom/sleepycat/persist/model/ClassMetadata;->entityClass:Z

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/sleepycat/persist/model/ClassMetadata;->className:Ljava/lang/String;

    iget-object v3, v0, Lcom/sleepycat/persist/model/ClassMetadata;->className:Ljava/lang/String;

    .line 203
    invoke-static {v2, v3}, Lcom/sleepycat/persist/model/ClassMetadata;->nullOrEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sleepycat/persist/model/ClassMetadata;->proxiedClassName:Ljava/lang/String;

    iget-object v3, v0, Lcom/sleepycat/persist/model/ClassMetadata;->proxiedClassName:Ljava/lang/String;

    .line 204
    invoke-static {v2, v3}, Lcom/sleepycat/persist/model/ClassMetadata;->nullOrEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sleepycat/persist/model/ClassMetadata;->primaryKey:Lcom/sleepycat/persist/model/PrimaryKeyMetadata;

    iget-object v3, v0, Lcom/sleepycat/persist/model/ClassMetadata;->primaryKey:Lcom/sleepycat/persist/model/PrimaryKeyMetadata;

    .line 205
    invoke-static {v2, v3}, Lcom/sleepycat/persist/model/ClassMetadata;->nullOrEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sleepycat/persist/model/ClassMetadata;->secondaryKeys:Ljava/util/Map;

    iget-object v3, v0, Lcom/sleepycat/persist/model/ClassMetadata;->secondaryKeys:Ljava/util/Map;

    .line 206
    invoke-static {v2, v3}, Lcom/sleepycat/persist/model/ClassMetadata;->nullOrEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sleepycat/persist/model/ClassMetadata;->compositeKeyFields:Ljava/util/List;

    iget-object v3, v0, Lcom/sleepycat/persist/model/ClassMetadata;->compositeKeyFields:Ljava/util/List;

    .line 207
    invoke-static {v2, v3}, Lcom/sleepycat/persist/model/ClassMetadata;->nullOrEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 201
    :goto_0
    return v1

    .line 209
    .end local v0    # "o":Lcom/sleepycat/persist/model/ClassMetadata;
    :cond_1
    return v1
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/sleepycat/persist/model/ClassMetadata;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getCompositeKeyFields()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sleepycat/persist/model/FieldMetadata;",
            ">;"
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lcom/sleepycat/persist/model/ClassMetadata;->compositeKeyFields:Ljava/util/List;

    return-object v0
.end method

.method public getPersistentFields()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/sleepycat/persist/model/FieldMetadata;",
            ">;"
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lcom/sleepycat/persist/model/ClassMetadata;->persistentFields:Ljava/util/Collection;

    return-object v0
.end method

.method public getPrimaryKey()Lcom/sleepycat/persist/model/PrimaryKeyMetadata;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/sleepycat/persist/model/ClassMetadata;->primaryKey:Lcom/sleepycat/persist/model/PrimaryKeyMetadata;

    return-object v0
.end method

.method public getProxiedClassName()Ljava/lang/String;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/sleepycat/persist/model/ClassMetadata;->proxiedClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getSecondaryKeys()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/persist/model/SecondaryKeyMetadata;",
            ">;"
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lcom/sleepycat/persist/model/ClassMetadata;->secondaryKeys:Ljava/util/Map;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 119
    iget v0, p0, Lcom/sleepycat/persist/model/ClassMetadata;->version:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 215
    iget v0, p0, Lcom/sleepycat/persist/model/ClassMetadata;->version:I

    iget-boolean v1, p0, Lcom/sleepycat/persist/model/ClassMetadata;->entityClass:Z

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sleepycat/persist/model/ClassMetadata;->className:Ljava/lang/String;

    .line 217
    invoke-static {v1}, Lcom/sleepycat/persist/model/ClassMetadata;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sleepycat/persist/model/ClassMetadata;->proxiedClassName:Ljava/lang/String;

    .line 218
    invoke-static {v1}, Lcom/sleepycat/persist/model/ClassMetadata;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sleepycat/persist/model/ClassMetadata;->primaryKey:Lcom/sleepycat/persist/model/PrimaryKeyMetadata;

    .line 219
    invoke-static {v1}, Lcom/sleepycat/persist/model/ClassMetadata;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sleepycat/persist/model/ClassMetadata;->secondaryKeys:Ljava/util/Map;

    .line 220
    invoke-static {v1}, Lcom/sleepycat/persist/model/ClassMetadata;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sleepycat/persist/model/ClassMetadata;->compositeKeyFields:Ljava/util/List;

    .line 221
    invoke-static {v1}, Lcom/sleepycat/persist/model/ClassMetadata;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 215
    return v0
.end method

.method public isEntityClass()Z
    .locals 1

    .line 138
    iget-boolean v0, p0, Lcom/sleepycat/persist/model/ClassMetadata;->entityClass:Z

    return v0
.end method
