.class Lch/qos/logback/core/joran/conditional/ThenActionState;
.super Ljava/lang/Object;
.source "ThenOrElseActionBase.java"

# interfaces
.implements Lch/qos/logback/core/joran/event/InPlayListener;


# instance fields
.field eventList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lch/qos/logback/core/joran/event/SaxEvent;",
            ">;"
        }
    .end annotation
.end field

.field isRegistered:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lch/qos/logback/core/joran/conditional/ThenActionState;->eventList:Ljava/util/List;

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/qos/logback/core/joran/conditional/ThenActionState;->isRegistered:Z

    return-void
.end method


# virtual methods
.method public inPlay(Lch/qos/logback/core/joran/event/SaxEvent;)V
    .locals 1
    .param p1, "event"    # Lch/qos/logback/core/joran/event/SaxEvent;

    .line 88
    iget-object v0, p0, Lch/qos/logback/core/joran/conditional/ThenActionState;->eventList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    return-void
.end method
