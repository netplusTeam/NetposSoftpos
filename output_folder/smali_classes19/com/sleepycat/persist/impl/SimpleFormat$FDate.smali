.class public Lcom/sleepycat/persist/impl/SimpleFormat$FDate;
.super Lcom/sleepycat/persist/impl/SimpleFormat;
.source "SimpleFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/persist/impl/SimpleFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FDate"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x4ea0debbe842eaa1L


# direct methods
.method constructor <init>(Lcom/sleepycat/persist/impl/Catalog;)V
    .locals 2
    .param p1, "catalog"    # Lcom/sleepycat/persist/impl/Catalog;

    .line 907
    const-class v0, Ljava/util/Date;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/sleepycat/persist/impl/SimpleFormat;-><init>(Lcom/sleepycat/persist/impl/Catalog;Ljava/lang/Class;Z)V

    .line 908
    return-void
.end method


# virtual methods
.method copySecKey(Lcom/sleepycat/persist/impl/RecordInput;Lcom/sleepycat/persist/impl/RecordOutput;)V
    .locals 3
    .param p1, "input"    # Lcom/sleepycat/persist/impl/RecordInput;
    .param p2, "output"    # Lcom/sleepycat/persist/impl/RecordOutput;

    .line 934
    nop

    .line 935
    invoke-virtual {p1}, Lcom/sleepycat/persist/impl/RecordInput;->getBufferBytes()[B

    move-result-object v0

    invoke-virtual {p1}, Lcom/sleepycat/persist/impl/RecordInput;->getBufferOffset()I

    move-result v1

    const/16 v2, 0x8

    invoke-virtual {p2, v0, v1, v2}, Lcom/sleepycat/persist/impl/RecordOutput;->writeFast([BII)V

    .line 936
    invoke-virtual {p1, v2}, Lcom/sleepycat/persist/impl/RecordInput;->skipFast(I)V

    .line 937
    return-void
.end method

.method newArray(I)Ljava/lang/Object;
    .locals 1
    .param p1, "len"    # I

    .line 912
    new-array v0, p1, [Ljava/util/Date;

    return-object v0
.end method

.method public newInstance(Lcom/sleepycat/persist/impl/EntityInput;Z)Ljava/lang/Object;
    .locals 3
    .param p1, "input"    # Lcom/sleepycat/persist/impl/EntityInput;
    .param p2, "rawAccess"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 919
    new-instance v0, Ljava/util/Date;

    invoke-interface {p1}, Lcom/sleepycat/persist/impl/EntityInput;->readLong()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method skipContents(Lcom/sleepycat/persist/impl/RecordInput;)V
    .locals 1
    .param p1, "input"    # Lcom/sleepycat/persist/impl/RecordInput;

    .line 929
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/sleepycat/persist/impl/RecordInput;->skipFast(I)V

    .line 930
    return-void
.end method

.method writeObject(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityOutput;Z)V
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "output"    # Lcom/sleepycat/persist/impl/EntityOutput;
    .param p3, "rawAccess"    # Z

    .line 924
    move-object v0, p1

    check-cast v0, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Lcom/sleepycat/persist/impl/EntityOutput;->writeLong(J)Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 925
    return-void
.end method
