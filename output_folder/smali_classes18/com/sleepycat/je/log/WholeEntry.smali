.class public Lcom/sleepycat/je/log/WholeEntry;
.super Ljava/lang/Object;
.source "WholeEntry.java"


# instance fields
.field private final entry:Lcom/sleepycat/je/log/entry/LogEntry;

.field private final header:Lcom/sleepycat/je/log/LogEntryHeader;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/log/LogEntryHeader;Lcom/sleepycat/je/log/entry/LogEntry;)V
    .locals 0
    .param p1, "header"    # Lcom/sleepycat/je/log/LogEntryHeader;
    .param p2, "entry"    # Lcom/sleepycat/je/log/entry/LogEntry;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/sleepycat/je/log/WholeEntry;->header:Lcom/sleepycat/je/log/LogEntryHeader;

    .line 28
    iput-object p2, p0, Lcom/sleepycat/je/log/WholeEntry;->entry:Lcom/sleepycat/je/log/entry/LogEntry;

    .line 29
    return-void
.end method


# virtual methods
.method public getEntry()Lcom/sleepycat/je/log/entry/LogEntry;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/sleepycat/je/log/WholeEntry;->entry:Lcom/sleepycat/je/log/entry/LogEntry;

    return-object v0
.end method

.method public getHeader()Lcom/sleepycat/je/log/LogEntryHeader;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/sleepycat/je/log/WholeEntry;->header:Lcom/sleepycat/je/log/LogEntryHeader;

    return-object v0
.end method
