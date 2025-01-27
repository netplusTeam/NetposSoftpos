.class Lcom/sleepycat/je/log/StatsFileReader$LogEntryTypeComparator;
.super Ljava/lang/Object;
.source "StatsFileReader.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/log/StatsFileReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LogEntryTypeComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/sleepycat/je/log/LogEntryType;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 550
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sleepycat/je/log/LogEntryType;Lcom/sleepycat/je/log/LogEntryType;)I
    .locals 3
    .param p1, "o1"    # Lcom/sleepycat/je/log/LogEntryType;
    .param p2, "o2"    # Lcom/sleepycat/je/log/LogEntryType;

    .line 552
    if-nez p1, :cond_0

    .line 553
    const/4 v0, -0x1

    return v0

    .line 556
    :cond_0
    if-nez p2, :cond_1

    .line 557
    const/4 v0, 0x1

    return v0

    .line 560
    :cond_1
    invoke-virtual {p1}, Lcom/sleepycat/je/log/LogEntryType;->getTypeNum()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    .line 561
    .local v0, "t1":Ljava/lang/Byte;
    invoke-virtual {p2}, Lcom/sleepycat/je/log/LogEntryType;->getTypeNum()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    .line 562
    .local v1, "t2":Ljava/lang/Byte;
    invoke-virtual {v0, v1}, Ljava/lang/Byte;->compareTo(Ljava/lang/Byte;)I

    move-result v2

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 550
    check-cast p1, Lcom/sleepycat/je/log/LogEntryType;

    check-cast p2, Lcom/sleepycat/je/log/LogEntryType;

    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/je/log/StatsFileReader$LogEntryTypeComparator;->compare(Lcom/sleepycat/je/log/LogEntryType;Lcom/sleepycat/je/log/LogEntryType;)I

    move-result p1

    return p1
.end method
