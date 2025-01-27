.class Lcom/sleepycat/je/cleaner/DataEraser$TestEvent;
.super Ljava/lang/Object;
.source "DataEraser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/cleaner/DataEraser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TestEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/cleaner/DataEraser$TestEvent$Type;
    }
.end annotation


# instance fields
.field final completionTime:J

.field final endTime:J

.field final filesCompleted:Ljava/util/NavigableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableSet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final filesRemaining:Ljava/util/NavigableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableSet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final startTime:J

.field final type:Lcom/sleepycat/je/cleaner/DataEraser$TestEvent$Type;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/cleaner/DataEraser$TestEvent$Type;Lcom/sleepycat/je/cleaner/DataEraser;)V
    .locals 2
    .param p1, "type"    # Lcom/sleepycat/je/cleaner/DataEraser$TestEvent$Type;
    .param p2, "eraser"    # Lcom/sleepycat/je/cleaner/DataEraser;

    .line 2243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2245
    iput-object p1, p0, Lcom/sleepycat/je/cleaner/DataEraser$TestEvent;->type:Lcom/sleepycat/je/cleaner/DataEraser$TestEvent$Type;

    .line 2246
    invoke-static {p2}, Lcom/sleepycat/je/cleaner/DataEraser;->access$1100(Lcom/sleepycat/je/cleaner/DataEraser;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/je/cleaner/DataEraser$TestEvent;->startTime:J

    .line 2247
    invoke-static {p2}, Lcom/sleepycat/je/cleaner/DataEraser;->access$1200(Lcom/sleepycat/je/cleaner/DataEraser;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/je/cleaner/DataEraser$TestEvent;->endTime:J

    .line 2248
    invoke-static {p2}, Lcom/sleepycat/je/cleaner/DataEraser;->access$1300(Lcom/sleepycat/je/cleaner/DataEraser;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/je/cleaner/DataEraser$TestEvent;->completionTime:J

    .line 2249
    new-instance v0, Ljava/util/TreeSet;

    invoke-static {p2}, Lcom/sleepycat/je/cleaner/DataEraser;->access$1400(Lcom/sleepycat/je/cleaner/DataEraser;)Ljava/util/NavigableSet;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/SortedSet;)V

    iput-object v0, p0, Lcom/sleepycat/je/cleaner/DataEraser$TestEvent;->filesCompleted:Ljava/util/NavigableSet;

    .line 2250
    new-instance v0, Ljava/util/TreeSet;

    invoke-static {p2}, Lcom/sleepycat/je/cleaner/DataEraser;->access$1500(Lcom/sleepycat/je/cleaner/DataEraser;)Ljava/util/NavigableSet;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/SortedSet;)V

    iput-object v0, p0, Lcom/sleepycat/je/cleaner/DataEraser$TestEvent;->filesRemaining:Ljava/util/NavigableSet;

    .line 2251
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 2255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sleepycat/je/cleaner/DataEraser$TestEvent;->type:Lcom/sleepycat/je/cleaner/DataEraser$TestEvent$Type;

    invoke-virtual {v1}, Lcom/sleepycat/je/cleaner/DataEraser$TestEvent$Type;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " startTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sleepycat/je/cleaner/DataEraser$TestEvent;->startTime:J

    .line 2256
    invoke-static {v1, v2}, Lcom/sleepycat/je/cleaner/DataEraser;->access$1600(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " endTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sleepycat/je/cleaner/DataEraser$TestEvent;->endTime:J

    .line 2257
    invoke-static {v1, v2}, Lcom/sleepycat/je/cleaner/DataEraser;->access$1600(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " completionTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sleepycat/je/cleaner/DataEraser$TestEvent;->completionTime:J

    .line 2258
    invoke-static {v1, v2}, Lcom/sleepycat/je/cleaner/DataEraser;->access$1600(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " filesCompleted=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/cleaner/DataEraser$TestEvent;->filesCompleted:Ljava/util/NavigableSet;

    .line 2259
    invoke-static {v1}, Lcom/sleepycat/utilint/FormatUtil;->asHexString(Ljava/util/SortedSet;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] filesRemaining=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/cleaner/DataEraser$TestEvent;->filesRemaining:Ljava/util/NavigableSet;

    .line 2260
    invoke-static {v1}, Lcom/sleepycat/utilint/FormatUtil;->asHexString(Ljava/util/SortedSet;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2255
    return-object v0
.end method
