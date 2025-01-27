.class public Lcom/sleepycat/je/EnvironmentFailureException;
.super Lcom/sleepycat/je/RunRecoveryException;
.source "EnvironmentFailureException.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private volatile alreadyThrown:Z

.field private reason:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 80
    return-void
.end method

.method private constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentFailureReason;)V
    .locals 1
    .param p1, "reason"    # Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    .line 106
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sleepycat/je/RunRecoveryException;-><init>(Ljava/lang/String;)V

    .line 107
    iput-object p1, p0, Lcom/sleepycat/je/EnvironmentFailureException;->reason:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    .line 108
    return-void
.end method

.method private constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "reason"    # Lcom/sleepycat/je/dbi/EnvironmentFailureReason;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .line 116
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 117
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;)V
    .locals 1
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "reason"    # Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    .line 125
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 126
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/String;)V
    .locals 1
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "reason"    # Lcom/sleepycat/je/dbi/EnvironmentFailureReason;
    .param p3, "message"    # Ljava/lang/String;

    .line 145
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 146
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "reason"    # Lcom/sleepycat/je/dbi/EnvironmentFailureReason;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "cause"    # Ljava/lang/Throwable;

    .line 156
    invoke-static {p1, p2, p3, p4}, Lcom/sleepycat/je/EnvironmentFailureException;->makeMsg(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p4}, Lcom/sleepycat/je/RunRecoveryException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 157
    iput-object p2, p0, Lcom/sleepycat/je/EnvironmentFailureException;->reason:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    .line 159
    invoke-virtual {p2}, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->invalidatesEnvironment()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 165
    if-nez p1, :cond_1

    .line 166
    invoke-virtual {p2}, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->envShouldExist()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 167
    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 170
    :cond_1
    invoke-virtual {p1, p0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->invalidate(Lcom/sleepycat/je/EnvironmentFailureException;)V

    .line 173
    :cond_2
    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "reason"    # Lcom/sleepycat/je/dbi/EnvironmentFailureReason;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .line 135
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 136
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/sleepycat/je/EnvironmentFailureException;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Lcom/sleepycat/je/EnvironmentFailureException;

    .line 214
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/RunRecoveryException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 215
    if-eqz p2, :cond_0

    .line 216
    iget-object v0, p2, Lcom/sleepycat/je/EnvironmentFailureException;->reason:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    iput-object v0, p0, Lcom/sleepycat/je/EnvironmentFailureException;->reason:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    .line 217
    return-void

    .line 215
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static assertState(Z)V
    .locals 2
    .param p0, "cond"    # Z

    .line 477
    if-eqz p0, :cond_0

    .line 480
    return-void

    .line 478
    :cond_0
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method

.method public static assertState(ZLjava/lang/String;)V
    .locals 1
    .param p0, "cond"    # Z
    .param p1, "message"    # Ljava/lang/String;

    .line 495
    if-eqz p0, :cond_0

    .line 498
    return-void

    .line 496
    :cond_0
    invoke-static {p1}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method

.method public static makeJavaErrorWrapper()Lcom/sleepycat/je/EnvironmentFailureException;
    .locals 2

    .line 311
    new-instance v0, Lcom/sleepycat/je/EnvironmentFailureException;

    sget-object v1, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->JAVA_ERROR:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    invoke-direct {v0, v1}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentFailureReason;)V

    return-object v0
.end method

