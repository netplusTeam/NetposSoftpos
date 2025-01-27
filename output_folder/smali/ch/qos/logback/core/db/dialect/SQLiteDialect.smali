.class public Lch/qos/logback/core/db/dialect/SQLiteDialect;
.super Ljava/lang/Object;
.source "SQLiteDialect.java"

# interfaces
.implements Lch/qos/logback/core/db/dialect/SQLDialect;


# static fields
.field public static final SELECT_CURRVAL:Ljava/lang/String; = "SELECT last_insert_rowid();"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSelectInsertId()Ljava/lang/String;
    .locals 1

    .line 28
    const-string v0, "SELECT last_insert_rowid();"

    return-object v0
.end method
