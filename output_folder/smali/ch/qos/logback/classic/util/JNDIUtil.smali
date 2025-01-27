.class public Lch/qos/logback/classic/util/JNDIUtil;
.super Ljava/lang/Object;
.source "JNDIUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInitialContext()Ljavax/naming/Context;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 30
    new-instance v0, Ljavax/naming/InitialContext;

    invoke-direct {v0}, Ljavax/naming/InitialContext;-><init>()V

    return-object v0
.end method

.method public static lookup(Ljavax/naming/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "ctx"    # Ljavax/naming/Context;
    .param p1, "name"    # Ljava/lang/String;

    .line 34
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 35
    return-object v0

    .line 38
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Ljavax/naming/Context;->lookup(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 39
    .local v1, "lookup":Ljava/lang/Object;
    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljavax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    .line 40
    .end local v1    # "lookup":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 41
    .local v1, "e":Ljavax/naming/NamingException;
    return-object v0
.end method
