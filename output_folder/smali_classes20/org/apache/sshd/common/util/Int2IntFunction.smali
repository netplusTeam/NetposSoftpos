.class public final Lorg/apache/sshd/common/util/Int2IntFunction;
.super Ljava/lang/Object;
.source "Int2IntFunction.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No instance"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static add(I)Ljava/util/function/IntUnaryOperator;
    .locals 1
    .param p0, "delta"    # I

    .line 37
    if-nez p0, :cond_0

    .line 38
    invoke-static {}, Ljava/util/function/IntUnaryOperator;->identity()Ljava/util/function/IntUnaryOperator;

    move-result-object v0

    return-object v0

    .line 40
    :cond_0
    new-instance v0, Lorg/apache/sshd/common/util/Int2IntFunction$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/apache/sshd/common/util/Int2IntFunction$$ExternalSyntheticLambda2;-><init>(I)V

    return-object v0
.end method

.method public static constant(I)Ljava/util/function/IntUnaryOperator;
    .locals 1
    .param p0, "v"    # I

    .line 55
    new-instance v0, Lorg/apache/sshd/common/util/Int2IntFunction$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/apache/sshd/common/util/Int2IntFunction$$ExternalSyntheticLambda0;-><init>(I)V

    return-object v0
.end method

.method public static div(I)Ljava/util/function/IntUnaryOperator;
    .locals 2
    .param p0, "factor"    # I

    .line 59
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 60
    invoke-static {}, Ljava/util/function/IntUnaryOperator;->identity()Ljava/util/function/IntUnaryOperator;

    move-result-object v0

    return-object v0

    .line 62
    :cond_0
    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Zero division factor"

    invoke-static {v0, v1}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;)V

    .line 63
    new-instance v0, Lorg/apache/sshd/common/util/Int2IntFunction$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lorg/apache/sshd/common/util/Int2IntFunction$$ExternalSyntheticLambda3;-><init>(I)V

    return-object v0
.end method

.method static synthetic lambda$add$0(II)I
    .locals 1
    .param p0, "delta"    # I
    .param p1, "value"    # I

    .line 40
    add-int v0, p1, p0

    return v0
.end method

.method static synthetic lambda$constant$2(II)I
    .locals 0
    .param p0, "v"    # I
    .param p1, "value"    # I

    .line 55
    return p0
.end method

.method static synthetic lambda$div$3(II)I
    .locals 1
    .param p0, "factor"    # I
    .param p1, "value"    # I

    .line 63
    div-int v0, p1, p0

    return v0
.end method

.method static synthetic lambda$mul$1(II)I
    .locals 1
    .param p0, "factor"    # I
    .param p1, "value"    # I

    .line 50
    mul-int v0, p1, p0

    return v0
.end method

.method public static mul(I)Ljava/util/function/IntUnaryOperator;
    .locals 1
    .param p0, "factor"    # I

    .line 45
    if-nez p0, :cond_0

    .line 46
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/apache/sshd/common/util/Int2IntFunction;->constant(I)Ljava/util/function/IntUnaryOperator;

    move-result-object v0

    return-object v0

    .line 47
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 48
    invoke-static {}, Ljava/util/function/IntUnaryOperator;->identity()Ljava/util/function/IntUnaryOperator;

    move-result-object v0

    return-object v0

    .line 50
    :cond_1
    new-instance v0, Lorg/apache/sshd/common/util/Int2IntFunction$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/apache/sshd/common/util/Int2IntFunction$$ExternalSyntheticLambda1;-><init>(I)V

    return-object v0
.end method

.method public static sub(I)Ljava/util/function/IntUnaryOperator;
    .locals 1
    .param p0, "delta"    # I

    .line 33
    rsub-int/lit8 v0, p0, 0x0

    invoke-static {v0}, Lorg/apache/sshd/common/util/Int2IntFunction;->add(I)Ljava/util/function/IntUnaryOperator;

    move-result-object v0

    return-object v0
.end method
