.class synthetic Lch/qos/logback/core/joran/action/NestedBasicPropertyIA$1;
.super Ljava/lang/Object;
.source "NestedBasicPropertyIA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/qos/logback/core/joran/action/NestedBasicPropertyIA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$ch$qos$logback$core$util$AggregationType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 66
    invoke-static {}, Lch/qos/logback/core/util/AggregationType;->values()[Lch/qos/logback/core/util/AggregationType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lch/qos/logback/core/joran/action/NestedBasicPropertyIA$1;->$SwitchMap$ch$qos$logback$core$util$AggregationType:[I

    :try_start_0
    sget-object v1, Lch/qos/logback/core/util/AggregationType;->NOT_FOUND:Lch/qos/logback/core/util/AggregationType;

    invoke-virtual {v1}, Lch/qos/logback/core/util/AggregationType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    :try_start_1
    sget-object v0, Lch/qos/logback/core/joran/action/NestedBasicPropertyIA$1;->$SwitchMap$ch$qos$logback$core$util$AggregationType:[I

    sget-object v1, Lch/qos/logback/core/util/AggregationType;->AS_COMPLEX_PROPERTY:Lch/qos/logback/core/util/AggregationType;

    invoke-virtual {v1}, Lch/qos/logback/core/util/AggregationType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    :try_start_2
    sget-object v0, Lch/qos/logback/core/joran/action/NestedBasicPropertyIA$1;->$SwitchMap$ch$qos$logback$core$util$AggregationType:[I

    sget-object v1, Lch/qos/logback/core/util/AggregationType;->AS_COMPLEX_PROPERTY_COLLECTION:Lch/qos/logback/core/util/AggregationType;

    invoke-virtual {v1}, Lch/qos/logback/core/util/AggregationType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    :goto_2
    :try_start_3
    sget-object v0, Lch/qos/logback/core/joran/action/NestedBasicPropertyIA$1;->$SwitchMap$ch$qos$logback$core$util$AggregationType:[I

    sget-object v1, Lch/qos/logback/core/util/AggregationType;->AS_BASIC_PROPERTY:Lch/qos/logback/core/util/AggregationType;

    invoke-virtual {v1}, Lch/qos/logback/core/util/AggregationType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    :goto_3
    :try_start_4
    sget-object v0, Lch/qos/logback/core/joran/action/NestedBasicPropertyIA$1;->$SwitchMap$ch$qos$logback$core$util$AggregationType:[I

    sget-object v1, Lch/qos/logback/core/util/AggregationType;->AS_BASIC_PROPERTY_COLLECTION:Lch/qos/logback/core/util/AggregationType;

    invoke-virtual {v1}, Lch/qos/logback/core/util/AggregationType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    :goto_4
    return-void
.end method
