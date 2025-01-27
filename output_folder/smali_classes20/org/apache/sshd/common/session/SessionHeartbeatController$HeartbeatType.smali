.class public final enum Lorg/apache/sshd/common/session/SessionHeartbeatController$HeartbeatType;
.super Ljava/lang/Enum;
.source "SessionHeartbeatController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sshd/common/session/SessionHeartbeatController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HeartbeatType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/sshd/common/session/SessionHeartbeatController$HeartbeatType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/sshd/common/session/SessionHeartbeatController$HeartbeatType;

.field public static final enum IGNORE:Lorg/apache/sshd/common/session/SessionHeartbeatController$HeartbeatType;

.field public static final enum NONE:Lorg/apache/sshd/common/session/SessionHeartbeatController$HeartbeatType;

.field public static final enum RESERVED:Lorg/apache/sshd/common/session/SessionHeartbeatController$HeartbeatType;

.field public static final VALUES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/apache/sshd/common/session/SessionHeartbeatController$HeartbeatType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 37
    new-instance v0, Lorg/apache/sshd/common/session/SessionHeartbeatController$HeartbeatType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/sshd/common/session/SessionHeartbeatController$HeartbeatType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/sshd/common/session/SessionHeartbeatController$HeartbeatType;->NONE:Lorg/apache/sshd/common/session/SessionHeartbeatController$HeartbeatType;

    .line 39
    new-instance v1, Lorg/apache/sshd/common/session/SessionHeartbeatController$HeartbeatType;

    const-string v3, "IGNORE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/apache/sshd/common/session/SessionHeartbeatController$HeartbeatType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/sshd/common/session/SessionHeartbeatController$HeartbeatType;->IGNORE:Lorg/apache/sshd/common/session/SessionHeartbeatController$HeartbeatType;

    .line 41
    new-instance v3, Lorg/apache/sshd/common/session/SessionHeartbeatController$HeartbeatType;

    const-string v5, "RESERVED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/apache/sshd/common/session/SessionHeartbeatController$HeartbeatType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/sshd/common/session/SessionHeartbeatController$HeartbeatType;->RESERVED:Lorg/apache/sshd/common/session/SessionHeartbeatController$HeartbeatType;

    .line 35
    const/4 v5, 0x3

    new-array v5, v5, [Lorg/apache/sshd/common/session/SessionHeartbeatController$HeartbeatType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lorg/apache/sshd/common/session/SessionHeartbeatController$HeartbeatType;->$VALUES:[Lorg/apache/sshd/common/session/SessionHeartbeatController$HeartbeatType;

    .line 43
    const-class v0, Lorg/apache/sshd/common/session/SessionHeartbeatController$HeartbeatType;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/common/session/SessionHeartbeatController$HeartbeatType;->VALUES:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromName(Ljava/lang/String;)Lorg/apache/sshd/common/session/SessionHeartbeatController$HeartbeatType;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .line 46
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/sshd/common/session/SessionHeartbeatController$HeartbeatType;->VALUES:Ljava/util/Set;

    .line 48
    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lorg/apache/sshd/common/session/SessionHeartbeatController$HeartbeatType$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/apache/sshd/common/session/SessionHeartbeatController$HeartbeatType$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 50
    invoke-interface {v0}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object v0

    .line 51
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lorg/apache/sshd/common/session/SessionHeartbeatController$HeartbeatType;

    .line 46
    :goto_0
    return-object v1
.end method

.method static synthetic lambda$fromName$0(Ljava/lang/String;Lorg/apache/sshd/common/session/SessionHeartbeatController$HeartbeatType;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "v"    # Lorg/apache/sshd/common/session/SessionHeartbeatController$HeartbeatType;

    .line 49
    invoke-virtual {p1}, Lorg/apache/sshd/common/session/SessionHeartbeatController$HeartbeatType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/sshd/common/session/SessionHeartbeatController$HeartbeatType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 35
    const-class v0, Lorg/apache/sshd/common/session/SessionHeartbeatController$HeartbeatType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/session/SessionHeartbeatController$HeartbeatType;

    return-object v0
.end method

.method public static values()[Lorg/apache/sshd/common/session/SessionHeartbeatController$HeartbeatType;
    .locals 1

    .line 35
    sget-object v0, Lorg/apache/sshd/common/session/SessionHeartbeatController$HeartbeatType;->$VALUES:[Lorg/apache/sshd/common/session/SessionHeartbeatController$HeartbeatType;

    invoke-virtual {v0}, [Lorg/apache/sshd/common/session/SessionHeartbeatController$HeartbeatType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/sshd/common/session/SessionHeartbeatController$HeartbeatType;

    return-object v0
.end method
