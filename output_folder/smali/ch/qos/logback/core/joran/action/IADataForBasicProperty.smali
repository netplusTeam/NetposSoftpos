.class Lch/qos/logback/core/joran/action/IADataForBasicProperty;
.super Ljava/lang/Object;
.source "IADataForBasicProperty.java"


# instance fields
.field final aggregationType:Lch/qos/logback/core/util/AggregationType;

.field inError:Z

.field final parentBean:Lch/qos/logback/core/joran/util/PropertySetter;

.field final propertyName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lch/qos/logback/core/joran/util/PropertySetter;Lch/qos/logback/core/util/AggregationType;Ljava/lang/String;)V
    .locals 0
    .param p1, "parentBean"    # Lch/qos/logback/core/joran/util/PropertySetter;
    .param p2, "aggregationType"    # Lch/qos/logback/core/util/AggregationType;
    .param p3, "propertyName"    # Ljava/lang/String;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lch/qos/logback/core/joran/action/IADataForBasicProperty;->parentBean:Lch/qos/logback/core/joran/util/PropertySetter;

    .line 32
    iput-object p2, p0, Lch/qos/logback/core/joran/action/IADataForBasicProperty;->aggregationType:Lch/qos/logback/core/util/AggregationType;

    .line 33
    iput-object p3, p0, Lch/qos/logback/core/joran/action/IADataForBasicProperty;->propertyName:Ljava/lang/String;

    .line 34
    return-void
.end method
