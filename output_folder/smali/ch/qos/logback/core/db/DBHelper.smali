.class public Lch/qos/logback/core/db/DBHelper;
.super Ljava/lang/Object;
.source "DBHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeConnection(Ljava/sql/Connection;)V
    .locals 1
    .param p0, "connection"    # Ljava/sql/Connection;

    .line 27
    if-eqz p0, :cond_0

    .line 29
    :try_start_0
    invoke-interface {p0}, Ljava/sql/Connection;->close()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    goto :goto_0

    .line 30
    :catch_0
    move-exception v0

    .line 35
    :cond_0
    :goto_0
    return-void
.end method

.method public static closeStatement(Ljava/sql/Statement;)V
    .locals 1
    .param p0, "statement"    # Ljava/sql/Statement;

    .line 38
    if-eqz p0, :cond_0

    .line 40
    :try_start_0
    invoke-interface {p0}, Ljava/sql/Statement;->close()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    goto :goto_0

    .line 41
    :catch_0
    move-exception v0

    .line 44
    :cond_0
    :goto_0
    return-void
.end method
