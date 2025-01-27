.class public Lch/qos/logback/core/db/DriverManagerConnectionSource;
.super Lch/qos/logback/core/db/ConnectionSourceBase;
.source "DriverManagerConnectionSource.java"


# instance fields
.field private driverClass:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lch/qos/logback/core/db/ConnectionSourceBase;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lch/qos/logback/core/db/DriverManagerConnectionSource;->driverClass:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lch/qos/logback/core/db/DriverManagerConnectionSource;->url:Ljava/lang/String;

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

    .line 51
    invoke-virtual {p0}, Lch/qos/logback/core/db/DriverManagerConnectionSource;->getUser()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 52
    iget-object v0, p0, Lch/qos/logback/core/db/DriverManagerConnectionSource;->url:Ljava/lang/String;

    invoke-static {v0}, Ljava/sql/DriverManager;->getConnection(Ljava/lang/String;)Ljava/sql/Connection;

    move-result-object v0

    return-object v0

    .line 54
    :cond_0
    iget-object v0, p0, Lch/qos/logback/core/db/DriverManagerConnectionSource;->url:Ljava/lang/String;

    invoke-virtual {p0}, Lch/qos/logback/core/db/DriverManagerConnectionSource;->getUser()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lch/qos/logback/core/db/DriverManagerConnectionSource;->getPassword()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/sql/DriverManager;->getConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/Connection;

    move-result-object v0

    return-object v0
.end method

.method public getDriverClass()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lch/qos/logback/core/db/DriverManagerConnectionSource;->driverClass:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lch/qos/logback/core/db/DriverManagerConnectionSource;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setDriverClass(Ljava/lang/String;)V
    .locals 0
    .param p1, "driverClass"    # Ljava/lang/String;

    .line 93
    iput-object p1, p0, Lch/qos/logback/core/db/DriverManagerConnectionSource;->driverClass:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .line 74
    iput-object p1, p0, Lch/qos/logback/core/db/DriverManagerConnectionSource;->url:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public start()V
    .locals 3

    .line 36
    :try_start_0
    iget-object v0, p0, Lch/qos/logback/core/db/DriverManagerConnectionSource;->driverClass:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 37
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 38
    invoke-virtual {p0}, Lch/qos/logback/core/db/DriverManagerConnectionSource;->discoverConnectionProperties()V

    goto :goto_0

    .line 40
    :cond_0
    const-string v0, "WARNING: No JDBC driver specified for logback DriverManagerConnectionSource."

    invoke-virtual {p0, v0}, Lch/qos/logback/core/db/DriverManagerConnectionSource;->addError(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :goto_0
    goto :goto_1

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, "cnfe":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not load JDBC driver class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lch/qos/logback/core/db/DriverManagerConnectionSource;->driverClass:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lch/qos/logback/core/db/DriverManagerConnectionSource;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 45
    .end local v0    # "cnfe":Ljava/lang/ClassNotFoundException;
    :goto_1
    return-void
.end method
