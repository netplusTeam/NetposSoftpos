.class Lcom/sleepycat/je/log/FileDeletionDetector$FileDeleteDetectTask;
.super Ljava/util/TimerTask;
.source "FileDeletionDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/log/FileDeletionDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileDeleteDetectTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sleepycat/je/log/FileDeletionDetector;


# direct methods
.method private constructor <init>(Lcom/sleepycat/je/log/FileDeletionDetector;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/sleepycat/je/log/FileDeletionDetector$FileDeleteDetectTask;->this$0:Lcom/sleepycat/je/log/FileDeletionDetector;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sleepycat/je/log/FileDeletionDetector;Lcom/sleepycat/je/log/FileDeletionDetector$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sleepycat/je/log/FileDeletionDetector;
    .param p2, "x1"    # Lcom/sleepycat/je/log/FileDeletionDetector$1;

    .line 162
    invoke-direct {p0, p1}, Lcom/sleepycat/je/log/FileDeletionDetector$FileDeleteDetectTask;-><init>(Lcom/sleepycat/je/log/FileDeletionDetector;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 164
    const/4 v0, 0x0

    .line 166
    .local v0, "success":Z
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/je/log/FileDeletionDetector$FileDeleteDetectTask;->this$0:Lcom/sleepycat/je/log/FileDeletionDetector;

    invoke-static {v1}, Lcom/sleepycat/je/log/FileDeletionDetector;->access$100(Lcom/sleepycat/je/log/FileDeletionDetector;)V
    :try_end_0
    .catch Lcom/sleepycat/je/EnvironmentFailureException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    const/4 v0, 0x1

    .line 211
    if-nez v0, :cond_2

    .line 213
    :try_start_1
    iget-object v1, p0, Lcom/sleepycat/je/log/FileDeletionDetector$FileDeleteDetectTask;->this$0:Lcom/sleepycat/je/log/FileDeletionDetector;

    invoke-virtual {v1}, Lcom/sleepycat/je/log/FileDeletionDetector;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 214
    :catch_0
    move-exception v1

    .line 215
    .local v1, "ie":Ljava/io/IOException;
    iget-object v2, p0, Lcom/sleepycat/je/log/FileDeletionDetector$FileDeleteDetectTask;->this$0:Lcom/sleepycat/je/log/FileDeletionDetector;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/sleepycat/je/log/FileDeletionDetector;->access$300(Lcom/sleepycat/je/log/FileDeletionDetector;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 216
    .end local v1    # "ie":Ljava/io/IOException;
    :goto_0
    goto :goto_3

    .line 211
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 205
    :catch_1
    move-exception v1

    .line 209
    .local v1, "e":Ljava/lang/Error;
    :try_start_2
    iget-object v2, p0, Lcom/sleepycat/je/log/FileDeletionDetector$FileDeleteDetectTask;->this$0:Lcom/sleepycat/je/log/FileDeletionDetector;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/sleepycat/je/log/FileDeletionDetector;->access$300(Lcom/sleepycat/je/log/FileDeletionDetector;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 211
    .end local v1    # "e":Ljava/lang/Error;
    if-nez v0, :cond_2

    .line 213
    :try_start_3
    iget-object v1, p0, Lcom/sleepycat/je/log/FileDeletionDetector$FileDeleteDetectTask;->this$0:Lcom/sleepycat/je/log/FileDeletionDetector;

    invoke-virtual {v1}, Lcom/sleepycat/je/log/FileDeletionDetector;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 175
    :catch_2
    move-exception v1

    .line 202
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4
    iget-object v2, p0, Lcom/sleepycat/je/log/FileDeletionDetector$FileDeleteDetectTask;->this$0:Lcom/sleepycat/je/log/FileDeletionDetector;

    invoke-static {v2}, Lcom/sleepycat/je/log/FileDeletionDetector;->access$200(Lcom/sleepycat/je/log/FileDeletionDetector;)Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isValid()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sleepycat/je/log/FileDeletionDetector$FileDeleteDetectTask;->this$0:Lcom/sleepycat/je/log/FileDeletionDetector;

    invoke-static {v2}, Lcom/sleepycat/je/log/FileDeletionDetector;->access$200(Lcom/sleepycat/je/log/FileDeletionDetector;)Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isClosing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 203
    iget-object v2, p0, Lcom/sleepycat/je/log/FileDeletionDetector$FileDeleteDetectTask;->this$0:Lcom/sleepycat/je/log/FileDeletionDetector;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/sleepycat/je/log/FileDeletionDetector;->access$300(Lcom/sleepycat/je/log/FileDeletionDetector;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 211
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    if-nez v0, :cond_2

    .line 213
    :try_start_5
    iget-object v1, p0, Lcom/sleepycat/je/log/FileDeletionDetector$FileDeleteDetectTask;->this$0:Lcom/sleepycat/je/log/FileDeletionDetector;

    invoke-virtual {v1}, Lcom/sleepycat/je/log/FileDeletionDetector;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    .line 211
    :goto_1
    if-nez v0, :cond_1

    .line 213
    :try_start_6
    iget-object v2, p0, Lcom/sleepycat/je/log/FileDeletionDetector$FileDeleteDetectTask;->this$0:Lcom/sleepycat/je/log/FileDeletionDetector;

    invoke-virtual {v2}, Lcom/sleepycat/je/log/FileDeletionDetector;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 216
    goto :goto_2

    .line 214
    :catch_3
    move-exception v2

    .line 215
    .local v2, "ie":Ljava/io/IOException;
    iget-object v3, p0, Lcom/sleepycat/je/log/FileDeletionDetector$FileDeleteDetectTask;->this$0:Lcom/sleepycat/je/log/FileDeletionDetector;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/sleepycat/je/log/FileDeletionDetector;->access$300(Lcom/sleepycat/je/log/FileDeletionDetector;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 216
    .end local v2    # "ie":Ljava/io/IOException;
    :cond_1
    :goto_2
    throw v1

    .line 168
    :catch_4
    move-exception v1

    .line 211
    if-nez v0, :cond_2

    .line 213
    :try_start_7
    iget-object v1, p0, Lcom/sleepycat/je/log/FileDeletionDetector$FileDeleteDetectTask;->this$0:Lcom/sleepycat/je/log/FileDeletionDetector;

    invoke-virtual {v1}, Lcom/sleepycat/je/log/FileDeletionDetector;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_0

    .line 219
    :cond_2
    :goto_3
    return-void
.end method
