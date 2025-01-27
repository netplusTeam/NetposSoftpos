.class public Lcom/sleepycat/persist/model/EntityMetadata;
.super Ljava/lang/Object;
.source "EntityMetadata.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x3aa07920aa9ea497L


# instance fields
.field private className:Ljava/lang/String;

.field private primaryKey:Lcom/sleepycat/persist/model/PrimaryKeyMetadata;

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


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/sleepycat/persist/model/PrimaryKeyMetadata;Ljava/util/Map;)V
    .locals 0
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "primaryKey"    # Lcom/sleepycat/persist/model/PrimaryKeyMetadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sleepycat/persist/model/PrimaryKeyMetadata;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/persist/model/SecondaryKeyMetadata;",
            ">;)V"
        }
    .end annotation

    .line 45
    .local p3, "secondaryKeys":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sleepycat/persist/model/SecondaryKeyMetadata;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/sleepycat/persist/model/EntityMetadata;->className:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/sleepycat/persist/model/EntityMetadata;->primaryKey:Lcom/sleepycat/persist/model/PrimaryKeyMetadata;

    .line 48
    iput-object p3, p0, Lcom/sleepycat/persist/model/EntityMetadata;->secondaryKeys:Ljava/util/Map;

    .line 49
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 86
    instance-of v0, p1, Lcom/sleepycat/persist/model/EntityMetadata;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 87
    move-object v0, p1

    check-cast v0, Lcom/sleepycat/persist/model/EntityMetadata;

    .line 88
    .local v0, "o":Lcom/sleepycat/persist/model/EntityMetadata;
    iget-object v2, p0, Lcom/sleepycat/persist/model/EntityMetadata;->className:Ljava/lang/String;

    iget-object v3, v0, Lcom/sleepycat/persist/model/EntityMetadata;->className:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sleepycat/persist/model/ClassMetadata;->nullOrEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sleepycat/persist/model/EntityMetadata;->primaryKey:Lcom/sleepycat/persist/model/PrimaryKeyMetadata;

    iget-object v3, v0, Lcom/sleepycat/persist/model/EntityMetadata;->primaryKey:Lcom/sleepycat/persist/model/PrimaryKeyMetadata;

    .line 89
    invoke-static {v2, v3}, Lcom/sleepycat/persist/model/ClassMetadata;->nullOrEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sleepycat/persist/model/EntityMetadata;->secondaryKeys:Ljava/util/Map;

    iget-object v3, v0, Lcom/sleepycat/persist/model/EntityMetadata;->secondaryKeys:Ljava/util/Map;

    .line 90
    invoke-static {v2, v3}, Lcom/sleepycat/persist/model/ClassMetadata;->nullOrEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 88
    :goto_0
    return v1

    .line 92
    .end local v0    # "o":Lcom/sleepycat/persist/model/EntityMetadata;
    :cond_1
    return v1
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/sleepycat/persist/model/EntityMetadata;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getPrimaryKey()Lcom/sleepycat/persist/model/PrimaryKeyMetadata;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/sleepycat/persist/model/EntityMetadata;->primaryKey:Lcom/sleepycat/persist/model/PrimaryKeyMetadata;

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

    .line 81
    iget-object v0, p0, Lcom/sleepycat/persist/model/EntityMetadata;->secondaryKeys:Ljava/util/Map;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/sleepycat/persist/model/EntityMetadata;->className:Ljava/lang/String;

    invoke-static {v0}, Lcom/sleepycat/persist/model/ClassMetadata;->hashCode(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/sleepycat/persist/model/EntityMetadata;->primaryKey:Lcom/sleepycat/persist/model/PrimaryKeyMetadata;

    .line 99
    invoke-static {v1}, Lcom/sleepycat/persist/model/ClassMetadata;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sleepycat/persist/model/EntityMetadata;->secondaryKeys:Ljava/util/Map;

    .line 100
    invoke-static {v1}, Lcom/sleepycat/persist/model/ClassMetadata;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 98
    return v0
.end method
