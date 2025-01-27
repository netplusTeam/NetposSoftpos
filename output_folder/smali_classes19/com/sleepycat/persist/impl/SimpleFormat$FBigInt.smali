.class public Lcom/sleepycat/persist/impl/SimpleFormat$FBigInt;
.super Lcom/sleepycat/persist/impl/SimpleFormat;
.source "SimpleFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/persist/impl/SimpleFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FBigInt"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x45c3d7193f0e0a93L


# direct methods
.method constructor <init>(Lcom/sleepycat/persist/impl/Catalog;)V
    .locals 2
    .param p1, "catalog"    # Lcom/sleepycat/persist/impl/Catalog;

    .line 825
    const-class v0, Ljava/math/BigInteger;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/sleepycat/persist/impl/SimpleFormat;-><init>(Lcom/sleepycat/persist/impl/Catalog;Ljava/lang/Class;Z)V

    .line 826
    return-void
.end method


# virtual methods
.method copySecKey(Lcom/sleepycat/persist/impl/RecordInput;Lcom/sleepycat/persist/impl/RecordOutput;)V
    .locals 3
    .param p1, "input"    # Lcom/sleepycat/persist/impl/RecordInput;
    .param p2, "output"    # Lcom/sleepycat/persist/impl/RecordOutput;

    .line 852
    invoke-virtual {p1}, Lcom/sleepycat/persist/impl/RecordInput;->getBigIntegerByteLength()I

    move-result v0

    .line 853
    .local v0, "len":I
    nop

    .line 854
    invoke-virtual {p1}, Lcom/sleepycat/persist/impl/RecordInput;->getBufferBytes()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/sleepycat/persist/impl/RecordInput;->getBufferOffset()I

    move-result v2

    invoke-virtual {p2, v1, v2, v0}, Lcom/sleepycat/persist/impl/RecordOutput;->writeFast([BII)V

    .line 855
    invoke-virtual {p1, v0}, Lcom/sleepycat/persist/impl/RecordInput;->skipFast(I)V

    .line 856
    return-void
.end method

.method newArray(I)Ljava/lang/Object;
    .locals 1
    .param p1, "len"    # I

    .line 830
    new-array v0, p1, [Ljava/math/BigInteger;

    return-object v0
.end method

.method public newInstance(Lcom/sleepycat/persist/impl/EntityInput;Z)Ljava/lang/Object;
    .locals 1
    .param p1, "input"    # Lcom/sleepycat/persist/impl/EntityInput;
    .param p2, "rawAccess"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 837
    invoke-interface {p1}, Lcom/sleepycat/persist/impl/EntityInput;->readBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method skipContents(Lcom/sleepycat/persist/impl/RecordInput;)V
    .locals 1
    .param p1, "input"    # Lcom/sleepycat/persist/impl/RecordInput;

    .line 847
    invoke-virtual {p1}, Lcom/sleepycat/persist/impl/RecordInput;->getBigIntegerByteLength()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sleepycat/persist/impl/RecordInput;->skipFast(I)V

    .line 848
    return-void
.end method

.method writeObject(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityOutput;Z)V
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "output"    # Lcom/sleepycat/persist/impl/EntityOutput;
    .param p3, "rawAccess"    # Z

    .line 842
    move-object v0, p1

    check-cast v0, Ljava/math/BigInteger;

    invoke-interface {p2, v0}, Lcom/sleepycat/persist/impl/EntityOutput;->writeBigInteger(Ljava/math/BigInteger;)Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 843
    return-void
.end method
