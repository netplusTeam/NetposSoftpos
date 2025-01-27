.class public Lch/qos/logback/core/db/JNDIConnectionSource;
.super Lch/qos/logback/core/db/ConnectionSourceBase;
.source "JNDIConnectionSource.java"


# instance fields
.field private dataSource:Ljavax/sql/DataSource;

.field private jndiLocation:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lch/qos/logback/core/db/ConnectionSourceBase;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lch/qos/logback/core/db/JNDIConnectionSource;->jndiLocation:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lch/qos/logback/core/db/JNDIConnectionSource;->dataSource:Ljavax/sql/DataSource;

    return-void
.end method

.method private lookupDataSource()Ljavax/sql/DataSource;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;,
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Looking up ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lch/qos/logback/core/db/JNDIConnectionSource;->jndiLocation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] in JNDI"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/qos/logback/core/db/JNDIConnectionSource;->addInfo(Ljava/lang/String;)V

    .line 96
    new-instance v0, Ljavax/naming/InitialContext;

    invoke-direct {v0}, Ljavax/naming/InitialContext;-><init>()V

    .line 97
    .local v0, "initialContext":Ljavax/naming/Context;
    iget-object v1, p0, Lch/qos/logback/core/db/JNDIConnectionSource;->jndiLocation:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljavax/naming/Context;->lookup(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 101
    .local v1, "obj":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Ljavax/sql/DataSource;

    .line 103
    .local v2, "ds":Ljavax/sql/DataSource;
    if-eqz v2, :cond_0

    .line 106
    return-object v2

    .line 104
    :cond_0
    new-instance v3, Ljava/sql/SQLException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to obtain data source from JNDI location "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lch/qos/logback/core/db/JNDIConnectionSource;->jndiLocation:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public getConnection()Ljava/sql/Connection;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 54
    const/4 v0, 0x0

    .line 56
    .local v0, "conn":Ljava/sql/Connection;
    :try_start_0
    iget-object v1, p0, Lch/qos/logback/core/db/JNDIConnectionSource;->dataSource:Ljavax/sql/DataSource;

    if-nez v1, :cond_0

    .line 57
    invoke-direct {p0}, Lch/qos/logback/core/db/JNDIConnectionSource;->lookupDataSource()Ljavax/sql/DataSource;

    move-result-object v1

    iput-object v1, p0, Lch/qos/logback/core/db/JNDIConnectionSource;->dataSource:Ljavax/sql/DataSource;

    .line 59
    :cond_0
    invoke-virtual {p0}, Lch/qos/logback/core/db/JNDIConnectionSource;->getUser()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring property [user] with value ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lch/qos/logback/core/db/JNDIConnectionSource;->getUser()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] for obtaining a connection from a DataSource."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lch/qos/logback/core/db/JNDIConnectionSource;->addWarn(Ljava/lang/String;)V

    .line 62
    :cond_1
    iget-object v1, p0, Lch/qos/logback/core/db/JNDIConnectionSource;->dataSource:Ljavax/sql/DataSource;

    invoke-interface {v1}, Ljavax/sql/DataSource;->getConnection()Ljava/sql/Connection;

    move-result-object v1
    :try_end_0
    .catch Ljavax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 69
    nop

    .line 71
    return-object v0

    .line 66
    :catch_0
    move-exception v1

    .line 67
    .local v1, "cce":Ljava/lang/ClassCastException;
    const-string v2, "ClassCastException while looking up DataSource."

    invoke-virtual {p0, v2, v1}, Lch/qos/logback/core/db/JNDIConnectionSource;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    new-instance v2, Ljava/sql/SQLException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ClassCastException while looking up DataSource: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 63
    .end local v1    # "cce":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v1

    .line 64
    .local v1, "ne":Ljavax/naming/NamingException;
    const-string v2, "Error while getting data source"

    invoke-virtual {p0, v2, v1}, Lch/qos/logback/core/db/JNDIConnectionSource;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    new-instance v2, Ljava/sql/SQLException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NamingException while looking up DataSource: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljavax/naming/NamingException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getJndiLocation()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lch/qos/logback/core/db/JNDIConnectionSource;->jndiLocation:Ljava/lang/String;

    return-object v0
.end method

.method public setJndiLocation(Ljava/lang/String;)V
    .locals 0
    .param p1, "jndiLocation"    # Ljava/lang/String;

    .line 90
    iput-object p1, p0, Lch/qos/logback/core/db/JNDIConnectionSource;->jndiLocation:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public start()V
    .locals 1

    .line 47
    iget-object v0, p0, Lch/qos/logback/core/db/JNDIConnectionSource;->jndiLocation:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 48
    const-string v0, "No JNDI location specified for JNDIConnectionSource."

    invoke-virtual {p0, v0}, Lch/qos/logback/core/db/JNDIConnectionSource;->addError(Ljava/lang/String;)V

    .line 50
    :cond_0
    invoke-virtual {p0}, Lch/qos/logback/core/db/JNDIConnectionSource;->discoverConnectionProperties()V

    .line 51
    return-void
.end method
