.class public final synthetic Lorg/jpos/util/DailyLogListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiPredicate;


# instance fields
.field public final synthetic f$0:Lorg/jpos/util/DailyLogListener;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lorg/jpos/util/DailyLogListener;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jpos/util/DailyLogListener$$ExternalSyntheticLambda0;->f$0:Lorg/jpos/util/DailyLogListener;

    iput-wide p2, p0, Lorg/jpos/util/DailyLogListener$$ExternalSyntheticLambda0;->f$1:J

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Lorg/jpos/util/DailyLogListener$$ExternalSyntheticLambda0;->f$0:Lorg/jpos/util/DailyLogListener;

    iget-wide v1, p0, Lorg/jpos/util/DailyLogListener$$ExternalSyntheticLambda0;->f$1:J

    check-cast p1, Ljava/nio/file/Path;

    check-cast p2, Ljava/nio/file/attribute/BasicFileAttributes;

    invoke-virtual {v0, v1, v2, p1, p2}, Lorg/jpos/util/DailyLogListener;->lambda$deleteOldLogs$2$org-jpos-util-DailyLogListener(JLjava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Z

    move-result p1

    return p1
.end method
