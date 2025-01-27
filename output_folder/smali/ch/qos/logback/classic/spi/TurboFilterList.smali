.class public final Lch/qos/logback/classic/spi/TurboFilterList;
.super Ljava/util/concurrent/CopyOnWriteArrayList;
.source "TurboFilterList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/CopyOnWriteArrayList<",
        "Lch/qos/logback/classic/turbo/TurboFilter;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    return-void
.end method


# virtual methods
.method public getTurboFilterChainDecision(Lorg/slf4j/Marker;Lch/qos/logback/classic/Logger;Lch/qos/logback/classic/Level;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)Lch/qos/logback/core/spi/FilterReply;
    .locals 13
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "logger"    # Lch/qos/logback/classic/Logger;
    .param p3, "level"    # Lch/qos/logback/classic/Level;
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "params"    # [Ljava/lang/Object;
    .param p6, "t"    # Ljava/lang/Throwable;

    .line 42
    invoke-virtual {p0}, Lch/qos/logback/classic/spi/TurboFilterList;->size()I

    move-result v1

    .line 46
    .local v1, "size":I
    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    .line 48
    const/4 v0, 0x0

    move-object v2, p0

    :try_start_0
    invoke-virtual {p0, v0}, Lch/qos/logback/classic/spi/TurboFilterList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lch/qos/logback/classic/turbo/TurboFilter;

    .line 49
    .local v3, "tf":Lch/qos/logback/classic/turbo/TurboFilter;
    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-virtual/range {v3 .. v9}, Lch/qos/logback/classic/turbo/TurboFilter;->decide(Lorg/slf4j/Marker;Lch/qos/logback/classic/Logger;Lch/qos/logback/classic/Level;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)Lch/qos/logback/core/spi/FilterReply;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 50
    .end local v3    # "tf":Lch/qos/logback/classic/turbo/TurboFilter;
    :catch_0
    move-exception v0

    .line 51
    .local v0, "iobe":Ljava/lang/IndexOutOfBoundsException;
    sget-object v3, Lch/qos/logback/core/spi/FilterReply;->NEUTRAL:Lch/qos/logback/core/spi/FilterReply;

    return-object v3

    .line 55
    .end local v0    # "iobe":Ljava/lang/IndexOutOfBoundsException;
    :cond_0
    move-object v2, p0

    invoke-virtual {p0}, Lch/qos/logback/classic/spi/TurboFilterList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 56
    .local v0, "tfa":[Ljava/lang/Object;
    array-length v3, v0

    .line 57
    .local v3, "len":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_3

    .line 59
    aget-object v5, v0, v4

    check-cast v5, Lch/qos/logback/classic/turbo/TurboFilter;

    .line 60
    .local v5, "tf":Lch/qos/logback/classic/turbo/TurboFilter;
    move-object v6, v5

    move-object v7, p1

    move-object v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    invoke-virtual/range {v6 .. v12}, Lch/qos/logback/classic/turbo/TurboFilter;->decide(Lorg/slf4j/Marker;Lch/qos/logback/classic/Logger;Lch/qos/logback/classic/Level;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)Lch/qos/logback/core/spi/FilterReply;

    move-result-object v6

    .line 61
    .local v6, "r":Lch/qos/logback/core/spi/FilterReply;
    sget-object v7, Lch/qos/logback/core/spi/FilterReply;->DENY:Lch/qos/logback/core/spi/FilterReply;

    if-eq v6, v7, :cond_2

    sget-object v7, Lch/qos/logback/core/spi/FilterReply;->ACCEPT:Lch/qos/logback/core/spi/FilterReply;

    if-ne v6, v7, :cond_1

    goto :goto_1

    .line 57
    .end local v5    # "tf":Lch/qos/logback/classic/turbo/TurboFilter;
    .end local v6    # "r":Lch/qos/logback/core/spi/FilterReply;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 62
    .restart local v5    # "tf":Lch/qos/logback/classic/turbo/TurboFilter;
    .restart local v6    # "r":Lch/qos/logback/core/spi/FilterReply;
    :cond_2
    :goto_1
    return-object v6

    .line 65
    .end local v4    # "i":I
    .end local v5    # "tf":Lch/qos/logback/classic/turbo/TurboFilter;
    .end local v6    # "r":Lch/qos/logback/core/spi/FilterReply;
    :cond_3
    sget-object v4, Lch/qos/logback/core/spi/FilterReply;->NEUTRAL:Lch/qos/logback/core/spi/FilterReply;

    return-object v4
.end method