.method private static makeMsg(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3
    .param p0, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p1, "reason"    # Lcom/sleepycat/je/dbi/EnvironmentFailureReason;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x12c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 180
    .local v0, "s":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_0

    .line 181
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    :cond_0
    const/16 v1, 0x20

    if-eqz p2, :cond_1

    .line 185
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 187
    :cond_1
    if-eqz p3, :cond_2

    .line 188
    invoke-virtual {p3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 191
    :cond_2
    :goto_0
    if-eqz p1, :cond_5

    .line 192
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->invalidatesEnvironment()Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz p0, :cond_4

    .line 201
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isValid()Z

    move-result v1

    if-nez v1, :cond_4

    .line 202
    :cond_3
    const-string v1, " Environment is invalid and must be closed."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 191
    :cond_5
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public static promote(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/String;Ljava/lang/Throwable;)Lcom/sleepycat/je/EnvironmentFailureException;
    .locals 1
    .param p0, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p1, "reason"    # Lcom/sleepycat/je/dbi/EnvironmentFailureReason;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .line 333
    instance-of v0, p3, Lcom/sleepycat/je/EnvironmentFailureException;

    if-eqz v0, :cond_0

    .line 334
    move-object v0, p3

    check-cast v0, Lcom/sleepycat/je/EnvironmentFailureException;

    .line 336
    .local v0, "e":Lcom/sleepycat/je/EnvironmentFailureException;
    invoke-virtual {v0, p2}, Lcom/sleepycat/je/EnvironmentFailureException;->addErrorMessage(Ljava/lang/String;)V

    .line 337
    return-object v0

    .line 340
    .end local v0    # "e":Lcom/sleepycat/je/EnvironmentFailureException;
    :cond_0
    new-instance v0, Lcom/sleepycat/je/EnvironmentFailureException;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static unexpectedException(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;
    .locals 3
    .param p0, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p1, "cause"    # Ljava/lang/Exception;

    .line 369
    new-instance v0, Lcom/sleepycat/je/EnvironmentFailureException;

    sget-object v1, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->UNEXPECTED_EXCEPTION_FATAL:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static unexpectedException(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;
    .locals 2
    .param p0, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Exception;

    .line 401
    new-instance v0, Lcom/sleepycat/je/EnvironmentFailureException;

    sget-object v1, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->UNEXPECTED_EXCEPTION_FATAL:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static unexpectedException(Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;
    .locals 3
    .param p0, "cause"    # Ljava/lang/Exception;

    .line 354
    new-instance v0, Lcom/sleepycat/je/EnvironmentFailureException;

    sget-object v1, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->UNEXPECTED_EXCEPTION:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static unexpectedException(Ljava/lang/String;Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "cause"    # Ljava/lang/Exception;

    .line 384
    new-instance v0, Lcom/sleepycat/je/EnvironmentFailureException;

    sget-object v1, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->UNEXPECTED_EXCEPTION:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    invoke-direct {v0, v1, p0, p1}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static unexpectedState()Lcom/sleepycat/je/EnvironmentFailureException;
    .locals 3

    .line 415
    new-instance v0, Lcom/sleepycat/je/EnvironmentFailureException;

    sget-object v1, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->UNEXPECTED_STATE:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static unexpectedState(Lcom/sleepycat/je/dbi/EnvironmentImpl;)Lcom/sleepycat/je/EnvironmentFailureException;
    .locals 3
    .param p0, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 430
    new-instance v0, Lcom/sleepycat/je/EnvironmentFailureException;

    sget-object v1, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->UNEXPECTED_STATE_FATAL:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, v2}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static unexpectedState(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;
    .locals 3
    .param p0, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p1, "message"    # Ljava/lang/String;

    .line 459
    new-instance v0, Lcom/sleepycat/je/EnvironmentFailureException;

    sget-object v1, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->UNEXPECTED_STATE_FATAL:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;
    .locals 3
    .param p0, "message"    # Ljava/lang/String;

    .line 444
    new-instance v0, Lcom/sleepycat/je/EnvironmentFailureException;

    sget-object v1, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->UNEXPECTED_STATE:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 2

    .line 252
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentFailureException;->reason:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    sget-object v1, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->JAVA_ERROR:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/sleepycat/je/EnvironmentFailureException;->alreadyThrown:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 256
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Environment invalid because of previous exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 257
    invoke-super {p0}, Lcom/sleepycat/je/RunRecoveryException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 256
    return-object v0

    .line 253
    :cond_1
    :goto_0
    invoke-super {p0}, Lcom/sleepycat/je/RunRecoveryException;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReason()Lcom/sleepycat/je/dbi/EnvironmentFailureReason;
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentFailureException;->reason:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    return-object v0
.end method

.method public isCorrupted()Z
    .locals 2

    .line 300
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentFailureException;->reason:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    sget-object v1, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->LOG_CHECKSUM:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentFailureException;->reason:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    sget-object v1, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->BTREE_CORRUPTION:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public setAlreadyThrown(Z)V
    .locals 0
    .param p1, "alreadyThrown"    # Z

    .line 241
    iput-boolean p1, p0, Lcom/sleepycat/je/EnvironmentFailureException;->alreadyThrown:Z

    .line 242
    return-void
.end method

.method public wrapSelf(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 227
    const-class v0, Lcom/sleepycat/je/EnvironmentFailureException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 230
    new-instance v0, Lcom/sleepycat/je/EnvironmentFailureException;

    invoke-direct {v0, p1, p0}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Ljava/lang/String;Lcom/sleepycat/je/EnvironmentFailureException;)V

    return-object v0

    .line 227
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing overriding "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 228
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".wrapSelf() method"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
