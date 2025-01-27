.class public Lch/qos/logback/core/db/dialect/MySQLDialect;
.super Ljava/lang/Object;
.source "MySQLDialect.java"

# interfaces
.implements Lch/qos/logback/core/db/dialect/SQLDialect;


# static fields
.field public static final SELECT_LAST_INSERT_ID:Ljava/lang/String; = "SELECT LAST_INSERT_ID()"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSelectInsertId()Ljava/lang/String;
    .locals 1

    .line 26
    const-string v0, "SELECT LAST_INSERT_ID()"

    return-object v0
.end method
