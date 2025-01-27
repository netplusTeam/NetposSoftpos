.class public Lch/qos/logback/core/joran/action/IADataForComplexProperty;
.super Ljava/lang/Object;
.source "IADataForComplexProperty.java"


# instance fields
.field final aggregationType:Lch/qos/logback/core/util/AggregationType;

.field final complexPropertyName:Ljava/lang/String;

.field inError:Z

.field private nestedComplexProperty:Ljava/lang/Object;

.field final parentBean:Lch/qos/logback/core/joran/util/PropertySetter;


# direct methods
.method public constructor <init>(Lch/qos/logback/core/joran/util/PropertySetter;Lch/qos/logback/core/util/AggregationType;Ljava/lang/String;)V
    .locals 0
    .param p1, "parentBean"    # Lch/qos/logback/core/joran/util/PropertySetter;
    .param p2, "aggregationType"    # Lch/qos/logback/core/util/AggregationType;
    .param p3, "complexPropertyName"    # Ljava/lang/String;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lch/qos/logback/core/joran/action/IADataForComplexProperty;->parentBean:Lch/qos/logback/core/joran/util/PropertySetter;

    .line 33
    iput-object p2, p0, Lch/qos/logback/core/joran/action/IADataForComplexProperty;->aggregationType:Lch/qos/logback/core/util/AggregationType;

    .line 34
    iput-object p3, p0, Lch/qos/logback/core/joran/action/IADataForComplexProperty;->complexPropertyName:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public getAggregationType()Lch/qos/logback/core/util/AggregationType;
    .locals 1

    .line 38
    iget-object v0, p0, Lch/qos/logback/core/joran/action/IADataForComplexProperty;->aggregationType:Lch/qos/logback/core/util/AggregationType;

    return-object v0
.end method

.method public getComplexPropertyName()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lch/qos/logback/core/joran/action/IADataForComplexProperty;->complexPropertyName:Ljava/lang/String;

    return-object v0
.end method

.method public getNestedComplexProperty()Ljava/lang/Object;
    .locals 1

    .line 42
    iget-object v0, p0, Lch/qos/logback/core/joran/action/IADataForComplexProperty;->nestedComplexProperty:Ljava/lang/Object;

    return-object v0
.end method

.method public setNestedComplexProperty(Ljava/lang/Object;)V
    .locals 0
    .param p1, "nestedComplexProperty"    # Ljava/lang/Object;

    .line 50
    iput-object p1, p0, Lch/qos/logback/core/joran/action/IADataForComplexProperty;->nestedComplexProperty:Ljava/lang/Object;

    .line 51
    return-void
.end method
