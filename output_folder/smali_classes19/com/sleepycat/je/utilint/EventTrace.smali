.class public Lcom/sleepycat/je/utilint/EventTrace;
.super Ljava/lang/Object;
.source "EventTrace.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/utilint/EventTrace$ExceptionEventTrace;
    }
.end annotation


# static fields
.field private static MAX_EVENTS:I = 0x0

.field public static final TRACE_EVENTS:Z = false

.field static currentEvent:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static volatile disableEvents:Z

.field static final events:[Lcom/sleepycat/je/utilint/EventTrace;

.field static final threadIdHashes:[I


# instance fields
.field protected comment:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 25
    const/16 v0, 0x64

    sput v0, Lcom/sleepycat/je/utilint/EventTrace;->MAX_EVENTS:I

    .line 29
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/sleepycat/je/utilint/EventTrace;->currentEvent:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 31
    sget v0, Lcom/sleepycat/je/utilint/EventTrace;->MAX_EVENTS:I

    new-array v2, v0, [Lcom/sleepycat/je/utilint/EventTrace;

    sput-object v2, Lcom/sleepycat/je/utilint/EventTrace;->events:[Lcom/sleepycat/je/utilint/EventTrace;

    .line 32
    new-array v0, v0, [I

    sput-object v0, Lcom/sleepycat/je/utilint/EventTrace;->threadIdHashes:[I

    .line 33
    sput-boolean v1, Lcom/sleepycat/je/utilint/EventTrace;->disableEvents:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/utilint/EventTrace;->comment:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "comment"    # Ljava/lang/String;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/sleepycat/je/utilint/EventTrace;->comment:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public static addEvent(Lcom/sleepycat/je/utilint/EventTrace;)Z
    .locals 4
    .param p0, "event"    # Lcom/sleepycat/je/utilint/EventTrace;

    .line 55
    sget-boolean v0, Lcom/sleepycat/je/utilint/EventTrace;->disableEvents:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 56
    return v1

    .line 58
    :cond_0
    sget-object v0, Lcom/sleepycat/je/utilint/EventTrace;->currentEvent:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    sget v2, Lcom/sleepycat/je/utilint/EventTrace;->MAX_EVENTS:I

    rem-int/2addr v0, v2

    .line 59
    .local v0, "nextEventIdx":I
    sget-object v2, Lcom/sleepycat/je/utilint/EventTrace;->events:[Lcom/sleepycat/je/utilint/EventTrace;

    aput-object p0, v2, v0

    .line 60
    sget-object v2, Lcom/sleepycat/je/utilint/EventTrace;->threadIdHashes:[I

    .line 61
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    aput v3, v2, v0

    .line 62
    return v1
.end method

.method public static addEvent(Ljava/lang/String;)Z
    .locals 1
    .param p0, "comment"    # Ljava/lang/String;

    .line 70
    sget-boolean v0, Lcom/sleepycat/je/utilint/EventTrace;->disableEvents:Z

    if-eqz v0, :cond_0

    .line 71
    const/4 v0, 0x1

    return v0

    .line 73
    :cond_0
    new-instance v0, Lcom/sleepycat/je/utilint/EventTrace;

    invoke-direct {v0, p0}, Lcom/sleepycat/je/utilint/EventTrace;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sleepycat/je/utilint/EventTrace;->addEvent(Lcom/sleepycat/je/utilint/EventTrace;)Z

    move-result v0

    return v0
.end method

.method public static dumpEvents()V
    .locals 1

    .line 77
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v0}, Lcom/sleepycat/je/utilint/EventTrace;->dumpEvents(Ljava/io/PrintStream;)V

    .line 78
    return-void
.end method

.method public static dumpEvents(Ljava/io/PrintStream;)V
    .locals 8
    .param p0, "out"    # Ljava/io/PrintStream;

    .line 82
    sget-boolean v0, Lcom/sleepycat/je/utilint/EventTrace;->disableEvents:Z

    if-eqz v0, :cond_0

    .line 83
    return-void

    .line 85
    :cond_0
    const-string v0, "----- Event Dump -----"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 86
    sget-object v0, Lcom/sleepycat/je/utilint/EventTrace;->events:[Lcom/sleepycat/je/utilint/EventTrace;

    .line 87
    .local v0, "oldEvents":[Lcom/sleepycat/je/utilint/EventTrace;
    sget-object v1, Lcom/sleepycat/je/utilint/EventTrace;->threadIdHashes:[I

    .line 88
    .local v1, "oldThreadIdHashes":[I
    const/4 v2, 0x1

    sput-boolean v2, Lcom/sleepycat/je/utilint/EventTrace;->disableEvents:Z

    .line 90
    const/4 v2, 0x0

    .line 91
    .local v2, "j":I
    sget-object v3, Lcom/sleepycat/je/utilint/EventTrace;->currentEvent:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    .local v3, "i":I
    :goto_0
    sget v4, Lcom/sleepycat/je/utilint/EventTrace;->MAX_EVENTS:I

    if-ge v2, v4, :cond_2

    .line 92
    rem-int v5, v3, v4

    aget-object v5, v0, v5

    .line 93
    .local v5, "ev":Lcom/sleepycat/je/utilint/EventTrace;
    if-eqz v5, :cond_1

    .line 94
    rem-int v4, v3, v4

    .line 95
    .local v4, "thisEventIdx":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget v7, v1, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 96
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 98
    .end local v4    # "thisEventIdx":I
    :cond_1
    nop

    .end local v5    # "ev":Lcom/sleepycat/je/utilint/EventTrace;
    add-int/lit8 v2, v2, 0x1

    .line 91
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 100
    .end local v3    # "i":I
    :cond_2
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/sleepycat/je/utilint/EventTrace;->comment:Ljava/lang/String;

    return-object v0
.end method
