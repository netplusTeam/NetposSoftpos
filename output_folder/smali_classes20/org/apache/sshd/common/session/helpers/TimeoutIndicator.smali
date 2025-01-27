.class public Lorg/apache/sshd/common/session/helpers/TimeoutIndicator;
.super Ljava/lang/Object;
.source "TimeoutIndicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/sshd/common/session/helpers/TimeoutIndicator$TimeoutStatus;
    }
.end annotation


# static fields
.field public static final NONE:Lorg/apache/sshd/common/session/helpers/TimeoutIndicator;


# instance fields
.field private final expiredValue:J

.field private final status:Lorg/apache/sshd/common/session/helpers/TimeoutIndicator$TimeoutStatus;

.field private final thresholdValue:J


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 37
    new-instance v6, Lorg/apache/sshd/common/session/helpers/TimeoutIndicator;

    sget-object v1, Lorg/apache/sshd/common/session/helpers/TimeoutIndicator$TimeoutStatus;->NoTimeout:Lorg/apache/sshd/common/session/helpers/TimeoutIndicator$TimeoutStatus;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/apache/sshd/common/session/helpers/TimeoutIndicator;-><init>(Lorg/apache/sshd/common/session/helpers/TimeoutIndicator$TimeoutStatus;JJ)V

    sput-object v6, Lorg/apache/sshd/common/session/helpers/TimeoutIndicator;->NONE:Lorg/apache/sshd/common/session/helpers/TimeoutIndicator;

    return-void
.end method

.method public constructor <init>(Lorg/apache/sshd/common/session/helpers/TimeoutIndicator$TimeoutStatus;JJ)V
    .locals 0
    .param p1, "status"    # Lorg/apache/sshd/common/session/helpers/TimeoutIndicator$TimeoutStatus;
    .param p2, "thresholdValue"    # J
    .param p4, "expiredValue"    # J

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lorg/apache/sshd/common/session/helpers/TimeoutIndicator;->status:Lorg/apache/sshd/common/session/helpers/TimeoutIndicator$TimeoutStatus;

    .line 50
    iput-wide p2, p0, Lorg/apache/sshd/common/session/helpers/TimeoutIndicator;->thresholdValue:J

    .line 51
    iput-wide p4, p0, Lorg/apache/sshd/common/session/helpers/TimeoutIndicator;->expiredValue:J

    .line 52
    return-void
.end method


# virtual methods
.method public getExpiredValue()J
    .locals 2

    .line 63
    iget-wide v0, p0, Lorg/apache/sshd/common/session/helpers/TimeoutIndicator;->expiredValue:J

    return-wide v0
.end method

.method public getStatus()Lorg/apache/sshd/common/session/helpers/TimeoutIndicator$TimeoutStatus;
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/TimeoutIndicator;->status:Lorg/apache/sshd/common/session/helpers/TimeoutIndicator$TimeoutStatus;

    return-object v0
.end method

.method public getThresholdValue()J
    .locals 2

    .line 59
    iget-wide v0, p0, Lorg/apache/sshd/common/session/helpers/TimeoutIndicator;->thresholdValue:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 69
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/TimeoutIndicator;->getStatus()Lorg/apache/sshd/common/session/helpers/TimeoutIndicator$TimeoutStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", threshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 70
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/TimeoutIndicator;->getThresholdValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", expired="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 71
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/TimeoutIndicator;->getExpiredValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    return-object v0
.end method
