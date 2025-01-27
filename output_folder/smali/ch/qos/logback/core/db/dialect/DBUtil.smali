.class public Lch/qos/logback/core/db/dialect/DBUtil;
.super Lch/qos/logback/core/spi/ContextAwareBase;
.source "DBUtil.java"


# static fields
.field private static final H2_PART:Ljava/lang/String; = "h2"

.field private static final HSQL_PART:Ljava/lang/String; = "hsql"

.field private static final MSSQL_PART:Ljava/lang/String; = "microsoft"

.field private static final MYSQL_PART:Ljava/lang/String; = "mysql"

.field private static final ORACLE_PART:Ljava/lang/String; = "oracle"

.field private static final POSTGRES_PART:Ljava/lang/String; = "postgresql"

.field private static final SQLITE_PART:Ljava/lang/String; = "sqlite"

.field private static final SYBASE_SQLANY_PART:Ljava/lang/String; = "sql anywhere"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lch/qos/logback/core/spi/ContextAwareBase;-><init>()V

    .line 104
    return-void
.end method

.method public static discoverSQLDialect(Ljava/sql/DatabaseMetaData;)Lch/qos/logback/core/db/dialect/SQLDialectCode;
    .locals 4
    .param p0, "meta"    # Ljava/sql/DatabaseMetaData;

    .line 38
    sget-object v0, Lch/qos/logback/core/db/dialect/SQLDialectCode;->UNKNOWN_DIALECT:Lch/qos/logback/core/db/dialect/SQLDialectCode;

    .line 42
    .local v0, "dialectCode":Lch/qos/logback/core/db/dialect/SQLDialectCode;
    :try_start_0
    invoke-interface {p0}, Ljava/sql/DatabaseMetaData;->getDatabaseProductName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 44
    .local v1, "dbName":Ljava/lang/String;
    const-string/jumbo v2, "postgresql"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 45
    sget-object v2, Lch/qos/logback/core/db/dialect/SQLDialectCode;->POSTGRES_DIALECT:Lch/qos/logback/core/db/dialect/SQLDialectCode;

    return-object v2

    .line 46
    :cond_0
    const-string v2, "mysql"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v3, :cond_1

    .line 47
    sget-object v2, Lch/qos/logback/core/db/dialect/SQLDialectCode;->MYSQL_DIALECT:Lch/qos/logback/core/db/dialect/SQLDialectCode;

    return-object v2

    .line 48
    :cond_1
    const-string/jumbo v2, "oracle"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v3, :cond_2

    .line 49
    sget-object v2, Lch/qos/logback/core/db/dialect/SQLDialectCode;->ORACLE_DIALECT:Lch/qos/logback/core/db/dialect/SQLDialectCode;

    return-object v2

    .line 50
    :cond_2
    const-string v2, "microsoft"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v3, :cond_3

    .line 51
    sget-object v2, Lch/qos/logback/core/db/dialect/SQLDialectCode;->MSSQL_DIALECT:Lch/qos/logback/core/db/dialect/SQLDialectCode;

    return-object v2

    .line 52
    :cond_3
    const-string v2, "hsql"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v3, :cond_4

    .line 53
    sget-object v2, Lch/qos/logback/core/db/dialect/SQLDialectCode;->HSQL_DIALECT:Lch/qos/logback/core/db/dialect/SQLDialectCode;

    return-object v2

    .line 54
    :cond_4
    const-string v2, "h2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v3, :cond_5

    .line 55
    sget-object v2, Lch/qos/logback/core/db/dialect/SQLDialectCode;->H2_DIALECT:Lch/qos/logback/core/db/dialect/SQLDialectCode;

    return-object v2

    .line 56
    :cond_5
    const-string/jumbo v2, "sql anywhere"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v3, :cond_6

    .line 57
    sget-object v2, Lch/qos/logback/core/db/dialect/SQLDialectCode;->SYBASE_SQLANYWHERE_DIALECT:Lch/qos/logback/core/db/dialect/SQLDialectCode;

    return-object v2

    .line 58
    :cond_6
    const-string/jumbo v2, "sqlite"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v3, :cond_7

    .line 59
    sget-object v2, Lch/qos/logback/core/db/dialect/SQLDialectCode;->SQLITE_DIALECT:Lch/qos/logback/core/db/dialect/SQLDialectCode;

    return-object v2

    .line 61
    :cond_7
    sget-object v2, Lch/qos/logback/core/db/dialect/SQLDialectCode;->UNKNOWN_DIALECT:Lch/qos/logback/core/db/dialect/SQLDialectCode;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 63
    .end local v1    # "dbName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 67
    return-object v0
