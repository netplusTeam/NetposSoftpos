.class Lcom/sleepycat/je/util/DbScavenger$2;
.super Lcom/sleepycat/je/log/ScavengerFileReader;
.source "DbScavenger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sleepycat/je/util/DbScavenger;->scavenge(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sleepycat/je/util/DbScavenger;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/util/DbScavenger;Lcom/sleepycat/je/dbi/EnvironmentImpl;IJJJ)V
    .locals 11
    .param p1, "this$0"    # Lcom/sleepycat/je/util/DbScavenger;
    .param p2, "env"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p3, "readBufferSize"    # I
    .param p4, "startLsn"    # J
    .param p6, "finishLsn"    # J
    .param p8, "endOfFileLsn"    # J

    .line 356
    move-object v9, p0

    move-object v10, p1

    iput-object v10, v9, Lcom/sleepycat/je/util/DbScavenger$2;->this$0:Lcom/sleepycat/je/util/DbScavenger;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-wide v3, p4

    move-wide/from16 v5, p6

    move-wide/from16 v7, p8

    invoke-direct/range {v0 .. v8}, Lcom/sleepycat/je/log/ScavengerFileReader;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;IJJJ)V

    return-void
.end method


# virtual methods
.method protected processEntryCallback(Lcom/sleepycat/je/log/entry/LogEntry;Lcom/sleepycat/je/log/LogEntryType;)V
    .locals 1
    .param p1, "entry"    # Lcom/sleepycat/je/log/entry/LogEntry;
    .param p2, "entryType"    # Lcom/sleepycat/je/log/LogEntryType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 361
    iget-object v0, p0, Lcom/sleepycat/je/util/DbScavenger$2;->this$0:Lcom/sleepycat/je/util/DbScavenger;

    invoke-static {v0, p1, p2}, Lcom/sleepycat/je/util/DbScavenger;->access$100(Lcom/sleepycat/je/util/DbScavenger;Lcom/sleepycat/je/log/entry/LogEntry;Lcom/sleepycat/je/log/LogEntryType;)V

    .line 362
    return-void
.end method
