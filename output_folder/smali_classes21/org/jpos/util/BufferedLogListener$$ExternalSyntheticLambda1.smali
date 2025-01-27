.class public final synthetic Lorg/jpos/util/BufferedLogListener$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/jpos/util/LogListener;

.field public final synthetic f$1:Lorg/jpos/util/LogEvent;


# direct methods
.method public synthetic constructor <init>(Lorg/jpos/util/LogListener;Lorg/jpos/util/LogEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jpos/util/BufferedLogListener$$ExternalSyntheticLambda1;->f$0:Lorg/jpos/util/LogListener;

    iput-object p2, p0, Lorg/jpos/util/BufferedLogListener$$ExternalSyntheticLambda1;->f$1:Lorg/jpos/util/LogEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/jpos/util/BufferedLogListener$$ExternalSyntheticLambda1;->f$0:Lorg/jpos/util/LogListener;

    iget-object v1, p0, Lorg/jpos/util/BufferedLogListener$$ExternalSyntheticLambda1;->f$1:Lorg/jpos/util/LogEvent;

    invoke-static {v0, v1}, Lorg/jpos/util/BufferedLogListener;->lambda$addListener$0(Lorg/jpos/util/LogListener;Lorg/jpos/util/LogEvent;)V

    return-void
.end method