.end method

.method public static getDialectFromCode(Lch/qos/logback/core/db/dialect/SQLDialectCode;)Lch/qos/logback/core/db/dialect/SQLDialect;
    .locals 3
    .param p0, "sqlDialectType"    # Lch/qos/logback/core/db/dialect/SQLDialectCode;

    .line 71
    const/4 v0, 0x0

    .line 73
    .local v0, "sqlDialect":Lch/qos/logback/core/db/dialect/SQLDialect;
    sget-object v1, Lch/qos/logback/core/db/dialect/DBUtil$1;->$SwitchMap$ch$qos$logback$core$db$dialect$SQLDialectCode:[I

    invoke-virtual {p0}, Lch/qos/logback/core/db/dialect/SQLDialectCode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 103
    :pswitch_0
    new-instance v1, Lch/qos/logback/core/db/dialect/SQLiteDialect;

    invoke-direct {v1}, Lch/qos/logback/core/db/dialect/SQLiteDialect;-><init>()V

    move-object v0, v1

    goto :goto_0

    .line 99
    :pswitch_1
    new-instance v1, Lch/qos/logback/core/db/dialect/SybaseSqlAnywhereDialect;

    invoke-direct {v1}, Lch/qos/logback/core/db/dialect/SybaseSqlAnywhereDialect;-><init>()V

    move-object v0, v1

    .line 100
    goto :goto_0

    .line 95
    :pswitch_2
    new-instance v1, Lch/qos/logback/core/db/dialect/H2Dialect;

    invoke-direct {v1}, Lch/qos/logback/core/db/dialect/H2Dialect;-><init>()V

    move-object v0, v1

    .line 96
    goto :goto_0

    .line 91
    :pswitch_3
    new-instance v1, Lch/qos/logback/core/db/dialect/HSQLDBDialect;

    invoke-direct {v1}, Lch/qos/logback/core/db/dialect/HSQLDBDialect;-><init>()V

    move-object v0, v1

    .line 92
    goto :goto_0

    .line 87
    :pswitch_4
    new-instance v1, Lch/qos/logback/core/db/dialect/MsSQLDialect;

    invoke-direct {v1}, Lch/qos/logback/core/db/dialect/MsSQLDialect;-><init>()V

    move-object v0, v1

    .line 88
    goto :goto_0

    .line 83
    :pswitch_5
    new-instance v1, Lch/qos/logback/core/db/dialect/OracleDialect;

    invoke-direct {v1}, Lch/qos/logback/core/db/dialect/OracleDialect;-><init>()V

    move-object v0, v1

    .line 84
    goto :goto_0

    .line 79
    :pswitch_6
    new-instance v1, Lch/qos/logback/core/db/dialect/MySQLDialect;

    invoke-direct {v1}, Lch/qos/logback/core/db/dialect/MySQLDialect;-><init>()V

    move-object v0, v1

    .line 80
    goto :goto_0

    .line 75
    :pswitch_7
    new-instance v1, Lch/qos/logback/core/db/dialect/PostgreSQLDialect;

    invoke-direct {v1}, Lch/qos/logback/core/db/dialect/PostgreSQLDialect;-><init>()V

    move-object v0, v1

    .line 76
    nop

    .line 106
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public supportsBatchUpdates(Ljava/sql/DatabaseMetaData;)Z
    .locals 2
    .param p1, "meta"    # Ljava/sql/DatabaseMetaData;

    .line 133
    :try_start_0
    invoke-interface {p1}, Ljava/sql/DatabaseMetaData;->supportsBatchUpdates()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 134
    :catchall_0
    move-exception v0

    .line 135
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "Missing DatabaseMetaData.supportsBatchUpdates method."

    invoke-virtual {p0, v1}, Lch/qos/logback/core/db/dialect/DBUtil;->addInfo(Ljava/lang/String;)V

    .line 136
    const/4 v1, 0x0

    return v1
.end method

.method public supportsGetGeneratedKeys(Ljava/sql/DatabaseMetaData;)Z
    .locals 4
    .param p1, "meta"    # Ljava/sql/DatabaseMetaData;

    .line 119
    :try_start_0
    const-class v0, Ljava/sql/DatabaseMetaData;

    const-string/jumbo v1, "supportsGetGeneratedKeys"

    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    move-object v1, v2

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 120
    :catchall_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "Could not call supportsGetGeneratedKeys method. This may be recoverable"

    invoke-virtual {p0, v1}, Lch/qos/logback/core/db/dialect/DBUtil;->addInfo(Ljava/lang/String;)V

    .line 122
    const/4 v1, 0x0

    return v1
.end method
