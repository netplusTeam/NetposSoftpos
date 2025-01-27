.class public Lch/qos/logback/classic/db/names/SimpleDBNameResolver;
.super Ljava/lang/Object;
.source "SimpleDBNameResolver.java"

# interfaces
.implements Lch/qos/logback/classic/db/names/DBNameResolver;


# instance fields
.field private columnNamePrefix:Ljava/lang/String;

.field private columnNameSuffix:Ljava/lang/String;

.field private tableNamePrefix:Ljava/lang/String;

.field private tableNameSuffix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lch/qos/logback/classic/db/names/SimpleDBNameResolver;->tableNamePrefix:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lch/qos/logback/classic/db/names/SimpleDBNameResolver;->tableNameSuffix:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lch/qos/logback/classic/db/names/SimpleDBNameResolver;->columnNamePrefix:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lch/qos/logback/classic/db/names/SimpleDBNameResolver;->columnNameSuffix:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getColumnName(Ljava/lang/Enum;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Enum<",
            "*>;>(TN;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 37
    .local p1, "columnName":Ljava/lang/Enum;, "TN;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lch/qos/logback/classic/db/names/SimpleDBNameResolver;->columnNamePrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lch/qos/logback/classic/db/names/SimpleDBNameResolver;->columnNameSuffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTableName(Ljava/lang/Enum;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Enum<",
            "*>;>(TN;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 33
    .local p1, "tableName":Ljava/lang/Enum;, "TN;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lch/qos/logback/classic/db/names/SimpleDBNameResolver;->tableNamePrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lch/qos/logback/classic/db/names/SimpleDBNameResolver;->tableNameSuffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setColumnNamePrefix(Ljava/lang/String;)V
    .locals 1
    .param p1, "columnNamePrefix"    # Ljava/lang/String;

    .line 49
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lch/qos/logback/classic/db/names/SimpleDBNameResolver;->columnNamePrefix:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setColumnNameSuffix(Ljava/lang/String;)V
    .locals 1
    .param p1, "columnNameSuffix"    # Ljava/lang/String;

    .line 53
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lch/qos/logback/classic/db/names/SimpleDBNameResolver;->columnNameSuffix:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setTableNamePrefix(Ljava/lang/String;)V
    .locals 1
    .param p1, "tableNamePrefix"    # Ljava/lang/String;

    .line 41
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lch/qos/logback/classic/db/names/SimpleDBNameResolver;->tableNamePrefix:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setTableNameSuffix(Ljava/lang/String;)V
    .locals 1
    .param p1, "tableNameSuffix"    # Ljava/lang/String;

    .line 45
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lch/qos/logback/classic/db/names/SimpleDBNameResolver;->tableNameSuffix:Ljava/lang/String;

    .line 46
    return-void
.end method
