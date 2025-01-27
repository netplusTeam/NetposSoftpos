.class final Lorg/apache/sshd/common/channel/PtyMode$1;
.super Ljava/lang/Object;
.source "PtyMode.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sshd/common/channel/PtyMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/apache/sshd/common/channel/PtyMode;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 313
    check-cast p1, Lorg/apache/sshd/common/channel/PtyMode;

    check-cast p2, Lorg/apache/sshd/common/channel/PtyMode;

    invoke-virtual {p0, p1, p2}, Lorg/apache/sshd/common/channel/PtyMode$1;->compare(Lorg/apache/sshd/common/channel/PtyMode;Lorg/apache/sshd/common/channel/PtyMode;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/apache/sshd/common/channel/PtyMode;Lorg/apache/sshd/common/channel/PtyMode;)I
    .locals 3
    .param p1, "o1"    # Lorg/apache/sshd/common/channel/PtyMode;
    .param p2, "o2"    # Lorg/apache/sshd/common/channel/PtyMode;

    .line 316
    sget-object v0, Lorg/apache/sshd/common/channel/PtyMode;->OPCODE_EXTRACTOR:Ljava/util/function/ToIntFunction;

    invoke-interface {v0, p1}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v0

    .line 317
    .local v0, "v1":I
    sget-object v1, Lorg/apache/sshd/common/channel/PtyMode;->OPCODE_EXTRACTOR:Ljava/util/function/ToIntFunction;

    invoke-interface {v1, p2}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v1

    .line 318
    .local v1, "v2":I
    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v2

    return v2
.end method
