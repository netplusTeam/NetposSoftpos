.class public final synthetic Lorg/jpos/util/DailyLogListener$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/jpos/util/RotateLogListener$ScheduleTimer;


# instance fields
.field public final synthetic f$0:Lorg/jpos/util/DailyLogListener;

.field public final synthetic f$1:Lorg/jpos/core/Configuration;


# direct methods
.method public synthetic constructor <init>(Lorg/jpos/util/DailyLogListener;Lorg/jpos/core/Configuration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jpos/util/DailyLogListener$$ExternalSyntheticLambda2;->f$0:Lorg/jpos/util/DailyLogListener;

    iput-object p2, p0, Lorg/jpos/util/DailyLogListener$$ExternalSyntheticLambda2;->f$1:Lorg/jpos/core/Configuration;

    return-void
.end method


# virtual methods
.method public final schedule()V
    .locals 2

    iget-object v0, p0, Lorg/jpos/util/DailyLogListener$$ExternalSyntheticLambda2;->f$0:Lorg/jpos/util/DailyLogListener;

    iget-object v1, p0, Lorg/jpos/util/DailyLogListener$$ExternalSyntheticLambda2;->f$1:Lorg/jpos/core/Configuration;

    invoke-virtual {v0, v1}, Lorg/jpos/util/DailyLogListener;->lambda$setConfiguration$0$org-jpos-util-DailyLogListener(Lorg/jpos/core/Configuration;)V

    return-void
.end method
