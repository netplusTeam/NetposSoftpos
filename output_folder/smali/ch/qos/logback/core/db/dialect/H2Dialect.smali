.class public Lch/qos/logback/core/db/dialect/H2Dialect;
.super Ljava/lang/Object;
.source "H2Dialect.java"

# interfaces
.implements Lch/qos/logback/core/db/dialect/SQLDialect;


# static fields
.field public static final SELECT_CURRVAL:Ljava/lang/String; = "CALL IDENTITY()"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSelectInsertId()Ljava/lang/String;
    .locals 1

    .line 25
    const-string v0, "CALL IDENTITY()"

    return-object v0
.end method
