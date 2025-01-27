.class Lcom/sleepycat/je/log/StatsFileReader$CheckpointInfoCSVFormatter;
.super Lcom/sleepycat/je/log/StatsFileReader$CheckpointInfoTextFormatter;
.source "StatsFileReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/log/StatsFileReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheckpointInfoCSVFormatter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sleepycat/je/log/StatsFileReader;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/log/StatsFileReader;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/log/StatsFileReader;

    .line 237
    iput-object p1, p0, Lcom/sleepycat/je/log/StatsFileReader$CheckpointInfoCSVFormatter;->this$0:Lcom/sleepycat/je/log/StatsFileReader;

    invoke-direct {p0, p1}, Lcom/sleepycat/je/log/StatsFileReader$CheckpointInfoTextFormatter;-><init>(Lcom/sleepycat/je/log/StatsFileReader;)V

    .line 238
    return-void
.end method


# virtual methods
.method format(I)Ljava/lang/String;
    .locals 2
    .param p1, "value"    # I

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method format(J)Ljava/lang/String;
    .locals 2
    .param p1, "value"    # J

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method format(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
