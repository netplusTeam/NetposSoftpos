.class public Lch/qos/logback/core/db/dialect/SybaseSqlAnywhereDialect;
.super Ljava/lang/Object;
.source "SybaseSqlAnywhereDialect.java"

# interfaces
.implements Lch/qos/logback/core/db/dialect/SQLDialect;


# static fields
.field public static final SELECT_CURRVAL:Ljava/lang/String; = "SELECT @@identity id"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSelectInsertId()Ljava/lang/String;
    .locals 1

    .line 30
    const-string v0, "SELECT @@identity id"

    return-object v0
.end method
