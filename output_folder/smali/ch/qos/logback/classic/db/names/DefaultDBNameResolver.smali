.class public Lch/qos/logback/classic/db/names/DefaultDBNameResolver;
.super Ljava/lang/Object;
.source "DefaultDBNameResolver.java"

# interfaces
.implements Lch/qos/logback/classic/db/names/DBNameResolver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getColumnName(Ljava/lang/Enum;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Enum<",
            "*>;>(TN;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 31
    .local p1, "columnName":Ljava/lang/Enum;, "TN;"
    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTableName(Ljava/lang/Enum;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Enum<",
            "*>;>(TN;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 27
    .local p1, "tableName":Ljava/lang/Enum;, "TN;"
    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
