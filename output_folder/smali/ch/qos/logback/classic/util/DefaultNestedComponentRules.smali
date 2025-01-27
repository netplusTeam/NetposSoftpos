.class public Lch/qos/logback/classic/util/DefaultNestedComponentRules;
.super Ljava/lang/Object;
.source "DefaultNestedComponentRules.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addDefaultNestedComponentRegistryRules(Lch/qos/logback/core/joran/spi/DefaultNestedComponentRegistry;)V
    .locals 3
    .param p0, "registry"    # Lch/qos/logback/core/joran/spi/DefaultNestedComponentRegistry;

    .line 35
    const-class v0, Lch/qos/logback/core/AppenderBase;

    const-class v1, Lch/qos/logback/classic/PatternLayout;

    const-string v2, "layout"

    invoke-virtual {p0, v0, v2, v1}, Lch/qos/logback/core/joran/spi/DefaultNestedComponentRegistry;->add(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    .line 36
    const-class v0, Lch/qos/logback/core/UnsynchronizedAppenderBase;

    const-class v1, Lch/qos/logback/classic/PatternLayout;

    invoke-virtual {p0, v0, v2, v1}, Lch/qos/logback/core/joran/spi/DefaultNestedComponentRegistry;->add(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    .line 38
    const-class v0, Lch/qos/logback/core/AppenderBase;

    const-class v1, Lch/qos/logback/classic/encoder/PatternLayoutEncoder;

    const-string v2, "encoder"

    invoke-virtual {p0, v0, v2, v1}, Lch/qos/logback/core/joran/spi/DefaultNestedComponentRegistry;->add(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    .line 39
    const-class v0, Lch/qos/logback/core/UnsynchronizedAppenderBase;

    const-class v1, Lch/qos/logback/classic/encoder/PatternLayoutEncoder;

    invoke-virtual {p0, v0, v2, v1}, Lch/qos/logback/core/joran/spi/DefaultNestedComponentRegistry;->add(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    .line 41
    const-class v0, Lch/qos/logback/core/filter/EvaluatorFilter;

    const-class v1, Lch/qos/logback/classic/boolex/JaninoEventEvaluator;

    const-string v2, "evaluator"

    invoke-virtual {p0, v0, v2, v1}, Lch/qos/logback/core/joran/spi/DefaultNestedComponentRegistry;->add(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    .line 43
    invoke-static {p0}, Lch/qos/logback/core/net/ssl/SSLNestedComponentRegistryRules;->addDefaultNestedComponentRegistryRules(Lch/qos/logback/core/joran/spi/DefaultNestedComponentRegistry;)V

    .line 44
    return-void
.end method
