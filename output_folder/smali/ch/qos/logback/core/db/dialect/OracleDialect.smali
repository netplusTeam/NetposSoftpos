.class public Lch/qos/logback/core/db/dialect/OracleDialect;
.super Ljava/lang/Object;
.source "OracleDialect.java"

# interfaces
.implements Lch/qos/logback/core/db/dialect/SQLDialect;


# static fields
.field public static final SELECT_CURRVAL:Ljava/lang/String; = "SELECT logging_event_id_seq.currval from dual"


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
    const-string v0, "SELECT logging_event_id_seq.currval from dual"

    return-object v0
.end method
