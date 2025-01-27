.class public final synthetic Lorg/jpos/q2/cli/DUMPMETRICS$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jpos/q2/cli/DUMPMETRICS$$ExternalSyntheticLambda0;->f$0:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/jpos/q2/cli/DUMPMETRICS$$ExternalSyntheticLambda0;->f$0:Ljava/io/File;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lorg/jpos/q2/cli/DUMPMETRICS;->lambda$dumpMetrics$0(Ljava/io/File;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
