.class public final synthetic Lorg/apache/sshd/common/util/buffer/BufferUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntUnaryOperator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(I)I
    .locals 0

    invoke-static {p1}, Lorg/apache/sshd/common/util/buffer/BufferUtils;->getNextPowerOf2(I)I

    move-result p1

    return p1
.end method
