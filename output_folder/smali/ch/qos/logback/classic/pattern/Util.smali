.class public Lch/qos/logback/classic/pattern/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field static cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lch/qos/logback/classic/spi/ClassPackagingData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lch/qos/logback/classic/pattern/Util;->cache:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static match(Lorg/slf4j/Marker;[Lorg/slf4j/Marker;)Z
    .locals 3
    .param p0, "marker"    # Lorg/slf4j/Marker;
    .param p1, "markerArray"    # [Lorg/slf4j/Marker;

    .line 32
    if-eqz p1, :cond_2

    .line 38
    array-length v0, p1

    .line 39
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 42
    aget-object v2, p1, v1

    invoke-interface {p0, v2}, Lorg/slf4j/Marker;->contains(Lorg/slf4j/Marker;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 43
    const/4 v2, 0x1

    return v2

    .line 39
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 46
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return v1

    .line 33
    .end local v0    # "size":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "markerArray should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
