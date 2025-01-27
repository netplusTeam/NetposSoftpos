.class public final enum Lorg/apache/sshd/common/session/helpers/TimeoutIndicator$TimeoutStatus;
.super Ljava/lang/Enum;
.source "TimeoutIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sshd/common/session/helpers/TimeoutIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TimeoutStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/sshd/common/session/helpers/TimeoutIndicator$TimeoutStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/sshd/common/session/helpers/TimeoutIndicator$TimeoutStatus;

.field public static final enum AuthTimeout:Lorg/apache/sshd/common/session/helpers/TimeoutIndicator$TimeoutStatus;

.field public static final enum IdleTimeout:Lorg/apache/sshd/common/session/helpers/TimeoutIndicator$TimeoutStatus;

.field public static final enum NoTimeout:Lorg/apache/sshd/common/session/helpers/TimeoutIndicator$TimeoutStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 32
    new-instance v0, Lorg/apache/sshd/common/session/helpers/TimeoutIndicator$TimeoutStatus;

    const-string v1, "NoTimeout"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/sshd/common/session/helpers/TimeoutIndicator$TimeoutStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/sshd/common/session/helpers/TimeoutIndicator$TimeoutStatus;->NoTimeout:Lorg/apache/sshd/common/session/helpers/TimeoutIndicator$TimeoutStatus;

    .line 33
    new-instance v1, Lorg/apache/sshd/common/session/helpers/TimeoutIndicator$TimeoutStatus;

    const-string v3, "AuthTimeout"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/apache/sshd/common/session/helpers/TimeoutIndicator$TimeoutStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/sshd/common/session/helpers/TimeoutIndicator$TimeoutStatus;->AuthTimeout:Lorg/apache/sshd/common/session/helpers/TimeoutIndicator$TimeoutStatus;

    .line 34
    new-instance v3, Lorg/apache/sshd/common/session/helpers/TimeoutIndicator$TimeoutStatus;

    const-string v5, "IdleTimeout"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/apache/sshd/common/session/helpers/TimeoutIndicator$TimeoutStatus;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/sshd/common/session/helpers/TimeoutIndicator$TimeoutStatus;->IdleTimeout:Lorg/apache/sshd/common/session/helpers/TimeoutIndicator$TimeoutStatus;

    .line 31
    const/4 v5, 0x3

    new-array v5, v5, [Lorg/apache/sshd/common/session/helpers/TimeoutIndicator$TimeoutStatus;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lorg/apache/sshd/common/session/helpers/TimeoutIndicator$TimeoutStatus;->$VALUES:[Lorg/apache/sshd/common/session/helpers/TimeoutIndicator$TimeoutStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/sshd/common/session/helpers/TimeoutIndicator$TimeoutStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 31
    const-class v0, Lorg/apache/sshd/common/session/helpers/TimeoutIndicator$TimeoutStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/session/helpers/TimeoutIndicator$TimeoutStatus;

    return-object v0
.end method

.method public static values()[Lorg/apache/sshd/common/session/helpers/TimeoutIndicator$TimeoutStatus;
    .locals 1

    .line 31
    sget-object v0, Lorg/apache/sshd/common/session/helpers/TimeoutIndicator$TimeoutStatus;->$VALUES:[Lorg/apache/sshd/common/session/helpers/TimeoutIndicator$TimeoutStatus;

    invoke-virtual {v0}, [Lorg/apache/sshd/common/session/helpers/TimeoutIndicator$TimeoutStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/sshd/common/session/helpers/TimeoutIndicator$TimeoutStatus;

    return-object v0
.end method
