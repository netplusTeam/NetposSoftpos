.class public Lch/qos/logback/core/db/DataSourceConnectionSource;
.super Lch/qos/logback/core/db/ConnectionSourceBase;
.source "DataSourceConnectionSource.java"


# instance fields
.field private dataSource:Ljavax/sql/DataSource;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lch/qos/logback/core/db/ConnectionSourceBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getConnection()Ljava/sql/Connection;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lch/qos/logback/core/db/DataSourceConnectionSource;->dataSource:Ljavax/sql/DataSource;

    if-nez v0, :cond_0

    .line 57
    const-string v0, "WARNING: No data source specified"

    invoke-virtual {p0, v0}, Lch/qos/logback/core/db/DataSourceConnectionSource;->addError(Ljava/lang/String;)V

    .line 58
    const/4 v0, 0x0

    return-object v0

    .line 61
    :cond_0
    invoke-virtual {p0}, Lch/qos/logback/core/db/DataSourceConnectionSource;->getUser()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 62
    iget-object v0, p0, Lch/qos/logback/core/db/DataSourceConnectionSource;->dataSource:Ljavax/sql/DataSource;

    invoke-interface {v0}, Ljavax/sql/DataSource;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    return-object v0

    .line 64
    :cond_1
    iget-object v0, p0, Lch/qos/logback/core/db/DataSourceConnectionSource;->dataSource:Ljavax/sql/DataSource;

    invoke-virtual {p0}, Lch/qos/logback/core/db/DataSourceConnectionSource;->getUser()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lch/qos/logback/core/db/DataSourceConnectionSource;->getPassword()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljavax/sql/DataSource;->getConnection(Ljava/lang/String;Ljava/lang/String;)Ljava/sql/Connection;

    move-result-object v0

    return-object v0
.end method

.method public getDataSource()Ljavax/sql/DataSource;
    .locals 1

    .line 69
    iget-object v0, p0, Lch/qos/logback/core/db/DataSourceConnectionSource;->dataSource:Ljavax/sql/DataSource;

    return-object v0
.end method

.method public setDataSource(Ljavax/sql/DataSource;)V
    .locals 0
    .param p1, "dataSource"    # Ljavax/sql/DataSource;

    .line 73
    iput-object p1, p0, Lch/qos/logback/core/db/DataSourceConnectionSource;->dataSource:Ljavax/sql/DataSource;

    .line 74
    return-void
.end method

.method public start()V
    .locals 2

    .line 41
    iget-object v0, p0, Lch/qos/logback/core/db/DataSourceConnectionSource;->dataSource:Ljavax/sql/DataSource;

    if-nez v0, :cond_0

    .line 42
    const-string v0, "WARNING: No data source specified"

    invoke-virtual {p0, v0}, Lch/qos/logback/core/db/DataSourceConnectionSource;->addWarn(Ljava/lang/String;)V

    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {p0}, Lch/qos/logback/core/db/DataSourceConnectionSource;->discoverConnectionProperties()V

    .line 45
    invoke-virtual {p0}, Lch/qos/logback/core/db/DataSourceConnectionSource;->supportsGetGeneratedKeys()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lch/qos/logback/core/db/DataSourceConnectionSource;->getSQLDialectCode()Lch/qos/logback/core/db/dialect/SQLDialectCode;

    move-result-object v0

    sget-object v1, Lch/qos/logback/core/db/dialect/SQLDialectCode;->UNKNOWN_DIALECT:Lch/qos/logback/core/db/dialect/SQLDialectCode;

    if-ne v0, v1, :cond_1

    .line 46
    const-string v0, "Connection does not support GetGeneratedKey method and could not discover the dialect."

    invoke-virtual {p0, v0}, Lch/qos/logback/core/db/DataSourceConnectionSource;->addWarn(Ljava/lang/String;)V

    .line 49
    :cond_1
    :goto_0
    invoke-super {p0}, Lch/qos/logback/core/db/ConnectionSourceBase;->start()V

    .line 50
    return-void
.end method
