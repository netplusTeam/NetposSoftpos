.class public Lch/qos/logback/core/joran/spi/NoAutoStartUtil;
.super Ljava/lang/Object;
.source "NoAutoStartUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static notMarkedWithNoAutoStart(Ljava/lang/Object;)Z
    .locals 3
    .param p0, "o"    # Ljava/lang/Object;

    .line 26
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 27
    return v0

    .line 29
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 30
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v2, Lch/qos/logback/core/joran/spi/NoAutoStart;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lch/qos/logback/core/joran/spi/NoAutoStart;

    .line 31
    .local v2, "a":Lch/qos/logback/core/joran/spi/NoAutoStart;
    if-nez v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method
