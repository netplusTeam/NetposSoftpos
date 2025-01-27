.class public Lch/qos/logback/classic/joran/action/EvaluatorAction;
.super Lch/qos/logback/core/joran/action/AbstractEventEvaluatorAction;
.source "EvaluatorAction.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lch/qos/logback/core/joran/action/AbstractEventEvaluatorAction;-><init>()V

    return-void
.end method


# virtual methods
.method protected defaultClassName()Ljava/lang/String;
    .locals 1

    .line 21
    const-class v0, Lch/qos/logback/classic/boolex/JaninoEventEvaluator;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
