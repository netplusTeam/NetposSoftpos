.class public abstract Lch/qos/logback/core/db/DBAppenderBase;
.super Lch/qos/logback/core/UnsynchronizedAppenderBase;
.source "DBAppenderBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lch/qos/logback/core/UnsynchronizedAppenderBase<",
        "TE;>;"
    }
.end annotation


# instance fields
.field protected cnxSupportsBatchUpdates:Z

.field protected cnxSupportsGetGeneratedKeys:Z

.field protected connectionSource:Lch/qos/logback/core/db/ConnectionSource;

.field protected sqlDialect:Lch/qos/logback/core/db/dialect/SQLDialect;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    .local p0, "this":Lch/qos/logback/core/db/DBAppenderBase;, "Lch/qos/logback/core/db/DBAppenderBase<TE;>;"
    invoke-direct {p0}, Lch/qos/logback/core/UnsynchronizedAppenderBase;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/qos/logback/core/db/DBAppenderBase;->cnxSupportsGetGeneratedKeys:Z

    .line 38
    iput-boolean v0, p0, Lch/qos/logback/core/db/DBAppenderBase;->cnxSupportsBatchUpdates:Z

    return-void
.end method


# virtual methods
.method public append(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 85
    .local p0, "this":Lch/qos/logback/core/db/DBAppenderBase;, "Lch/qos/logback/core/db/DBAppenderBase<TE;>;"
    .local p1, "eventObject":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x0

    .line 86
    .local v0, "connection":Ljava/sql/Connection;
    const/4 v1, 0x0

    .line 88
    .local v1, "insertStatement":Ljava/sql/PreparedStatement;
    :try_start_0
    iget-object v2, p0, Lch/qos/logback/core/db/DBAppenderBase;->connectionSource:Lch/qos/logback/core/db/ConnectionSource;

    invoke-interface {v2}, Lch/qos/logback/core/db/ConnectionSource;->getConnection()Ljava/sql/Connection;

    move-result-object v2

    move-object v0, v2

    .line 89
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/sql/Connection;->setAutoCommit(Z)V

    .line 91
    iget-boolean v3, p0, Lch/qos/logback/core/db/DBAppenderBase;->cnxSupportsGetGeneratedKeys:Z

    if-eqz v3, :cond_1

    .line 92
    const-string v3, "EVENT_ID"

    .line 94
    .local v3, "EVENT_ID_COL_NAME":Ljava/lang/String;
    iget-object v4, p0, Lch/qos/logback/core/db/DBAppenderBase;->connectionSource:Lch/qos/logback/core/db/ConnectionSource;

    invoke-interface {v4}, Lch/qos/logback/core/db/ConnectionSource;->getSQLDialectCode()Lch/qos/logback/core/db/dialect/SQLDialectCode;

    move-result-object v4

    sget-object v5, Lch/qos/logback/core/db/dialect/SQLDialectCode;->POSTGRES_DIALECT:Lch/qos/logback/core/db/dialect/SQLDialectCode;

    if-ne v4, v5, :cond_0

    .line 95
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 97
    :cond_0
    invoke-virtual {p0}, Lch/qos/logback/core/db/DBAppenderBase;->getInsertSQL()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    aput-object v3, v5, v2

    invoke-interface {v0, v4, v5}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;[Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v2

    move-object v1, v2

    .line 98
    .end local v3    # "EVENT_ID_COL_NAME":Ljava/lang/String;
    goto :goto_0

    .line 99
    :cond_1
    invoke-virtual {p0}, Lch/qos/logback/core/db/DBAppenderBase;->getInsertSQL()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v2

    move-object v1, v2

    .line 104
    :goto_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 105
    :try_start_1
    invoke-virtual {p0, p1, v0, v1}, Lch/qos/logback/core/db/DBAppenderBase;->subAppend(Ljava/lang/Object;Ljava/sql/Connection;Ljava/sql/PreparedStatement;)V

    .line 106
    invoke-virtual {p0, v1, v0}, Lch/qos/logback/core/db/DBAppenderBase;->selectEventId(Ljava/sql/PreparedStatement;Ljava/sql/Connection;)J

    move-result-wide v2

    .line 107
    .local v2, "eventId":J
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    :try_start_2
    invoke-virtual {p0, p1, v0, v2, v3}, Lch/qos/logback/core/db/DBAppenderBase;->secondarySubAppend(Ljava/lang/Object;Ljava/sql/Connection;J)V

    .line 110
    invoke-interface {v0}, Ljava/sql/Connection;->commit()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .end local v2    # "eventId":J
    goto :goto_1

    .line 107
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "connection":Ljava/sql/Connection;
    .end local v1    # "insertStatement":Ljava/sql/PreparedStatement;
    .end local p1    # "eventObject":Ljava/lang/Object;, "TE;"
    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 111
    .restart local v0    # "connection":Ljava/sql/Connection;
    .restart local v1    # "insertStatement":Ljava/sql/PreparedStatement;
    .restart local p1    # "eventObject":Ljava/lang/Object;, "TE;"
    :catchall_1
    move-exception v2

    .line 112
    .local v2, "sqle":Ljava/lang/Throwable;
    :try_start_5
    const-string/jumbo v3, "problem appending event"

    invoke-virtual {p0, v3, v2}, Lch/qos/logback/core/db/DBAppenderBase;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 114
    .end local v2    # "sqle":Ljava/lang/Throwable;
    :goto_1
    invoke-static {v1}, Lch/qos/logback/core/db/DBHelper;->closeStatement(Ljava/sql/Statement;)V

    .line 115
    invoke-static {v0}, Lch/qos/logback/core/db/DBHelper;->closeConnection(Ljava/sql/Connection;)V

    .line 116
    nop

    .line 117
    return-void

    .line 114
    :catchall_2
    move-exception v2

    invoke-static {v1}, Lch/qos/logback/core/db/DBHelper;->closeStatement(Ljava/sql/Statement;)V

    .line 115
    invoke-static {v0}, Lch/qos/logback/core/db/DBHelper;->closeConnection(Ljava/sql/Connection;)V

    throw v2
.end method

.method public getConnectionSource()Lch/qos/logback/core/db/ConnectionSource;
    .locals 1

    .line 72
    .local p0, "this":Lch/qos/logback/core/db/DBAppenderBase;, "Lch/qos/logback/core/db/DBAppenderBase<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/db/DBAppenderBase;->connectionSource:Lch/qos/logback/core/db/ConnectionSource;

    return-object v0
.end method

.method protected abstract getGeneratedKeysMethod()Ljava/lang/reflect/Method;
.end method

.method protected abstract getInsertSQL()Ljava/lang/String;
.end method

.method protected abstract secondarySubAppend(Ljava/lang/Object;Ljava/sql/Connection;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Ljava/sql/Connection;",
            "J)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method protected selectEventId(Ljava/sql/PreparedStatement;Ljava/sql/Connection;)J
    .locals 6
    .param p1, "insertStatement"    # Ljava/sql/PreparedStatement;
    .param p2, "connection"    # Ljava/sql/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 124
    .local p0, "this":Lch/qos/logback/core/db/DBAppenderBase;, "Lch/qos/logback/core/db/DBAppenderBase<TE;>;"
    const/4 v0, 0x0

    .line 125
    .local v0, "rs":Ljava/sql/ResultSet;
    const/4 v1, 0x0

    .line 127
    .local v1, "idStatement":Ljava/sql/Statement;
    const/4 v2, 0x0

    .line 128
    .local v2, "gotGeneratedKeys":Z
    :try_start_0
    iget-boolean v3, p0, Lch/qos/logback/core/db/DBAppenderBase;->cnxSupportsGetGeneratedKeys:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 130
    :try_start_1
    invoke-virtual {p0}, Lch/qos/logback/core/db/DBAppenderBase;->getGeneratedKeysMethod()Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, v4

    check-cast v5, [Ljava/lang/Object;

    invoke-virtual {v3, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/sql/ResultSet;
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v3

    .line 131
    const/4 v2, 0x1

    .line 140
    goto :goto_0

    .line 138
    :catch_0
    move-exception v3

    .line 139
    .local v3, "ex":Ljava/lang/IllegalAccessException;
    :try_start_2
    const-string v4, "IllegalAccessException invoking PreparedStatement.getGeneratedKeys"

    invoke-virtual {p0, v4, v3}, Lch/qos/logback/core/db/DBAppenderBase;->addWarn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 132
    .end local v3    # "ex":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v3

    .line 133
    .local v3, "ex":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v4

    .line 134
    .local v4, "target":Ljava/lang/Throwable;
    instance-of v5, v4, Ljava/sql/SQLException;

    if-eqz v5, :cond_0

    .line 135
    move-object v5, v4

    check-cast v5, Ljava/sql/SQLException;

    .end local v0    # "rs":Ljava/sql/ResultSet;
    .end local v1    # "idStatement":Ljava/sql/Statement;
    .end local p1    # "insertStatement":Ljava/sql/PreparedStatement;
    .end local p2    # "connection":Ljava/sql/Connection;
    throw v5

    .line 137
    .restart local v0    # "rs":Ljava/sql/ResultSet;
    .restart local v1    # "idStatement":Ljava/sql/Statement;
    .restart local p1    # "insertStatement":Ljava/sql/PreparedStatement;
    .restart local p2    # "connection":Ljava/sql/Connection;
    :cond_0
    nop

    .end local v0    # "rs":Ljava/sql/ResultSet;
    .end local v1    # "idStatement":Ljava/sql/Statement;
    .end local p1    # "insertStatement":Ljava/sql/PreparedStatement;
    .end local p2    # "connection":Ljava/sql/Connection;
    throw v3

    .line 143
    .end local v3    # "ex":Ljava/lang/reflect/InvocationTargetException;
    .end local v4    # "target":Ljava/lang/Throwable;
    .restart local v0    # "rs":Ljava/sql/ResultSet;
    .restart local v1    # "idStatement":Ljava/sql/Statement;
    .restart local p1    # "insertStatement":Ljava/sql/PreparedStatement;
    .restart local p2    # "connection":Ljava/sql/Connection;
    :cond_1
    :goto_0
    const/4 v3, 0x1

    if-nez v2, :cond_2

    .line 144
    invoke-interface {p2}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v4

    move-object v1, v4

    .line 145
    invoke-interface {v1, v3}, Ljava/sql/Statement;->setMaxRows(I)V

    .line 146
    iget-object v4, p0, Lch/qos/logback/core/db/DBAppenderBase;->sqlDialect:Lch/qos/logback/core/db/dialect/SQLDialect;

    invoke-interface {v4}, Lch/qos/logback/core/db/dialect/SQLDialect;->getSelectInsertId()Ljava/lang/String;

    move-result-object v4

    .line 147
    .local v4, "selectInsertIdStr":Ljava/lang/String;
    invoke-interface {v1, v4}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v5

    move-object v0, v5

    .line 152
    .end local v4    # "selectInsertIdStr":Ljava/lang/String;
    :cond_2
    invoke-interface {v0}, Ljava/sql/ResultSet;->next()Z

    .line 153
    invoke-interface {v0, v3}, Ljava/sql/ResultSet;->getLong(I)J

    move-result-wide v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 154
    .local v3, "eventId":J
    nop

    .line 156
    if-eqz v0, :cond_3

    .line 158
    :try_start_3
    invoke-interface {v0}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_2

    .line 160
    goto :goto_1

    .line 159
    :catch_2
    move-exception v5

    .line 162
    :cond_3
    :goto_1
    invoke-static {v1}, Lch/qos/logback/core/db/DBHelper;->closeStatement(Ljava/sql/Statement;)V

    return-wide v3

    .line 156
    .end local v2    # "gotGeneratedKeys":Z
    .end local v3    # "eventId":J
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_4

    .line 158
    :try_start_4
    invoke-interface {v0}, Ljava/sql/ResultSet;->close()V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_3

    .line 160
    goto :goto_2

    .line 159
    :catch_3
    move-exception v3

    .line 162
    :cond_4
    :goto_2
    invoke-static {v1}, Lch/qos/logback/core/db/DBHelper;->closeStatement(Ljava/sql/Statement;)V

    throw v2
.end method

.method public setConnectionSource(Lch/qos/logback/core/db/ConnectionSource;)V
    .locals 0
    .param p1, "connectionSource"    # Lch/qos/logback/core/db/ConnectionSource;

    .line 80
    .local p0, "this":Lch/qos/logback/core/db/DBAppenderBase;, "Lch/qos/logback/core/db/DBAppenderBase<TE;>;"
    iput-object p1, p0, Lch/qos/logback/core/db/DBAppenderBase;->connectionSource:Lch/qos/logback/core/db/ConnectionSource;

    .line 81
    return-void
.end method

.method public start()V
    .locals 2

    .line 48
    .local p0, "this":Lch/qos/logback/core/db/DBAppenderBase;, "Lch/qos/logback/core/db/DBAppenderBase<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/db/DBAppenderBase;->connectionSource:Lch/qos/logback/core/db/ConnectionSource;

    if-eqz v0, :cond_3

    .line 52
    invoke-interface {v0}, Lch/qos/logback/core/db/ConnectionSource;->getSQLDialectCode()Lch/qos/logback/core/db/dialect/SQLDialectCode;

    move-result-object v0

    invoke-static {v0}, Lch/qos/logback/core/db/dialect/DBUtil;->getDialectFromCode(Lch/qos/logback/core/db/dialect/SQLDialectCode;)Lch/qos/logback/core/db/dialect/SQLDialect;

    move-result-object v0

    iput-object v0, p0, Lch/qos/logback/core/db/DBAppenderBase;->sqlDialect:Lch/qos/logback/core/db/dialect/SQLDialect;

    .line 53
    invoke-virtual {p0}, Lch/qos/logback/core/db/DBAppenderBase;->getGeneratedKeysMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lch/qos/logback/core/db/DBAppenderBase;->connectionSource:Lch/qos/logback/core/db/ConnectionSource;

    invoke-interface {v0}, Lch/qos/logback/core/db/ConnectionSource;->supportsGetGeneratedKeys()Z

    move-result v0

    iput-boolean v0, p0, Lch/qos/logback/core/db/DBAppenderBase;->cnxSupportsGetGeneratedKeys:Z

    goto :goto_0

    .line 56
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/qos/logback/core/db/DBAppenderBase;->cnxSupportsGetGeneratedKeys:Z

    .line 58
    :goto_0
    iget-object v0, p0, Lch/qos/logback/core/db/DBAppenderBase;->connectionSource:Lch/qos/logback/core/db/ConnectionSource;

    invoke-interface {v0}, Lch/qos/logback/core/db/ConnectionSource;->supportsBatchUpdates()Z

    move-result v0

    iput-boolean v0, p0, Lch/qos/logback/core/db/DBAppenderBase;->cnxSupportsBatchUpdates:Z

    .line 59
    iget-boolean v0, p0, Lch/qos/logback/core/db/DBAppenderBase;->cnxSupportsGetGeneratedKeys:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lch/qos/logback/core/db/DBAppenderBase;->sqlDialect:Lch/qos/logback/core/db/dialect/SQLDialect;

    if-eqz v0, :cond_1

    goto :goto_1

    .line 60
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DBAppender cannot function if the JDBC driver does not support getGeneratedKeys method *and* without a specific SQL dialect"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_2
    :goto_1
    invoke-super {p0}, Lch/qos/logback/core/UnsynchronizedAppenderBase;->start()V

    .line 66
    return-void

    .line 49
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DBAppender cannot function without a connection source"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stop()V
    .locals 0

    .line 168
    .local p0, "this":Lch/qos/logback/core/db/DBAppenderBase;, "Lch/qos/logback/core/db/DBAppenderBase<TE;>;"
    invoke-super {p0}, Lch/qos/logback/core/UnsynchronizedAppenderBase;->stop()V

    .line 169
    return-void
.end method

.method protected abstract subAppend(Ljava/lang/Object;Ljava/sql/Connection;Ljava/sql/PreparedStatement;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Ljava/sql/Connection;",
            "Ljava/sql/PreparedStatement;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method
