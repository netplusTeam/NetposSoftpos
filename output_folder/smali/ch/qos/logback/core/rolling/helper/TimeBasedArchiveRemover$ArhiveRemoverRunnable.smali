.class public Lch/qos/logback/core/rolling/helper/TimeBasedArchiveRemover$ArhiveRemoverRunnable;
.super Ljava/lang/Object;
.source "TimeBasedArchiveRemover.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/qos/logback/core/rolling/helper/TimeBasedArchiveRemover;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ArhiveRemoverRunnable"
.end annotation


# instance fields
.field now:Ljava/util/Date;

.field final synthetic this$0:Lch/qos/logback/core/rolling/helper/TimeBasedArchiveRemover;


# direct methods
.method constructor <init>(Lch/qos/logback/core/rolling/helper/TimeBasedArchiveRemover;Ljava/util/Date;)V
    .locals 0
    .param p2, "now"    # Ljava/util/Date;

    .line 236
    iput-object p1, p0, Lch/qos/logback/core/rolling/helper/TimeBasedArchiveRemover$ArhiveRemoverRunnable;->this$0:Lch/qos/logback/core/rolling/helper/TimeBasedArchiveRemover;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    iput-object p2, p0, Lch/qos/logback/core/rolling/helper/TimeBasedArchiveRemover$ArhiveRemoverRunnable;->now:Ljava/util/Date;

    .line 238
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 242
    iget-object v0, p0, Lch/qos/logback/core/rolling/helper/TimeBasedArchiveRemover$ArhiveRemoverRunnable;->this$0:Lch/qos/logback/core/rolling/helper/TimeBasedArchiveRemover;

    iget-object v1, p0, Lch/qos/logback/core/rolling/helper/TimeBasedArchiveRemover$ArhiveRemoverRunnable;->now:Ljava/util/Date;

    invoke-virtual {v0, v1}, Lch/qos/logback/core/rolling/helper/TimeBasedArchiveRemover;->clean(Ljava/util/Date;)V

    .line 243
    iget-object v0, p0, Lch/qos/logback/core/rolling/helper/TimeBasedArchiveRemover$ArhiveRemoverRunnable;->this$0:Lch/qos/logback/core/rolling/helper/TimeBasedArchiveRemover;

    invoke-static {v0}, Lch/qos/logback/core/rolling/helper/TimeBasedArchiveRemover;->access$000(Lch/qos/logback/core/rolling/helper/TimeBasedArchiveRemover;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lch/qos/logback/core/rolling/helper/TimeBasedArchiveRemover$ArhiveRemoverRunnable;->this$0:Lch/qos/logback/core/rolling/helper/TimeBasedArchiveRemover;

    invoke-static {v0}, Lch/qos/logback/core/rolling/helper/TimeBasedArchiveRemover;->access$000(Lch/qos/logback/core/rolling/helper/TimeBasedArchiveRemover;)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 244
    iget-object v0, p0, Lch/qos/logback/core/rolling/helper/TimeBasedArchiveRemover$ArhiveRemoverRunnable;->this$0:Lch/qos/logback/core/rolling/helper/TimeBasedArchiveRemover;

    iget-object v1, p0, Lch/qos/logback/core/rolling/helper/TimeBasedArchiveRemover$ArhiveRemoverRunnable;->now:Ljava/util/Date;

    invoke-virtual {v0, v1}, Lch/qos/logback/core/rolling/helper/TimeBasedArchiveRemover;->capTotalSize(Ljava/util/Date;)V

    .line 246
    :cond_0
    return-void
.end method
