.class public final synthetic Lorg/jpos/util/DailyLogListener$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/jpos/util/RotateLogListener$RotationAlgo;


# instance fields
.field public final synthetic f$0:Lorg/jpos/util/DailyLogListener;


# direct methods
.method public synthetic constructor <init>(Lorg/jpos/util/DailyLogListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jpos/util/DailyLogListener$$ExternalSyntheticLambda3;->f$0:Lorg/jpos/util/DailyLogListener;

    return-void
.end method


# virtual methods
.method public final rotate()V
    .locals 1

    iget-object v0, p0, Lorg/jpos/util/DailyLogListener$$ExternalSyntheticLambda3;->f$0:Lorg/jpos/util/DailyLogListener;

    invoke-virtual {v0}, Lorg/jpos/util/DailyLogListener;->lambda$setConfiguration$1$org-jpos-util-DailyLogListener()V

    return-void
.end method
