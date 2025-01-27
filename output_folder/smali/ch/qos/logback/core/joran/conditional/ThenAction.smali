.class public Lch/qos/logback/core/joran/conditional/ThenAction;
.super Lch/qos/logback/core/joran/conditional/ThenOrElseActionBase;
.source "ThenAction.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lch/qos/logback/core/joran/conditional/ThenOrElseActionBase;-><init>()V

    return-void
.end method


# virtual methods
.method registerEventList(Lch/qos/logback/core/joran/conditional/IfAction;Ljava/util/List;)V
    .locals 0
    .param p1, "ifAction"    # Lch/qos/logback/core/joran/conditional/IfAction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/joran/conditional/IfAction;",
            "Ljava/util/List<",
            "Lch/qos/logback/core/joran/event/SaxEvent;",
            ">;)V"
        }
    .end annotation

    .line 24
    .local p2, "eventList":Ljava/util/List;, "Ljava/util/List<Lch/qos/logback/core/joran/event/SaxEvent;>;"
    invoke-virtual {p1, p2}, Lch/qos/logback/core/joran/conditional/IfAction;->setThenSaxEventList(Ljava/util/List;)V

    .line 25
    return-void
.end method
