.class Lcom/sleepycat/je/log/StatsFileReader$CheckpointInfoTextFormatter;
.super Ljava/lang/Object;
.source "StatsFileReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/log/StatsFileReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheckpointInfoTextFormatter"
.end annotation


# instance fields
.field private form:Ljava/text/NumberFormat;

.field final synthetic this$0:Lcom/sleepycat/je/log/StatsFileReader;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/log/StatsFileReader;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/log/StatsFileReader;

    .line 214
    iput-object p1, p0, Lcom/sleepycat/je/log/StatsFileReader$CheckpointInfoTextFormatter;->this$0:Lcom/sleepycat/je/log/StatsFileReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    return-void
.end method

.method constructor <init>(Lcom/sleepycat/je/log/StatsFileReader;Ljava/text/NumberFormat;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/log/StatsFileReader;
    .param p2, "form"    # Ljava/text/NumberFormat;

    .line 217
    iput-object p1, p0, Lcom/sleepycat/je/log/StatsFileReader$CheckpointInfoTextFormatter;->this$0:Lcom/sleepycat/je/log/StatsFileReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    iput-object p2, p0, Lcom/sleepycat/je/log/StatsFileReader$CheckpointInfoTextFormatter;->form:Ljava/text/NumberFormat;

    .line 219
    return-void
.end method


# virtual methods
.method format(I)Ljava/lang/String;
    .locals 4
    .param p1, "value"    # I

    .line 226
    iget-object v0, p0, Lcom/sleepycat/je/log/StatsFileReader$CheckpointInfoTextFormatter;->this$0:Lcom/sleepycat/je/log/StatsFileReader;

    iget-object v1, p0, Lcom/sleepycat/je/log/StatsFileReader$CheckpointInfoTextFormatter;->form:Ljava/text/NumberFormat;

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sleepycat/je/log/StatsFileReader;->access$000(Lcom/sleepycat/je/log/StatsFileReader;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method format(J)Ljava/lang/String;
    .locals 2
    .param p1, "value"    # J

    .line 230
    iget-object v0, p0, Lcom/sleepycat/je/log/StatsFileReader$CheckpointInfoTextFormatter;->this$0:Lcom/sleepycat/je/log/StatsFileReader;

    iget-object v1, p0, Lcom/sleepycat/je/log/StatsFileReader$CheckpointInfoTextFormatter;->form:Ljava/text/NumberFormat;

    invoke-virtual {v1, p1, p2}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sleepycat/je/log/StatsFileReader;->access$000(Lcom/sleepycat/je/log/StatsFileReader;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method format(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 222
    iget-object v0, p0, Lcom/sleepycat/je/log/StatsFileReader$CheckpointInfoTextFormatter;->this$0:Lcom/sleepycat/je/log/StatsFileReader;

    invoke-static {v0, p1}, Lcom/sleepycat/je/log/StatsFileReader;->access$000(Lcom/sleepycat/je/log/StatsFileReader;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
