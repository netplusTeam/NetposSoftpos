.class final Lorg/jpos/util/DailyLogListener$DailyRotate;
.super Lorg/jpos/util/RotateLogListener$Rotate;
.source "DailyLogListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jpos/util/DailyLogListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "DailyRotate"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jpos/util/DailyLogListener;


# direct methods
.method constructor <init>(Lorg/jpos/util/DailyLogListener;)V
    .locals 0
    .param p1, "this$0"    # Lorg/jpos/util/DailyLogListener;

    .line 511
    iput-object p1, p0, Lorg/jpos/util/DailyLogListener$DailyRotate;->this$0:Lorg/jpos/util/DailyLogListener;

    invoke-direct {p0, p1}, Lorg/jpos/util/RotateLogListener$Rotate;-><init>(Lorg/jpos/util/RotateLogListener;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 513
    invoke-super {p0}, Lorg/jpos/util/RotateLogListener$Rotate;->run()V

    .line 515
    :try_start_0
    iget-object v0, p0, Lorg/jpos/util/DailyLogListener$DailyRotate;->this$0:Lorg/jpos/util/DailyLogListener;

    invoke-virtual {v0}, Lorg/jpos/util/DailyLogListener;->deleteOldLogs()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 518
    goto :goto_0

    .line 516
    :catch_0
    move-exception v0

    .line 517
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lorg/jpos/util/DailyLogListener$DailyRotate;->this$0:Lorg/jpos/util/DailyLogListener;

    const-string v2, "error deleting old logs"

    invoke-virtual {v1, v2, v0}, Lorg/jpos/util/DailyLogListener;->logDebugEx(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 519
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    iget-object v0, p0, Lorg/jpos/util/DailyLogListener$DailyRotate;->this$0:Lorg/jpos/util/DailyLogListener;

    invoke-virtual {v0}, Lorg/jpos/util/DailyLogListener;->getDateFmt()Ljava/text/DateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-virtual {p0}, Lorg/jpos/util/DailyLogListener$DailyRotate;->scheduledExecutionTime()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jpos/util/DailyLogListener;->setLastDate(Ljava/lang/String;)V

    .line 520
    return-void
.end method
