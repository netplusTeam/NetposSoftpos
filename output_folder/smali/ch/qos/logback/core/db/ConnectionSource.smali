.class public interface abstract Lch/qos/logback/core/db/ConnectionSource;
.super Ljava/lang/Object;
.source "ConnectionSource.java"

# interfaces
.implements Lch/qos/logback/core/spi/LifeCycle;


# virtual methods
.method public abstract getConnection()Ljava/sql/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract getSQLDialectCode()Lch/qos/logback/core/db/dialect/SQLDialectCode;
.end method

.method public abstract supportsBatchUpdates()Z
.end method

.method public abstract supportsGetGeneratedKeys()Z
.end method
